use crate::{Register, RoundingMode};

#[derive(Default, Debug, PartialEq)]

pub enum ROp {
    #[default]
    Add,
    Sub,
    Sll,
    Slt,
    Sltu,
    Xor,
    Srl,
    Sra,
    Or,
    And,
}
#[derive(Default, Debug, PartialEq)]

pub enum IOp {
    #[default]
    Addi,
    Slti,
    Sltiu,
    Xori,
    Ori,
    Andi,

    Lw,

    Jalr,
}
#[derive(Default, Debug, PartialEq)]

pub enum SOp {
    #[default]
    Slli,
    Srli,
    Srai,
}
#[derive(Default, Debug, PartialEq)]

pub enum UOp {
    #[default]
    Lui,
    Auipc,
}
#[derive(Default, Debug, PartialEq)]
pub enum JOp {
    #[default]
    Jal,
}
#[derive(Default, Debug, PartialEq)]
pub enum BOp {
    #[default]
    Beq,
    Bne,
    Blt,
    Bge,
    Bltu,
    Bgeu,
}
#[derive(Default, Debug, PartialEq)]

pub enum FOp {
    #[default]
    Fadd,
    Fsub,
    Fmul,
    Fdiv,
    Fsart,
    Fsgnj,
    Fsgnjn,
    Fsgnjx,
    Fcvtws,
    Feq,
    Flt,
    Fle,
    Fcvtsw,
}

#[derive(Default, Debug, PartialEq)]
pub enum OOp {
    #[default]
    Inw,
    Outb,
}

#[derive(Debug, PartialEq)]

pub enum OpType {
    R(ROp),
    I(IOp),
    S(SOp),
    U(UOp),
    J(JOp),
    B(BOp),
    F(FOp),
    O(OOp),
}

#[derive(Debug, PartialEq)]
pub struct OpInfo {
    optype: OpType,
    funct3: Option<usize>,
    funct7: Option<usize>,
}
