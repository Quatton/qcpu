use std::io::{Read as _, Write as _};

use super::{
    syntax::{OpName, OpV4},
    SimulatorV4, SimulatorV4HaltKind,
};

pub type ExecuteResult = (usize, Option<u32>);

// type F32 = softfloat::F32;
type F32 = f32;

fn f32_from(x: u32) -> F32 {
    F32::from_bits(x)
}

fn f32_to(x: F32) -> u32 {
    F32::to_bits(x)
}

fn finv(x: u32) -> u32 {
    // Stage 1
    let index = (x >> 13) & 0x3FF; // 10 bits [22:13]
    let d_st1 = x & 0x1FFF; // 13 bits [12:0]

    // Stage 2
    let ab_st2 = super::table::FINV_TABLE[index as usize]; // 36-bit value
    let d_st2 = d_st1;

    // Stage 3
    let ab_st3 = ab_st2;
    let d_st3 = d_st2;

    let a_st3 = ((ab_st3 >> 23) & 0x1FFF) as u32; // 13 bits
    let b_st3 = (ab_st3 & 0x7FFFFF) as u32; // 23 bits

    let ad1_st3 = (a_st3 as u64 * d_st3 as u64) & 0x3FFFFFF;
    let ad2_st3 = ((ad1_st3 >> 12) & 0x7FFFFF) as u32; // Take bits [25:12]

    // 23-bit subtraction
    (b_st3.wrapping_sub(ad2_st3)) & 0x7FFFFF
}

fn fdiv(x1: u32, x2: u32) -> u32 {
    // Stage 1
    let s1_st1 = (x1 >> 31) & 1;
    let e1_st1 = (x1 >> 23) & 0xFF;
    let m1_st1 = x1 & 0x7FFFFF;

    let s2_st1 = (x2 >> 31) & 1;
    let e2_st1 = (x2 >> 23) & 0xFF;
    let m2_st1 = x2 & 0x7FFFFF;

    // Stage 2
    let s1_st2 = s1_st1;
    let e1_st2 = e1_st1;
    let m1_st2 = m1_st1;
    let s2_st2 = s2_st1;
    let e2_st2 = e2_st1;

    // Stage 3
    let s1_st3 = s1_st2;
    let e1_st3 = e1_st2;
    let m1_st3 = m1_st2;
    let s2_st3 = s2_st2;
    let e2_st3 = e2_st2;
    let m2_st3 = finv(m2_st1); // Using previously defined finv function

    // Stage 4
    let s1_st4 = s1_st3;
    let e1_st4 = e1_st3;
    let m1_st4 = m1_st3;
    let s2_st4 = s2_st3;
    let e2_st4 = e2_st3;
    let m2_st4 = m2_st3;

    let h1_sub_st4 = (m1_st4 >> 11) & 0xFFF; // 12 bits
    let h1_st4 = (1 << 12) | h1_sub_st4; // 13 bits
    let l1_st4 = m1_st4 & 0x7FF; // 11 bits

    let h2_sub_st4 = (m2_st4 >> 11) & 0xFFF; // 12 bits
    let h2_st4 = (1 << 12) | h2_sub_st4; // 13 bits
    let l2_st4 = m2_st4 & 0x7FF; // 11 bits

    let hh_st4 = (h1_st4 as u64 * h2_st4 as u64) & 0x3FFFFFF; // 13×13 = 26 bits
    let hl_st4 = (h1_st4 as u64 * l2_st4 as u64) & 0xFFFFFF; // 13×11 = 24 bits
    let lh_st4 = (l1_st4 as u64 * h2_st4 as u64) & 0xFFFFFF; // 11×13 = 24 bits

    // Stage 5
    let s1_st5 = s1_st4;
    let e1_st5 = e1_st4;
    let s2_st5 = s2_st4;
    let e2_st5 = e2_st4;
    let hh_st5 = hh_st4;
    let hl_st5 = hl_st4;
    let lh_st5 = lh_st4;

    let tmp = hh_st5 + ((hl_st5 >> 11) & 0x1FFF) + ((lh_st5 >> 11) & 0x1FFF) + 1;
    let m = if tmp & (1 << 25) != 0 {
        (tmp >> 2) & 0x7FFFFF
    } else {
        (tmp >> 1) & 0x7FFFFF
    };

    let ey1 = ((e1_st5 as i32) - (e2_st5 as i32) + 126) & 0x3FF; // 10-bit
    let ey2 = ((e1_st5 as i32) - (e2_st5 as i32) + 127) & 0x3FF; // 10-bit
    let ey3 = if tmp & (1 << 25) != 0 { ey2 } else { ey1 };

    let underflow_st5 = (e1_st5 == 0) || (e2_st5 == 0) || (ey3 & 0x200 != 0) || (ey3 == 0);
    let overflow_st5 = (e1_st5 == 255) || (e2_st5 == 255) || (ey3 & 0x100 != 0) || (ey3 == 255);

    // Stage 6
    let s1_st6 = s1_st5;
    let s2_st6 = s2_st5;
    let underflow_st6 = underflow_st5;
    let overflow_st6 = overflow_st5;
    let ey3_st6 = ey3;
    let m_st6 = m;

    let sy = s1_st6 ^ s2_st6;
    let ey = if underflow_st6 {
        0
    } else if overflow_st6 {
        255
    } else {
        ey3_st6 as u8
    };
    let my = if underflow_st6 || overflow_st6 {
        0
    } else {
        m_st6
    };

    (sy << 31) | ((ey as u32) << 23) | my as u32
}

