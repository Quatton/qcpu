use bitvec::{field::BitField, order::Lsb0, view::BitView};

use super::syntax::{OpCode, OpName, OpV4, Reg};

pub fn decode(mc: u32) -> OpV4 {
    let bits = mc.view_bits::<Lsb0>();
    let opcode = match bits[0..4].load::<u32>() {
        super::syntax::R_CODE => OpCode::R,
        super::syntax::I_CODE => OpCode::I,
        super::syntax::L_CODE => OpCode::L,
        super::syntax::S_CODE => OpCode::S,
        super::syntax::B_CODE => OpCode::B,
        super::syntax::A_CODE => OpCode::A,
        super::syntax::J_CODE => OpCode::J,
        super::syntax::U_CODE => OpCode::U,
        super::syntax::N_CODE => OpCode::N,
        super::syntax::O_CODE => OpCode::O,
        super::syntax::F_CODE => OpCode::F,
        super::syntax::LR_CODE => OpCode::LR,
        #[cfg(feature = "full_ops")]
        super::syntax::LU_CODE => OpCode::LU,
        #[cfg(feature = "full_ops")]
        super::syntax::SU_CODE => OpCode::SU,
        opcode => unimplemented!("Not supported for {opcode:04b}"),
    };

    let mut imm: u32 = 0;

    let rd = match opcode {
        OpCode::R
        | OpCode::F
        | OpCode::J
        | OpCode::U
        | OpCode::I
        | OpCode::N
        | OpCode::LR
        | OpCode::L
        | OpCode::A => bits[4..10].load::<Reg>(),
        OpCode::B | OpCode::O | OpCode::S => 0,
        #[cfg(feature = "full_ops")]
        OpCode::LU => bits[4..10].load::<Reg>(),
        #[cfg(feature = "full_ops")]
        OpCode::SU => 0,
    };

    let rs1 = match opcode {
        OpCode::R
        | OpCode::F
        | OpCode::S
        | OpCode::I
        | OpCode::B
        | OpCode::L
        | OpCode::LR
        | OpCode::A => bits[13..19].load::<Reg>(),
        OpCode::J | OpCode::N | OpCode::O | OpCode::U => 0,
        #[cfg(feature = "full_ops")]
        OpCode::SU | OpCode::LU => 0,
    };

    let rs2 = match opcode {
        OpCode::R | OpCode::F | OpCode::S | OpCode::B | OpCode::O | OpCode::LR => {
            bits[19..25].load::<Reg>()
        }
        OpCode::I | OpCode::A | OpCode::U | OpCode::J | OpCode::N | OpCode::L => 0,
        #[cfg(feature = "full_ops")]
        OpCode::LU => 0,
        #[cfg(feature = "full_ops")]
        OpCode::SU => bits[19..25].load::<Reg>(),
    };

    let funct3 = bits[10..13].load::<u32>();

    let opname = match opcode {
        OpCode::I => match funct3 {
            super::syntax::ADDI_FUNC3 => OpName::Addi,
            super::syntax::SLLI_FUNC3 => OpName::Slli,
            super::syntax::SRLI_FUNC3 => OpName::Srli,
            _ => unimplemented!("{funct3} not supported for {opcode:?}"),
        },
        OpCode::R => match funct3 {
            super::syntax::ADDSUB_FUNC3 => {
                if bits[30] {
                    OpName::Sub
                } else {
                    OpName::Add
                }
            }
            super::syntax::SLL_FUNC3 => OpName::Sll,
            super::syntax::SRL_FUNC3 => OpName::Srl,
            #[cfg(feature = "full_ops")]
            super::syntax::XOR_FUNC3 => OpName::Xor,
            #[cfg(feature = "full_ops")]
            super::syntax::OR_FUNC3 => OpName::Or,
            #[cfg(feature = "full_ops")]
            super::syntax::AND_FUNC3 => OpName::And,
            _ => unimplemented!("{funct3} not supported for {opcode:?} {mc:032b}"),
        },
        OpCode::L => super::syntax::OpName::Lw,
        OpCode::S => super::syntax::OpName::Sw,
        OpCode::LR => super::syntax::OpName::Lwr,
        #[cfg(feature = "full_ops")]
        OpCode::LU => super::syntax::OpName::Lwi,
        #[cfg(feature = "full_ops")]
        OpCode::SU => super::syntax::OpName::Swi,
        OpCode::B => match funct3 {
            super::syntax::BEQ_FUNC3 => OpName::Beq,
            super::syntax::BNE_FUNC3 => OpName::Bne,
            super::syntax::BLT_FUNC3 => OpName::Blt,
            super::syntax::BGE_FUNC3 => OpName::Bge,
            _ => unimplemented!("{funct3} not supported for {opcode:?}"),
        },
        OpCode::A => OpName::Jalr,
        OpCode::J => OpName::Jal,
        OpCode::U => OpName::Lui,
        OpCode::N => OpName::Inw,
        OpCode::O => OpName::Outb,
        OpCode::F => match bits[25..32].load::<u32>() {
            super::syntax::FADD_FUNC7 => OpName::Fadd,
            super::syntax::FSUB_FUNC7 => OpName::Fsub,
            super::syntax::FMUL_FUNC7 => OpName::Fmul,
            super::syntax::FDIV_FUNC7 => OpName::Fdiv,
            super::syntax::FSQRT_FUNC7 => OpName::Fsqrt,
            super::syntax::FTOI_FUNC7 => OpName::Ftoi,
            super::syntax::FITOF_FUNC7 => OpName::Fitof,
            super::syntax::FSGN_FUNC7 => match funct3 {
                super::syntax::FSGNJ_FUNC3 => OpName::Fsgnj,
                super::syntax::FSGNJN_FUNC3 => OpName::Fsgnjn,
                super::syntax::FSGNJX_FUNC3 => OpName::Fsgnjx,
                _ => unimplemented!("{funct3} not supported for {opcode:?}"),
            },
            super::syntax::FCMP_FUNC7 => match funct3 {
                super::syntax::FEQ_FUNC3 => OpName::Feq,
                super::syntax::FLT_FUNC3 => OpName::Flt,
                super::syntax::FLE_FUNC3 => OpName::Fle,
                _ => unimplemented!("{funct3} not supported for {opcode:?}"),
            },
            _ => unimplemented!("{mc} not supported for {opcode:?}"),
        },
    };

    match opcode {
        OpCode::I | OpCode::A | OpCode::L => {
            // let uimm = bits[19..31].load::<u32>();
            // let sgn = bits[30];

            // imm = if sgn { uimm | 0xfffff000 } else { uimm };
            imm = bits[19..31].load::<i32>() as u32;
        }
        OpCode::S => {
            // let uimm = bits[4..10].load::<u32>() | bits[25..31].load::<u32>() << 6;
            // let sgn = bits[30];

            // imm = if sgn { uimm | 0xfffff000 } else { uimm };
            let mut bv = bits[4..10].to_bitvec();
            bv.extend_from_bitslice(&bits[25..31]);
            imm = bv.load::<i32>() as u32;
        }
        OpCode::B => {
            // let uimm = bits[4..10].load::<u32>() | bits[25..=31].load::<u32>() << 6;
            // let sgn = bits[31];

            // imm = if sgn { uimm | 0xfffff000 } else { uimm };
            let mut bv = bits[4..10].to_bitvec();
            bv.extend_from_bitslice(&bits[25..=31]);
            imm = bv.load::<i32>() as u32;
        }
        OpCode::J => {
            // let uimm = bits[10..=31].load::<u32>();
            // let sgn = bits[31];

            // imm = if sgn { uimm | 0xffe00000 } else { uimm };
            imm = bits[10..=31].load::<i32>() as u32;
        }
        OpCode::U => {
            imm = bits[10..30].load::<u32>() << 12;
        }
        #[cfg(feature = "full_ops")]
        OpCode::LU => {
            imm = bits[10..31].load::<u32>();
        }
        #[cfg(feature = "full_ops")]
        OpCode::SU => {
            imm = bits[4..=18].load::<u32>() | bits[25..31].load::<u32>() << 15;
        }
        OpCode::F | OpCode::N | OpCode::O | OpCode::R | OpCode::LR => {}
    }

    cfg_if::cfg_if! {
        if #[cfg(feature = "debug")] {
            OpV4 {
                opcode,
                opname,
                rd,
                rs1,
                rs2,
                imm,
                mc
            }
        } else {
            OpV4 {
                opname,
                rd,
                rs1,
                rs2,
                imm,
            }
        }
    }
}

#[cfg(test)]
mod test {
    use qcpu_assembler::v2::assemble;

    use super::*;

    #[test]
    fn decode_b() {
        let code = r#"
_min_caml_start:
	addi 	a0, zero, 10 !4
	jal 	ra, fib.10 !4
	jal 	ra, min_caml_print_int !4
fib.10:
	sw  	ra, 0(sp)
	addi	t0, zero, 1 !2
	blt 	t0, a0, bge_else.24 !2
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.24: !2
	addi	a1, a0, -1 !3
	sw  	a0, 4(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 8 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -8 !3
	lw  	a1, 4(sp) !3
	addi	a1, a1, -2 !3
	sw  	a0, 8(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 16 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -16 !3
	lw  	a1, 8(sp) !3
	add 	a0, a1, a0 !3
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
min_caml_print_int:
        "#;

        let mcs = assemble(code, false).unwrap().0;

        for mc in mcs {
            let op = decode(mc);
            println!("{:?}", op);
        }
    }
}
