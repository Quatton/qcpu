mod decode;
pub mod execute;
pub mod memory;
mod syntax;

use std::{
    fs::File,
    io::{BufReader, BufWriter, Read, Write as _},
};

use decode::decode;
use execute::{execute, ExecuteResult};
use memory::MemoryV4;
use syntax::{OpCode, OpV4};

pub struct SimulatorV4Builder {
    pub input: String,
    pub output: String,
    pub bin: String,
    pub legacy_addressing: bool,
    pub verbose: bool,
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

        let input_target = File::options().read(true).open(self.input).unwrap();
        let output_target = File::options()
            .write(true)
            .create(true)
            .truncate(true)
            .open(self.output)
            .unwrap();

        let input = BufReader::new(input_target);
        let output = BufWriter::new(output_target);

        let decoded = program.iter().map(|&p| decode(p)).collect();

        SimulatorV4 {
            program,
            input,
            output,
            decoded,
            legacy_addressing: self.legacy_addressing,
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
                memory: MemoryV4::new(),
            },
        }
    }
}

#[derive(Debug, Clone, Copy)]
pub struct Snapshot {
    pub reg: [u32; 64],
    pub pc: usize,
    pub busy: [bool; 64],
}

pub struct SimulatorV4Context {
    pub current: Snapshot,
    pub prev: Snapshot,
    pub memory: MemoryV4,
}

pub struct SimulatorV4 {
    pub program: Vec<u32>,
    pub decoded: Vec<OpV4>,
    pub input: BufReader<File>,
    pub output: BufWriter<File>,
    pub ctx: SimulatorV4Context,
    pub legacy_addressing: bool,
}

#[derive(Debug)]
pub struct SimulatorV4HaltDetail {
    pub op: OpV4,
    pub line: usize,
    pub kind: SimulatorV4HaltKind,
}

#[derive(Debug)]
pub enum SimulatorV4HaltKind {
    MemoryAccess { bound: u32, index: u32 },
    Complete,
}

impl SimulatorV4 {
    pub fn log_registers(&self) {
        for (i, reg) in self.ctx.current.reg.iter().enumerate() {
            let reg_name = match i {
                0 => "zero",
                1 => "ra",
                2 => "sp",
                3 => "gp",
                4 => "tp",
                5 => "t0",
                6 => "t1",
                7 => "t2",
                8 => "s0",
                9 => "s1",
                10 => "a0",
                11 => "a1",
                12 => "a2",
                13 => "a3",
                14 => "a4",
                15 => "a5",
                16 => "a6",
                17 => "a7",
                18 => "s2",
                19 => "s3",
                20 => "s4",
                21 => "s5",
                22 => "s6",
                23 => "s7",
                24 => "s8",
                25 => "s9",
                26 => "s10",
                27 => "s11",
                28 => "t3",
                29 => "t4",
                30 => "t5",
                31 => "t6",
                32 => "ft0",
                33 => "ft1",
                34 => "ft2",
                35 => "ft3",
                36 => "ft4",
                37 => "ft5",
                38 => "ft6",
                39 => "ft7",
                40 => "fs0",
                41 => "fs1",
                42 => "fa0",
                43 => "fa1",
                44 => "fa2",
                45 => "fa3",
                46 => "fa4",
                47 => "fa5",
                48 => "fa6",
                49 => "fa7",
                50 => "fs2",
                51 => "fs3",
                52 => "fs4",
                53 => "fs5",
                54 => "fs6",
                55 => "fs7",
                56 => "fs8",
                57 => "fs9",
                58 => "fs10",
                59 => "fs11",
                60 => "ft8",
                61 => "ft9",
                62 => "ft10",
                63 => "ft11",
                _ => "unknown",
            };
            if i < 32 {
                print!("{:5}: 0x{:08x} ({:15})", reg_name, reg, *reg as i32);
            } else {
                print!(
                    "{:5}: 0x{:08x} ({:15.6e})",
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
        // print!("pc: 0x{:08x}  ", pc);

        let op = match self.decoded.get(pc >> 2) {
            Some(op) => op,
            _ => {
                println!();
                return Err(SimulatorV4HaltDetail {
                    op: self.decoded[self.ctx.prev.pc >> 2],
                    line: self.ctx.prev.pc >> 2,
                    kind: SimulatorV4HaltKind::Complete,
                });
            }
        };

        println!("{:?}", op);

        let next_pc_predicted = self.ctx.current.pc + 4;
        let mut next_pc_true = next_pc_predicted;

        match op.opcode {
            OpCode::L => {
                let mut addr = self.ctx.current.reg[op.rs1 as usize] + op.imm;

                if self.legacy_addressing {
                    addr >>= 2;
                }

                if op.rd != 0 {
                    self.ctx.current.reg[op.rd as usize] = self
                        .ctx
                        .memory
                        .read(addr as usize)
                        .map_err(|e| SimulatorV4HaltDetail {
                            op: *op,
                            line: pc >> 2,
                            kind: e,
                        })?;
                }
            }
            OpCode::S => {
                let mut addr = self.ctx.current.reg[op.rs1 as usize];

                if self.legacy_addressing {
                    addr >>= 2;
                }

                self.ctx
                    .memory
                    .write(addr as usize, self.ctx.current.reg[op.rs1 as usize])
                    .map_err(|e| SimulatorV4HaltDetail {
                        op: *op,
                        line: pc >> 2,
                        kind: e,
                    })?;
            }
            OpCode::O => {
                self.output
                    .write_all(&[(self.ctx.current.reg[op.rs1 as usize] & 0xff) as u8])
                    .unwrap();
            }
            OpCode::N => {
                if op.rd != 0 {
                    let mut buf = [0; 4];
                    self.input.read_exact(&mut buf).unwrap();
                    self.ctx.current.reg[op.rd as usize] = u32::from_le_bytes(buf);
                }
            }
            _ => {
                let ExecuteResult { next_pc, wb } = execute(&self.ctx.current, op);
                next_pc_true = next_pc;
                if let Some(wb) = wb {
                    if op.rd != 0 {
                        self.ctx.current.busy[op.rd as usize] = false;
                        self.ctx.current.reg[op.rd as usize] = wb
                    }
                }
            }
        };

        self.ctx.prev = self.ctx.current;
        self.ctx.current.pc = next_pc_true;

        Ok(())
    }

    pub fn run(&mut self) -> Result<(), SimulatorV4HaltDetail> {
        loop {
            let result = self.run_once();

            if let Err(SimulatorV4HaltDetail {
                kind: SimulatorV4HaltKind::Complete,
                ..
            }) = result
            {
                return Ok(());
            }

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
