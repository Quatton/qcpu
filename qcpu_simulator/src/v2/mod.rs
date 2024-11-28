use std::ops::Range;

use context::{BranchPredictionStrategy, Simulator};
use error::{SimulationError, SimulationErrorKind};
use qcpu_syntax::v2::{
    op::Op,
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
            op: self.ctx.current.op.clone(),
            kind,
        }
    }

    fn fetch(&mut self) -> Result<u32, SimulationErrorKind> {
        let mut pc = self.ctx.current.pc;

        // if let Some(instr) = self.config.fetch_cache.get(&pc) {
        //     return *instr;
        // }

        let mut instr = 0u32;

        self.ctx.memory.update_cache(pc);
        for i in 0..4 {
            let p = *self.ctx.memory.geti(pc)? as u32;
            instr |= p << (i * 8); // little fucking endian
            pc += 1;
        }

        // self.config.fetch_cache.insert(pc, instr);

        Ok(instr)
    }

    fn decode(&mut self, mc: u32) -> Op {
        if let Some(op) = self.config.decode_cache.get(&mc) {
            return op.clone();
        }

        let op = Op::decode(mc);

        self.config.decode_cache.insert(mc, op.clone());

        op
    }

    fn memory_access(
        &mut self,
        req: Option<(Range<usize>, u32)>,
    ) -> Result<(), SimulationErrorKind> {
        if let Some((range, data)) = req {
            self.ctx.memory.update_cache(range.start);
            for (i, byte) in data.to_le_bytes().iter().enumerate() {
                *self.ctx.memory.geti_mut(range.start + i)? = *byte;
            }
        }

        Ok(())
    }

    fn write_back(&mut self, result: Option<(usize, u32)>) {
        if let Some((rd, data)) = result {
            if rd == 0 {
                return;
            }

            self.ctx.current.regs[rd] = data;
        }
    }

    pub fn predict_next_pc(&mut self, op: &Op) -> usize {
        let pc = self.ctx.current.pc;
        let taken = pc.wrapping_add_signed(op.imm.raw().unwrap_or_default() as isize);

        match op.o.optype {
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
            OpType::B => match &self.config.branch_prediction {
                BranchPredictionStrategy::Ant => pc + 4,
                BranchPredictionStrategy::At => taken,
                BranchPredictionStrategy::Bm => {
                    let pred = self.ctx.sc.get(&pc).unwrap_or(&0);

                    if *pred > 0 {
                        taken
                    } else {
                        pc + 4
                    }
                }
            },
        }
    }

    pub fn run_once(&mut self) -> Result<(), SimulationError> {
        let instr = self.fetch().map_err(|e| self.error_map(e))?;

        let op = self.decode(instr);

        if op.o == OpName::EBREAK {
            self.ctx.snapshots.push(self.ctx.current.clone());
            self.ctx.current.next_pc = self.ctx.current.pc + 4;
            return Ok(());
        }

        self.ctx.current.op = op.clone();
        let (rd_res, next_pc_true, wm) = self.execute(&op).map_err(|e| self.error_map(e))?;

        // verbose stuff here

        if self.config.verbose {
            let pc = self.ctx.current.pc;
            let next_pc_predicted =
                if self.config.branch_prediction == BranchPredictionStrategy::Ant {
                    pc + 4
                } else {
                    self.predict_next_pc(&op)
                };

            self.ctx.current.next_pc = next_pc_predicted;

            self.ctx.stat.cycle_count += 1;
            self.ctx.current.reg_status.iter_mut().for_each(|d| {
                if d == &0 {
                    *d = 0
                } else {
                    *d = d.saturating_sub(1)
                }
            });

            // might be zero anyway so we don't need to check
            let stall = self.ctx.current.reg_status[op.rs1 as usize]
                .max(self.ctx.current.reg_status[op.rs2 as usize]);
            self.ctx.stat.hazard_stall_count += stall;
            self.ctx.stat.cycle_count += stall;

            self.ctx
                .stat
                .instr_count
                .entry(op.o)
                .and_modify(|count| *count += 1)
                .or_insert(1);

            if rd_res.is_some() {
                self.ctx.current.reg_status[op.rd as usize] = self.get_instruction_delay(op.o);
            }

            if next_pc_predicted != next_pc_true {
                self.ctx
                    .stat
                    .flash_count
                    .entry(op.o.optype)
                    .and_modify(|count| *count += 1)
                    .or_insert(1);
                self.ctx.stat.cycle_count += 2;
            }

            if op.o.optype == OpType::B
                && self.config.branch_prediction == BranchPredictionStrategy::Bm
            {
                if next_pc_true != pc + 4 {
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

        self.memory_access(wm).map_err(|e| self.error_map(e))?;
        self.write_back(rd_res.map(|data| (op.rd as usize, data)));

        self.ctx.current.next_pc = next_pc_true;

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
