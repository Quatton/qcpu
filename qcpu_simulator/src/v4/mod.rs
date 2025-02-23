mod decode;
pub mod execute;
pub mod memory;
pub mod stat;
mod syntax;

use std::{
    fs::File,
    io::{BufReader, BufWriter, Read, Write as _},
};

use cfg_if::cfg_if;
use decode::decode;
use execute::{execute, ExecuteResult};
use memory::MemoryV4;
use stat::Statistics;
use syntax::{get_reg_name, OpName, OpV4};

#[derive(Debug, Default, Clone)]
pub struct SimulatorV4Builder {
    pub input: Option<String>,
    pub output: Option<String>,
    pub bin: String,
    pub legacy_addressing: bool,
    pub verbose: bool,

    pub cache_miss_penalty: Option<u64>,
    pub cache_line: Option<usize>,
}

impl SimulatorV4Builder {
    pub fn build(self) -> SimulatorV4 {
        let mut program_unchunked = Vec::<u8>::with_capacity(131072);
        File::open(self.bin)
            .unwrap()
            .read_to_end(&mut program_unchunked)
            .unwrap();
        let program: Vec<u32> = program_unchunked
            .chunks_exact(4)
            .map(|c| u32::from_le_bytes(unsafe { *(c.as_ptr() as *const [_; 4]) }))
            .collect();

        let input_target = File::options()
            .read(true)
            .open(self.input.unwrap_or_else(|| {
                let tmp_file_path = std::env::temp_dir().join("in.txt");
                if !tmp_file_path.exists() {
                    File::create(&tmp_file_path).unwrap();
                }
                tmp_file_path.to_str().unwrap().to_string()
            }))
            .unwrap();
        let output_target = File::options()
            .write(true)
            .create(true)
            .truncate(true)
            .open(self.output.unwrap_or_else(|| String::from("result.txt")))
            .unwrap();

        let input = BufReader::new(input_target);
        let output = BufWriter::new(output_target);

        let decoded = program.iter().map(|&p| decode(p)).collect::<Vec<_>>();

        SimulatorV4 {
            program,
            input,
            output,
            decoded_len: decoded.len(),
            decoded,
            legacy_addressing: self.legacy_addressing,
            verbose: self.verbose,
            ctx: SimulatorV4Context {
                current: Snapshot {
                    reg: [0; 64],
                    pc: 0,
                    busy: [false; 64],
                },
                prev: Snapshot {
                    reg: [0; 64],
                    pc: 0,
                    busy: [false; 64],
                },
                memory: MemoryV4::new(self.cache_line),
                cache_hit: false,
            },
            stat: Statistics::default(),
            cache_miss_penalty: self.cache_miss_penalty.unwrap_or(CACHE_MISS_PENALTY),
        }
    }
}

#[derive(Debug, Clone, Copy)]
pub struct Snapshot {
    pub reg: [u32; 64],
    pub pc: usize,
    pub busy: [bool; 64],
}

impl Default for Snapshot {
    fn default() -> Self {
        Self {
            reg: [0; 64],
            pc: 0,
            busy: [false; 64],
        }
    }
}
#[derive(Debug, Default, Clone)]
pub struct SimulatorV4Context {
    pub current: Snapshot,
    pub prev: Snapshot,
    pub memory: MemoryV4,
    pub cache_hit: bool,
}

pub struct SimulatorV4 {
    pub program: Vec<u32>,
    pub decoded: Vec<OpV4>,
    pub decoded_len: usize,
    pub input: BufReader<File>,
    pub output: BufWriter<File>,
    pub ctx: SimulatorV4Context,
    pub stat: Statistics,
    pub cache_miss_penalty: u64,
    pub legacy_addressing: bool,
    pub verbose: bool,
}

#[derive(Debug, Clone, Copy)]
pub struct SimulatorV4HaltDetail {
    pub op: OpV4,
    pub line: usize,
    pub kind: SimulatorV4HaltKind,
}

#[derive(Debug, Clone, Copy)]
pub enum SimulatorV4HaltKind {
    MemoryAccess { bound: usize, index: usize },
    Complete,
}

const NUM_OPNAMES: usize = 64;

