use std::io::{stdin, Read};

use qcpu_syntax::{parser::Op, BOp, FROp, IOp, ISOp, ROp};
use qcpu_syntax::{FCOp, FloatReg, IntReg, OOp, Reg, STOp, UOp};

use crate::result::{MemoryAccessRequest, RegisterWriteBackRequest};
use crate::snapshot::Snapshot;
use crate::Simulator;

impl Simulator {
    fn get_instruction_latency(&self, op: &Op) -> usize {
        match op {
            Op::L(_, _, _, _) => 2,
            Op::FL(_, _, _, _) => 2,
            _ => 1,
        }
    }

    pub fn execute(&mut self, _prev: &Snapshot, next: &mut Snapshot) -> Option<usize> {
        if next.execute_result.intr.is_none() || next.execute_result.stall {
            return Some(next.execute_result.predicted_pc);
        }

        let base_pc = next.execute_result.base_pc;
        let oop = next.execute_result.intr.clone().unwrap();

        match oop {
            Op::R(op, rd, rs1, rs2) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;

                if next.ireg_delay[rs1] > 0 || next.ireg_delay[rs2] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);

                let rs1_val = next.ireg[rs1];
                let rs2_val = next.ireg[rs2];
                let result = match op {
                    ROp::ADD => rs1_val + rs2_val,
                    ROp::SUB => rs1_val - rs2_val,
                    ROp::AND => rs1_val & rs2_val,
                    ROp::OR => rs1_val | rs2_val,
                    ROp::XOR => rs1_val ^ rs2_val,
                    ROp::SLL => rs1_val << rs2_val,
                    ROp::SRL => rs1_val >> rs2_val,
                    ROp::SRA => rs1_val >> rs2_val,
                    // signed comparison
                    ROp::SLT => {
                        if rs1_val < rs2_val {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    ROp::SLTU => {
                        if (rs1_val as u32) < (rs2_val as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                next.execute_result.register_write_back_request =
                    Some(RegisterWriteBackRequest::WriteInt(result, rd));
            }
            Op::I(op, rd, rs1, ref imm) => {
                let rs1 = rs1 as usize;

                if next.ireg_delay[rs1] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let rs1_val = next.ireg[rs1];
                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);
                let imm = imm.offset().unwrap();

                let result = match op {
                    IOp::ADDI => rs1_val + imm,
                    IOp::ANDI => rs1_val & imm,
                    IOp::ORI => rs1_val | imm,
                    IOp::XORI => rs1_val ^ imm,
                    // signed comparison
                    IOp::SLTI => {
                        if rs1_val < imm {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    IOp::SLTIU => {
                        if (rs1_val as u32) < (imm as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                next.execute_result.register_write_back_request =
                    Some(RegisterWriteBackRequest::WriteInt(result, rd));
            }
            Op::IS(op, rd, rs1, shamt) => {
                let rs1 = rs1 as usize;

                if next.ireg_delay[rs1] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let rs1_val = next.ireg[rs1];
                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);

                let result = match op {
                    ISOp::SLLI => rs1_val << shamt,
                    ISOp::SRLI => rs1_val >> shamt,
                    ISOp::SRAI => rs1_val >> shamt,
                };
                next.execute_result.register_write_back_request =
                    Some(RegisterWriteBackRequest::WriteInt(result, rd));
            }
            Op::B(op, rs2, rs1, imm) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;

                if next.ireg_delay[rs1] > 0 || next.ireg_delay[rs2] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let rs1_val = next.ireg[rs1];
                let rs2_val = next.ireg[rs2];

                let jmp = match op {
                    BOp::BEQ => rs1_val == rs2_val,
                    BOp::BNE => rs1_val != rs2_val,
                    BOp::BLT => rs1_val < rs2_val,
                    BOp::BGE => rs1_val >= rs2_val,
                    BOp::BGEU => (rs1_val as u32) >= (rs2_val as u32),

                    BOp::BLTU => (rs1_val as u32) < (rs2_val as u32),
                };

                if jmp {
                    let target = base_pc as i32 + imm.offset().unwrap();
                    let target = target.try_into().unwrap();
                    next.execute_result.set_predicted_pc(target);
                    next.next_pc = target;
                    return Some(target);
                }
            }
            Op::S(op, rs2, rs1, imm) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;

                if next.ireg_delay[rs1] > 0 || next.ireg_delay[rs2] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let addr = next.ireg[rs1] + imm;

                // check addr out of bound
                if addr < 0 || addr >= self.ctx.memory.len() as i32 {
                    panic!("out of bound memory access");
                }

                let addr = addr as usize;
                let value = next.ireg[rs2];

                let addr = match op {
                    STOp::SB => addr..addr + 1,
                    STOp::SH => addr..addr + 2,
                    STOp::SW => addr..addr + 4,
                };

                next.execute_result
                    .forward_to_memory_access(MemoryAccessRequest::S(addr, value));
            }
            Op::L(op, rd, rs1, imm) => {
                let rs1 = rs1 as usize;

                if next.ireg_delay[rs1] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let addr = next.ireg[rs1] + imm;

                if addr < 0 || addr >= self.ctx.memory.len() as i32 {
                    panic!("out of bound memory access");
                }

                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);

                next.execute_result
                    .forward_to_memory_access(MemoryAccessRequest::L(
                        op,
                        addr as usize,
                        Reg::I(rd),
                    ));
            }
            Op::J(_, rd, ref imm) => {
                // op is JOp::JAL anyway so idc

                let target = base_pc as i32 + imm.offset().unwrap();
                next.execute_result.register_write_back_request =
                    Some(RegisterWriteBackRequest::WriteInt(base_pc as i32 + 4, rd));

                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);

                let target = target.try_into().unwrap();
                next.execute_result.set_predicted_pc(target);
                next.next_pc = target;
                return Some(target);
            }
            Op::JR(_, rd, rs1, ref imm) => {
                let rs1 = rs1 as usize;
                if next.ireg_delay[rs1] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let rs1_val = next.ireg[rs1];

                // op is JOp::JALR anyway so idc
                let target = rs1_val + imm.offset().unwrap();
                next.execute_result.register_write_back_request =
                    Some(RegisterWriteBackRequest::WriteInt(base_pc as i32 + 4, rd));

                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);

                let target = target.try_into().unwrap();
                next.execute_result.set_predicted_pc(target);
                next.next_pc = target;
                return Some(target);
            }
            Op::FR(op, rd, rs1, rs2, _rm) => {
                // we ignore _rm at this point because idk how
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;

                if next.freg_delay[rs1] > 0 || next.freg_delay[rs2] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let rs1_d = next.freg[rs1];
                let rs2_d = next.freg[rs2];

                next.freg_delay[rd as usize] = self.get_instruction_latency(&oop);

                let res = match op {
                    FROp::FADD => rs1_d + rs2_d,
                    FROp::FSUB => rs1_d - rs2_d,
                    FROp::FMUL => rs1_d * rs2_d,
                    FROp::FDIV => rs1_d / rs2_d,
                };

                next.execute_result.register_write_back_request =
                    Some(RegisterWriteBackRequest::WriteFloat(res, rd));
            }
            Op::U(op, rd, ref imm) => {
                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);

                let imm = match op {
                    UOp::LUI => imm.offset().unwrap() << 12,
                    _ => todo!("AUIPC Not implemented"),
                };

                next.execute_result.register_write_back_request =
                    Some(RegisterWriteBackRequest::WriteInt(imm, rd));
            }
            Op::FC(op, rd, rs1, rs2) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;

                if next.freg_delay[rs1] > 0 || next.freg_delay[rs2] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let rs1_d = next.freg[rs1];
                let rs2_d = next.freg[rs2];

                match op {
                    FCOp::FEQ | FCOp::FLE | FCOp::FLT => {
                        let res = match op {
                            FCOp::FEQ => rs1_d == rs2_d,
                            FCOp::FLE => rs1_d <= rs2_d,
                            FCOp::FLT => rs1_d < rs2_d,
                            _ => unreachable!(),
                        } as i32;

                        next.ireg_delay[rd] = self.get_instruction_latency(&oop);
                        next.execute_result.register_write_back_request = Some(
                            RegisterWriteBackRequest::WriteInt(res, IntReg::from_repr(rd)?),
                        );
                    }

                    _ => {
                        let res = match op {
                            FCOp::FMAX => {
                                if rs1_d > rs2_d {
                                    rs1_d
                                } else {
                                    rs2_d
                                }
                            }
                            FCOp::FMIN => {
                                if rs1_d < rs2_d {
                                    rs1_d
                                } else {
                                    rs2_d
                                }
                            }
                            FCOp::FSGNJ => rs2_d.signum() * rs1_d.abs(),
                            FCOp::FSGNJN => -rs2_d.signum() * rs1_d.abs(),
                            FCOp::FSGNJX => rs2_d.signum() * rs1_d,
                            _ => unreachable!(),
                        };

                        next.freg_delay[rd] = self.get_instruction_latency(&oop);

                        next.execute_result.register_write_back_request = Some(
                            RegisterWriteBackRequest::WriteFloat(res, FloatReg::from_repr(rd)?),
                        );
                    }
                };
            }
            Op::FS(_, rs2, rs1, imm) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;

                if next.ireg_delay[rs1] > 0 || next.freg_delay[rs2] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let addr = next.ireg[rs1] + imm;

                // check addr out of bound
                if addr < 0 || addr >= self.ctx.memory.len() as i32 {
                    panic!("out of bound memory access");
                }

                let addr = addr as usize;
                let value = next.freg[rs2];

                let addr = addr..addr + 4;

                next.execute_result
                    .forward_to_memory_access(MemoryAccessRequest::S(addr, value.to_bits() as i32));
            }
            Op::FL(_op, rd, rs1, ref imm) => {
                let rs1 = rs1 as usize;

                if next.ireg_delay[rs1] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let addr = next.ireg[rs1] + imm.offset().unwrap();

                if addr < 0 || addr >= self.ctx.memory.len() as i32 {
                    panic!("out of bound memory access");
                }

                next.freg_delay[rd as usize] = self.get_instruction_latency(&oop);

                next.execute_result
                    .forward_to_memory_access(MemoryAccessRequest::L(
                        qcpu_syntax::LOp::LW,
                        addr as usize,
                        Reg::F(rd),
                    ));
            }
            Op::FX(op, rd, rs1, _) => {
                if next.ireg_delay[rs1] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                match op {
                    qcpu_syntax::FXOp::FSQRT => {
                        next.freg_delay[rd] = self.get_instruction_latency(&oop);
                        let rs1_d = next.freg[rs1];
                        next.execute_result.register_write_back_request =
                            Some(RegisterWriteBackRequest::WriteFloat(
                                rs1_d.sqrt(),
                                FloatReg::from_repr(rd).unwrap(),
                            ))
                    }
                    qcpu_syntax::FXOp::FCVTWS => {
                        next.ireg_delay[rd] = self.get_instruction_latency(&oop);
                        let rs1_d = next.freg[rs1];
                        next.execute_result.register_write_back_request =
                            Some(RegisterWriteBackRequest::WriteInt(
                                rs1_d.floor() as i32,
                                IntReg::from_repr(rd).unwrap(),
                            ))
                    }
                    qcpu_syntax::FXOp::FCVTSW => {
                        next.freg_delay[rd] = self.get_instruction_latency(&oop);
                        let rs1_d = next.ireg[rs1];
                        next.execute_result.register_write_back_request =
                            Some(RegisterWriteBackRequest::WriteFloat(
                                rs1_d as f32,
                                FloatReg::from_repr(rd).unwrap(),
                            ))
                    }
                }
            }
            Op::O(op, rd) => match op {
                OOp::OUTB => {
                    if next.ireg_delay[rd] > 0 {
                        next.execute_result.stall = true;
                        return Some(next.execute_result.predicted_pc);
                    }

                    let outval = next.ireg[rd];

                    self.ctx.out_buffer.push_back(outval as u8);
                }
                OOp::INB | OOp::INW => {
                    let input = &mut self.ctx.in_buffer;

                    let len = match op {
                        OOp::INB => 1,
                        OOp::INW => 4,
                        _ => unreachable!(),
                    };

                    if input.len() < len {
                        if self.config.input.is_some() {
                            return None;
                        } else {
                            let mut buf = [0];
                            stdin().read_exact(&mut buf).unwrap();
                            input.push_back(buf[0]);
                        }
                    }

                    let mut inval: i32 = 0;

                    for i in 0..len {
                        let byte = input.pop_front().unwrap() as u32;
                        inval |= (byte << (i * 8)) as i32;
                    }

                    next.ireg_delay[rd] = self.get_instruction_latency(&oop);
                    next.execute_result.register_write_back_request = Some(
                        RegisterWriteBackRequest::WriteInt(inval, IntReg::from_repr(rd)?),
                    );
                }
            },
            Op::Raw(_) => return None,
        };
        Some(next.execute_result.predicted_pc)
    }
}
