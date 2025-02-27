use std::fmt::{Debug, Display};

use serde::{ser::SerializeStruct, Serialize};

pub type Reg = u8;

pub fn get_reg_name(reg: Reg) -> &'static str {
    match reg {
        0 => "zero",
        1 => "ra",
        2 => "sp",
        3 => "gp",
        4 => "tp",
        5 => "t0",
        6 => "t1",
        7 => "t2",
        8 => "s0",
        9 => "s1",
        10 => "a0",
        11 => "a1",
        12 => "a2",
        13 => "a3",
        14 => "a4",
        15 => "a5",
        16 => "a6",
        17 => "a7",
        18 => "s2",
        19 => "s3",
        20 => "s4",
        21 => "s5",
        22 => "s6",
        23 => "s7",
        24 => "s8",
        25 => "s9",
        26 => "s10",
        27 => "s11",
        28 => "t3",
        29 => "t4",
        30 => "t5",
        31 => "t6",
        32 => "ft0",
        33 => "ft1",
        34 => "ft2",
        35 => "ft3",
        36 => "ft4",
        37 => "ft5",
        38 => "ft6",
        39 => "ft7",
        40 => "fs0",
        41 => "fs1",
        42 => "fa0",
        43 => "fa1",
        44 => "fa2",
        45 => "fa3",
        46 => "fa4",
        47 => "fa5",
        48 => "fa6",
        49 => "fa7",
        50 => "fs2",
        51 => "fs3",
        52 => "fs4",
        53 => "fs5",
        54 => "fs6",
        55 => "fs7",
        56 => "fs8",
        57 => "fs9",
        58 => "fs10",
        59 => "fs11",
        60 => "ft8",
        61 => "ft9",
        62 => "ft10",
        63 => "ft11",
        _ => "unknown",
    }
}

#[derive(Debug, Default, Clone, Copy, PartialEq, Eq)]
pub enum OpCode {
    #[default]
    R = 0b0000,
    I = 0b0001,
    L = 0b0010,
    S = 0b0011,
    B = 0b0100,
    A = 0b0101,
    J = 0b0110,
    U = 0b1000,
    N = 0b1001,
    O = 0b1010,
    F = 0b1011,
    LR = 0b1100,
    LU = 0b1101,
    SU = 0b0111,
}

pub const R_CODE: u32 = OpCode::R as u32;
pub const I_CODE: u32 = OpCode::I as u32;
pub const L_CODE: u32 = OpCode::L as u32;
pub const LR_CODE: u32 = OpCode::LR as u32;
pub const LU_CODE: u32 = OpCode::LU as u32;
pub const SU_CODE: u32 = OpCode::SU as u32;
pub const S_CODE: u32 = OpCode::S as u32;
pub const B_CODE: u32 = OpCode::B as u32;
pub const A_CODE: u32 = OpCode::A as u32;
pub const J_CODE: u32 = OpCode::J as u32;
pub const U_CODE: u32 = OpCode::U as u32;
pub const N_CODE: u32 = OpCode::N as u32;
pub const O_CODE: u32 = OpCode::O as u32;
pub const F_CODE: u32 = OpCode::F as u32;

pub const ADDSUB_FUNC3: u32 = 0b000;
pub const SLL_FUNC3: u32 = 0b001;
pub const SRL_FUNC3: u32 = 0b101;
pub const XOR_FUNC3: u32 = 0b100;
pub const OR_FUNC3: u32 = 0b110;
pub const AND_FUNC3: u32 = 0b111;

pub const ADDI_FUNC3: u32 = 0b000;
pub const SLLI_FUNC3: u32 = 0b001;
pub const SRLI_FUNC3: u32 = 0b101;
// pub const LW_FUNC3: u32 = 0b010;
// pub const SW_FUNC3: u32 = 0b010;
pub const BEQ_FUNC3: u32 = 0b000;
pub const BNE_FUNC3: u32 = 0b001;
pub const BLT_FUNC3: u32 = 0b100;
pub const BGE_FUNC3: u32 = 0b101;
// pub const JALR_FUNC3: u32 = 0b000;
// pub const INW_FUNC3: u32 = 0b010;
// pub const OUTB_FUNC3: u32 = 0b000;
pub const FSGNJ_FUNC3: u32 = 0b000;
pub const FSGNJN_FUNC3: u32 = 0b001;
pub const FSGNJX_FUNC3: u32 = 0b010;
pub const FEQ_FUNC3: u32 = 0b010;
pub const FLT_FUNC3: u32 = 0b001;
pub const FLE_FUNC3: u32 = 0b000;
pub const FADD_FUNC7: u32 = 0b0000000;
pub const FSUB_FUNC7: u32 = 0b0000100;
pub const FMUL_FUNC7: u32 = 0b0001000;
pub const FDIV_FUNC7: u32 = 0b0001100;
pub const FSQRT_FUNC7: u32 = 0b0101100;
pub const FTOI_FUNC7: u32 = 0b1100000;
pub const FITOF_FUNC7: u32 = 0b1101000;
pub const FCMP_FUNC7: u32 = 0b1010000;
pub const FSGN_FUNC7: u32 = 0b0010000;

