use qcpu_syntax::STOp;
use qcpu_syntax::{parser::Op, BOp, FROp, IOp, ISOp, ROp};

use crate::result::{MemoryAccessRequest, RegisterWriteBackRequest};
use crate::snapshot::Snapshot;
use crate::Simulator;

impl Simulator {
    fn get_instruction_latency(&self, op: &Op) -> usize {
        match op {
            Op::L(_, _, _, _) => 2, // Load instructions have 2-cycle latency
            _ => 1,                 // Default latency of 1 cycle for other instructions
        }
    }

    pub fn execute(&self, prev: &Snapshot, next: &mut Snapshot) -> Option<usize> {
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
            Op::I(op, rd, rs1, imm) => {
                let rs1 = rs1 as usize;

                if next.ireg_delay[rs1] > 0 {
                    next.execute_result.stall = true;
                    return Some(next.execute_result.predicted_pc);
                }

                let rs1_val = next.ireg[rs1];
                next.ireg_delay[rd as usize] = self.get_instruction_latency(&oop);

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
                    .forward_to_memory_access(MemoryAccessRequest::L(op, addr as usize, rd));
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
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let rs1_d = prev.freg[rs1];
                let rs2_d = prev.freg[rs2];
                let res = match op {
                    FROp::FADD => rs1_d + rs2_d,
                    FROp::FSUB => rs1_d - rs2_d,
                    FROp::FMUL => rs1_d * rs2_d,
                    FROp::FDIV => rs1_d / rs2_d,
                };
                next.freg[rd] = res;
                // next.execute_result.register_write_back_request = Some(
                //     RegisterWriteBackRequest::WriteInt(.try_into().unwrap(), rd),
                // );
            }
            Op::U(_, _, _) => todo!(),
            Op::FC(_, _, _, _) => todo!(),
            Op::Exit(_) => return None,
        };
        Some(next.execute_result.predicted_pc)
    }
}
