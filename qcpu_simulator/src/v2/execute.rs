use std::{
    io::{Read as _, Write as _},
    ops::Range,
};

use qcpu_syntax::v2::syntax::OpName;

use super::context::Simulator;

pub type ExecuteResult = (Option<u32>, usize, Option<(Range<usize>, u32)>);

impl Simulator {
    pub fn execute(&mut self) -> ExecuteResult {
        let op = &self.ctx.current.op;
        let rs1u = self.ctx.current.regs[op.rs1 as usize];
        let rs2u = self.ctx.current.regs[op.rs2 as usize];

        let rs1i = rs1u as i32;
        let rs2i = rs2u as i32;

        let rs1f = f32::from_bits(rs1u);
        let rs2f = f32::from_bits(rs2u);

        let imm = op.imm.raw().unwrap_or_default();

        let mut next_pc = self.ctx.current.next_pc;
        let mut mem = None;

        let pc = self.ctx.current.pc;

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
                    next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BGE => {
                if (rs1i) >= (rs2i) {
                    next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BLT => {
                if (rs1i) < (rs2i) {
                    next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BNE => {
                if rs1u != rs2u {
                    next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BGEU => {
                if rs1u >= rs2u {
                    next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::BLTU => {
                if rs1u < rs2u {
                    next_pc = pc.wrapping_add_signed(imm as isize);
                }
                None
            }
            OpName::JAL => {
                next_pc = pc.wrapping_add_signed(imm as isize);
                Some((pc + 4) as u32)
            }
            OpName::JALR => {
                next_pc = (rs1u.wrapping_add_signed(imm)) as usize;
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
            OpName::FCVTWS => Some(rs1f.round_ties_even() as u32),
            OpName::FCVTSW => Some((rs1i as f32).to_bits()),
            OpName::FEQ => Some(if rs1f == rs2f { 1 } else { 0 }),
            OpName::FLT => Some(if rs1f < rs2f { 1 } else { 0 }),
            OpName::FLE => Some(if rs1f <= rs2f { 1 } else { 0 }),
            OpName::FSQRT => Some(f32::to_bits(rs1f.sqrt())),
            OpName::LW => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                Some(u32::from_le_bytes([
                    self.ctx.memory[addr],
                    self.ctx.memory[addr + 1],
                    self.ctx.memory[addr + 2],
                    self.ctx.memory[addr + 3],
                ]))
            }
            OpName::LB => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                Some(self.ctx.memory[addr] as i8 as i32 as u32)
            }
            OpName::LBU => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                Some(self.ctx.memory[addr] as u32)
            }
            OpName::LH => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                Some(
                    u16::from_le_bytes([self.ctx.memory[addr], self.ctx.memory[addr + 1]]) as i16
                        as i32 as u32,
                )
            }
            OpName::LHU => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                Some(u16::from_le_bytes([self.ctx.memory[addr], self.ctx.memory[addr + 1]]) as u32)
            }
            OpName::SB => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                mem = Some((addr..addr + 1, rs2u));
                None
            }
            OpName::SH => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                mem = Some((addr..addr + 2, rs2u));
                None
            }
            OpName::SW => {
                let addr = rs1u.wrapping_add_signed(imm) as usize;
                mem = Some((addr..addr + 4, rs2u));
                None
            }
            OpName::INB => {
                let mut buf = [0u8; 1];
                self.config.in_buffer.read_exact(&mut buf).unwrap();
                Some(u8::from_le_bytes(buf) as u32)
            }
            OpName::INW => {
                let mut buf = [0u8; 4];
                self.config.in_buffer.read_exact(&mut buf).unwrap();
                Some(u32::from_le_bytes(buf))
            }
            OpName::OUTB => {
                self.config.out_buffer.write_all(&[rs2u as u8]).unwrap();
                None
            }
            _ => unimplemented!(),
        };

        (rd_res, next_pc, mem)
    }
}
