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
use syntax::{get_reg_name, OpCode, OpV4};

#[derive(Debug, Default, Clone)]
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
}

pub struct SimulatorV4 {
    pub program: Vec<u32>,
    pub decoded: Vec<OpV4>,
    pub input: BufReader<File>,
    pub output: BufWriter<File>,
    pub ctx: SimulatorV4Context,
    pub legacy_addressing: bool,
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
    pub fn log_registers(&self) {
        for (i, reg) in self.ctx.current.reg.iter().enumerate() {
            let reg_name = get_reg_name(i as u8);
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

        let op = match self.decoded.get(pc >> 2) {
            Some(op) => op,
            _ => {
                // println!();
                return Err(SimulatorV4HaltDetail {
                    op: self.decoded[self.ctx.prev.pc >> 2],
                    line: self.ctx.prev.pc >> 2,
                    kind: SimulatorV4HaltKind::Complete,
                });
            }
        };

        // println!("{:?}", op);

        let next_pc_predicted = self.ctx.current.pc + 4;
        let mut next_pc_true = next_pc_predicted;

        match op.opcode {
            OpCode::L => {
                let mut addr =
                    (self.ctx.current.reg[op.rs1 as usize] as i32 + op.imm as i32) as u32;

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
                let mut addr =
                    (self.ctx.current.reg[op.rs1 as usize] as i32 + op.imm as i32) as u32;

                if self.legacy_addressing {
                    addr >>= 2;
                }

                self.ctx
                    .memory
                    .write(addr as usize, self.ctx.current.reg[op.rs2 as usize])
                    .map_err(|e| SimulatorV4HaltDetail {
                        op: *op,
                        line: pc >> 2,
                        kind: e,
                    })?;
            }
            OpCode::O => {
                self.output
                    .write_all(&[(self.ctx.current.reg[op.rs2 as usize] & 0xff) as u8])
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
                        self.ctx.current.reg[op.rd as usize] = wb
                    }
                }
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
            input: file_in.to_str().unwrap().to_string(),
            output: file_out.to_str().unwrap().to_string(),
            bin: file_bin.to_str().unwrap().to_string(),
            legacy_addressing: true,
            verbose: false,
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
