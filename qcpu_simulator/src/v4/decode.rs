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
        opcode => unimplemented!("Not supported for {opcode:04b}"),
    };

    let mut rd: Reg = 0;
    let mut rs1: Reg = 0;
    let mut rs2: Reg = 0;
    let mut imm: u32 = 0;

    let cap = bits[4..10].load::<u32>();
    match opcode {
        OpCode::R
        | OpCode::F
        | OpCode::A
        | OpCode::U
        | OpCode::I
        | OpCode::L
        | OpCode::N
        | OpCode::J => {
            rd = cap as Reg;
        }
        _ => {}
    };

    let funct3 = bits[10..13].load::<u32>();
    let cap = bits[13..19].load::<u32>();
    match opcode {
        OpCode::R | OpCode::I | OpCode::A | OpCode::L | OpCode::F | OpCode::S | OpCode::B => {
            rs1 = cap as Reg;
        }
        _ => {}
    };

    let cap = bits[19..25].load::<u32>();
    match opcode {
        OpCode::R | OpCode::F | OpCode::S | OpCode::B | OpCode::O => {
            rs2 = cap as Reg;
        }
        _ => {}
    };

    let opname = match opcode {
        OpCode::I => match funct3 {
            super::syntax::ADDI_FUNC3 => OpName::Addi,
            super::syntax::SLLI_FUNC3 => OpName::Slli,
            super::syntax::SRLI_FUNC3 => OpName::Srli,
            _ => unimplemented!("{funct3} not supported for {opcode:?}"),
        },
        OpCode::R => match funct3 {
            super::syntax::ADDSUB_FUNC3 => {
                if mc & 0b1000000 == 0 {
                    OpName::Add
                } else {
                    OpName::Sub
                }
            }
            super::syntax::SLL_FUNC3 => OpName::Sll,
            super::syntax::SRL_FUNC3 => OpName::Srl,
            super::syntax::XOR_FUNC3 => OpName::Xor,
            super::syntax::OR_FUNC3 => OpName::Or,
            super::syntax::AND_FUNC3 => OpName::And,
            _ => unimplemented!("{funct3} not supported for {opcode:?} {mc:032b}"),
        },
        OpCode::L => super::syntax::OpName::Lw,
        OpCode::S => super::syntax::OpName::Sw,
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
            super::syntax::FCOMB_FUNC7 => match funct3 {
                super::syntax::FSGNJ_FUNC3 => OpName::Fsgnj,
                super::syntax::FSGNJN_FUNC3 => OpName::Fsgnjn,
                super::syntax::FSGNJX_FUNC3 => OpName::Fsgnjx,
                _ => unimplemented!("{funct3} not supported for {opcode:?}"),
            },
            super::syntax::FSGN_FUNC7 => match funct3 {
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
            let uimm = bits[19..31].load::<u32>();
            let sgn = bits[30];

            imm = if sgn { uimm | 0xfffff000 } else { uimm };
        }
        OpCode::S => {
            let uimm = bits[4..10].load::<u32>() | bits[25..31].load::<u32>() << 6;
            let sgn = bits[30];

            imm = if sgn { uimm | 0xfffff000 } else { uimm };
        }
        OpCode::B => {
            let uimm = bits[4..10].load::<u32>() | bits[25..31].load::<u32>() << 6;
            let sgn = bits[31];

            imm = if sgn { uimm | 0xfffff000 } else { uimm };
        }
        OpCode::J => {
            let uimm = bits[10..30].load::<u32>();
            let sgn = bits[30];

            imm = if sgn { uimm | 0xfff00000 } else { uimm };
        }
        OpCode::U => {
            imm = bits[10..30].load::<u32>() << 12;
        }
        _ => {}
    }

    OpV4 {
        mc,
        opcode,
        opname,
        rd,
        rs1,
        rs2,
        imm,
    }
}
