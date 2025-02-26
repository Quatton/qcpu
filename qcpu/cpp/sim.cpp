#include <_types/_uint32_t.h>
#include <fstream>
#include <iostream>
#include <vector>

const size_t PROGRAM_SIZE = 16384;

enum OpCode : uint8_t {
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
  LR = 0b1100,
  // @deprecated
  // LU = 0b1101,
  // @deprecated
  // SU = 0b0111,
};

const uint32_t ADDSUB_FUNC3 = 0b000;
const uint32_t SLL_FUNC3 = 0b001;
const uint32_t SRL_FUNC3 = 0b101;
const uint32_t XOR_FUNC3 = 0b100;
const uint32_t OR_FUNC3 = 0b110;
const uint32_t AND_FUNC3 = 0b111;

const uint32_t ADDI_FUNC3 = 0b000;
const uint32_t SLLI_FUNC3 = 0b001;
const uint32_t SRLI_FUNC3 = 0b101;
const uint32_t BEQ_FUNC3 = 0b000;
const uint32_t BNE_FUNC3 = 0b001;
const uint32_t BLT_FUNC3 = 0b100;
const uint32_t BGE_FUNC3 = 0b101;

const uint32_t FSGNJ_FUNC3 = 0b000;
const uint32_t FSGNJN_FUNC3 = 0b001;
const uint32_t FSGNJX_FUNC3 = 0b010;
const uint32_t FEQ_FUNC3 = 0b010;
const uint32_t FLT_FUNC3 = 0b001;
const uint32_t FLE_FUNC3 = 0b000;
const uint32_t FADD_FUNC7 = 0b0000000;
const uint32_t FSUB_FUNC7 = 0b0000100;
const uint32_t FMUL_FUNC7 = 0b0001000;
const uint32_t FDIV_FUNC7 = 0b0001100;
const uint32_t FSQRT_FUNC7 = 0b0101100;
const uint32_t FTOI_FUNC7 = 0b1100000;
const uint32_t FITOF_FUNC7 = 0b1101000;
const uint32_t FCMP_FUNC7 = 0b1010000;
const uint32_t FSGN_FUNC7 = 0b0010000;

enum Op : uint8_t {
  ADD,
  SUB,
  SLL,
  SRL,
  XOR,
  OR,
  AND,

  ADDI,
  SLLI,
  SRLI,

  LW,
  LWR,
  SW,

  BEQ,
  BNE,

  BLT,
  BGE,

  JALR,

  JAL,

  LUI,

  INW,
  OUTB,

  FADD,
  FSUB,
  FMUL,
  FDIV,
  FSQRT,
  FSGNJ,
  FSGNJN,
  FSGNJX,
  FTOI,
  FEQ,
  FLT,
  FLE,
  FITOF,
};

class Inst {
public:
  Op op;
  uint8_t rd;
  uint8_t rs1;
  uint8_t rs2;
  uint32_t imm;

  static Inst decode(uint32_t inst);
};

class Memory {
public:
  std::array<uint8_t, 1 << 21> mem;

  uint32_t read(uint32_t addr);
  void write(uint32_t addr, uint32_t data);
};

class CPU {
public:
  Inst program[PROGRAM_SIZE];
  Memory mem;
  uint32_t pc;
  size_t program_length;
  std::ifstream *in_file;
  std::ostream *out_file;

  CPU(const char *bin_path) {
    std::string in_path = std::string(bin_path);
    in_path = in_path.substr(0, in_path.find_last_of("/\\") + 1) + "contest";

    in_file = new std::ifstream(in_path);
    if (!in_file->is_open()) {
      std::cerr << "Failed to open input file: " << in_path << std::endl;
      throw std::runtime_error("Failed to open input file");
    }

    std::string out_path = std::string(bin_path) + ".ppm";
    std::ofstream *output = new std::ofstream(out_path);
    if (!output->is_open()) {
      std::cerr << "Failed to open output file: " << out_path << std::endl;
      throw std::runtime_error("Failed to open output file");
    }
    out_file = output;

    pc = 0;
    load_program(bin_path);
  }

  uint32_t regs[64];

  bool step();
  void run();

private:
  void load_program(const char *bin_path);
  size_t exec();
};
;

int main(int c, char **v) {
  if (c != 2) {
    std::cerr << "Invalid argument" << std::endl;
    throw;
  }

  char *bin_path = v[1];

  CPU cpu(bin_path);

  cpu.run();
}

