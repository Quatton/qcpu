use strum::VariantArray;
pub mod error;
pub mod macros;
pub mod parser;
pub mod reg;

rop! {
  0b0000000 rs2 rs1 0b000 rd 0b0110011 ADD
  0b0100000 rs2 rs1 0b000 rd 0b0110011 SUB
  0b0000000 rs2 rs1 0b001 rd 0b0110011 SLL
  0b0000000 rs2 rs1 0b010 rd 0b0110011 SLT
  0b0000000 rs2 rs1 0b011 rd 0b0110011 SLTU
  0b0000000 rs2 rs1 0b100 rd 0b0110011 XOR
  0b0000000 rs2 rs1 0b101 rd 0b0110011 SRL
  0b0100000 rs2 rs1 0b101 rd 0b0110011 SRA
  0b0000000 rs2 rs1 0b110 rd 0b0110011 OR
  0b0000000 rs2 rs1 0b111 rd 0b0110011 AND
}

iop! {
  imm[11:0] rs1 0b000 rd 0b0010011 ADDI
  imm[11:0] rs1 0b010 rd 0b0010011 SLTI
  imm[11:0] rs1 0b011 rd 0b0010011 SLTIU
  imm[11:0] rs1 0b100 rd 0b0010011 XORI
  imm[11:0] rs1 0b110 rd 0b0010011 ORI
  imm[11:0] rs1 0b111 rd 0b0010011 ANDI
}

isop!(
  0b0000000 shamt rs1 0b001 rd 0b0010011 SLLI
  0b0000000 shamt rs1 0b101 rd 0b0010011 SRLI
  0b0100000 shamt rs1 0b101 rd 0b0010011 SRAI
);

bop!(
  imm[12|10:5] rs2 rs1 0b000 imm[4:1|11] 0b1100011 BEQ
  imm[12|10:5] rs2 rs1 0b001 imm[4:1|11] 0b1100011 BNE
  imm[12|10:5] rs2 rs1 0b100 imm[4:1|11] 0b1100011 BLT
  imm[12|10:5] rs2 rs1 0b101 imm[4:1|11] 0b1100011 BGE
  imm[12|10:5] rs2 rs1 0b110 imm[4:1|11] 0b1100011 BLTU
  imm[12|10:5] rs2 rs1 0b111 imm[4:1|11] 0b1100011 BGEU
);

stop!(
    imm[11:5] rs2 rs1 0b010 imm[4:0] 0b0100011 SW
);

fn i12_to_i32(i: u32) -> i32 {
    if i >> 11 == 0 {
        i as i32
    } else {
        (i | 0xFFFFF000) as i32
    }
}

fn i32_to_i12(i: i32) -> u32 {
    if i < 0 {
        (i >> 31 | (i & 0xFFF)) as u32
    } else {
        i as u32
    }
}
