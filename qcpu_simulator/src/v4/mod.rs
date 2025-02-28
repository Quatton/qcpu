pub mod bp;
mod decode;
pub mod execute;
pub mod log;
pub mod memory;
pub mod stat;
pub mod syntax;
mod table;

use std::{
    fs::File,
    io::{BufReader, BufWriter, Read},
    path::PathBuf,
};

use bp::BranchPredictor;
use decode::decode;
use memory::MemoryV4;
use serde::Serialize;
use stat::Statistics;
use syntax::{OpName, OpV4, Reg};

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

        let decoded_len = decoded.len();

        SimulatorV4 {
            // program,
            input: input_reader,
            per_instruction_stat: vec![Instat::default(); decoded_len],
            output: output_writer,
            output_file: output,
            log_file: log,
            log: log_writer,
            decoded_len,
            instructions: decoded,
            verbose: self.verbose,
            reg: [0; 64],
            pc: 0,
            next_pc: 0,
            memory: MemoryV4::new(self.verbose),
            stat: Statistics::default(),
            bp: BranchPredictor::new(),
            cache_hit: false,
            op: OpV4::default(),
        }
    }
}

#[derive(Debug, Default, Clone, Serialize)]
pub struct Instat {
    pub hit: u64,
    pub call: u64,
}

#[derive(Debug)]
pub struct SimulatorV4 {
    // Vec and BufReader/BufWriter are pointer-sized (8 bytes)
    // pub program: Vec<u32>,
    pub instructions: Vec<OpV4>,
    pub per_instruction_stat: Vec<Instat>,
    // per instruction stat
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
    pub pc: u32,
    pub next_pc: u32,
    pub decoded_len: usize,
    pub op: OpV4,
    // bool (1 byte each, will be packed)
    pub verbose: bool,
    pub cache_hit: bool,
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

impl SimulatorV4 {
    pub fn get_reg(&self, reg: Reg) -> u32 {
        *unsafe { self.reg.get_unchecked(reg as usize) }
    }

    pub fn set_reg(&mut self, reg: Reg, val: u32) {
        if reg == 0 {
            return;
        }
        *unsafe { self.reg.get_unchecked_mut(reg as usize) } = val;
    }

    pub fn get_reg_mut(&mut self, reg: Reg) -> &mut u32 {
        unsafe { self.reg.get_unchecked_mut(reg as usize) }
    }

    pub fn run(&mut self) -> Result<(), SimulatorV4HaltDetail> {
        loop {
            let index = (self.pc >> 2) as usize;

            self.op = *self
                .instructions
                .get(index)
                .ok_or_else(|| SimulatorV4HaltDetail {
                    op: self.op,
                    line: index - 1,
                    kind: SimulatorV4HaltKind::Complete,
                })?;

            self.next_pc = self.pc + 4;

            self.execute().map_err(|kind| SimulatorV4HaltDetail {
                op: self.op,
                line: index,
                kind,
            })?;

            if self.verbose {
                let stat = unsafe { &mut self.per_instruction_stat.get_unchecked_mut(index) };
                stat.call += 1;
                match self.op.opname {
                    OpName::Jalr | OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                        self.bp
                            .update_taken(&self.op, self.pc as usize, self.next_pc as usize);
                    }
                    OpName::Lw | OpName::Lwr | OpName::Lwi | OpName::Sw | OpName::Swi => {
                        stat.hit += self.cache_hit as u64;
                    }
                    _ => {}
                }
            }

            self.pc = self.next_pc;
        }
    }
}

#[cfg(test)]
mod test {
    use qcpu_syntax::v2::op::Op;

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
                d.rs1, c.rs1 as usize as Reg,
                "rs1 mismatch at {}, {:?} vs {:?}",
                i, d, c
            );
            // }
            // if d.rs2 != 0 {
            assert_eq!(
                d.rs2, c.rs2 as usize as Reg,
                "rs2 mismatch at {}, {:?} vs {:?}",
                i, d, c
            );
            // }
            // if d.rd != 0 {
            assert_eq!(
                d.rd, c.rd as usize as Reg,
                "rd mismatch at {}, {:?} vs {:?}",
                i, d, c
            );
            // }
        }
    }
}