size_t read_program(const char *bin_path, uint32_t *program) {
  std::ifstream file(bin_path, std::ios::binary);
  if (!file.is_open()) {
    std::cerr << "Failed to open file" << std::endl;
    throw;
  }

  file.seekg(0, std::ios::end);
  size_t size = file.tellg() / sizeof(uint32_t);
  file.seekg(0, std::ios::beg);

  file.read((char *)program, size * sizeof(uint32_t));
  file.close();

  return size;
}

void CPU::load_program(const char *bin_path) {
  uint32_t *program = new uint32_t[PROGRAM_SIZE];
  program_length = read_program(bin_path, program);

  for (size_t i = 0; i < PROGRAM_SIZE; i++) {
    this->program[i] = Inst::decode(program[i]);
  }
}

Inst Inst::decode(uint32_t inst) {
  Inst i;

  OpCode opcode = (OpCode)(inst & 0b1111);
  uint8_t func3 = (inst >> 10) & 0b111;
  uint8_t func7 = (inst >> 25) & 0b1111111;

  switch (opcode) {
  case R:
  case I:
  case F:
  case J:
  case U:
  case N:
  case L:
  case LR:
    i.rd = (inst >> 4) & 0b111111;
    break;
  default:
    break;
  }

  switch (opcode) {
  case R:
  case F:
  case S:
  case I:
  case B:
  case L:
  case LR:
  case A:
    i.rs1 = (inst >> 13) & 0b111111;
    break;
  default:
    i.rs1 = 0;
    break;
  }

  switch (opcode) {
  case R:
  case F:
  case S:
  case B:
  case O:
  case A:
  case LR:
    i.rs2 = (inst >> 19) & 0b111111;
    break;
  default:
    i.rs2 = 0;
    break;
  }

  switch (opcode) {
  case R:
    switch (func3) {
    case ADDSUB_FUNC3:
      i.op = (func7 == 32) ? SUB : ADD;
      break;
    case SLL_FUNC3:
      i.op = SLL;
      break;
    case SRL_FUNC3:
      i.op = SRL;
      break;
    case XOR_FUNC3:
      i.op = XOR;
      break;
    case OR_FUNC3:
      i.op = OR;
      break;
    case AND_FUNC3:
      i.op = AND;
      break;
    }
    break;

  case I:
    switch (func3) {
    case ADDI_FUNC3:
      i.op = ADDI;
      break;
    case SLLI_FUNC3:
      i.op = SLLI;
      break;
    case SRLI_FUNC3:
      i.op = SRLI;
      break;
    }
    break;

  case F:
    switch (func7) {
    case FADD_FUNC7:
      i.op = FADD;
      break;
    case FSUB_FUNC7:
      i.op = FSUB;
      break;
    case FMUL_FUNC7:
      i.op = FMUL;
      break;
    case FDIV_FUNC7:
      i.op = FDIV;
      break;
    case FSQRT_FUNC7:
      i.op = FSQRT;
      break;
    case FTOI_FUNC7:
      i.op = FTOI;
      break;
    case FITOF_FUNC7:
      i.op = FITOF;
      break;
    case FSGN_FUNC7:
      switch (func3) {
      case FSGNJ_FUNC3:
        i.op = FSGNJ;
        break;
      case FSGNJN_FUNC3:
        i.op = FSGNJN;
        break;
      case FSGNJX_FUNC3:
        i.op = FSGNJX;
        break;
      }
      break;
    case FCMP_FUNC7:
      switch (func3) {
      case FEQ_FUNC3:
        i.op = FEQ;
        break;
      case FLT_FUNC3:
        i.op = FLT;
        break;
      case FLE_FUNC3:
        i.op = FLE;
        break;
      }
      break;
    }
    break;

  case L: {
    i.op = LW;
    break;
  }
  case S: {
    i.op = SW;
    break;
  }
  case LR: {
    i.op = LWR;
    break;
  }
  case B: {
    switch (func3) {
    case BEQ_FUNC3:
      i.op = BEQ;
      break;
    case BNE_FUNC3:
      i.op = BNE;
      break;
    case BLT_FUNC3:
      i.op = BLT;
      break;
    case BGE_FUNC3:
      i.op = BGE;
      break;
    }
    break;
  }
  case A: {
    i.op = JALR;
    break;
  }
  case J: {
    i.op = JAL;
    break;
  }
  case U: {
    i.op = LUI;
    break;
  }
  case N: {
    i.op = INW;
    break;
  }
  case O: {
    i.op = OUTB;
    break;
  }
  }

  switch (opcode) {
  case I:
  case A:
  case L:
    i.imm = ((inst >> 19) & 0xFFF) | ((inst & (1 << 30)) ? 0xFFFFF000 : 0);
    break;
  case S:
    i.imm = ((inst >> 4) & 0x3F) | ((inst >> 19) & 0xFC0) |
            ((inst & (1 << 30)) ? 0xFFFFF000 : 0);
    break;
  case B:
    i.imm = ((inst >> 4) & 0x3F) | ((inst >> 19) & 0xFC0) |
            ((inst & (1 << 31)) ? 0xFFFFF000 : 0);
    break;
  case J:
    i.imm = ((inst >> 10) & 0x3FFFFF) | ((inst & (1 << 31)) ? 0xFFC00000 : 0);
    break;
  case U:
    i.imm = ((inst >> 10) & 0xFFFFF) << 12;
    break;
  default:
    i.imm = 0;
    break;
  }

  return i;
}

