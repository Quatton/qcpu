pub mod bp;
mod decode;
pub mod execute;
pub mod memory;
pub mod stat;
mod syntax;

use std::{
    fs::File,
    io::{BufReader, BufWriter, Read, Write as _},
};

use bp::BranchPredictor;
use decode::decode;
use execute::execute;
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
            prev_op: OpV4::default(),
            program,
            input,
            output,
            decoded_len: decoded.len(),
            decoded,
            legacy_addressing: self.legacy_addressing,
            verbose: self.verbose,
            current: Snapshot::default(),
            memory: MemoryV4::new(self.cache_line),
            cache_hit: false,
            stat: Statistics::default(),
            cache_miss_penalty: self.cache_miss_penalty.unwrap_or(CACHE_MISS_PENALTY),
            bp: BranchPredictor::new(),
        }
    }
}

#[derive(Debug, Clone, Copy)]
pub struct Snapshot {
    pub reg: [u32; 64],
    pub pc: usize,
    pub busy: u64,
}

impl Default for Snapshot {
    fn default() -> Self {
        Self {
            reg: [0; 64],
            pc: 0,
            busy: 0,
        }
    }
}
pub struct SimulatorV4 {
    pub program: Vec<u32>,
    pub decoded: Vec<OpV4>,
    pub decoded_len: usize,
    pub input: BufReader<File>,
    pub output: BufWriter<File>,
    pub current: Snapshot,
    pub prev_op: OpV4,
    pub memory: MemoryV4,
    pub cache_hit: bool,
    pub stat: Statistics,
    pub cache_miss_penalty: u64,
    pub legacy_addressing: bool,
    pub verbose: bool,
    pub bp: BranchPredictor,
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

const CACHE_MISS_PENALTY: u64 = 55;
const CACHE_HIT_PENALTY: u64 = 2;

impl SimulatorV4 {
    pub fn log_stat(&self) {
        println!("{}", self.stat);
        println!("{}", self.memory.stat);
        println!("{}", self.bp);
    }

    pub fn log_registers(&self) {
        for (i, reg) in self.current.reg.iter().enumerate() {
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

    #[inline]
    pub fn get_reg(&self, reg: u8) -> u32 {
        *unsafe { self.current.reg.get_unchecked(reg as usize) }
    }

    #[inline]
    pub fn get_reg_mut(&mut self, reg: u8) -> &mut u32 {
        unsafe { self.current.reg.get_unchecked_mut(reg as usize) }
    }

    #[inline]
    pub fn get_busy(&self, reg: u8) -> bool {
        self.current.busy & (1 << reg) != 0
    }

    #[inline]
    pub fn set_busy(&mut self, reg: u8, busy: bool) {
        if busy {
            self.current.busy |= 1 << reg;
        } else {
            self.current.busy &= !(1 << reg);
        }
    }

    pub fn run_once(&mut self) -> Result<(), SimulatorV4HaltDetail> {
        let pc = self.current.pc;
        let index = pc >> 2;
        if index >= self.decoded_len {
            return Err(SimulatorV4HaltDetail {
                op: self.prev_op,
                line: (self.current.pc >> 2) - 1,
                kind: SimulatorV4HaltKind::Complete,
            });
        }
        let op = unsafe { *self.decoded.get_unchecked(index) };

        if self.verbose {
            self.stat.instr_count += 1;
            let delay = *unsafe { DELAY_LOOKUP.get_unchecked(op.opname as usize) } as u64;
            self.stat.cycle_count += match self.prev_op.opname {
                OpName::Lw | OpName::Lwr | OpName::Lwi | OpName::Inw => {
                    let delay = if self.current.busy & ((1 << op.rs1) | (1 << op.rs2)) != 0 {
                        self.stat.hazard_count += 1;
                        delay
                            + if self.cache_hit {
                                CACHE_HIT_PENALTY
                            } else {
                                self.cache_miss_penalty
                            }
                    } else if self.cache_hit {
                        delay.max(CACHE_HIT_PENALTY)
                    } else {
                        self.cache_miss_penalty
                    };

                    self.cache_hit = true;
                    self.current.busy = 0;

                    delay
                }
                _ => delay,
            };
        }

        let mut next_pc_true = pc + 4;

        let imm = op.imm;

        match op.opname {
            OpName::Lw | OpName::Lwr | OpName::Lwi => {
                let rs1u = self.get_reg(op.rs1);
                let rs2u = self.get_reg(op.rs2);

                let mut addr = match op.opname {
                    OpName::Lw => rs1u.wrapping_add(imm),
                    OpName::Lwr => rs1u.wrapping_add(rs2u),
                    OpName::Lwi => imm,
                    _ => unreachable!(),
                } as usize;

                if self.legacy_addressing {
                    addr >>= 2;
                }

                if op.rd != 0 {
                    #[cfg(not(feature = "unsafe"))]
                    let (val, hit) = self.memory.read(addr).map_err(|e| SimulatorV4HaltDetail {
                        op,
                        line: pc >> 2,
                        kind: e,
                    })?;

                    #[cfg(feature = "unsafe")]
                    let (val, hit) = unsafe { self.memory.read_unchecked(addr) };

                    *self.get_reg_mut(op.rd) = val;

                    self.cache_hit = hit;
                    self.set_busy(op.rd, true);
                }
            }
            OpName::Sw | OpName::Swi => {
                let rs1u = self.get_reg(op.rs1);
                let rs2u = self.get_reg(op.rs2);

                let mut addr = match op.opname {
                    OpName::Sw => rs1u.wrapping_add(imm),
                    OpName::Swi => imm,
                    _ => unreachable!(),
                } as usize;

                if self.legacy_addressing {
                    addr >>= 2;
                }

                #[cfg(not(feature = "unsafe"))]
                let hit = self
                    .memory
                    .write(addr, rs2u)
                    .map_err(|e| SimulatorV4HaltDetail {
                        op,
                        line: pc >> 2,
                        kind: e,
                    })?;

                #[cfg(feature = "unsafe")]
                let hit = unsafe { self.memory.write_unchecked(addr, rs2u) };

                self.cache_hit = hit;
            }
            OpName::Outb => {
                let rs2u = self.get_reg(op.rs2);
                self.output.write_all(&[(rs2u & 0xff) as u8]).unwrap();
            }
            OpName::Inw => {
                if op.rd != 0 {
                    let mut buf = [0; 4];
                    self.input.read_exact(&mut buf).unwrap();
                    let rd_mut = self.get_reg_mut(op.rd);
                    *rd_mut = u32::from_le_bytes(buf);
                    self.set_busy(op.rd, true);
                }
            }
            _ => {
                let rs1u = self.get_reg(op.rs1);
                let rs2u = self.get_reg(op.rs2);

                let (next_pc, wb) = execute(rs1u, rs2u, pc, &op);

                if self.verbose {
                    match op.opname {
                        OpName::Jalr | OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                            let next_pc_predicted = self.bp.predict(&op, pc);
                            let flashed = self.bp.update_taken(&op, pc, next_pc_predicted, next_pc);
                            self.stat.cycle_count += if flashed { 2 } else { 0 };
                        }
                        _ => {}
                    }
                }

                next_pc_true = next_pc;
                if op.rd != 0 {
                    if let Some(wb) = wb {
                        *self.get_reg_mut(op.rd) = wb;
                    }
                }
            }
        };
        self.current.pc = next_pc_true;
        self.prev_op = op;
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
