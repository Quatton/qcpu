use std::ops::{Deref, DerefMut};

use qcpu_syntax::{
    parser::{Op, ParsingContext},
    reg::IntReg,
    BOp, IOp, ISOp, ROp,
};

use strum::VariantArray;

type _Registers = [i32; 32];
#[derive(Default, Clone, Copy)]
pub struct Registers(_Registers);

impl Deref for Registers {
    type Target = _Registers;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for Registers {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl Registers {
    pub fn new() -> Self {
        Self([0; 32])
    }

    pub fn from_array(reg: _Registers) -> Self {
        Self(reg)
    }
}

#[derive(Default, Clone, Copy)]
pub struct Snapshot {
    pub pc: usize,
    pub reg: Registers,
}

impl std::fmt::Debug for Registers {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        for (i, r) in IntReg::VARIANTS.iter().enumerate() {
            write!(f, "{:<5}: {:<10} ", r, self[i])?;
            if (i + 1) % 4 == 0 {
                writeln!(f)?;
            }
        }
        Ok(())
    }
}

#[derive(Clone)]
pub struct SimulationContext {
    pub registers: Registers,
    pub history: Vec<Snapshot>,
    pub pc: usize,
    pub memory: Vec<u8>,
    pub program: Vec<u32>,
}

impl Default for SimulationContext {
    fn default() -> Self {
        Self {
            registers: Registers::new(),
            history: vec![Snapshot::default()],
            pc: 0,
            memory: Vec::new(),
            program: Vec::new(),
        }
    }
}

impl SimulationContext {
    pub fn new() -> Self {
        Self::default()
    }

    pub fn log_registers(&self) {
        println!("{:?}", self.registers);
    }

    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.program = program.clone();
        for line in program.into_iter() {
            for byte in line.to_le_bytes() {
                self.memory[self.pc] = byte;
                self.pc += 1;
            }
        }
        self
    }

    pub fn commit(&mut self, reg: usize, value: i32) {
        let latest = if let Some(lastest) = self.history.last_mut() {
            lastest
        } else {
            self.history.push(Snapshot::default());
            self.history.last_mut().unwrap()
        };

        latest.reg[reg] = value;
        self.registers[reg] = value;
    }
}

#[derive(Default)]
pub struct SimulationConfig {
    pub verbose: bool,
    pub interactive: bool,
    pub memory_size: usize,
    pub parsing_context: ParsingContext,
}

impl SimulationConfig {
    pub fn new() -> Self {
        Self {
            verbose: false,
            interactive: false,
            memory_size: 4096,
            parsing_context: ParsingContext::default(),
        }
    }

    pub fn verbose(mut self, verbose: bool) -> Self {
        self.verbose = verbose;
        self
    }

    pub fn interactive(mut self, interactive: bool) -> Self {
        self.interactive = interactive;
        self
    }

    pub fn memory_size(mut self, memory_size: usize) -> Self {
        self.memory_size = memory_size;
        self
    }

    pub fn parsing_context(mut self, parsing_context: ParsingContext) -> Self {
        self.parsing_context = parsing_context;
        self
    }
}

pub struct Simulator {
    pub ctx: SimulationContext,
    pub config: SimulationConfig,
}