#define RS1U regs[inst->rs1]
#define RS2U regs[inst->rs2]
#define IMM inst->imm
#define IMMI (int32_t) inst->imm
#define RS1I (int32_t) regs[inst->rs1]
#define RS2I (int32_t) regs[inst->rs2]
#define RD regs[inst->rd]
#define RDF (*(float *)&regs[inst->rd])
#define RS1F (*(float *)&regs[inst->rs1])
#define RS2F (*(float *)&regs[inst->rs2])

size_t CPU::exec() {
  Inst *inst = &program[pc >> 2];

  size_t next_pc = pc + 4;

  switch (inst->op) {
  case ADD:
    RD = RS1I + RS2I;
    break;
  case SUB:
    RD = RS1I - RS2I;
    break;
  case SLL:
    RD = RS1U << RS2U;
    break;
  case SRL:
    RD = RS1U >> RS2U;
    break;
  case XOR:
    RD = RS1U ^ RS2U;
    break;
  case OR:
    RD = RS1U | RS2U;
    break;
  case AND:
    RD = RS1U & RS2U;
    break;
  case ADDI:
    RD = RS1I + IMMI;
    break;
  case SLLI:
    RD = RS1U << IMM;
    break;
  case SRLI:
    RD = RS1U >> IMM;
    break;
  case LW:
    RD = mem.read(RS1I + IMMI);
    break;
  case SW:
    mem.write(RS1I + IMMI, RS2U);
    break;
  case BEQ:
    if (RS1I == RS2I) {
      next_pc = pc + IMMI;
    }
    break;
  case BNE:
    if (RS1I != RS2I) {
      next_pc = pc + IMMI;
    }
    break;
  case BLT:
    if (RS1I < RS2I) {
      next_pc = pc + IMMI;
    }
    break;
  case BGE:
    if (RS1I >= RS2I) {
      next_pc = pc + IMMI;
    }
    break;
  case JALR:
    RD = pc + 4;
    next_pc = RS1I + IMMI;
    break;
  case JAL:
    RD = pc + 4;
    next_pc = pc + IMMI;
    break;
  case LUI:
    RD = IMM;
    break;
  case INW:
    *in_file >> RD;
    break;
  case OUTB:
    *out_file << (char)(RD & 0xFF);
    break;
  case LWR:
    RD = mem.read(RS1I + RS2I);
    break;
  case FADD:
    RDF = RS1F + RS2F;
    break;
  case FSUB:
    RDF = RS1F - RS2F;
    break;
  case FMUL:
    RDF = RS1F * RS2F;
    break;
  case FDIV:
    RDF = RS1F / RS2F;
    break;
  case FSQRT:
    RDF = sqrtf(RS1F);
    break;
  case FSGNJ:
    RD = (RS1U & ~(1u << 31)) | (RS2U & (1u << 31));
    break;
  case FSGNJN:
    RD = (RS1U & ~(1u << 31)) | (~RS2U & (1u << 31));
    break;
  case FSGNJX:
    RD = RS1U ^ (RS2U & (1u << 31));
    break;
  case FTOI:
    RD = (int32_t)RS1F;
    break;
  case FITOF:
    RDF = (float)(int32_t)RS1U;
    break;
  case FEQ:
    RD = RS1F == RS2F ? 1 : 0;
    break;
  case FLT:
    RD = RS1F < RS2F ? 1 : 0;
    break;
  case FLE:
    RD = RS1F <= RS2F ? 1 : 0;
    break;
  }

  return next_pc;
}

bool CPU::step() {
  if (pc >= program_length) {
    return false;
  }

  pc = exec();

  return true;
}

void CPU::run() {
  while (step())
    ;
}

uint32_t Memory::read(uint32_t addr) { return *(uint32_t *)&mem[addr]; }

void Memory::write(uint32_t addr, uint32_t data) {
  *(uint32_t *)&mem[addr] = data;
}