#include <_types/_uint32_t.h>
#include <bitset>
#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>

const size_t PROGRAM_SIZE = 16384;
const size_t MEMORY_SIZE = 1 << 19;

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

struct InstFields {
  uint32_t opcode : 4; // bits 0-3
  uint32_t rd : 6;     // bits 4-9
  uint32_t func3 : 3;  // bits 10-12
  uint32_t rs1 : 6;    // bits 13-18
  uint32_t rs2 : 6;    // bits 19-24
  uint32_t func7 : 7;  // bits 25-31
};

union InstDecoder {
  uint32_t raw;
  InstFields fields;
};

struct Func3 {
  static const uint32_t ADDSUB = 0b000;
  static const uint32_t SLL = 0b001;
  static const uint32_t SRL = 0b101;
  static const uint32_t XOR = 0b100;
  static const uint32_t OR = 0b110;
  static const uint32_t AND = 0b111;
  static const uint32_t ADDI = 0b000;
  static const uint32_t SLLI = 0b001;
  static const uint32_t SRLI = 0b101;
  static const uint32_t BEQ = 0b000;
  static const uint32_t BNE = 0b001;
  static const uint32_t BLT = 0b100;
  static const uint32_t BGE = 0b101;

  static const uint32_t FSGNJ = 0b000;
  static const uint32_t FSGNJN = 0b001;
  static const uint32_t FSGNJX = 0b010;
  static const uint32_t FEQ = 0b010;
  static const uint32_t FLT = 0b001;
  static const uint32_t FLE = 0b000;
};

struct Func7 {
  static const uint32_t FADD = 0b0000000;
  static const uint32_t FSUB = 0b0000100;
  static const uint32_t FMUL = 0b0001000;
  static const uint32_t FDIV = 0b0001100;
  static const uint32_t FSQRT = 0b0101100;
  static const uint32_t FTOI = 0b1100000;
  static const uint32_t FITOF = 0b1101000;
  static const uint32_t FCMP = 0b1010000;
  static const uint32_t FSGN = 0b0010000;
};

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

std::string op_to_string(Op op) {
  switch (op) {
  case ADD:
    return "ADD";
  case SUB:
    return "SUB";
  case SLL:
    return "SLL";
  case SRL:
    return "SRL";
  case XOR:
    return "XOR";
  case OR:
    return "OR";
  case AND:
    return "AND";
  case ADDI:
    return "ADDI";
  case SLLI:
    return "SLLI";
  case SRLI:
    return "SRLI";
  case LW:
    return "LW";
  case LWR:
    return "LWR";
  case SW:
    return "SW";
  case BEQ:
    return "BEQ";
  case BNE:
    return "BNE";
  case BLT:
    return "BLT";
  case BGE:
    return "BGE";
  case JALR:
    return "JALR";
  case JAL:
    return "JAL";
  case LUI:
    return "LUI";
  case INW:
    return "INW";
  case OUTB:
    return "OUTB";
  case FADD:
    return "FADD";
  case FSUB:
    return "FSUB";
  case FMUL:
    return "FMUL";
  case FDIV:
    return "FDIV";
  case FSQRT:
    return "FSQRT";
  case FSGNJ:
    return "FSGNJ";
  case FSGNJN:
    return "FSGNJN";
  case FSGNJX:
    return "FSGNJX";
  case FTOI:
    return "FTOI";
  case FEQ:
    return "FEQ";
  case FLT:
    return "FLT";
  case FLE:
    return "FLE";
  case FITOF:
    return "FITOF";
  default:
    return "UNKNOWN";
  }
}

