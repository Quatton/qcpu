use super::syntax::{OpName, OpV4};

#[derive(Debug, Default, Clone, Copy)]
pub struct ExecuteResult {
    pub next_pc: usize,
    pub wb: Option<u32>,
}


fn exec_add(rs1i: i32, rs2i: i32) -> Option<u32> {
    Some(rs1i.wrapping_add(rs2i) as u32)
}


fn exec_sub(rs1i: i32, rs2i: i32) -> Option<u32> {
    Some(rs1i.wrapping_sub(rs2i) as u32)
}


fn exec_sll(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u << rs2u)
}


fn exec_srl(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u >> rs2u)
}


fn exec_xor(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u ^ rs2u)
}


fn exec_and(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u & rs2u)
}


fn exec_or(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u | rs2u)
}


fn exec_addi(rs1i: i32, imm: i32) -> Option<u32> {
    Some(rs1i.wrapping_add(imm) as u32)
}


fn exec_slli(rs1u: u32, imm: u32) -> Option<u32> {
    Some(rs1u << imm)
}


fn exec_srli(rs1u: u32, imm: u32) -> Option<u32> {
    Some(rs1u >> imm)
}


fn exec_beq(rs1u: u32, rs2u: u32, imm: i32, pc: usize, exe: &mut ExecuteResult) -> Option<u32> {
    if rs1u == rs2u {
        exe.next_pc = pc.wrapping_add_signed(imm as isize);
    }
    None
}


fn exec_bge(rs1i: i32, rs2i: i32, imm: i32, pc: usize, exe: &mut ExecuteResult) -> Option<u32> {
    if rs1i >= rs2i {
        exe.next_pc = pc.wrapping_add_signed(imm as isize);
    }
    None
}


fn exec_blt(rs1i: i32, rs2i: i32, imm: i32, pc: usize, exe: &mut ExecuteResult) -> Option<u32> {
    if rs1i < rs2i {
        exe.next_pc = pc.wrapping_add_signed(imm as isize);
    }
    None
}


fn exec_bne(rs1u: u32, rs2u: u32, imm: i32, pc: usize, exe: &mut ExecuteResult) -> Option<u32> {
    if rs1u != rs2u {
        exe.next_pc = pc.wrapping_add_signed(imm as isize);
    }
    None
}


fn exec_jal(pc: usize, imm: i32, exe: &mut ExecuteResult) -> Option<u32> {
    exe.next_pc = pc.wrapping_add_signed(imm as isize);
    Some((pc + 4) as u32)
}


fn exec_jalr(rs1u: u32, imm: i32, pc: usize, exe: &mut ExecuteResult) -> Option<u32> {
    exe.next_pc = rs1u.wrapping_add_signed(imm) as usize;
    Some((pc + 4) as u32)
}


fn exec_lui(imm: u32) -> Option<u32> {
    Some(imm)
}


fn exec_fadd(rs1f: f32, rs2f: f32) -> Option<u32> {
    Some(f32::to_bits(rs1f + rs2f))
}


fn exec_fsub(rs1f: f32, rs2f: f32) -> Option<u32> {
    Some(f32::to_bits(rs1f - rs2f))
}


fn exec_fmul(rs1f: f32, rs2f: f32) -> Option<u32> {
    Some(f32::to_bits(rs1f * rs2f))
}


fn exec_fdiv(rs1f: f32, rs2f: f32) -> Option<u32> {
    Some(f32::to_bits(rs1f / rs2f))
}


fn exec_fsgnj(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u & !(1 << 31) | (rs2u & (1 << 31)))
}


fn exec_fsgnjn(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u & !(1 << 31) | (!rs2u & (1 << 31)))
}


fn exec_fsgnjx(rs1u: u32, rs2u: u32) -> Option<u32> {
    Some(rs1u ^ (rs2u & (1 << 31)))
}


fn exec_ftoi(rs1f: f32) -> Option<u32> {
    Some(rs1f.round_ties_even() as i32 as u32)
}


fn exec_fitof(rs1i: i32) -> Option<u32> {
    Some((rs1i as f32).to_bits())
}