fn fsqrt(x: u32) -> u32 {
    // Stage 1
    let s_st1 = (x >> 31) & 1;
    let e_st1 = (x >> 23) & 0xFF;
    let m_st1 = x & 0x7FFFFF;

    let ey1_st1 = ((e_st1 >> 1) + 63) & 0xFF; // 8-bit arithmetic
    let ey2_st1 = (ey1_st1 + 1) & 0xFF; // 8-bit arithmetic
    let in24_st1 = (e_st1 & 1) == 0;
    let ey3_st1 = if in24_st1 { ey1_st1 } else { ey2_st1 };

    let index = ((in24_st1 as u32) << 9) | (m_st1 >> 14); // 10 bits: {in24_st1, m_st1[22:14]}
    let d_st1 = m_st1 & 0x3FFF; // 14 bits: m_st1[13:0]

    // Stage 2
    let ab_st2 = (1u64 << 36) | super::table::FSQRT_TABLE[index as usize]; // 37 bits
    let a_st2 = ((ab_st2 >> 23) & 0x3FFF) as u32; // 14 bits
    let b_st2 = (ab_st2 & 0x7FFFFF) as u32; // 23 bits
    let d_st2 = d_st1;

    let ad1_st2 = (a_st2 as u64 * d_st2 as u64) & 0xFFFFFFF; // 14×14 = 28 bits
    let ad2_st2 = if in24_st1 {
        ((ad1_st2 >> 14) & 0x7FFFFF) as u32 // bits [27:14]
    } else {
        ((ad1_st2 >> 15) & 0x7FFFFF) as u32 // bits [27:15]
    };
    let my1_st2 = (b_st2 + ad2_st2) & 0x7FFFFF; // 23-bit addition

    // Stage 3
    let s_st3 = s_st1;
    let e_st3 = e_st1;
    let ey3_st3 = ey3_st1;
    let my1_st3 = my1_st2;

    let is_zero = e_st3 == 0;
    let is_inf = e_st3 == 255;

    let sy = s_st3;
    let ey = if is_zero {
        0
    } else if is_inf {
        255
    } else {
        ey3_st3
    };
    let my = if is_zero || is_inf { 0 } else { my1_st3 };

    (sy << 31) | (ey << 23) | my

    // f32_to(f32_from(x).sqrt())
}

