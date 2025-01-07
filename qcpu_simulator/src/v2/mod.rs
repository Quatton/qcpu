use std::io::{Read as _, Write as _};

use context::Simulator;
use error::{SimulationError, SimulationErrorKind};
use execute::{ExecuteResult, MemoryAccess};
use qcpu_syntax::v2::{
    op::Op,
    reg::Register,
    syntax::{OpName, OpType},
};

pub mod context;
pub mod error;
pub mod execute;
pub mod memory;

impl Simulator {
    fn error_map(&self, kind: SimulationErrorKind) -> SimulationError {
        SimulationError {
            line: self.ctx.current.pc / 4,
            op: self.decode(self.ctx.current.pc).clone(),
            kind,
        }
    }

    fn fetch(&mut self) -> Result<u32, SimulationErrorKind> {
        // let pc = self.ctx.current.pc;

        // if let Some(instr) = self.config.fetch_cache.get(&pc) {
        //     return *instr;
        // }

        let instr = 0u32;

        // self.ctx.memory.update_cache(pc, );

        // no real fetch anymore :(
        // for i in 0..4 {
        //     let p = self.ctx.memory[pc] as u32;
        //     instr |= p << (i * 8);
        //     pc += 1;
        // }

        // self.config.fetch_cache.insert(pc, instr);

        Ok(instr)
    }

    fn decode(&self, pc: usize) -> &Op {
        &self.config.program[pc / 4]
    }

    fn memory_access(
        &mut self,
        req: Option<MemoryAccess>,
    ) -> Result<Option<u32>, SimulationErrorKind> {
        match req {
            None => Ok(None),
            Some(req) => {
                let range = req.range;

                self.ctx
                    .memory
                    .update_cache(range.start, req.write_val.is_none());

                if let Some(data) = req.write_val {
                    for (i, byte) in data.to_le_bytes().iter().enumerate() {
                        self.ctx.memory[range.start + i] = *byte;
                    }

                    Ok(None)
                } else {
                    let signed = req.signed;

                    // read memory based on range and signess (in little endian), return the value

                    let mut data = 0u32;

                    for i in 0..4 {
                        data |= (self.ctx.memory[range.start + i] as u32) << (i * 8);
                    }

                    // extend sign if signed
                    let size = range.len();

                    if signed {
                        let sign = data & (1 << (size * 8 - 1));
                        if sign != 0 {
                            data |= 0xffffffff << (size * 8);
                        }
                    }

                    Ok(Some(data))
                }
            }
        }
    }

    fn write_back(&mut self, result: Option<(usize, u32)>) {
        if let Some((rd, data)) = result {
            match rd {
                0 => {
                    return;
                }
                2 => {
                    self.ctx.stat.max_sp = self.ctx.stat.max_sp.max(data as usize);
                }
                3 => {
                    self.ctx.stat.max_gp = self.ctx.stat.max_gp.max(data as usize);
                }
                _ => {}
            };

            self.ctx.current.regs[rd] = data;
        }
    }

    pub fn predict_next_pc(&mut self) -> usize {
        let pc = self.ctx.current.pc;
        let op = self.decode(pc);
        let taken = pc.wrapping_add_signed(op.imm.raw().unwrap_or_default() as isize);

        let next_pc = match op.o.optype {
            OpType::R
            | OpType::U
            | OpType::L
            | OpType::E
            | OpType::F
            | OpType::N
            | OpType::O
            | OpType::S
            | OpType::I
            | OpType::Raw => pc + 4,
            OpType::J => taken,
            OpType::B => {
                let pred = self.ctx.sc.get(&pc).unwrap_or(&0);

                if *pred > 0 {
                    taken
                } else {
                    pc + 4
                }
            }
        };

        next_pc
    }