const DEFAULT_DELAY: u8 = 1;
const DELAY_LOOKUP: [u8; NUM_OPNAMES] = {
    let mut delays = [DEFAULT_DELAY; NUM_OPNAMES];
    delays[OpName::Fadd as usize] = 3;
    delays[OpName::Fsub as usize] = 3;
    delays[OpName::Fmul as usize] = 3;
    delays[OpName::Ftoi as usize] = 3;
    delays[OpName::Fitof as usize] = 3;
    delays[OpName::Fdiv as usize] = 9;
    delays
};

#[inline(always)]
fn get_delay(op: &OpV4) -> u64 {
    DELAY_LOOKUP[op.opname as usize] as u64
}

const CACHE_MISS_PENALTY: u64 = 55;
const CACHE_HIT_PENALTY: u64 = 2;

impl SimulatorV4 {
    pub fn log_stat(&self) {
        println!("{}", self.stat);
        println!("{}", self.ctx.memory.stat);
    }

    pub fn log_registers(&self) {
        for (i, reg) in self.ctx.current.reg.iter().enumerate() {
            let reg_name = get_reg_name(i as u8);
            if i < 32 {
                print!("{:5}: 0x{:08x} ({:12})", reg_name, reg, *reg as i32);
            } else {
                print!(
                    "{:5}: 0x{:08x} ({:12.6e})",
                    reg_name,
                    reg,
                    f32::from_bits(*reg)
                );
            }

            print!(" ");
            if i % 4 == 3 {
                println!();
            }
        }
    }

    pub fn run_once(&mut self) -> Result<(), SimulatorV4HaltDetail> {
        let pc = self.ctx.current.pc;

        let index = pc >> 2;
        if index >= self.decoded_len {
            return Err(SimulatorV4HaltDetail {
                op: unsafe { *self.decoded.get_unchecked(self.ctx.prev.pc >> 2) },
                line: self.ctx.prev.pc >> 2,
                kind: SimulatorV4HaltKind::Complete,
            });
        }
        let op = unsafe { *self.decoded.get_unchecked(index) };

        if self.verbose {
            // Always use unsafe indexing to avoid bounds checks.
            let busy = unsafe {
                *self.ctx.current.busy.get_unchecked(op.rs1 as usize)
                    || *self.ctx.current.busy.get_unchecked(op.rs2 as usize)
            };
            let delay = get_delay(&op);
            let cache_hit = self.ctx.cache_hit;
            // Compute both cases inline to let the optimizer fuse branches.
            let busy_penalty = delay
                + if cache_hit {
                    CACHE_HIT_PENALTY
                } else {
                    self.cache_miss_penalty
                };
            let nonbusy_penalty = if cache_hit {
                delay.max(CACHE_HIT_PENALTY)
            } else {
                self.cache_miss_penalty
            };

            if busy {
                self.stat.hazard_count += 1;
            }
            // Invert the branch if it helps with prediction (or use a likely/hint crate if available).
            let penalty = if busy { busy_penalty } else { nonbusy_penalty };

            self.stat.cycle_count += penalty;
            self.stat.instr_count += 1;
        }

        let next_pc_predicted = self.ctx.current.pc + 4;
        let mut next_pc_true = next_pc_predicted;

        let imm = op.imm;

        match op.opname {
            OpName::Lw | OpName::Lwr | OpName::Lwi => {
                cfg_if! {
                    if #[cfg(not(feature = "unsafe"))] {
                        let rs1u = self.ctx.current.reg[op.rs1 as usize];
                        let rs2u = self.ctx.current.reg[op.rs2 as usize];
                        let rd_mut = &mut self.ctx.current.reg[op.rd as usize];
                        let busy_rd_mut = &mut self.ctx.current.busy[op.rd as usize];
                    } else {
                        let rs1u = *unsafe { self.ctx.current.reg.get_unchecked(op.rs1 as usize) };
                        let rs2u = *unsafe { self.ctx.current.reg.get_unchecked(op.rs2 as usize) };
                        let rd_mut = unsafe { self.ctx.current.reg.get_unchecked_mut(op.rd as usize) };
                        let busy_rd_mut = unsafe { self.ctx.current.busy.get_unchecked_mut(op.rd as usize) };
                    }
                }

                let mut addr = match op.opname {
                    OpName::Lw => rs1u.wrapping_add(imm),
                    OpName::Lwr => rs1u.wrapping_add(rs2u),
                    OpName::Lwi => imm,
                    _ => unreachable!(),
                } as usize;

                if self.legacy_addressing {
                    addr >>= 2
                };

                if op.rd != 0 {
                    #[cfg(not(feature = "unsafe"))]
                    {
                        let (val, hit) =
                            self.ctx
                                .memory
                                .read(addr)
                                .map_err(|e| SimulatorV4HaltDetail {
                                    op,
                                    line: pc >> 2,
                                    kind: e,
                                })?;

                        *rd_mut = val;
                        self.ctx.cache_hit = hit;
                    }

                    #[cfg(feature = "unsafe")]
                    {
                        let (val, hit) = unsafe { self.ctx.memory.read_unchecked(addr) };
                        *rd_mut = val;
                        self.ctx.cache_hit = hit;
                    }

                    *busy_rd_mut = true;
                }
            }
            OpName::Sw | OpName::Swi => {
                cfg_if! {
                    if #[cfg(not(feature = "unsafe"))] {
                        let rs1u = self.ctx.current.reg[op.rs1 as usize];
                        let rs2u = self.ctx.current.reg[op.rs2 as usize];
                    } else {
                        let rs1u = *unsafe { self.ctx.current.reg.get_unchecked(op.rs1 as usize) };
                        let rs2u = *unsafe { self.ctx.current.reg.get_unchecked(op.rs2 as usize) };
                    }
                }

                let mut addr = match op.opname {
                    OpName::Sw => rs1u.wrapping_add(imm),
                    OpName::Swi => imm,
                    _ => unreachable!(),
                } as usize;

                if self.legacy_addressing {
                    addr >>= 2
                };

                #[cfg(not(feature = "unsafe"))]
                let hit = self
                    .ctx
                    .memory
                    .write(addr, rs2u)
                    .map_err(|e| SimulatorV4HaltDetail {
                        op,
                        line: pc >> 2,
                        kind: e,
                    })?;

                #[cfg(feature = "unsafe")]
                let hit = unsafe { self.ctx.memory.write_unchecked(addr, rs2u) };

                self.ctx.current.busy = [false; 64];
                self.ctx.cache_hit = hit;
            }
            OpName::Outb => {
                cfg_if! {
                    if #[cfg(not(feature = "unsafe"))] {
                        let rs2u = self.ctx.current.reg[op.rs2 as usize];
                    } else {
                        let rs2u = *unsafe { self.ctx.current.reg.get_unchecked(op.rs2 as usize) };
                    }
                }