#[repr(u8)]
#[derive(Debug, Default, Clone, Copy)]
pub enum OpName {
    #[default]
    Raw,

    Add,
    Sub,
    Sll,
    Srl,
    Xor,
    Or,
    And,

    Addi,
    Slli,
    Srli,

    Lw,
    Lwr,
    Lwi,
    Sw,
    Swi,

    Beq,
    Bne,

    Blt,
    Bge,

    Jalr,

    Jal,

    Lui,

    Inw,
    Outb,

    Fadd,
    Fsub,
    Fmul,
    Fdiv,
    Fsqrt,
    Fsgnj,
    Fsgnjn,
    Fsgnjx,
    Ftoi,
    Feq,
    Flt,
    Fle,
    Fitof,
}

impl Display for OpName {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            OpName::Raw => write!(f, "raw"),

            OpName::Add => write!(f, "add"),
            OpName::Sub => write!(f, "sub"),
            OpName::Sll => write!(f, "sll"),
            OpName::Srl => write!(f, "srl"),
            OpName::Xor => write!(f, "xor"),
            OpName::Or => write!(f, "or"),
            OpName::And => write!(f, "and"),

            OpName::Addi => write!(f, "addi"),
            OpName::Slli => write!(f, "slli"),
            OpName::Srli => write!(f, "srli"),

            OpName::Lw => write!(f, "lw"),
            OpName::Lwr => write!(f, "lwr"),
            OpName::Lwi => write!(f, "lwi"),
            OpName::Sw => write!(f, "sw"),
            OpName::Swi => write!(f, "swi"),

            OpName::Beq => write!(f, "beq"),
            OpName::Bne => write!(f, "bne"),

            OpName::Blt => write!(f, "blt"),
            OpName::Bge => write!(f, "bge"),

            OpName::Jalr => write!(f, "jalr"),

            OpName::Jal => write!(f, "jal"),

            OpName::Lui => write!(f, "lui"),

            OpName::Inw => write!(f, "inw"),
            OpName::Outb => write!(f, "outb"),

            OpName::Fadd => write!(f, "fadd"),
            OpName::Fsub => write!(f, "fsub"),
            OpName::Fmul => write!(f, "fmul"),
            OpName::Fdiv => write!(f, "fdiv"),
            OpName::Fsqrt => write!(f, "fsqrt"),
            OpName::Fsgnj => write!(f, "fsgnj"),
            OpName::Fsgnjn => write!(f, "fsgnjn"),
            OpName::Fsgnjx => write!(f, "fsgnjx"),
            OpName::Ftoi => write!(f, "ftoi"),
            OpName::Feq => write!(f, "feq"),
            OpName::Flt => write!(f, "flt"),
            OpName::Fle => write!(f, "fle"),
            OpName::Fitof => write!(f, "fitof"),
        }
    }
}

impl Serialize for OpName {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::ser::Serializer,
    {
        serializer.serialize_str(self.to_string().as_str())
    }
}

#[derive(Default, Clone, Copy)]
pub struct OpV4 {
    #[cfg(feature = "debug")]
    pub mc: u32,
    pub imm: u32,
    pub opname: OpName,
    pub rd: Reg,
    pub rs1: Reg,
    pub rs2: Reg,
    #[cfg(feature = "debug")]
    pub opcode: OpCode,
}

impl Serialize for OpV4 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::ser::Serializer,
    {
        let mut state = serializer.serialize_struct("OpV4", 5)?;
        state.serialize_field("imm", &self.imm)?;
        state.serialize_field("opname", &self.opname)?;
        state.serialize_field("rd", &self.rd)?;
        state.serialize_field("rs1", &self.rs1)?;
        state.serialize_field("rs2", &self.rs2)?;
        state.end()
    }
}

impl Debug for OpV4 {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        cfg_if::cfg_if! {
            if #[cfg(feature = "debug")] {
                write!(
                    f,
                    "OpV4 {{ imm: {:?}, opname: {:?}, opcode: {:?}, rd: {}, rs1: {}, rs2: {} }} (mc: {:032b})",
                    self.imm, self.opname, self.opcode, get_reg_name(self.rd), get_reg_name(self.rs1), get_reg_name(self.rs2), self.mc
                )
            } else {
                write!(
                    f,
                    "OpV4 {{ imm: {:?}, opname: {:?}, rd: {}, rs1: {}, rs2: {} }}",
                    self.imm, self.opname, get_reg_name(self.rd), get_reg_name(self.rs1), get_reg_name(self.rs2)
                )
            }
        }
    }
}