std::string reg_to_string(uint8_t reg) {
  switch (reg) {
  case 0:
    return "zero";
  case 1:
    return "ra";
  case 2:
    return "sp";
  case 3:
    return "gp";
  case 4:
    return "tp";
  case 5:
    return "t0";
  case 6:
    return "t1";
  case 7:
    return "t2";
  case 8:
    return "s0";
  case 9:
    return "s1";
  case 10:
    return "a0";
  case 11:
    return "a1";
  case 12:
    return "a2";
  case 13:
    return "a3";
  case 14:
    return "a4";
  case 15:
    return "a5";
  case 16:
    return "a6";
  case 17:
    return "a7";
  case 18:
    return "s2";
  case 19:
    return "s3";
  case 20:
    return "s4";
  case 21:
    return "s5";
  case 22:
    return "s6";
  case 23:
    return "s7";
  case 24:
    return "s8";
  case 25:
    return "s9";
  case 26:
    return "s10";
  case 27:
    return "s11";
  case 28:
    return "t3";
  case 29:
    return "t4";
  case 30:
    return "t5";
  case 31:
    return "t6";
  case 32:
    return "ft0";
  case 33:
    return "ft1";
  case 34:
    return "ft2";
  case 35:
    return "ft3";
  case 36:
    return "ft4";
  case 37:
    return "ft5";
  case 38:
    return "ft6";
  case 39:
    return "ft7";
  case 40:
    return "fs0";
  case 41:
    return "fs1";
  case 42:
    return "fa0";
  case 43:
    return "fa1";
  case 44:
    return "fa2";
  case 45:
    return "fa3";
  case 46:
    return "fa4";
  case 47:
    return "fa5";
  case 48:
    return "fa6";
  case 49:
    return "fa7";
  case 50:
    return "fs2";
  case 51:
    return "fs3";
  case 52:
    return "fs4";
  case 53:
    return "fs5";
  case 54:
    return "fs6";
  case 55:
    return "fs7";
  case 56:
    return "fs8";
  case 57:
    return "fs9";
  case 58:
    return "fs10";
  case 59:
    return "fs11";
  case 60:
    return "ft8";
  case 61:
    return "ft9";
  case 62:
    return "ft10";
  case 63:
    return "ft11";
  default:
    return "unknown";
  }
}

class Inst {
public:
  Op op;
  uint8_t rd;
  uint8_t rs1;
  uint8_t rs2;
  uint32_t imm;

  static Inst decode(uint32_t inst);
  std::string toString() const {
    std::stringstream ss;
    ss << "op: " << op_to_string(op) << " rd: " << reg_to_string(rd)
       << " rs1: " << reg_to_string(rs1) << " rs2: " << reg_to_string(rs2)
       << " imm: " << imm;
    return ss.str();
  }
};

class Memory {
public:
  std::array<uint32_t, MEMORY_SIZE> mem;

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