                self.output.write_all(&[(rs2u & 0xff) as u8]).unwrap();
                self.ctx.current.busy = [false; 64];
                self.ctx.cache_hit = true;
            }
            OpName::Inw => {
                if op.rd != 0 {
                    let mut buf = [0; 4];
                    self.input.read_exact(&mut buf).unwrap();
                    self.ctx.current.reg[op.rd as usize] = u32::from_le_bytes(buf);
                }

                self.ctx.current.busy = [false; 64];
                self.ctx.cache_hit = true;
            }
            _ => {
                cfg_if! {
                    if #[cfg(not(feature = "unsafe"))] {
                        let rs1u = self.ctx.current.reg[op.rs1 as usize];
                        let rs2u = self.ctx.current.reg[op.rs2 as usize];
                        let rd_mut = &mut self.ctx.current.reg[op.rd as usize];
                    } else {
                        let rs1u = *unsafe { self.ctx.current.reg.get_unchecked(op.rs1 as usize) };
                        let rs2u = *unsafe { self.ctx.current.reg.get_unchecked(op.rs2 as usize) };
                        let rd_mut = unsafe { self.ctx.current.reg.get_unchecked_mut(op.rd as usize) };
                    }
                }

                let ExecuteResult { next_pc, wb } = execute(rs1u, rs2u, pc, &op);
                next_pc_true = next_pc;
                if op.rd != 0 {
                    if let Some(wb) = wb {
                        *rd_mut = wb;
                    }
                }
                self.ctx.current.busy = [false; 64];
                self.ctx.cache_hit = true;
            }
        };
        self.ctx.current.pc = next_pc_true;
        Ok(())
    }

    pub fn run(&mut self) -> Result<(), SimulatorV4HaltDetail> {
        loop {
            let result = self.run_once();

            result?;
        }
    }
}