fn fadd(x1: u32, x2: u32) -> u32 {
    // Stage 1: Unpack inputs
    let s1 = (x1 & 0x80000000) != 0;
    let e1 = ((x1 >> 23) & 0xFF) as u8;
    let m1 = x1 & 0x7FFFFF; // 23 bits

    let s2 = (x2 & 0x80000000) != 0;
    let e2 = ((x2 >> 23) & 0xFF) as u8;
    let m2 = x2 & 0x7FFFFF; // 23 bits

    let x1_is_bigger = (x1 & 0x7FFFFFFF) > (x2 & 0x7FFFFFFF);
    let e_big = if x1_is_bigger { e1 } else { e2 };
    let e_small = if x1_is_bigger { e2 } else { e1 };

    // Stage 2: Align and add/subtract
    let ey1 = (e_big as u16) + 1; // 10 bits
    let e_small_is_zero = e_small == 0;
    let shift = e_big - e_small;

    let m_big = if x1_is_bigger {
        (1 << 24) | (m1 << 1) // 26 bits: 01.mmmm...
    } else {
        (1 << 24) | (m2 << 1) // 26 bits: 01.mmmm...
    };

    let m_small_prev = if x1_is_bigger {
        (1 << 24) | (m2 << 1) // 26 bits: 01.mmmm...
    } else {
        (1 << 24) | (m1 << 1) // 26 bits: 01.mmmm...
    };

    let m_small = (m_small_prev >> shift) & 0x3FFFFFF; // 26 bits
    let my1 = if s1 == s2 {
        m_big + m_small // 26 bits
    } else {
        m_big - m_small // 26 bits
    };

    // Stage 3: Normalize
    let m_shift = match my1 {
        n if n & (1 << 25) != 0 => 0,
        n if n & (1 << 24) != 0 => 1,
        n if n & (1 << 23) != 0 => 2,
        n if n & (1 << 22) != 0 => 3,
        n if n & (1 << 21) != 0 => 4,
        n if n & (1 << 20) != 0 => 5,
        n if n & (1 << 19) != 0 => 6,
        n if n & (1 << 18) != 0 => 7,
        n if n & (1 << 17) != 0 => 8,
        n if n & (1 << 16) != 0 => 9,
        n if n & (1 << 15) != 0 => 10,
        n if n & (1 << 14) != 0 => 11,
        n if n & (1 << 13) != 0 => 12,
        n if n & (1 << 12) != 0 => 13,
        n if n & (1 << 11) != 0 => 14,
        n if n & (1 << 10) != 0 => 15,
        n if n & (1 << 9) != 0 => 16,
        n if n & (1 << 8) != 0 => 17,
        n if n & (1 << 7) != 0 => 18,
        n if n & (1 << 6) != 0 => 19,
        n if n & (1 << 5) != 0 => 20,
        n if n & (1 << 4) != 0 => 21,
        n if n & (1 << 3) != 0 => 22,
        n if n & (1 << 2) != 0 => 23,
        n if n & (1 << 1) != 0 => 24,
        n if n & 1 != 0 => 25,
        _ => 26,
    };

    let my2_prev = (my1 as u64) << m_shift; // 52 bits
    let my2 = ((my2_prev >> 2) & 0x7FFFFF) as u32; // 23 bits
    let ey2 = ey1 - m_shift as u16; // 10 bits

    let underflow = e_big == 0 || (ey2 & 0x200) != 0 || ey2 == 0 || m_shift == 26;
    let overflow = e_big == 255 || (ey2 & 0x100) != 0 || ey2 == 255;

    // Stage 4: Final assembly
    let sy = if x1_is_bigger { s1 } else { s2 };
    let ey = if e_small_is_zero {
        e_big
    } else if underflow {
        0
    } else if overflow {
        255
    } else {
        ey2 as u8
    };

    let my = if e_small_is_zero {
        (m_big >> 1) & 0x7FFFFF // 23 bits
    } else if underflow || overflow {
        0
    } else {
        my2
    };

    // Pack result
    ((sy as u32) << 31) | ((ey as u32) << 23) | my

    // f32_to(f32_from(x1) + f32_from(x2))
}