  ~CPU() {
    if (in_file) {
      in_file->close();
      delete in_file;
    }
    if (out_file) {
      static_cast<std::ofstream *>(out_file)->close();
      delete static_cast<std::ofstream *>(out_file);
    }
  }
  CPU(const char *bin_path) {
    std::string in_path = std::string(bin_path);
    in_path = in_path.substr(0, in_path.find_last_of("/\\") + 1) + "contest";

    in_file = new std::ifstream(in_path);
    if (!in_file->is_open()) {
      std::cerr << "Failed to open input file: " << in_path << std::endl;
      throw std::runtime_error("Failed to open input file");
    }

    std::string out_path = std::string(bin_path) + ".txt";
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

  for (size_t i = 0; i < program_length; i++) {
    this->program[i] = Inst::decode(program[i]);
  }
}

uint32_t sign_extend(uint32_t imm, uint8_t bits) {
  uint32_t sign_bit = imm & (1 << (bits - 1));
  return sign_bit ? imm | (0xFFFFFFFF << bits) : imm;
}

Inst Inst::decode(uint32_t inst) {
  Inst i;
  i.rd = 0;
  i.rs1 = 0;
  i.rs2 = 0;
  i.imm = 0;

  InstDecoder decoder = {inst};

  switch (decoder.fields.opcode) {
  case R:
  case I:
  case F:
  case J:
  case U:
  case N:
  case L:
  case LR:
  case A:
    i.rd = decoder.fields.rd;
    break;
  }

  switch (decoder.fields.opcode) {
  case R:
  case F:
  case S:
  case I:
  case B:
  case L:
  case LR:
  case A:
    i.rs1 = decoder.fields.rs1;
    break;
  }

  switch (decoder.fields.opcode) {
  case R:
  case F:
  case S:
  case B:
  case O:
  case LR:
    i.rs2 = decoder.fields.rs2;
    break;
  }

  switch (decoder.fields.opcode) {
  case R:
    switch (decoder.fields.func3) {
    case Func3::ADDSUB:
      i.op = (decoder.fields.func7 == 32) ? SUB : ADD;
      break;
    case Func3::SLL:
      i.op = SLL;
      break;
    case Func3::SRL:
      i.op = SRL;
      break;
    case Func3::XOR:
      i.op = XOR;
      break;
    case Func3::OR:
      i.op = OR;
      break;
    case Func3::AND:
      i.op = AND;
      break;
    }
    break;

  case I:
    switch (decoder.fields.func3) {
    case Func3::ADDI:
      i.op = ADDI;
      break;
    case Func3::SLLI:
      i.op = SLLI;
      break;
    case Func3::SRLI:
      i.op = SRLI;
      break;
    }
    break;

  case F:
    switch (decoder.fields.func7) {
    case Func7::FADD:
      i.op = FADD;
      break;
    case Func7::FSUB:
      i.op = FSUB;
      break;
    case Func7::FMUL:
      i.op = FMUL;
      break;
    case Func7::FDIV:
      i.op = FDIV;
      break;
    case Func7::FSQRT:
      i.op = FSQRT;
      break;
    case Func7::FTOI:
      i.op = FTOI;
      break;
    case Func7::FITOF:
      i.op = FITOF;
      break;
    case Func7::FCMP:
      switch (decoder.fields.func3) {
      case Func3::FEQ:
        i.op = FEQ;
        break;
      case Func3::FLT:
        i.op = FLT;
        break;
      case Func3::FLE:
        i.op = FLE;
        break;
      }
      break;
    case Func7::FSGN:
      switch (decoder.fields.func3) {
      case Func3::FSGNJ:
        i.op = FSGNJ;
        break;
      case Func3::FSGNJN:
        i.op = FSGNJN;
        break;
      case Func3::FSGNJX:
        i.op = FSGNJX;
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
    switch (decoder.fields.func3) {
    case Func3::BEQ:
      i.op = BEQ;
      break;
    case Func3::BNE:
      i.op = BNE;
      break;
    case Func3::BLT:
      i.op = BLT;
      break;
    case Func3::BGE:
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

  switch (decoder.fields.opcode) {
  case I:
  case A:
  case L: {
    i.imm = sign_extend((inst >> 19) & 0xFFF, 12);
    break;
  }
  case S: {
    i.imm = sign_extend((inst >> 25) << 6 | ((inst >> 4) & 0b111111), 12);
    break;
  }
  case B: {
    i.imm = sign_extend(((inst >> 25) << 6) | ((inst >> 4) & 0b111111), 13);
    break;
  }
  case U: {
    i.imm = (inst << 2) & 0xFFFFF000;
    break;
  }
  case J: {
    i.imm = sign_extend(((inst >> 11) & 0xFFFFF) << 1, 21);
    break;
  }
  case F:
  case N:
  case O:
  case R:
  case LR:
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

  uint32_t rd;

  switch (inst->op) {
  case ADD:
    rd = RS1I + RS2I;
    break;
  case SUB:
    rd = RS1I - RS2I;
    break;
  case SLL:
    rd = RS1U << RS2U;
    break;
  case SRL:
    rd = RS1U >> RS2U;
    break;
  case XOR:
    rd = RS1U ^ RS2U;
    break;
  case OR:
    rd = RS1U | RS2U;
    break;
  case AND:
    rd = RS1U & RS2U;
    break;
  case ADDI:
    rd = RS1I + IMMI;
    break;
  case SLLI:
    rd = RS1U << IMM;
    break;
  case SRLI:
    rd = RS1U >> IMM;
    break;
  case LW:
    rd = mem.read(RS1I + IMMI);
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
    rd = pc + 4;
    next_pc = RS1I + IMMI;
    break;
  case JAL:
    rd = pc + 4;
    next_pc = pc + IMMI;
    break;
  case LUI:
    rd = IMM;
    break;
  case INW:
    *in_file >> RD;
    break;
  case OUTB:
    *out_file << (char)(RS2U & 0xFF);
    out_file->flush();
    break;
  case LWR:
    rd = mem.read(RS1I + RS2I);
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
    rd = (RS1U & ~(1u << 31)) | (RS2U & (1u << 31));
    break;
  case FSGNJN:
    rd = (RS1U & ~(1u << 31)) | (~RS2U & (1u << 31));
    break;
  case FSGNJX:
    rd = RS1U ^ (RS2U & (1u << 31));
    break;
  case FTOI:
    rd = (int32_t)roundf(RS1F);
    break;
  case FITOF:
    RDF = (float)(int32_t)RS1U;
    break;
  case FEQ:
    rd = RS1F == RS2F ? 1 : 0;
    break;
  case FLT:
    rd = RS1F < RS2F ? 1 : 0;
    break;
  case FLE:
    rd = RS1F <= RS2F ? 1 : 0;
    break;
  }

  if (inst->rd != 0) {
    RD = rd;
  }

  return next_pc;
}

bool CPU::step() {
  if (pc >= program_length << 2) {
    std::cout << "Program finished" << std::endl;
    return false;
  }

  // std::cout << program[pc >> 2].toString() << std::endl;

  static size_t instruction_count = 0;
  instruction_count++;
  if (instruction_count % 1000000 == 0) {
    std::cout << "Executed " << instruction_count << " instructions, PC=" << pc
              << std::endl;

    std::cout << program[pc >> 2].toString() << std::endl;
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