#[cfg(test)]
mod test {
    use qcpu_syntax::v2::op::Op;

    use crate::{
        v2::context::{SimulationConfig, SimulationContext, Simulator},
        v4::syntax::OpName,
    };

    use super::{memory::MEMORY_SIZE, *};

    #[test]
    pub fn decode_test() {
        let dir = std::env::current_dir().unwrap();
        let dir = dir.parent().unwrap();
        println!("{:?}", dir.join("test_data/minrt_32.bin"));
        let mut bin_file = File::open(dir.join("test_data/minrt_32.bin")).unwrap();
        let mut bin = Vec::<u8>::with_capacity(131072);
        bin_file.read_to_end(&mut bin).unwrap();

        let program: Vec<u32> = bin
            .chunks_exact(4)
            .map(|c| u32::from_le_bytes(unsafe { *(c.as_ptr() as *const [_; 4]) }))
            .collect();

        let decoded = program.iter().map(|&p| decode(p)).collect::<Vec<_>>();

        let compared = program.iter().map(|&p| Op::decode(p)).collect::<Vec<_>>();

        for (i, (d, c)) in decoded.iter().zip(compared.iter()).enumerate() {
            // if d.rs1 != 0 {
            assert_eq!(
                d.rs1, c.rs1 as usize as u8,
                "rs1 mismatch at {}, {:?} vs {:?}",
                i, d, c
            );
            // }
            // if d.rs2 != 0 {
            assert_eq!(
                d.rs2, c.rs2 as usize as u8,
                "rs2 mismatch at {}, {:?} vs {:?}",
                i, d, c
            );
            // }
            // if d.rd != 0 {
            assert_eq!(
                d.rd, c.rd as usize as u8,
                "rd mismatch at {}, {:?} vs {:?}",
                i, d, c
            );
            // }

            if c.imm.raw().is_some() {
                assert_eq!(
                    d.imm,
                    if let OpName::Lui = d.opname {
                        (c.imm.raw().unwrap() as u32) << 12
                    } else {
                        c.imm.raw().unwrap() as u32
                    },
                    "imm mismatch at {}, {:?} vs {:?}",
                    i,
                    d,
                    c
                );
            }
        }
    }

    #[test]
    fn integration_test() {
        let dir = std::env::current_dir().unwrap();
        let dir = dir.parent().unwrap();
        let file_in = dir.join("test_data/contest");
        let file_out = dir.join("test_data/test_v4.ppm");
        let file_bin = dir.join("test_data/minrt_32.bin");

        let mut sim = SimulatorV4Builder {
            input: Some(file_in.to_str().unwrap().to_string()),
            output: Some(file_out.to_str().unwrap().to_string()),
            bin: file_bin.to_str().unwrap().to_string(),
            legacy_addressing: true,
            verbose: false,
            cache_line: None,
            cache_miss_penalty: None,
        }
        .build();

        let decoded = sim
            .program
            .iter()
            .map(|&p| Op::decode(p))
            .collect::<Vec<_>>();

        let config = SimulationConfig::default()
            .file_in(Some(file_in.to_str().unwrap().to_string()))
            .file_out(Some(file_out.to_str().unwrap().to_string()))
            .load_decoded_program(decoded)
            .memory_size(MEMORY_SIZE);

        let mut compared = Simulator::with_config(config);

        loop {
            compared.run_once().unwrap();
            sim.run_once().unwrap();

            let (SimulatorV4Context { current, .. }, _) = (&sim.ctx, &compared.ctx);
            {
                let Simulator {
                    ctx:
                        SimulationContext {
                            current: current2, ..
                        },
                    ..
                } = &compared;

                for i in 0..64 {
                    assert_eq!(
                        current.reg[i],
                        current2.regs[i],
                        "reg mismatch at {} {:?} {:?}",
                        get_reg_name(i as u8),
                        Op::decode(sim.program[sim.ctx.prev.pc >> 2]),
                        sim.ctx.prev.reg
                    );
                }
            }

            if compared.ctx.current.pc >= compared.config.program.len() * 4 {
                println!("Program finished");
                break;
            }
            compared.ctx.current.pc = compared.ctx.current.next_pc;
        }
    }
}