fn fsub(x1: u32, x2: u32) -> u32 {
    let minus_x2 = (!x2 & 0x80000000) | (x2 & 0x7FFFFFFF);
    fadd(x1, minus_x2)
}

fn ftoi(x: u32) -> u32 {
    // // Stage 1
    // let s_st1 = (x >> 31) & 1;
    // let e_st1 = ((x >> 23) & 0xFF) as u8;
    // let m_st1 = x & 0x007FFFFF;
    // let my_st1 = (1 << 23) | m_st1;
    // let y1_st1 = if e_st1 < 149 {
    //     let shift = (149 - e_st1) as u32;
    //     (my_st1 as u64) >> shift
    // } else {
    //     let shift = (e_st1 - 149) as u32;
    //     (my_st1 as u64) << shift
    // };
    // let y1_st1 = y1_st1 & 0x1FFFFFFFF;
    // let y2_st1 = (y1_st1 + 1) & 0x1FFFFFFFF;

    // // Stage 2
    // let s_st2 = s_st1;
    // let y2_st2 = y2_st1;
    // let y3 = (y2_st2 >> 1) as u32;

    // if s_st2 == 1 {
    //     (!y3).wrapping_add(1)
    // } else {
    //     y3
    // }

    f32_from(x).round_ties_even() as i32 as u32
}

fn itof(x: u32) -> u32 {
    // // Stage 1
    // let is_zero = x == 0;
    // let s = x & (1 << 31);
    // let m1 = if s != 0 { x.wrapping_neg() } else { x };

    // let shifts = m1.leading_zeros();

    // // Stage 2
    // let m2 = m1 << shifts;
    // let m3 = m2.wrapping_add(0x80); // Rounding
    // let m = if is_zero { 0 } else { (m3 >> 8) & 0x7FFFFF };

    // let e = if is_zero {
    //     0
    // } else if m3 & (1 << 31) != 0 {
    //     158 - shifts
    // } else {
    //     159 - shifts
    // };

    // // Stage 3
    // s | (e << 23) | m

    f32_to(x as i32 as F32)
}

fn fmul(x1: u32, x2: u32) -> u32 {
    // Stage 1: Unpack inputs
    let s1 = (x1 & 0x80000000) != 0;
    let e1 = (x1 >> 23) & 0xFF;
    let h1_sub = (x1 >> 11) & 0xFFF; // 12 bits
    let l1 = x1 & 0x7FF; // 11 bits
    let h1 = (1 << 12) | h1_sub; // 13 bits: 1.bbbb...

    let s2 = (x2 & 0x80000000) != 0;
    let e2 = (x2 >> 23) & 0xFF;
    let h2_sub = (x2 >> 11) & 0xFFF; // 12 bits
    let l2 = x2 & 0x7FF; // 11 bits
    let h2 = (1 << 12) | h2_sub; // 13 bits: 1.bbbb...

    // Stage 1: Multiplications
    let hh = ((h1 as u32) * (h2 as u32)) & 0x3FFFFFF; // 26 bits
    let hl = ((h1 as u32) * (l2 as u32)) & 0xFFFFFF; // 24 bits
    let lh = ((l1 as u32) * (h2 as u32)) & 0xFFFFFF; // 24 bits

    // Stage 2: Addition and normalization
    let tmp = hh + ((hl >> 11) & 0x1FFF) + ((lh >> 11) & 0x1FFF) + 1; // 26 bits

    let m = if (tmp & (1 << 25)) != 0 {
        (tmp >> 2) & 0x7FFFFF // 23 bits
    } else {
        (tmp >> 1) & 0x7FFFFF // 23 bits
    };

    let ey1 = (e1 as u16) + (e2 as u16) - 127; // 10 bits
    let ey2 = (e1 as u16) + (e2 as u16) - 126; // 10 bits
    let ey3 = if (tmp & (1 << 25)) != 0 { ey2 } else { ey1 };

    // Stage 3: Final assembly
    let underflow = e1 == 0 || e2 == 0 || (ey3 & 0x200) != 0 || ey3 == 0;
    let overflow = e1 == 255 || e2 == 255 || (ey3 & 0x100) != 0 || ey3 == 255;

    let sy = s1 ^ s2;
    let ey = if underflow {
        0
    } else if overflow {
        255
    } else {
        ey3 as u8
    };
    let my = if underflow || overflow { 0 } else { m };

    // Pack result
    ((sy as u32) << 31) | ((ey as u32) << 23) | (my & 0x7FFFFF)
}

