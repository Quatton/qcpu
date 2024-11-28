use crate::enum_properties;
use crate::WithParser;
use strum_macros::{Display, EnumString, VariantArray};

impl OpInfo {
    pub fn match_code(first: &Self, other: &Self) -> bool {
        first.opcode == other.opcode
            && (first.funct3.is_none() || other.funct3.is_none() || first.funct3 == other.funct3)
            && (first.funct7.is_none() || other.funct7.is_none() || first.funct7 == other.funct7)
    }
}

enum_properties! {
  #[derive(Eq, Hash, Display, Debug, Clone, PartialEq, Copy, EnumString, VariantArray)]
  #[strum(serialize_all = "lowercase")]
  pub enum OpName: OpInfo {
    EBREAK {
      optype: OpType::E,
      opcode: 0b1111,
      funct3: Some(0b000),
      funct7: Some(0b0000000),
    },

    ADD {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b000),
      funct7: Some(0b0000000),
    },

    SUB {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b000),
      funct7: Some(0b0100000),
    },

    SLL {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b001),
      funct7: Some(0b0000000),
    },

    SLT {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b010),
      funct7: Some(0b0000000),
    },

    SLTU {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b011),
      funct7: Some(0b0000000),
    },

    XOR {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b100),
      funct7: Some(0b0000000),
    },

    SRL {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b101),
      funct7: Some(0b0000000),
    },

    SRA {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b101),
      funct7: Some(0b0100000),
    },

    OR {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b110),
      funct7: Some(0b0000000),
    },

    AND {
      optype: OpType::R,
      opcode: 0b0000,
      funct3: Some(0b111),
      funct7: Some(0b0000000),
    },

    ADDI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b000),
      funct7: None,
    },

    SLTI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b010),
      funct7: None,
    },

    SLTIU {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b011),
      funct7: None,
    },

    XORI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b100),
      funct7: None,
    },

    ORI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b110),
      funct7: None,
    },

    ANDI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b111),
      funct7: None,
    },

    SLLI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b001),
      funct7: Some(0b0000000),
    },

    SRLI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b101),
      funct7: Some(0b0000000),
    },

    SRAI {
      optype: OpType::I,
      opcode: 0b0001,
      funct3: Some(0b101),
      funct7: Some(0b0100000),
    },

    #[strum(serialize = "lw", serialize = "flw")]
    LW {
      optype: OpType::L,
      opcode: 0b0010,
      funct3: Some(0b010),
      funct7: None,
    },

    LB {
      optype: OpType::L,
      opcode: 0b0010,
      funct3: Some(0b000),
      funct7: None,
    },

    LH {
      optype: OpType::L,
      opcode: 0b0010,
      funct3: Some(0b001),
      funct7: None,
    },

    LBU {
      optype: OpType::L,
      opcode: 0b0010,
      funct3: Some(0b100),
      funct7: None,
    },

    LHU {
      optype: OpType::L,
      opcode: 0b0010,
      funct3: Some(0b101),
      funct7: None,
    },

    #[strum(serialize = "fsw", serialize = "sw")]
    SW {
      optype: OpType::S,
      opcode: 0b0011,
      funct3: Some(0b010),
      funct7: None,
    },

    SB {
      optype: OpType::S,
      opcode: 0b0011,
      funct3: Some(0b000),
      funct7: None,
    },

    SH {
      optype: OpType::S,
      opcode: 0b0011,
      funct3: Some(0b001),
      funct7: None,
    },

    BEQ {
      optype: OpType::B,
      opcode: 0b0100,
      funct3: Some(0b000),
      funct7: None,
    },

    BNE {
      optype: OpType::B,
      opcode: 0b0100,
      funct3: Some(0b001),
      funct7: None,
    },

    BLT {
      optype: OpType::B,
      opcode: 0b0100,
      funct3: Some(0b100),
      funct7: None,
    },

    BGE {
      optype: OpType::B,
      opcode: 0b0100,
      funct3: Some(0b101),
      funct7: None,
    },

    BLTU {
      optype: OpType::B,
      opcode: 0b0100,
      funct3: Some(0b110),
      funct7: None,
    },

    BGEU {
      optype: OpType::B,
      opcode: 0b0100,
      funct3: Some(0b111),
      funct7: None,
    },

    JALR {
      optype: OpType::I,
      opcode: 0b0101,
      funct3: Some(0b000),
      funct7: None,
    },

    JAL {
      optype: OpType::J,
      opcode: 0b0110,
      funct3: None,
      funct7: None,
    },

    AUIPC {
      optype: OpType::U,
      opcode: 0b0111,
      funct3: None,
      funct7: None,
    },

    LUI {
      optype: OpType::U,
      opcode: 0b1000,
      funct3: None,
      funct7: None,
    },

    FADD {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: None,
      funct7: Some(0b0000000),
    },

    FSUB {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: None,
      funct7: Some(0b0000100),
    },

    FMUL {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: None,
      funct7: Some(0b0001000),
    },

    FDIV {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: None,
      funct7: Some(0b0001100),
    },

    FSQRT {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: None,
      funct7: Some(0b0101100),
    },

    FSGNJ {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: Some(0b000),
      funct7: Some(0b0010000),
    },

    FSGNJN {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: Some(0b001),
      funct7: Some(0b0010000),
    },

    FSGNJX {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: Some(0b010),
      funct7: Some(0b0010000),
    },

    #[strum(serialize = "ftoi", serialize = "fcvt.w.s", serialize = "fcvtws")]
    FCVTWS {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: None,
      funct7: Some(0b1100000),
    },

    FEQ {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: Some(0b010),
      funct7: Some(0b1010000),
    },

    FLT {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: Some(0b001),
      funct7: Some(0b1010000),
    },

    FLE {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: Some(0b000),
      funct7: Some(0b1010000),
    },

    #[strum(serialize = "itof", serialize = "fcvt.s.w", serialize = "fcvtsw")]
    FCVTSW {
      optype: OpType::F,
      opcode: 0b1011,
      funct3: None,
      funct7: Some(0b1101000),
    },

    RAW {
      optype: OpType::Raw,
      opcode: 0,
      funct3: None,
      funct7: None,
    },

    INB {
      optype: OpType::N,
      opcode: 0b1001,
      funct3: Some(0b000),
      funct7: None,
    },

    INW {
      optype: OpType::N,
      opcode: 0b1001,
      funct3: Some(0b010),
      funct7: None,
    },

    OUTB {
      optype: OpType::O,
      opcode: 0b1010,
      funct3: Some(0b000),
      funct7: None,
    },
  }
}

#[allow(clippy::derivable_impls)]
impl Default for OpName {
    fn default() -> Self {
        OpName::RAW
    }
}

#[derive(
    Display, Debug, Eq, PartialOrd, Ord, std::hash::Hash, PartialEq, Clone, Copy, EnumString,
)]
#[strum(serialize_all = "UPPERCASE")]
pub enum OpType {
    R,
    I,
    S,
    U,
    J,
    B,
    F,
    N,
    O,
    L,
    E,
    Raw,
}

impl WithParser for OpName {}

#[derive(Debug, PartialEq, Clone, Copy, Eq, PartialOrd, Ord)]
pub struct OpInfo {
    pub optype: OpType,
    pub opcode: usize,
    pub funct3: Option<usize>,
    pub funct7: Option<usize>,
}
