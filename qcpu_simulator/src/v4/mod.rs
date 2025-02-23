mod decode;
pub mod execute;
pub mod memory;
pub mod stat;
mod syntax;

use std::{
    fmt::Display,
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
                memory: MemoryV4::new(self.cache_line),
                cache_hit: false,
            },
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
    pub memory: MemoryV4,
    pub cache_hit: bool,
}

pub struct BranchPredictor {
    pub taken_pht: [i8; TAKEN_PHT_SIZE],
    pub untaken_pht: [i8; TAKEN_PHT_SIZE],
    pub selector_pht: [i8; SELECTOR_PHT_SIZE],
    pub jalr_addr: [usize; JALR_ADDR_SIZE],
    pub flash_count: [usize; 2],
    pub total_count: [usize; 2],
    pub gh: usize,
}

const TAKEN_PHT_SIZE: usize = 1024;
const TAKEN_PHT_MASK: usize = TAKEN_PHT_SIZE - 1;
const SELECTOR_PHT_SIZE: usize = 256;
const SELECTOR_PHT_MASK: usize = SELECTOR_PHT_SIZE - 1;
const JALR_ADDR_SIZE: usize = 1024;
const JALR_ADDR_MASK: usize = JALR_ADDR_SIZE - 1;
const GH_SIZE: usize = 10;
const GH_MASK: usize = GH_SIZE - 1;

impl BranchPredictor {
    pub fn new() -> Self {
        Self {
            taken_pht: [2; TAKEN_PHT_SIZE],
            untaken_pht: [1; TAKEN_PHT_SIZE],
            selector_pht: [2; SELECTOR_PHT_SIZE],
            jalr_addr: [0; JALR_ADDR_SIZE],
            flash_count: [0; 2],
            total_count: [0; 2],
            gh: 0,
        }
    }

    #[inline(always)]
    pub fn predict(&self, op: &OpV4, pc: usize) -> usize {
        let taken = pc.wrapping_add_signed(op.imm as isize);
        let untaken = pc.wrapping_add(4);
        let pci = pc >> 2;

        match op.opname {
            OpName::Jal => taken,
            OpName::Jalr => {
                let addr = self.jalr_addr[pci & JALR_ADDR_MASK];
                if addr > 0 {
                    addr
                } else {
                    untaken
                }
            }
            OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                let taken_idx = (self.gh ^ pci) & TAKEN_PHT_MASK;
                let selector_idx = (self.gh ^ pci) & SELECTOR_PHT_MASK;

                if self.selector_pht[selector_idx] >= 2 {
                    if self.taken_pht[taken_idx] >= 2 {
                        taken
                    } else {
                        untaken
                    }
                } else if self.untaken_pht[taken_idx] >= 2 {
                    untaken
                } else {
                    taken
                }
            }
            _ => untaken,
        }
    }

    #[inline(always)]
    pub fn update_taken(
        &mut self,
        op: &OpV4,
        pc: usize,
        predicted_pc: usize,
        next_pc: usize,
    ) -> bool {
        let pci = pc >> 2;

        match op.opname {
            OpName::Jalr => {
                self.jalr_addr[pci & JALR_ADDR_MASK] = next_pc;
                if next_pc != predicted_pc {
                    self.flash_count[0] += 1;
                    true
                } else {
                    false
                }
            }
            OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                self.gh = ((self.gh << 1) | (next_pc != pc + 4) as usize) & GH_MASK;
                let taken_idx = (self.gh ^ pci) & TAKEN_PHT_MASK;
                let selector_idx = (self.gh ^ pci) & SELECTOR_PHT_MASK;

                let taken = &mut self.taken_pht[taken_idx];
                let untaken = &mut self.untaken_pht[taken_idx];
                let selector = &mut self.selector_pht[selector_idx];

                if next_pc != predicted_pc {
                    *taken = (*taken + 1).min(3);
                    *untaken = (*untaken - 1).max(0);
                    *selector = (*selector + 1).min(3);
                } else {
                    *taken = (*taken - 1).max(0);
                    *untaken = (*untaken + 1).min(3);
                    *selector = (*selector - 1).max(0);
                }

                if next_pc != predicted_pc {
                    self.flash_count[1] += 1;
                    true
                } else {
                    false
                }
            }
            _ => false,
        }
    }
}

impl Display for BranchPredictor {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(
            f,
            "JALR Flash Count: {} ({:.02}%)",
            self.flash_count[0],
            self.flash_count[0] as f64 / self.total_count[0] as f64 * 100.0
        )?;
        write!(
            f,
            "Branch Flash Count: {} ({:.02}%)",
            self.flash_count[1],
            self.flash_count[1] as f64 / self.total_count[1] as f64 * 100.0
        )
    }
}

impl Default for BranchPredictor {
    fn default() -> Self {
        Self::new()
    }
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
        println!("{}", self.bp);
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
                op: unsafe { *self.decoded.get_unchecked((self.ctx.current.pc >> 2) - 1) },
                line: (self.ctx.current.pc >> 2) - 1,
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

        let next_pc_predicted = self.bp.predict(&op, pc);
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

                let flashed = self.bp.update_taken(&op, pc, next_pc_predicted, next_pc);

                self.stat.cycle_count += if flashed { 2 } else { 0 };

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
                        Op::decode(sim.program[sim.ctx.current.pc >> 2]),
                        sim.ctx.current.reg
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
