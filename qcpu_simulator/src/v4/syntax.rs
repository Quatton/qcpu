use std::fmt::Debug;

pub type Reg = u8;

#[derive(Debug, Default, Clone, Copy)]
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
}

pub const R_CODE: u32 = OpCode::R as u32;
pub const I_CODE: u32 = OpCode::I as u32;
pub const L_CODE: u32 = OpCode::L as u32;
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
pub const FCOMB_FUNC7: u32 = 0b1010000;
pub const FSGN_FUNC7: u32 = 0b0010000;

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
    Sw,

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

#[derive(Default, Clone, Copy)]
pub struct OpV4 {
    pub mc: u32,
    pub imm: u32,
    pub opname: OpName,
    pub opcode: OpCode,
    pub rd: Reg,
    pub rs1: Reg,
    pub rs2: Reg,
}

impl Debug for OpV4 {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "OpV4 {{ imm: {:?}, opname: {:?}, opcode: {:?}, rd: {}, rs1: {}, rs2: {} }} (mc: {:#032b})",
            self.imm, self.opname, self.opcode, self.rd, self.rs1, self.rs2, self.mc
        )
    }
}