impl SimulatorV4 {
    fn exec_add(&mut self, op: &OpV4) {
        self.set_reg(
            op.rd,
            (self.get_reg(op.rs1) as i32).wrapping_add(self.get_reg(op.rs2) as i32) as u32,
        );
    }

    fn exec_sub(&mut self, op: &OpV4) {
        self.set_reg(
            op.rd,
            (self.get_reg(op.rs1) as i32).wrapping_sub(self.get_reg(op.rs2) as i32) as u32,
        );
    }

    fn exec_sll(&mut self, op: &OpV4) {
        self.set_reg(op.rd, self.get_reg(op.rs1) << self.get_reg(op.rs2));
    }

    fn exec_srl(&mut self, op: &OpV4) {
        self.set_reg(op.rd, self.get_reg(op.rs1) >> self.get_reg(op.rs2));
    }

    fn exec_xor(&mut self, op: &OpV4) {
        self.set_reg(op.rd, self.get_reg(op.rs1) ^ self.get_reg(op.rs2));
    }

    fn exec_and(&mut self, op: &OpV4) {
        self.set_reg(op.rd, self.get_reg(op.rs1) & self.get_reg(op.rs2));
    }

    fn exec_or(&mut self, op: &OpV4) {
        self.set_reg(op.rd, self.get_reg(op.rs1) | self.get_reg(op.rs2));
    }

    fn exec_addi(&mut self, op: &OpV4) {
        self.set_reg(
            op.rd,
            (self.get_reg(op.rs1) as i32).wrapping_add(op.imm as i32) as u32,
        );
    }

    fn exec_slli(&mut self, op: &OpV4) {
        self.set_reg(op.rd, self.get_reg(op.rs1) << op.imm);
    }

    fn exec_srli(&mut self, op: &OpV4) {
        self.set_reg(op.rd, self.get_reg(op.rs1) >> op.imm);
    }

    fn exec_beq(&mut self, op: &OpV4, pc: &mut usize) {
        if self.get_reg(op.rs1) == self.get_reg(op.rs2) {
            *pc = self.pc.wrapping_add_signed(op.imm as isize);
        }
    }

    fn exec_bge(&mut self, op: &OpV4, pc: &mut usize) {
        if (self.get_reg(op.rs1) as i32) >= (self.get_reg(op.rs2) as i32) {
            *pc = self.pc.wrapping_add_signed(op.imm as isize);
        }
    }

    fn exec_blt(&mut self, op: &OpV4, pc: &mut usize) {
        if (self.get_reg(op.rs1) as i32) < (self.get_reg(op.rs2) as i32) {
            *pc = self.pc.wrapping_add_signed(op.imm as isize);
        }
    }

    fn exec_bne(&mut self, op: &OpV4, pc: &mut usize) {
        if self.get_reg(op.rs1) != self.get_reg(op.rs2) {
            *pc = self.pc.wrapping_add_signed(op.imm as isize);
        }
    }

    fn exec_jal(&mut self, op: &OpV4, pc: &mut usize) {
        self.set_reg(op.rd, (self.pc + 4) as u32);
        *pc = self.pc.wrapping_add_signed(op.imm as i32 as isize);
    }