fn exec_feq(rs1f: f32, rs2f: f32) -> Option<u32> {
    Some(if rs1f == rs2f { 1 } else { 0 })
}


fn exec_flt(rs1f: f32, rs2f: f32) -> Option<u32> {
    Some(if rs1f < rs2f { 1 } else { 0 })
}


fn exec_fle(rs1f: f32, rs2f: f32) -> Option<u32> {
    Some(if rs1f <= rs2f { 1 } else { 0 })
}


fn exec_fsqrt(rs1f: f32) -> Option<u32> {
    Some(f32::to_bits(rs1f.sqrt()))
}
pub fn execute(rs1u: u32, rs2u: u32, pc: usize, op: &OpV4) -> ExecuteResult {
    let rs1i = rs1u as i32;
    let rs2i = rs2u as i32;
    let imm = op.imm;

    let mut exe = ExecuteResult {
        next_pc: pc + 4,
        ..Default::default()
    };

    exe.wb = match op.opname {
        OpName::Add => exec_add(rs1i, rs2i),
        OpName::Sub => exec_sub(rs1i, rs2i),
        OpName::Sll => exec_sll(rs1u, rs2u),
        OpName::Srl => exec_srl(rs1u, rs2u),
        OpName::Xor => exec_xor(rs1u, rs2u),
        OpName::And => exec_and(rs1u, rs2u),
        OpName::Or => exec_or(rs1u, rs2u),
        OpName::Addi => exec_addi(rs1i, imm as i32),
        OpName::Slli => exec_slli(rs1u, imm),
        OpName::Srli => exec_srli(rs1u, imm),
        OpName::Beq => exec_beq(rs1u, rs2u, imm as i32, pc, &mut exe),
        OpName::Bge => exec_bge(rs1i, rs2i, imm as i32, pc, &mut exe),
        OpName::Blt => exec_blt(rs1i, rs2i, imm as i32, pc, &mut exe),
        OpName::Bne => exec_bne(rs1u, rs2u, imm as i32, pc, &mut exe),
        OpName::Jal => exec_jal(pc, imm as i32, &mut exe),
        OpName::Jalr => exec_jalr(rs1u, imm as i32, pc, &mut exe),
        OpName::Lui => exec_lui(imm),
        OpName::Fadd => {
            let rs1f = f32::from_bits(rs1u);
            let rs2f = f32::from_bits(rs2u);
            exec_fadd(rs1f, rs2f)
        }
        OpName::Fsub => {
            let rs1f = f32::from_bits(rs1u);
            let rs2f = f32::from_bits(rs2u);
            exec_fsub(rs1f, rs2f)
        }
        OpName::Fmul => {
            let rs1f = f32::from_bits(rs1u);
            let rs2f = f32::from_bits(rs2u);
            exec_fmul(rs1f, rs2f)
        }
        OpName::Fdiv => {
            let rs1f = f32::from_bits(rs1u);
            let rs2f = f32::from_bits(rs2u);
            exec_fdiv(rs1f, rs2f)
        }
        OpName::Fsgnj => exec_fsgnj(rs1u, rs2u),
        OpName::Fsgnjn => exec_fsgnjn(rs1u, rs2u),
        OpName::Fsgnjx => exec_fsgnjx(rs1u, rs2u),
        OpName::Ftoi => {
            let rs1f = f32::from_bits(rs1u);
            exec_ftoi(rs1f)
        }
        OpName::Fitof => exec_fitof(rs1i),
        OpName::Feq => {
            let rs1f = f32::from_bits(rs1u);
            let rs2f = f32::from_bits(rs2u);
            exec_feq(rs1f, rs2f)
        }
        OpName::Flt => {
            let rs1f = f32::from_bits(rs1u);
            let rs2f = f32::from_bits(rs2u);
            exec_flt(rs1f, rs2f)
        }
        OpName::Fle => {
            let rs1f = f32::from_bits(rs1u);
            let rs2f = f32::from_bits(rs2u);
            exec_fle(rs1f, rs2f)
        }
        OpName::Fsqrt => {
            let rs1f = f32::from_bits(rs1u);
            exec_fsqrt(rs1f)
        }
        _ => unimplemented!(),
    };

    exe
}
