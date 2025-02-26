use super::syntax::{OpName, OpV4};

pub type ExecuteResult = (usize, Option<u32>);

// type F32 = softfloat::F32;
type F32 = f32;

fn f32_from(x: u32) -> F32 {
    F32::from_bits(x)
}

fn f32_to(x: F32) -> u32 {
    F32::to_bits(x)
}

fn f32_round_to_u32(x: F32) -> u32 {
    // x.round().to_u32()
    x.round() as i32 as u32
}

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
    let rs1f = f32_from(rs1u);
    let rs2f = f32_from(rs2u);
    (pc + 4, Some(f32_to(rs1f + rs2f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fsub(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32_from(rs1u);
    let rs2f = f32_from(rs2u);
    (pc + 4, Some(f32_to(rs1f - rs2f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fmul(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32_from(rs1u);
    let rs2f = f32_from(rs2u);
    (pc + 4, Some(f32_to(rs1f * rs2f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fdiv(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32_from(rs1u);
    let rs2f = f32_from(rs2u);
    (pc + 4, Some(f32_to(rs1f / rs2f)))
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
    let rs1f = f32_from(rs1u);
    (pc + 4, Some(f32_round_to_u32(rs1f)))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fitof(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some((rs1u as i32 as f32).to_bits()))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_feq(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32_from(rs1u);
    let rs2f = f32_from(rs2u);
    (pc + 4, Some(if rs1f == rs2f { 1 } else { 0 }))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_flt(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32_from(rs1u);
    let rs2f = f32_from(rs2u);
    (pc + 4, Some(if rs1f < rs2f { 1 } else { 0 }))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fle(rs1u: u32, rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    let rs1f = f32_from(rs1u);
    let rs2f = f32_from(rs2u);
    (pc + 4, Some(if rs1f <= rs2f { 1 } else { 0 }))
}

#[allow(unused_variables)]
#[inline(always)]
fn exec_fsqrt(rs1u: u32, _rs2u: u32, imm: u32, pc: usize) -> (usize, Option<u32>) {
    (pc + 4, Some(custom_sqrt(rs1u)))
}

#[allow(unused_variables)]
#[inline(always)]
fn custom_sqrt(x: u32) -> u32 {
    f32_to(f32_from(x).sqrt())

    // let s_st1 = (x >> 31) & 1;
    // let e_st1 = (x >> 23) & 0xFF;
    // let m_st1 = x & 0x7FFFFF;

    // let ey1_st1 = ((e_st1 as i16 >> 1) + 63) as u8;
    // let ey2_st1 = ey1_st1.wrapping_add(1);

    // let in24_st1 = (e_st1 & 1) == 0;

    // let ey3_st1 = if in24_st1 { ey1_st1 } else { ey2_st1 };

    // let index = ((if in24_st1 { 1 << 23 } else { 0 }) | m_st1) >> 13;
    // let d_st1 = ((if in24_st1 { 1 << 23 } else { 0 }) | m_st1) & ((1 << 13) - 1);

    // let ab_st2_table = super::fsqrt_table::FSQRT_TABLE[(index & 1023) as usize];
    // let ab_st2 = (1u64 << 36) | ab_st2_table;

    // let a_st2 = ((ab_st2 >> 23) & ((1 << 14) - 1)) as u32;
    // let b_st2 = (ab_st2 & ((1 << 23) - 1)) as u32;

    // let ad1_st2 = a_st2 * d_st1;

    // let ad2_st2 = if in24_st1 {
    //     (ad1_st2 >> 14) & ((1 << 23) - 1)
    // } else {
    //     (ad1_st2 >> 15) & ((1 << 23) - 1)
    // };

    // let my1_st2 = b_st2 + ad2_st2;

    // let is_zero = e_st1 == 0;
    // let is_inf = e_st1 == 255;

    // let sy = s_st1;
    // let ey = if is_zero {
    //     0
    // } else if is_inf {
    //     255
    // } else {
    //     ey3_st1
    // };
    // let my = if is_zero || is_inf {
    //     0
    // } else {
    //     my1_st2 & ((1 << 23) - 1)
    // };

    // (sy << 31) | ((ey as u32) << 23) | (my & ((1 << 23) - 1))
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

#[cfg(test)]
mod test {
    use std::time;

    use rayon::prelude::*;

    #[test]
    fn test_fsqrt() {
        let start = time::Instant::now();

        let time_gain = (0..(1 << 20))
            .into_par_iter()
            .fold(
                || 0,
                |acc, x| {
                    let y = super::custom_sqrt(x);
                    let start = time::Instant::now();
                    let yf = f32::from_bits(y);
                    let elapsed = start.elapsed();
                    let start = time::Instant::now();
                    let xf = f32::from_bits(x);
                    let elapsed2 = start.elapsed();
                    let yf2 = xf.sqrt();
                    assert!(
                        (yf - yf2).abs() < 0.0001,
                        "x: {}, y: {}, yf: {}, yf2: {}",
                        x,
                        y,
                        yf,
                        yf2
                    );
                    acc + ((elapsed).as_nanos() as i64 - (elapsed2).as_nanos() as i64) / 1000
                },
            )
            .sum::<i64>();

        println!("elapsed: {:?}", start.elapsed());
        println!("time gain: {:?}", time_gain);
    }
}
