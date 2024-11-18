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

pub enum IOp {
    Addi,
    Slti,
    Sltiu,
    Xori,
    Ori,
    Andi,

    Lw,

    Jalr,
}

pub enum SOp {
    Slli,
    Srli,
    Srai,
}

pub enum UOp {
    Lui,
    Auipc,
}

pub enum JOp {
    Jal,
}

pub enum BOp {
    Beq,
    Bne,
    Blt,
    Bge,
    Bltu,
    Bgeu,
}

pub enum FOp {
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

pub enum OOp {
    Inw,
    Outb,
}

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

pub struct Op {
    optype: OpType,
    rd: usize,
    funct3: usize,
    rs1: usize,
    rs2: usize,
    funct7: usize,
}