    fn exec_jalr(&mut self, op: &OpV4, pc: &mut usize) {
        self.set_reg(op.rd, (self.pc + 4) as u32);
        *pc = self.get_reg(op.rs1).wrapping_add_signed(op.imm as i32) as usize;
    }

    fn exec_lui(&mut self, op: &OpV4) {
        self.set_reg(op.rd, op.imm);
    }

    fn exec_fadd(&mut self, op: &OpV4) {
        self.set_reg(op.rd, fadd(self.get_reg(op.rs1), self.get_reg(op.rs2)));
    }

    fn exec_fsub(&mut self, op: &OpV4) {
        self.set_reg(op.rd, fsub(self.get_reg(op.rs1), self.get_reg(op.rs2)));
    }

    fn exec_fmul(&mut self, op: &OpV4) {
        self.set_reg(op.rd, fmul(self.get_reg(op.rs1), self.get_reg(op.rs2)));
    }

    fn exec_fdiv(&mut self, op: &OpV4) {
        // let rs1f = f32_from(self.get_reg(op.rs1));
        // let rs2f = f32_from(self.get_reg(op.rs2));
        // self.set_reg(op.rd, f32_to(rs1f / rs2f));
        self.set_reg(op.rd, fdiv(self.get_reg(op.rs1), self.get_reg(op.rs2)));
    }

    fn exec_fsgnj(&mut self, op: &OpV4) {
        self.set_reg(
            op.rd,
            (self.get_reg(op.rs1) & !(1 << 31)) | (self.get_reg(op.rs2) & (1 << 31)),
        );
    }

    fn exec_fsgnjn(&mut self, op: &OpV4) {
        self.set_reg(
            op.rd,
            (self.get_reg(op.rs1) & !(1 << 31)) | ((!self.get_reg(op.rs2)) & (1 << 31)),
        );
    }

    fn exec_fsgnjx(&mut self, op: &OpV4) {
        self.set_reg(
            op.rd,
            self.get_reg(op.rs1) ^ (self.get_reg(op.rs2) & (1 << 31)),
        );
    }

    fn exec_ftoi(&mut self, op: &OpV4) {
        self.set_reg(op.rd, ftoi(self.get_reg(op.rs1)));
    }

    fn exec_fitof(&mut self, op: &OpV4) {
        self.set_reg(op.rd, itof(self.get_reg(op.rs1)));
    }

    fn exec_feq(&mut self, op: &OpV4) {
        let rs1f = f32_from(self.get_reg(op.rs1));
        let rs2f = f32_from(self.get_reg(op.rs2));
        self.set_reg(op.rd, if rs1f == rs2f { 1 } else { 0 });
    }

    fn exec_flt(&mut self, op: &OpV4) {
        let rs1f = f32_from(self.get_reg(op.rs1));
        let rs2f = f32_from(self.get_reg(op.rs2));
        self.set_reg(op.rd, if rs1f < rs2f { 1 } else { 0 });
    }

    fn exec_fle(&mut self, op: &OpV4) {
        let rs1f = f32_from(self.get_reg(op.rs1));
        let rs2f = f32_from(self.get_reg(op.rs2));
        self.set_reg(op.rd, if rs1f <= rs2f { 1 } else { 0 });
    }

    fn exec_fsqrt(&mut self, op: &OpV4) {
        self.set_reg(op.rd, fsqrt(self.get_reg(op.rs1)));
    }

    fn exec_lw(&mut self, op: &OpV4) -> Result<(), SimulatorV4HaltKind> {
        let addr = self.get_reg(op.rs1).wrapping_add(op.imm) as usize;
        let (val, hit) = self.memory.read(addr)?;
        self.set_reg(op.rd, val);
        self.cache_hit = hit;
        Ok(())
    }

    fn exec_lwr(&mut self, op: &OpV4) -> Result<(), SimulatorV4HaltKind> {
        let addr = self.get_reg(op.rs1).wrapping_add(self.get_reg(op.rs2)) as usize;
        let (val, hit) = self.memory.read(addr)?;
        self.set_reg(op.rd, val);
        self.cache_hit = hit;
        Ok(())
    }

