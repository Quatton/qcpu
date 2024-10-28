use strum::VariantArray;
pub mod error;
pub mod macros;
pub mod parser;
pub mod reg;
pub use macros::*;
pub use parser::*;
pub use reg::*;

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

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn i12() {
        for i in 0..((1 << 12) - 1) {
            assert_eq!(i32_to_i12(i12_to_i32(i)), i);
            assert_eq!(in_to_i32(i, 12), i12_to_i32(i));
        }

        for i in -(1 << (12 - 1))..((1 << 12) - 1) {
            let bits = |x: i32| format!("{:32b}", x)[20..32].to_owned();
            assert_eq!(bits(i12_to_i32(i32_to_i12(i))), bits(i));
            assert_eq!(bits(i32_to_in(i, 12) as i32), bits(i32_to_i12(i) as i32));
        }
    }

    #[test]
    fn jop() {
        let jop = Op::J(JOp::JAL, IntReg::Ra, JumpTarget::from_offset(-20));

        let ctx = ParsingContext::default();
        let mc = jop.to_machine_code(&ctx);

        let dismc = Op::from_machine_code(mc, &ctx)
            .unwrap()
            .to_machine_code(&ctx);
        // 1 11111111 1 1111110110

        // 1 11111111 1 1111110110
        // 1 1111110110 1 11111111

        let imm = i32_to_in(-20, 21);
        let imm20 = (imm >> 20) & 0b1;
        let imm10 = (imm >> 1) & 0b1111111111;
        let imm11 = (imm >> 11) & 0b1;
        let imm19 = (imm >> 12) & 0b11111111;

        println!("{imm20:1b} {imm10:10b} {imm11:1b} {imm19:8b}");
        println!("{:032b}", mc);
        println!("{:032b}", dismc);
    }
}
