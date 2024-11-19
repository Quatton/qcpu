#[derive(Debug, PartialEq)]
pub enum ROp {
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

#[derive(Debug, PartialEq)]
pub enum IOp {
    Addi,
    Slti,
    Sltiu,
    Xori,
    Ori,
    Andi,

    Lw,
    Lb,
    Lh,
    Lbu,
    Lhu,

    Jalr,
}

#[derive(Debug, PartialEq)]
pub enum SOp {
    Slli,
    Srli,
    Srai,
}

#[derive(Debug, PartialEq)]
pub enum UOp {
    Lui,
    Auipc,
}

#[derive(Debug, PartialEq)]
pub enum JOp {
    Jal,
}

#[derive(Debug, PartialEq)]
pub enum BOp {
    Beq,
    Bne,
    Blt,
    Bge,
    Bltu,
    Bgeu,

    Sb,
    Sh,
    Sw,
}

#[derive(Debug, PartialEq)]
pub enum FOp {
    Fadd,
    Fsub,
    Fmul,
    Fdiv,
    Fsqrt,
    Fsgnj,
    Fsgnjn,
    Fsgnjx,
    Fcvtws,
    Feq,
    Flt,
    Fle,
    Fcvtsw,
}

#[derive(Debug, PartialEq)]
pub enum OOp {
    Inb,
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
    pub optype: OpType,
    pub opcode: usize,
    pub funct3: Option<usize>,
    pub funct7: Option<usize>,
}

pub const ADD: OpInfo = OpInfo {
    optype: OpType::R(ROp::Add),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const SUB: OpInfo = OpInfo {
    optype: OpType::R(ROp::Sub),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0100000),
};

pub const SLL: OpInfo = OpInfo {
    optype: OpType::R(ROp::Sll),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const SLT: OpInfo = OpInfo {
    optype: OpType::R(ROp::Slt),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const SLTU: OpInfo = OpInfo {
    optype: OpType::R(ROp::Sltu),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const XOR: OpInfo = OpInfo {
    optype: OpType::R(ROp::Xor),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const SRL: OpInfo = OpInfo {
    optype: OpType::R(ROp::Srl),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const SRA: OpInfo = OpInfo {
    optype: OpType::R(ROp::Sra),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0100000),
};

pub const OR: OpInfo = OpInfo {
    optype: OpType::R(ROp::Or),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const AND: OpInfo = OpInfo {
    optype: OpType::R(ROp::And),
    opcode: 0b0000,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const ADDI: OpInfo = OpInfo {
    optype: OpType::I(IOp::Addi),
    opcode: 0b0001,
    funct3: None,
    funct7: None,
};

pub const SLTI: OpInfo = OpInfo {
    optype: OpType::I(IOp::Slti),
    opcode: 0b0001,
    funct3: None,
    funct7: None,
};

pub const SLTIU: OpInfo = OpInfo {
    optype: OpType::I(IOp::Sltiu),
    opcode: 0b0001,
    funct3: None,
    funct7: None,
};

pub const XORI: OpInfo = OpInfo {
    optype: OpType::I(IOp::Xori),

    opcode: 0b0001,
    funct3: None,
    funct7: None,
};

pub const ORI: OpInfo = OpInfo {
    optype: OpType::I(IOp::Ori),

    opcode: 0b0001,
    funct3: None,
    funct7: None,
};

pub const ANDI: OpInfo = OpInfo {
    optype: OpType::I(IOp::Andi),
    opcode: 0b0001,
    funct3: None,
    funct7: None,
};

pub const SLLI: OpInfo = OpInfo {
    optype: OpType::S(SOp::Slli),
    opcode: 0b0001,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const SRLI: OpInfo = OpInfo {
    optype: OpType::S(SOp::Srli),
    opcode: 0b0001,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const SRAI: OpInfo = OpInfo {
    optype: OpType::S(SOp::Srai),
    opcode: 0b0001,
    funct3: None,
    funct7: Some(0b0100000),
};

pub const LW: OpInfo = OpInfo {
    optype: OpType::I(IOp::Lw),
    opcode: 0b0010,
    funct3: None,
    funct7: None,
};

pub const SW: OpInfo = OpInfo {
    optype: OpType::B(BOp::Sw),
    opcode: 0b0011,
    funct3: None,
    funct7: None,
};

pub const BEQ: OpInfo = OpInfo {
    optype: OpType::B(BOp::Beq),
    opcode: 0b0100,
    funct3: None,
    funct7: None,
};

pub const BNE: OpInfo = OpInfo {
    optype: OpType::B(BOp::Bne),
    opcode: 0b0100,
    funct3: None,
    funct7: None,
};

pub const BLT: OpInfo = OpInfo {
    optype: OpType::B(BOp::Blt),
    opcode: 0b0100,
    funct3: None,
    funct7: None,
};

pub const BGE: OpInfo = OpInfo {
    optype: OpType::B(BOp::Bge),

    opcode: 0b0100,
    funct3: None,
    funct7: None,
};

pub const BLTU: OpInfo = OpInfo {
    optype: OpType::B(BOp::Bltu),

    opcode: 0b0100,
    funct3: None,
    funct7: None,
};

pub const BGEU: OpInfo = OpInfo {
    optype: OpType::B(BOp::Bgeu),

    opcode: 0b0100,
    funct3: None,
    funct7: None,
};

pub const JALR: OpInfo = OpInfo {
    optype: OpType::I(IOp::Jalr),
    opcode: 0b0101,
    funct3: None,
    funct7: None,
};

pub const JAL: OpInfo = OpInfo {
    optype: OpType::J(JOp::Jal),
    opcode: 0b0110,
    funct3: None,
    funct7: None,
};

pub const AUIPC: OpInfo = OpInfo {
    optype: OpType::U(UOp::Auipc),
    opcode: 0b0111,
    funct3: None,
    funct7: None,
};

pub const LUI: OpInfo = OpInfo {
    optype: OpType::U(UOp::Lui),
    opcode: 0b1000,
    funct3: None,
    funct7: None,
};

pub const FADD: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fadd),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b0000000),
};

pub const FSUB: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fsub),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b0000100),
};

pub const FMUL: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fmul),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b0001000),
};

pub const FDIV: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fdiv),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b0001100),
};

pub const FSQRT: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fsqrt),
    opcode: 0b1011,
    funct3: Some(0b000000),
    funct7: Some(0b0101100),
};

pub const FSGNJ: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fsgnj),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b0010000),
};

pub const FSGNJN: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fsgnjn),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b0010000),
};

pub const FSGNJX: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fsgnjx),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b0010000),
};

pub const FCVTWS: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fcvtws),
    opcode: 0b1011,
    funct3: Some(0b000000),
    funct7: Some(0b1100000),
};

pub const FEQ: OpInfo = OpInfo {
    optype: OpType::F(FOp::Feq),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b1010000),
};

pub const FLT: OpInfo = OpInfo {
    optype: OpType::F(FOp::Flt),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b1010000),
};

pub const FLE: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fle),
    opcode: 0b1011,
    funct3: None,
    funct7: Some(0b1010000),
};

pub const FCVTSW: OpInfo = OpInfo {
    optype: OpType::F(FOp::Fcvtsw),
    opcode: 0b1011,
    funct3: Some(0b000000),
    funct7: Some(0b1101000),
};
