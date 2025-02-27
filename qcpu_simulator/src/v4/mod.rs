pub mod bp;
mod decode;
pub mod execute;
mod fsqrt_table;
pub mod memory;
pub mod stat;
mod syntax;

use std::{
    fs::File,
    io::{BufReader, BufWriter, Read, Write as _},
    path::PathBuf,
};

use bp::BranchPredictor;
use decode::decode;
use memory::MemoryV4;
use stat::Statistics;
use syntax::{get_reg_name, OpName, OpV4};

#[derive(Debug, Default, Clone)]
pub struct SimulatorV4Builder {
    pub input: Option<PathBuf>,
    pub output: Option<PathBuf>,
    pub bin: PathBuf,
    pub verbose: bool,
    pub log: Option<PathBuf>,
}

impl SimulatorV4Builder {
    pub fn build(self) -> SimulatorV4 {
        let mut program_unchunked = Vec::<u8>::with_capacity(131072);
        File::open(&self.bin)
            .unwrap()
            .read_to_end(&mut program_unchunked)
            .unwrap();
        let program: Vec<u32> = program_unchunked
            .chunks_exact(4)
            .map(|c| u32::from_le_bytes(unsafe { *(c.as_ptr() as *const [_; 4]) }))
            .collect();

        let output = self
            .output
            .unwrap_or_else(|| self.bin.with_extension("ppm"));

        let log = self.log.unwrap_or_else(|| {
            self.bin.parent().unwrap().join(format!(
                "{}-{}{}.log",
                self.bin.file_stem().unwrap().to_string_lossy(),
                chrono::Local::now().format("%Y-%m-%d_%H-%M-%S"),
                if self.verbose { "-verbose" } else { "" }
            ))
        });

        let input_target = File::options()
            .read(true)
            .open(self.input.unwrap_or_else(|| {
                let parent = self.bin.parent().unwrap();
                parent.join("contest")
            }))
            .expect("Input file not found");

        let output_target = File::options()
            .write(true)
            .create(true)
            .truncate(true)
            .open(&output)
            .expect("Output file not found");

        let log_target = File::options()
            .write(true)
            .create(true)
            .truncate(true)
            .open(&log)
            .expect("Log file not found");

        let input_reader = BufReader::new(input_target);
        let output_writer = BufWriter::new(output_target);
        let log_writer = BufWriter::new(log_target);

        let decoded = program.iter().map(|&p| decode(p)).collect::<Vec<_>>();

        SimulatorV4 {
            prev_op: OpV4::default(),
            // program,
            input: input_reader,
            output: output_writer,
            output_file: output,
            log_file: log,
            log: log_writer,
            decoded_len: decoded.len(),
            decoded,
            verbose: self.verbose,
            reg: [0; 64],
            pc: 0,
            memory: MemoryV4::new(self.verbose),
            cache_hit: false,
            stat: Statistics::default(),
            bp: BranchPredictor::new(),
        }
    }
}

pub struct SimulatorV4 {
    // Vec and BufReader/BufWriter are pointer-sized (8 bytes)
    // pub program: Vec<u32>,
    pub decoded: Vec<OpV4>,
    pub input: BufReader<File>,
    pub output: BufWriter<File>,
    pub log: BufWriter<File>,

    // Fixed-size array (256 bytes)
    pub reg: [u32; 64],
    // Memory and other larger structs
    pub memory: MemoryV4,
    pub bp: BranchPredictor,
    pub stat: Statistics,
    pub output_file: PathBuf,
    pub log_file: PathBuf,
    // usize (8 bytes)
    pub pc: usize,
    pub decoded_len: usize,
    // OpV4 (likely 8 or 16 bytes)
    pub prev_op: OpV4,
    // bool (1 byte each, will be packed)
    pub cache_hit: bool,
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
    delays[OpName::Fadd as usize] = 4;
    delays[OpName::Fsub as usize] = 4;
    delays[OpName::Fmul as usize] = 3;
    delays[OpName::Ftoi as usize] = 2;
    delays[OpName::Fitof as usize] = 3;
    delays[OpName::Fdiv as usize] = 6;
    delays
};

pub const CLOCK_MHZ: u64 = 122;
pub const CACHE_HIT_PENALTY: u64 = 2;
pub const CACHE_MISS_PENALTY: u64 = 55;

impl SimulatorV4 {
    pub fn log_stat(&mut self) {
        // println!("{}", self.stat);
        // println!("{}", self.memory.stat);
        // println!("{}", self.bp);
        self.log
            .write_all(format!("{}\n{}\n{}\n", self.stat, self.memory.stat, self.bp).as_bytes())
            .unwrap();
    }

    pub fn log_registers(&self) {
        for (i, reg) in self.reg.iter().enumerate() {
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

    #[inline(always)]
    pub fn get_reg(&self, reg: u8) -> u32 {
        *unsafe { self.reg.get_unchecked(reg as usize) }
    }

    #[inline(always)]
    pub fn set_reg(&mut self, reg: u8, val: u32) {
        if reg == 0 {
            return;
        }
        *unsafe { self.reg.get_unchecked_mut(reg as usize) } = val;
    }

    #[inline(always)]
    pub fn get_reg_mut(&mut self, reg: u8) -> &mut u32 {
        unsafe { self.reg.get_unchecked_mut(reg as usize) }
    }

    pub fn run(&mut self) -> Result<(), SimulatorV4HaltDetail> {
        loop {
            let pc = self.pc;
            let index = pc >> 2;
            if index >= self.decoded_len {
                return Err(SimulatorV4HaltDetail {
                    op: self.prev_op,
                    line: index - 1,
                    kind: SimulatorV4HaltKind::Complete,
                });
            }

            let op = unsafe { *self.decoded.get_unchecked(index) };

            if self.verbose {
                self.stat.instr_count += 1;
                let base_delay = *unsafe { DELAY_LOOKUP.get_unchecked(op.opname as usize) } as u64;

                self.stat.cycle_count += match self.prev_op.opname {
                    OpName::Lw | OpName::Lwr | OpName::Lwi | OpName::Inw => {
                        let has_hazard = (op.rs1 == self.prev_op.rd || op.rs2 == self.prev_op.rd)
                            && self.prev_op.rd != 0;

                        let cache_penalty = if self.cache_hit {
                            CACHE_HIT_PENALTY
                        } else {
                            CACHE_MISS_PENALTY
                        };

                        let delay = if has_hazard {
                            self.stat.hazard_count += 1;
                            base_delay + cache_penalty
                        } else {
                            base_delay.max(cache_penalty)
                        };

                        self.cache_hit = true;
                        delay
                    }
                    _ => base_delay,
                };
            }

            let next_pc = self.execute(&op).map_err(|kind| SimulatorV4HaltDetail {
                op,
                line: index,
                kind,
            })?;

            if self.verbose {
                match op.opname {
                    OpName::Jalr | OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                        let flushed = self.bp.update_taken(&op, pc >> 2, next_pc >> 2);
                        self.stat.cycle_count += if flushed { 2 } else { 0 };
                    }
                    _ => {}
                }
            }

            self.pc = next_pc;
            self.prev_op = op;
        }
    }
}

#[cfg(test)]
mod test {
    use qcpu_syntax::v2::op::Op;

    use crate::v4::syntax::OpName;

    use super::*;

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
}
