use super::{
    syntax::{OpName, OpV4},
    Snapshot,
};

#[derive(Debug, Default)]
pub struct ExecuteResult {
    pub next_pc: usize,
    pub wb: Option<u32>,
}

pub fn execute(ctx: &Snapshot, op: &OpV4) -> ExecuteResult {
    let rs1u = ctx.reg[op.rs1 as usize];
    let rs2u = ctx.reg[op.rs2 as usize];

    let rs1i = rs1u as i32;
    let rs2i = rs2u as i32;

    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);

    let imm = op.imm;

    let pc = ctx.pc;

    let mut exe = ExecuteResult {
        next_pc: ctx.pc + 4,
        ..Default::default()
    };

    let rd_res = match op.opname {
        OpName::Add => Some(rs1i.wrapping_add(rs2i) as u32),
        OpName::Sub => Some(rs1i.wrapping_sub(rs2i) as u32),
        OpName::Sll => Some(rs1i.wrapping_shl(rs2u) as u32),
        OpName::Srl => Some(rs1i.wrapping_shr(rs2u) as u32),
        OpName::Xor => Some(rs1u ^ rs2u),
        OpName::And => Some(rs1u & rs2u),
        OpName::Or => Some(rs1u | rs2u),

        OpName::Addi => Some((rs1i.wrapping_add(imm as i32)) as u32),
        OpName::Slli => Some(rs1u.wrapping_shl(imm)),
        OpName::Srli => Some(rs1u.wrapping_shr(imm)),

        OpName::Beq => {
            if rs1u == rs2u {
                exe.next_pc = pc.wrapping_add_signed(imm as i32 as isize);
            }
            None
        }
        OpName::Bge => {
            if (rs1i) >= (rs2i) {
                exe.next_pc = pc.wrapping_add_signed(imm as i32 as isize);
            }
            None
        }
        OpName::Blt => {
            if (rs1i) < (rs2i) {
                exe.next_pc = pc.wrapping_add_signed(imm as i32 as isize);
            }
            None
        }
        OpName::Bne => {
            if rs1u != rs2u {
                exe.next_pc = pc.wrapping_add_signed(imm as i32 as isize);
            }
            None
        }
        OpName::Jal => {
            exe.next_pc = pc.wrapping_add_signed(imm as i32 as isize);
            Some((pc + 4) as u32)
        }
        OpName::Jalr => {
            exe.next_pc = (rs1u.wrapping_add_signed(imm as i32)) as usize;
            Some((pc + 4) as u32)
        }
        OpName::Lui => Some(imm),
        OpName::Fadd => Some(f32::to_bits(rs1f + rs2f)),
        OpName::Fsub => Some(f32::to_bits(rs1f - rs2f)),
        OpName::Fmul => Some(f32::to_bits(rs1f * rs2f)),
        OpName::Fdiv => Some(f32::to_bits(rs1f / rs2f)),
        OpName::Fsgnj => Some(rs1u & !(1 << 31) | (rs2u & (1 << 31))),
        OpName::Fsgnjn => Some(rs1u & !(1 << 31) | (!rs2u & (1 << 31))),
        OpName::Fsgnjx => Some(rs1u ^ (rs2u & (1 << 31))),
        OpName::Ftoi => Some(rs1f.round_ties_even() as i32 as u32),
        OpName::Fitof => Some((rs1i as f32).to_bits()),
        OpName::Feq => Some(if rs1f == rs2f { 1 } else { 0 }),
        OpName::Flt => Some(if rs1f < rs2f { 1 } else { 0 }),
        OpName::Fle => Some(if rs1f <= rs2f { 1 } else { 0 }),
        OpName::Fsqrt => Some(f32::to_bits(rs1f.sqrt())),
        _ => unimplemented!(),
    };

    exe.wb = rd_res;

    exe
}