impl Simulator {
    pub fn new() -> Self {
        Self {
            ctx: SimulationContext::default(),
            config: SimulationConfig::default(),
        }
    }

    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.ctx = self.ctx.load_program(program);
        self
    }

    pub fn config(mut self, config: SimulationConfig) -> Self {
        self.config = config;
        self.ctx.memory = vec![0; self.config.memory_size];
        self
    }

    pub fn init(&mut self) {
        self.ctx.pc = 0;
        self.ctx.registers = Registers::new();
    }

    pub fn run(&mut self) -> Result<(), &str> {
        self.init();
        loop {
            // align
            self.ctx.pc = (self.ctx.pc >> 2) << 2;
            let pc = self.run_unit();
            match pc.unwrap() {
                Some(pc) => self.ctx.pc = pc,
                None => break,
            }
        }

        Ok(())
    }

    pub fn run_unit(&mut self) -> Result<Option<usize>, &str> {
        let pc = self.ctx.pc;

        self.ctx.history.push(Snapshot {
            pc: self.ctx.pc,
            reg: self.ctx.registers,
        });

        if self.config.verbose {
            println!("======pc: {}======\n", self.ctx.pc);
        }

        // fetch (little endian)
        let program = self.ctx.memory[pc..pc + 4]
            .iter()
            .rev()
            .fold(0, |acc, &x| acc << 8 | x as u32);

        let op = Op::from_machine_code(program, &self.config.parsing_context).unwrap();

        // execute
        let next_pc = self.execute(op);

        // no memory access
        // no write back

        if self.config.verbose {
            self.ctx.log_registers();
        }

        Ok(next_pc)
    }

    pub fn execute(&mut self, op: Op) -> Option<usize> {
        if self.config.verbose {
            println!("{:?}", op);
        }
        let next_pc = match op {
            Op::R(op, rd, rs1, rs2) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let result = match op {
                    ROp::ADD => self.ctx.registers[rs1] + self.ctx.registers[rs2],
                    ROp::SUB => self.ctx.registers[rs1] - self.ctx.registers[rs2],
                    ROp::AND => self.ctx.registers[rs1] & self.ctx.registers[rs2],
                    ROp::OR => self.ctx.registers[rs1] | self.ctx.registers[rs2],
                    ROp::XOR => self.ctx.registers[rs1] ^ self.ctx.registers[rs2],
                    ROp::SLL => self.ctx.registers[rs1] << self.ctx.registers[rs2],
                    ROp::SRL => self.ctx.registers[rs1] >> self.ctx.registers[rs2],
                    ROp::SRA => self.ctx.registers[rs1] >> self.ctx.registers[rs2],
                    // signed comparison
                    ROp::SLT => {
                        if self.ctx.registers[rs1] < self.ctx.registers[rs2] {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    ROp::SLTU => {
                        if (self.ctx.registers[rs1] as u32) < (self.ctx.registers[rs2] as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.ctx.commit(rd, result);
                self.ctx.pc + 4
            }
            Op::I(op, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    IOp::ADDI => self.ctx.registers[rs1] + imm,
                    IOp::ANDI => self.ctx.registers[rs1] & imm,
                    IOp::ORI => self.ctx.registers[rs1] | imm,
                    IOp::XORI => self.ctx.registers[rs1] ^ imm,
                    // signed comparison
                    IOp::SLTI => {
                        if self.ctx.registers[rs1] < imm {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    IOp::SLTIU => {
                        if (self.ctx.registers[rs1] as u32) < (imm as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.ctx.commit(rd, result);
                self.ctx.pc + 4
            }
            Op::IS(op, rd, rs1, shamt) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    ISOp::SLLI => self.ctx.registers[rs1] << shamt,
                    ISOp::SRLI => self.ctx.registers[rs1] >> shamt,
                    ISOp::SRAI => self.ctx.registers[rs1] >> shamt,
                };
                self.ctx.commit(rd, result);
                self.ctx.pc + 4
            }
            Op::B(op, rs2, rs1, imm) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let jmp = match op {
                    BOp::BEQ => self.ctx.registers[rs1] == self.ctx.registers[rs2],
                    BOp::BNE => self.ctx.registers[rs1] != self.ctx.registers[rs2],
                    BOp::BLT => self.ctx.registers[rs1] < self.ctx.registers[rs2],
                    BOp::BGE => self.ctx.registers[rs1] >= self.ctx.registers[rs2],
                    BOp::BGEU => {
                        (self.ctx.registers[rs1] as u32) >= (self.ctx.registers[rs2] as u32)
                    }

                    BOp::BLTU => {
                        (self.ctx.registers[rs1] as u32) < (self.ctx.registers[rs2] as u32)
                    }
                };

                if !jmp {
                    self.ctx.pc + 4
                } else {
                    let next = self.ctx.pc as i32 + imm.offset().unwrap();
                    if next < 0 {
                        panic!("negative pc");
                    }
                    next as usize
                }
            }
            Op::S(_, _, _, _) => todo!(),
            Op::J(_, rd, imm) => {
                let rd = rd as usize;
                // op is JOp::JAL anyway so idc
                self.ctx.commit(rd, self.ctx.pc as i32 + 4);
                let next = self.ctx.pc as i32 + imm.offset().unwrap();
                if next < 0 {
                    panic!("negative pc");
                }
                next as usize
            }
            Op::JR(_, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                // op is JOp::JALR anyway so idc
                self.ctx.commit(rd, self.ctx.pc as i32 + 4);
                let next = self.ctx.registers[rs1] + imm.offset().unwrap();
                if next < 0 {
                    panic!("negative pc");
                }
                next as usize
            }
            Op::Halt => return None,
        };
        Some(next_pc)
    }
}

impl Default for Simulator {
    fn default() -> Self {
        Self::new()
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_verbose_simulator() {
        let asm = r#"
            addi a0 zero 1
            addi a1 zero 2
            add a2 a0 a1
        "#;
        let mut parsing_context = ParsingContext::default();
        let ops = qcpu_assembler::parse_tree(asm, &mut parsing_context).unwrap();
        let code = qcpu_assembler::to_machine_code(&ops, &parsing_context).unwrap();
        let mut sim = Simulator::new()
            .config(
                SimulationConfig::new()
                    .verbose(true)
                    .parsing_context(parsing_context),
            )
            .load_program(code);

        sim.run().unwrap();
    }

    #[test]
    fn test_branch_simulator() {
        let asm = r#"
            addi a0 zero 16
            addi t0 zero 1

            fib:
                addi a1 zero 1
                addi a2 zero 1
            .loop:
                beq a0 t0 .end
                add a3 a1 a2
                add a1 zero a2
                add a2 zero a3
                addi a0 a0 -1
                beq zero zero .loop

            .end:
                add a0 zero a1
        "#;
        let mut parsing_context = ParsingContext::default();
        let ops = qcpu_assembler::parse_tree(asm, &mut parsing_context).unwrap();
        let code = qcpu_assembler::to_machine_code(&ops, &parsing_context).unwrap();
        let mut sim = Simulator::new()
            .config(
                SimulationConfig::new()
                    .verbose(true)
                    .parsing_context(parsing_context),
            )
            .load_program(code);

        sim.run().unwrap();

        fn fib(n: i32) -> i32 {
            if n == 1 {
                return 1;
            }
            if n == 2 {
                return 1;
            }
            fib(n - 1) + fib(n - 2)
        }

        assert_eq!(sim.ctx.registers[10], fib(16));
    }
}