    fn exec_lwi(&mut self, op: &OpV4) -> Result<(), SimulatorV4HaltKind> {
        let addr = op.imm as usize;
        let (val, hit) = self.memory.read(addr)?;
        self.set_reg(op.rd, val);
        self.cache_hit = hit;
        Ok(())
    }

    fn exec_sw(&mut self, op: &OpV4) -> Result<(), SimulatorV4HaltKind> {
        let addr = self.get_reg(op.rs1).wrapping_add(op.imm) as usize;
        let hit = self.memory.write(addr, self.get_reg(op.rs2))?;
        self.cache_hit = hit;
        Ok(())
    }

    fn exec_swi(&mut self, op: &OpV4) -> Result<(), SimulatorV4HaltKind> {
        let addr = op.imm as usize;
        let hit = self.memory.write(addr, self.get_reg(op.rs2))?;
        self.cache_hit = hit;
        Ok(())
    }

    fn exec_outb(&mut self, op: &OpV4) {
        let val = self.get_reg(op.rs2);
        self.output.write_all(&[(val & 0xff) as u8]).unwrap();
    }

    fn exec_inw(&mut self, op: &OpV4) {
        let mut buf = [0; 4];
        self.input.read_exact(&mut buf).unwrap();
        self.set_reg(op.rd, u32::from_le_bytes(buf));
    }

    pub fn execute(&mut self, op: &OpV4) -> Result<usize, SimulatorV4HaltKind> {
        let mut next_pc = self.pc + 4;
        match op.opname {
            OpName::Add => self.exec_add(op),
            OpName::Sub => self.exec_sub(op),
            OpName::Sll => self.exec_sll(op),
            OpName::Srl => self.exec_srl(op),
            OpName::Xor => self.exec_xor(op),
            OpName::And => self.exec_and(op),
            OpName::Or => self.exec_or(op),
            OpName::Addi => self.exec_addi(op),
            OpName::Slli => self.exec_slli(op),
            OpName::Srli => self.exec_srli(op),
            OpName::Beq => self.exec_beq(op, &mut next_pc),
            OpName::Bge => self.exec_bge(op, &mut next_pc),
            OpName::Blt => self.exec_blt(op, &mut next_pc),
            OpName::Bne => self.exec_bne(op, &mut next_pc),
            OpName::Jal => self.exec_jal(op, &mut next_pc),
            OpName::Jalr => self.exec_jalr(op, &mut next_pc),
            OpName::Lui => self.exec_lui(op),
            OpName::Fadd => self.exec_fadd(op),
            OpName::Fsub => self.exec_fsub(op),
            OpName::Fmul => self.exec_fmul(op),
            OpName::Fdiv => self.exec_fdiv(op),
            OpName::Fsgnj => self.exec_fsgnj(op),
            OpName::Fsgnjn => self.exec_fsgnjn(op),
            OpName::Fsgnjx => self.exec_fsgnjx(op),
            OpName::Ftoi => self.exec_ftoi(op),
            OpName::Fitof => self.exec_fitof(op),
            OpName::Feq => self.exec_feq(op),
            OpName::Flt => self.exec_flt(op),
            OpName::Fle => self.exec_fle(op),
            OpName::Fsqrt => self.exec_fsqrt(op),
            OpName::Lw => self.exec_lw(op)?,
            OpName::Lwr => self.exec_lwr(op)?,
            OpName::Lwi => self.exec_lwi(op)?,
            OpName::Sw => self.exec_sw(op)?,
            OpName::Swi => self.exec_swi(op)?,
            OpName::Outb => self.exec_outb(op),
            OpName::Inw => self.exec_inw(op),
            _ => unimplemented!(),
        }

        Ok(next_pc)
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
                    let y = super::fsqrt(x);
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
