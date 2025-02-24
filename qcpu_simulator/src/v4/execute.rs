use super::syntax::{OpName, OpV4};

pub type ExecuteResult = (usize, Option<u32>);

#[allow(unused_variables)]
#[inline(always)]
#[allow(unused)]
fn unimplemented_exec(_rs1u: u32, _rs2u: u32, _imm: u32, _pc: usize) -> (usize, Option<u32>) {
    unimplemented!()
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_add(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some((rs1u as i32).wrapping_add(rs2u as i32) as u32))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_sub(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some((rs1u as i32).wrapping_sub(rs2u as i32) as u32))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_sll(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u << rs2u))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_srl(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u >> rs2u))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_xor(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u ^ rs2u))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_and(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u & rs2u))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_or(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u | rs2u))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_addi(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some((rs1u as i32).wrapping_add(imm as i32) as u32))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_slli(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u << imm))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_srli(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u >> imm))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_beq(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    if rs1u == rs2u {
        (pc.wrapping_add_signed(imm as isize), None)
    } else {
        (pc + 4, None)
    }
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_bge(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    if (rs1u as i32) >= (rs2u as i32) {
        (pc.wrapping_add_signed(imm as isize), None)
    } else {
        (pc + 4, None)
    }
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_blt(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    if (rs1u as i32) < (rs2u as i32) {
        (pc.wrapping_add_signed(imm as isize), None)
    } else {
        (pc + 4, None)
    }
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_bne(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    if rs1u != rs2u {
        (pc.wrapping_add_signed(imm as isize), None)
    } else {
        (pc + 4, None)
    }
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_jal(_rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (
        // must use i32 as isize to cast u32 to negative value
        pc.wrapping_add_signed(imm as i32 as isize),
        Some((pc + 4) as u32),
    )
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_jalr(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (
        rs1u.wrapping_add_signed(imm as i32) as usize,
        Some((pc + 4) as u32),
    )
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_lui(_rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(imm))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fadd(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);
    (pc + 4, Some(f32::to_bits(rs1f + rs2f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fsub(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);
    (pc + 4, Some(f32::to_bits(rs1f - rs2f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fmul(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);
    (pc + 4, Some(f32::to_bits(rs1f * rs2f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fdiv(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);
    (pc + 4, Some(f32::to_bits(rs1f / rs2f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fsgnj(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some((rs1u & !(1 << 31)) | (rs2u & (1 << 31))))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fsgnjn(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some((rs1u & !(1 << 31)) | ((!rs2u) & (1 << 31))))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fsgnjx(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(rs1u ^ (rs2u & (1 << 31))))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_ftoi(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    (pc + 4, Some(rs1f.round_ties_even() as i32 as u32))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fitof(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some((rs1u as i32 as f32).to_bits()))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_feq(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);
    (pc + 4, Some(if rs1f == rs2f { 1 } else { 0 }))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_flt(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);
    (pc + 4, Some(if rs1f < rs2f { 1 } else { 0 }))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fle(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    let rs2f = f32::from_bits(rs2u);
    (pc + 4, Some(if rs1f <= rs2f { 1 } else { 0 }))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fsqrt(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32::from_bits(rs1u);
    (pc + 4, Some(f32::to_bits(rs1f.sqrt())))
}

#[allow(unused_variables)]
#[inline(always)]
pub fn execute(rs1u: u32, rs2u: u32, pc: usize, op: &OpV4) -> ExecuteResult {
    let imm = op.imm;

    match op.opname {
        OpName::Add => exec_add(rs1u, rs2u, imm, pc),
        OpName::Sub => exec_sub(rs1u, rs2u, imm, pc),
        OpName::Sll => exec_sll(rs1u, rs2u, imm, pc),
        OpName::Srl => exec_srl(rs1u, rs2u, imm, pc),
        OpName::Xor => exec_xor(rs1u, rs2u, imm, pc),
        OpName::And => exec_and(rs1u, rs2u, imm, pc),
        OpName::Or => exec_or(rs1u, rs2u, imm, pc),
        OpName::Addi => exec_addi(rs1u, rs2u, imm, pc),
        OpName::Slli => exec_slli(rs1u, rs2u, imm, pc),
        OpName::Srli => exec_srli(rs1u, rs2u, imm, pc),
        OpName::Beq => exec_beq(rs1u, rs2u, imm, pc),
        OpName::Bge => exec_bge(rs1u, rs2u, imm, pc),
        OpName::Blt => exec_blt(rs1u, rs2u, imm, pc),
        OpName::Bne => exec_bne(rs1u, rs2u, imm, pc),
        OpName::Jal => exec_jal(rs1u, rs2u, imm, pc),
        OpName::Jalr => exec_jalr(rs1u, rs2u, imm, pc),
        OpName::Lui => exec_lui(rs1u, rs2u, imm, pc),
        OpName::Fadd => exec_fadd(rs1u, rs2u, imm, pc),
        OpName::Fsub => exec_fsub(rs1u, rs2u, imm, pc),
        OpName::Fmul => exec_fmul(rs1u, rs2u, imm, pc),
        OpName::Fdiv => exec_fdiv(rs1u, rs2u, imm, pc),
        OpName::Fsgnj => exec_fsgnj(rs1u, rs2u, imm, pc),
        OpName::Fsgnjn => exec_fsgnjn(rs1u, rs2u, imm, pc),
        OpName::Fsgnjx => exec_fsgnjx(rs1u, rs2u, imm, pc),
        OpName::Ftoi => exec_ftoi(rs1u, rs2u, imm, pc),
        OpName::Fitof => exec_fitof(rs1u, rs2u, imm, pc),
        OpName::Feq => exec_feq(rs1u, rs2u, imm, pc),
        OpName::Flt => exec_flt(rs1u, rs2u, imm, pc),
        OpName::Fle => exec_fle(rs1u, rs2u, imm, pc),
        OpName::Fsqrt => exec_fsqrt(rs1u, rs2u, imm, pc),
        _ => unimplemented!(),
    }
}