    pub fn run_once(&mut self) -> Result<(), SimulationError> {
        let _instr = self.fetch().map_err(|e| self.error_map(e))?;
        let pc = self.ctx.current.pc;

        #[allow(unused_assignments)]
        let mut exe = ExecuteResult::default();
        #[allow(unused_assignments)]
        let mut rd = Register::default();
        #[allow(unused_assignments)]
        let mut o = OpName::RAW;
        #[allow(unused_assignments)]
        let mut rs1 = Register::default();
        #[allow(unused_assignments)]
        let mut rs2 = Register::default();

        let op = self.decode(pc);
        rd = op.rd;
        o = op.o;
        rs1 = op.rs1;
        rs2 = op.rs2;

        if op.o.optype == OpType::E {
            let raw = op
                .imm
                .offset_or_lookup(&self.config.parsing_ctx)
                .unwrap()
                .try_into()
                .unwrap();

            match op.o {
                OpName::EBREAK => {
                    self.ctx.snapshots.push(self.ctx.current.clone());
                }
                OpName::ECOUNT => {
                    self.ctx
                        .e
                        .counter
                        .entry(raw)
                        .and_modify(|counter| *counter += 1)
                        .or_insert(0);
                }
                OpName::ESTART => {
                    self.ctx
                        .e
                        .timer
                        .entry(raw)
                        .and_modify(|timer| {
                            timer.start.push_back(self.ctx.stat.cycle_count);
                        })
                        .or_default();
                }
                OpName::ESTOP => {
                    self.ctx
                        .e
                        .timer
                        .entry(raw)
                        .and_modify(|timer| {
                            let pc = timer.start.pop_back();
                            // .expect("stopped time without starting");

                            if let Some(pc) = pc {
                                let this = self.ctx.stat.cycle_count - pc;
                                timer.sum_for_avg += this;

                                if timer.start.is_empty() {
                                    timer.real_sum += this
                                }

                                timer.count += 1;
                                timer.max = timer.max.max(this);
                                timer.min = if timer.min == 0 {
                                    this
                                } else {
                                    timer.min.min(this)
                                }
                            }
                        })
                        .or_default();
                }
                _ => unreachable!(),
            }
            self.ctx.current.next_pc = self.ctx.current.pc + 4;

            return Ok(());
        }

        exe = self.execute(op).map_err(|e| self.error_map(e))?;

        let ExecuteResult {
            mut wb,
            next_pc,
            mem,
            io,
        } = exe;

        if self.config.verbose {
            // basic
            self.ctx.stat.cycle_count += 1;

            self.ctx
                .stat
                .instr_count
                .entry(o)
                .and_modify(|count| *count += 1)
                .or_insert(1);

            // stall

            let stall = self.ctx.current.reg_status[rs1 as usize]
                .max(self.ctx.current.reg_status[rs2 as usize]);
            self.ctx.stat.hazard_stall_count += stall;
            self.ctx.stat.cycle_count += stall;

            if wb.is_some() {
                self.ctx.current.reg_status[rd as usize] = self.get_instruction_delay(o);
            }

            self.ctx
                .current
                .reg_status
                .iter_mut()
                .for_each(|d| *d = d.saturating_sub(1));

            let pc = self.ctx.current.pc;
            let next_pc_predicted = self.predict_next_pc();

            if next_pc_predicted != next_pc {
                self.ctx
                    .stat
                    .flash_count
                    .entry(o.optype)
                    .and_modify(|count| *count += 1)
                    .or_insert(1);
                self.ctx.stat.cycle_count += 1;
            }

            if o.optype == OpType::B {
                if next_pc_predicted != next_pc {
                    self.ctx.stat.branch_prediction_miss += 1;
                }

                if next_pc != pc + 4 {
                    self.ctx
                        .sc
                        .entry(pc)
                        .and_modify(|e| *e = (*e + 1).min(2))
                        .or_insert(1);
                } else {
                    self.ctx
                        .sc
                        .entry(pc)
                        .and_modify(|e| *e = (*e - 1).max(-1))
                        .or_insert(0);
                }
            }
        }

        if let Some(w) = self.memory_access(mem).map_err(|e| self.error_map(e))? {
            wb = Some(w)
        }

        if let Some((write, size)) = io {
            if write {
                let data = self.ctx.current.regs[rs2 as usize];
                self.config
                    .out_writer
                    .write_all(&data.to_le_bytes()[..size])
                    .map_err(|_| self.error_map(SimulationErrorKind::IOError))?;
            } else {
                let mut buf = vec![0u8; size];
                self.config
                    .in_reader
                    .read_exact(&mut buf)
                    .map_err(|_| self.error_map(SimulationErrorKind::IOError))?;
                wb = Some(
                    buf.iter()
                        .enumerate()
                        .fold(0, |acc, (i, &b)| acc | (b as u32) << (i * 8)),
                );
            }
        }

        self.write_back(wb.map(|data| (rd as usize, data)));

        self.ctx.current.next_pc = next_pc;

        Ok(())
    }

    pub fn run(&mut self) -> Result<(), SimulationError> {
        println!("Running program");
        loop {
            self.run_once()?;
            self.ctx.current.pc = self.ctx.current.next_pc;
            if self.ctx.current.pc >= self.ctx.memory.size.min(self.ctx.program.len() * 4) {
                println!("Program finished");
                break;
            }
        }

        Ok(())
    }

    pub fn get_instruction_delay(&self, op: OpName) -> usize {
        match op.optype {
            OpType::R | OpType::I | OpType::U | OpType::J => 1,
            OpType::L => 2,
            OpType::N => 1,
            OpType::F => 1,
            OpType::Raw | OpType::S | OpType::O | OpType::B | OpType::E => 0,
        }
    }
}
