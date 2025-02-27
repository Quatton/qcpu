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

fn f32_round_to_u32(x: F32) -> u32 {
    // x.round().to_u32()
    x.round() as i32 as u32
}

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

impl SimulatorV4 {
    #[inline(always)]
    fn exec_add(&mut self, op: &OpV4) {
        self.set_reg(
            op.rd,
            (self.get_reg(op.rs1) as i32).wrapping_add(self.get_reg(op.rs2) as i32) as u32,
        );
    }

    #[inline(always)]
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
        let rs1f = f32_from(self.get_reg(op.rs1));
        let rs2f = f32_from(self.get_reg(op.rs2));
        self.set_reg(op.rd, f32_to(rs1f + rs2f));
    }

    fn exec_fsub(&mut self, op: &OpV4) {
        let rs1f = f32_from(self.get_reg(op.rs1));
        let rs2f = f32_from(self.get_reg(op.rs2));
        self.set_reg(op.rd, f32_to(rs1f - rs2f));
    }

    fn exec_fmul(&mut self, op: &OpV4) {
        let rs1f = f32_from(self.get_reg(op.rs1));
        let rs2f = f32_from(self.get_reg(op.rs2));
        self.set_reg(op.rd, f32_to(rs1f * rs2f));
    }

    fn exec_fdiv(&mut self, op: &OpV4) {
        let rs1f = f32_from(self.get_reg(op.rs1));
        let rs2f = f32_from(self.get_reg(op.rs2));
        self.set_reg(op.rd, f32_to(rs1f / rs2f));
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
        let rs1f = f32_from(self.get_reg(op.rs1));
        self.set_reg(op.rd, f32_round_to_u32(rs1f));
    }

    fn exec_fitof(&mut self, op: &OpV4) {
        self.set_reg(op.rd, (self.get_reg(op.rs1) as i32 as f32).to_bits());
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
        self.set_reg(op.rd, custom_sqrt(self.get_reg(op.rs1)));
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
