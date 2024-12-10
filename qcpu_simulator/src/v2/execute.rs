use std::ops::Range;

use qcpu_syntax::v2::{op::Op, syntax::OpName};

use super::{context::Simulator, error::SimulationErrorKind};
#[derive(Default)]
pub struct MemoryAccess {
    pub range: Range<usize>,
    pub write_val: Option<u32>,
    pub signed: bool,
}

impl MemoryAccess {
    fn signed(mut self) -> Self {
        self.signed = true;
        self
    }

    // fn unsigned(mut self) -> Self {
    //     self.signed = false;
    //     self
    // }

    fn write(mut self, write_val: u32) -> Self {
        self.write_val = Some(write_val);
        self
    }

    fn range(range: Range<usize>) -> Self {
        Self {
            range,
            ..Default::default()
        }
    }
}

#[derive(Default)]
pub struct ExecuteResult {
    pub wb: Option<u32>,
    pub next_pc: usize,
    pub mem: Option<MemoryAccess>,
    pub io: Option<(bool, usize)>,
}

impl Simulator {
    pub fn execute(&self, op: &Op) -> Result<ExecuteResult, SimulationErrorKind> {
        let rs1u = self.ctx.current.regs[op.rs1 as usize];
        let rs2u = self.ctx.current.regs[op.rs2 as usize];

        let rs1i = rs1u as i32;
        let rs2i = rs2u as i32;

        let rs1f = f32::from_bits(rs1u);
        let rs2f = f32::from_bits(rs2u);

        let imm = op.imm.raw().unwrap_or_default();

        let pc = self.ctx.current.pc;

        let mut exe = ExecuteResult {
            next_pc: self.ctx.current.pc + 4,
            ..Default::default()
        };

        let rd_res = match op.o {
            OpName::RAW => None,
            OpName::ADD => Some(rs1i.wrapping_add(rs2i) as u32),
            OpName::SUB => Some(rs1i.wrapping_sub(rs2i) as u32),
            OpName::SLL => Some(rs1i.wrapping_shl(rs2u) as u32),
            OpName::SRL => Some(rs1i.wrapping_shr(rs2u) as u32),
            OpName::SRA => Some((rs1i).wrapping_shr(rs2u) as u32),
            OpName::SLT => Some(if rs1i < rs2i { 1 } else { 0 }),
            OpName::SLTU => Some(if rs1u < rs2u { 1 } else { 0 }),
            OpName::XOR => Some(rs1u ^ rs2u),
            OpName::AND => Some(rs1u & rs2u),
            OpName::OR => Some(rs1u | rs2u),

            OpName::ADDI => Some((rs1i.wrapping_add(imm)) as u32),
            OpName::ANDI => Some(rs1u & imm as u32),
            OpName::ORI => Some(rs1u | imm as u32),
            OpName::SLTI => Some(if rs1i < imm { 1 } else { 0 }),
            OpName::SLTIU => Some(if rs1u < imm as u32 { 1 } else { 0 }),

            OpName::XORI => Some(rs1u ^ imm as u32),
            OpName::SLLI => Some(rs1u.wrapping_shl(imm as u32)),
            OpName::SRLI => Some(rs1u.wrapping_shr(imm as u32)),
            OpName::SRAI => Some(rs1i.wrapping_shr(imm as u32) as u32),

            OpName::BEQ => {
                if rs1u == rs2u {
                    exe.next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BGE => {
                if (rs1i) >= (rs2i) {
                    exe.next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BLT => {
                if (rs1i) < (rs2i) {
                    exe.next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BNE => {
                if rs1u != rs2u {
                    exe.next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BGEU => {
                if rs1u >= rs2u {
                    exe.next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BLTU => {
                if rs1u < rs2u {
                    exe.next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::JAL => {
                exe.next_pc = pc.wrapping_add_signed(imm as isize);
                Some((pc + 4) as u32)
            }
            OpName::JALR => {
                exe.next_pc = (rs1u.wrapping_add_signed(imm)) as usize;
                Some((pc + 4) as u32)
            }
            OpName::LUI => Some((imm as u32) << 12),
            OpName::AUIPC => Some((pc as u32).wrapping_add((imm as u32) << 12)),
            OpName::FADD => Some(f32::to_bits(rs1f + rs2f)),
            OpName::FSUB => Some(f32::to_bits(rs1f - rs2f)),
            OpName::FMUL => Some(f32::to_bits(rs1f * rs2f)),
            OpName::FDIV => Some(f32::to_bits(rs1f / rs2f)),
            OpName::FSGNJ => Some(rs1u & !(1 << 31) | (rs2u & (1 << 31))),
            OpName::FSGNJN => Some(rs1u & !(1 << 31) | (!rs2u & (1 << 31))),
            OpName::FSGNJX => Some(rs1u ^ (rs2u & (1 << 31))),
            OpName::FCVTWS => Some(rs1f.round_ties_even() as i32 as u32),
            OpName::FCVTSW => Some((rs1i as f32).to_bits()),
            OpName::FEQ => Some(if rs1f == rs2f { 1 } else { 0 }),
            OpName::FLT => Some(if rs1f < rs2f { 1 } else { 0 }),
            OpName::FLE => Some(if rs1f <= rs2f { 1 } else { 0 }),
            OpName::FSQRT => Some(f32::to_bits(rs1f.sqrt())),
            OpName::LW => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 4));
                None
            }
            OpName::LB => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 1).signed());
                None
            }
            OpName::LBU => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 1));
                None
            }
            OpName::LH => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 2).signed());
                None
            }
            OpName::LHU => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 2));
                None
            }
            OpName::SB => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 2).write(rs2u));
                None
            }
            OpName::SH => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 1).write(rs2u));

                None
            }
            OpName::SW => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                exe.mem = Some(MemoryAccess::range(addr..addr + 4).write(rs2u));
                None
            }
            OpName::INB => {
                exe.io = Some((false, 1));
                None
            }
            OpName::INW => {
                exe.io = Some((false, 4));
                None
            }
            OpName::OUTB => {
                exe.io = Some((true, 1));
                None
            }
            _ => unimplemented!(),
        };

        exe.wb = rd_res;

        Ok(exe)
    }
}
