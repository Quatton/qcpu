import re


code = """add 0000000 rs2 rs1 000 rd 0000
sub 0100000 rs2 rs1 000 rd 0000
sll 0000000 rs2 rs1 001 rd 0000
slt 0000000 rs2 rs1 010 rd 0000
sltu 0000000 rs2 rs1 011 rd 0000
xor 0000000 rs2 rs1 100 rd 0000
srl 0000000 rs2 rs1 101 rd 0000
sra 0100000 rs2 rs1 101 rd 0000
or 0000000 rs2 rs1 110 rd 0000
and 0000000 rs2 rs1 111 rd 0000
addi {1'b0,imm[11:0]} rs1 000 rd 0001
slti {1'b0,imm[11:0]} rs1 010 rd 0001
sltiu {1'b0,imm[11:0]} rs1 011 rd 0001
xori {1'b0,imm[11:0]} rs1 100 rd 0001
ori {1'b0,imm[11:0]} rs1 110 rd 0001
andi {1'b0,imm[11:0]} rs1 111 rd 0001
slli 0000000 {1'b0,shamt} rs1 001 rd 0001
srli 0000000 {1'b0,shamt} rs1 101 rd 0001
srai 0100000 {1'b0,shamt} rs1 101 rd 0001
lw {1'b0,imm[11:0]} rs1 010 rd 0010
sw {1'b0,imm[11:6]} rs2 rs1 010 imm[5:0] 0011
beq imm[12:6] rs2 rs1 000 {imm[5:1],1'b0} 0100
bne imm[12:6] rs2 rs1 001 {imm[5:1],1'b0} 0100
blt imm[12:6] rs2 rs1 100 {imm[5:1],1'b0} 0100
bge imm[12:6] rs2 rs1 101 {imm[5:1],1'b0} 0100
bltu imm[12:6] rs2 rs1 110 {imm[5:1],1'b0} 0100
bgeu imm[12:6] rs2 rs1 111 {imm[5:1],1'b0} 0100
jalr {1'b0,imm[11:0]} rs1 000 rd 0101
jal {1'b0,imm[20:1],1'b0} rd 0110
auipc {1'b0,imm[31:12]} rd 0111
lui {1'b0,imm[31:12]} rd 1000"""

DEFAULT = "Default::default()"

def default(maybenumeric):
  if re.match("[01]+", maybenumeric):
    return f"Some(0b{maybenumeric})"
  else:
    return None

codes =[]

for line in code.splitlines():
  splits = line.split(" ")
  [op, funct7, *rest, opcode] = splits
  try:
    rd = DEFAULT
    funct3 = default(rest[0]) if len(rest) > 0 else DEFAULT
    rs1 = DEFAULT
    rs2 = DEFAULT

    tmpl = f"""const {op.upper()} = Op {{
    opcode: {opcode},
    funct3: {funct3},
    funct7: {default(funct7)}
  }}"""

    codes.append(tmpl)

  except IndexError:
    print(line)

for c in codes:
  print(c)