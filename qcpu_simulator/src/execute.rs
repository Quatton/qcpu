use qcpu_syntax::{parser::Op, BOp, FROp, IOp, ISOp, ROp};

use crate::result::{Execute, MemoryAccessRequest, RegisterWriteBackRequest};
use crate::snapshot::Snapshot;

pub fn execute(prev: &Snapshot, next: &mut Snapshot) -> Option<usize> {
    next.execute_result = Execute::from_decode(prev.decode_result.clone());

    if next.execute_result.bubble || prev.decode_result.intr.is_none() {
        return Some(next.execute_result.predicted_pc);
    }

    let base_pc = prev.decode_result.base_pc;
    let op = prev.decode_result.intr.clone().unwrap();

    match op {
        Op::R(op, rd, rs1, rs2) => {
            let rd = rd as usize;
            let rs1 = rs1 as usize;
            let rs2 = rs2 as usize;
            let result = match op {
                ROp::ADD => prev.ireg[rs1] + prev.ireg[rs2],
                ROp::SUB => prev.ireg[rs1] - prev.ireg[rs2],
                ROp::AND => prev.ireg[rs1] & prev.ireg[rs2],
                ROp::OR => prev.ireg[rs1] | prev.ireg[rs2],
                ROp::XOR => prev.ireg[rs1] ^ prev.ireg[rs2],
                ROp::SLL => prev.ireg[rs1] << prev.ireg[rs2],
                ROp::SRL => prev.ireg[rs1] >> prev.ireg[rs2],
                ROp::SRA => prev.ireg[rs1] >> prev.ireg[rs2],
                // signed comparison
                ROp::SLT => {
                    if prev.ireg[rs1] < prev.ireg[rs2] {
                        1
                    } else {
                        0
                    }
                }
                // unsigned comparison
                ROp::SLTU => {
                    if (prev.ireg[rs1] as u32) < (prev.ireg[rs2] as u32) {
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
            let rd = rd as usize;
            let rs1 = rs1 as usize;
            let result = match op {
                IOp::ADDI => prev.ireg[rs1] + imm,
                IOp::ANDI => prev.ireg[rs1] & imm,
                IOp::ORI => prev.ireg[rs1] | imm,
                IOp::XORI => prev.ireg[rs1] ^ imm,
                // signed comparison
                IOp::SLTI => {
                    if prev.ireg[rs1] < imm {
                        1
                    } else {
                        0
                    }
                }
                // unsigned comparison
                IOp::SLTIU => {
                    if (prev.ireg[rs1] as u32) < (imm as u32) {
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
            let rd = rd as usize;
            let rs1 = rs1 as usize;
            let result = match op {
                ISOp::SLLI => prev.ireg[rs1] << shamt,
                ISOp::SRLI => prev.ireg[rs1] >> shamt,
                ISOp::SRAI => prev.ireg[rs1] >> shamt,
            };
            next.execute_result.register_write_back_request =
                Some(RegisterWriteBackRequest::WriteInt(result, rd));
        }
        Op::B(op, rs2, rs1, imm) => {
            let rs1 = rs1 as usize;
            let rs2 = rs2 as usize;
            let jmp = match op {
                BOp::BEQ => prev.ireg[rs1] == prev.ireg[rs2],
                BOp::BNE => prev.ireg[rs1] != prev.ireg[rs2],
                BOp::BLT => prev.ireg[rs1] < prev.ireg[rs2],
                BOp::BGE => prev.ireg[rs1] >= prev.ireg[rs2],
                BOp::BGEU => (prev.ireg[rs1] as u32) >= (prev.ireg[rs2] as u32),

                BOp::BLTU => (prev.ireg[rs1] as u32) < (prev.ireg[rs2] as u32),
            };

            if jmp {
                let target = base_pc as i32 + imm.offset().unwrap();
                let target = target.try_into().unwrap();
                next.execute_result.set_predicted_pc(target);
                return Some(target);
            }
        }
        Op::S(op, rs2, rs1, imm) => next
            .execute_result
            .forward_to_memory_access(MemoryAccessRequest::S(op, rs2, rs1, imm)),
        Op::L(op, rd, rs1, imm) => {
            next.execute_result
                .forward_to_memory_access(MemoryAccessRequest::L(op, rd, rs1, imm));
        }
        Op::J(_, rd, imm) => {
            let rd = rd as usize;
            // op is JOp::JAL anyway so idc
            let target = base_pc as i32 + imm.offset().unwrap();
            next.execute_result.register_write_back_request =
                Some(RegisterWriteBackRequest::WriteInt(base_pc as i32 + 4, rd));
            let target = target.try_into().unwrap();
            next.execute_result.set_predicted_pc(target);
            return Some(target);
        }
        Op::JR(_, rd, rs1, imm) => {
            let rd = rd as usize;
            let rs1 = rs1 as usize;
            // op is JOp::JALR anyway so idc
            let target = prev.ireg[rs1] + imm.offset().unwrap();
            next.execute_result.register_write_back_request =
                Some(RegisterWriteBackRequest::WriteInt(base_pc as i32 + 4, rd));
            let target = target.try_into().unwrap();
            next.execute_result.set_predicted_pc(target);
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
        Op::Exit(_) => return None,
    };
    Some(next.execute_result.predicted_pc)
}
