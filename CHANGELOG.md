## [0.2.0] - 2024-10-10
- Introducing `to_assembly` to convert binary to assembly code. (disassembler)
- More organized code.

## [0.1.1] - 2024-10-10
- Support:
```rs
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
```


## [0.1.0] - 2024-10-09

### CLI
- `qcpu asm -s -o` now compile the assembly code to a binary file.

### Assembler
- Support:
```rs
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
    // Not supported yet
    // 0000000 shamt rs1 001 rd 0010011 SLLI
    // 0000000 shamt rs1 101 rd 0010011 SRLI
    // 0100000 shamt rs1 101 rd 0010011 SRAI
}
```