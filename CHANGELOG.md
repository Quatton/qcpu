## [3.2.0] - 2024-01-21
- Check for memory access and bubble the errors
- Time prediction

## [3.1.0] - 2024-01-06
- Removed multiple branch predictors
- Cache calculation was not accurate due to miss counting write as access count too
- Should be faster because now you can run 12 cache simulations of 5 min in one sitting each avg 1 min (time dilation)

## [3.0.0] - 2024-12-10
- Still use v2 but so many changes to the core
- Program is predecoded, and removed from data mememory
  - Much faster because `op.clone()` is so expensive.
  - Maybe more difficult to debug in the long run but idc anymore
- Op is now borrowed from the program
  - idea: self.run_once(&program)
- Memory access is much more streamlined, no more "did i update cache yet?"
- GP, SP increment stat

## [2.7.0] - 2024-12-02
- ESTART, ESTOP
- Removed default cache and branch prediction

## [2.6.0] - 2024-12-02
- ECOUNT

## [2.5.1] - 2024-11-28
- Error log

## [2.5.0] - 2024-11-28
- Direct mapped cache
- Revert changes because it doesn't matter

## [2.4.3] - 2024-11-28
- OpName based statistics instead of just OpType

## [2.4.2] - 2024-11-28
- reverting internal execution changes

## [2.4.1] - 2024-11-22
- Fixed ftoi ignoring branch predictor
  - what does that even mean

## [2.4.0] - 2024-11-22
- Branch predictor
- Removed statistics calculation if --verbose is not set (faster?)

## [2.3.0] - 2024-11-22
- Statistics
  - You don't actually have to stall/flash. Just pretend to.
- Faster decode

## [2.2.1] - 2024-11-21
- li still bugging

## [2.2.0] - 2024-11-21
- li bug fix (why did i use auipc)
- li with floats
- TUI with breakpoint

## [2.1.0] - 2024-11-21
- li with better lui behavior

## [2.0.0] - 2024-11-20
- Original ISA

## [1.3.0] - 2024-11-19
- Convert command

## [1.2.2] - 2024-11-19
- Empty output bug

## [1.2.1] - 2024-11-19
- Execute should use previous stalled decode only when there isn't a refetch. (crazy)

## [1.2.0] - 2024-11-19
- I/O
- Fixed: JALR doesn't care about stall

## [1.1.5] - 2024-11-18
- Some critical stall bug that causes fetch to keep refetching the same instruction over and over

## [1.1.4] - 2024-11-18
- Floating point write back is not forwarded properly

## [1.1.3] - 2024-11-18
- Use absolute address for FL and I

## [1.1.2] - 2024-11-18
- Fixed unable to parse hex larger than max i32 -> use u32 instead

## [1.1.1] - 2024-11-18
- Fixed disassembler bug when there is no label map (just output raw)

## [1.1.0] - 2024-11-13
- Full FPU support
- Condensed pipeline view with stall and forwarding

## [1.0.0] - 2024-11-06
- Pipeline processor
- Some FPU

## [0.5.0] - 2024-10-29
- Load/Store
- TUI with breakpoints 😆

## [0.4.0] - 2024-10-22
- Branch
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
```

## [0.3.0] - 2024-10-15
- Simulation with `qcpu sim -b <input_file_in_binary>`.

## [0.2.1] - 2024-10-12
- Fixed error for `ISOp` operations.

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