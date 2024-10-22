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

#[derive(Default, Clone)]
pub struct SimulationContext {
    pub program: Vec<u32>,
    pub registers: Registers,
    pub history: Vec<Snapshot>,
    pub pc: usize,
}

impl SimulationContext {
    pub fn new() -> Self {
        Self {
            program: vec![],
            registers: Registers::new(),
            history: vec![],
            pc: 0,
        }
    }

    pub fn log_registers(&self) {
        println!("{:?}", self.registers);
    }

    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.program = program;
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
}

impl SimulationConfig {
    pub fn new() -> Self {
        Self {
            verbose: false,
            interactive: false,
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
}

pub struct Simulator {
    pub simulation_context: SimulationContext,
    pub config: SimulationConfig,
}

impl Simulator {
    pub fn new() -> Self {
        Self {
            simulation_context: SimulationContext::default(),
            config: SimulationConfig::default(),
        }
    }

    pub fn config(mut self, config: SimulationConfig) -> Self {
        self.config = config;
        self
    }

    pub fn run(&mut self, ctx: &mut ParsingContext) {
        while self.simulation_context.pc < self.simulation_context.program.len() {
            let pc = self.run_unit(self.simulation_context.pc, ctx).unwrap();
            self.simulation_context.pc = pc;
        }
    }

    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.simulation_context.program = program;
        self
    }

    pub fn run_unit(&mut self, pc: usize, ctx: &mut ParsingContext) -> Result<usize, &str> {
        if self.config.verbose {
            println!("======pc: {}======\n", self.simulation_context.pc);
        }
        let code = self.simulation_context.program.get(pc);
        if let Some(&code) = code {
            let op = Op::from_machine_code(code, ctx).unwrap();
            self.simulation_context.history.push(Snapshot {
                pc: self.simulation_context.pc,
                reg: self.simulation_context.registers,
            });
            Ok(self.execute(op))
        } else {
            Err("index out of bound")
        }
    }

    pub fn execute(&mut self, op: Op) -> usize {
        if self.config.verbose {
            println!("{:?}", op);
        }
        let next_pc = match op {
            Op::R(op, rd, rs1, rs2) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let result = match op {
                    ROp::ADD => {
                        self.simulation_context.registers[rs1]
                            + self.simulation_context.registers[rs2]
                    }
                    ROp::SUB => {
                        self.simulation_context.registers[rs1]
                            - self.simulation_context.registers[rs2]
                    }
                    ROp::AND => {
                        self.simulation_context.registers[rs1]
                            & self.simulation_context.registers[rs2]
                    }
                    ROp::OR => {
                        self.simulation_context.registers[rs1]
                            | self.simulation_context.registers[rs2]
                    }
                    ROp::XOR => {
                        self.simulation_context.registers[rs1]
                            ^ self.simulation_context.registers[rs2]
                    }
                    ROp::SLL => {
                        self.simulation_context.registers[rs1]
                            << self.simulation_context.registers[rs2]
                    }
                    ROp::SRL => {
                        self.simulation_context.registers[rs1]
                            >> self.simulation_context.registers[rs2]
                    }
                    ROp::SRA => {
                        self.simulation_context.registers[rs1]
                            >> self.simulation_context.registers[rs2]
                    }
                    // signed comparison
                    ROp::SLT => {
                        if self.simulation_context.registers[rs1]
                            < self.simulation_context.registers[rs2]
                        {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    ROp::SLTU => {
                        if (self.simulation_context.registers[rs1] as u32)
                            < (self.simulation_context.registers[rs2] as u32)
                        {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.simulation_context.commit(rd, result);
                self.simulation_context.pc + 1
            }
            Op::I(op, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    IOp::ADDI => self.simulation_context.registers[rs1] + imm,
                    IOp::ANDI => self.simulation_context.registers[rs1] & imm,
                    IOp::ORI => self.simulation_context.registers[rs1] | imm,
                    IOp::XORI => self.simulation_context.registers[rs1] ^ imm,
                    // signed comparison
                    IOp::SLTI => {
                        if self.simulation_context.registers[rs1] < imm {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    IOp::SLTIU => {
                        if (self.simulation_context.registers[rs1] as u32) < (imm as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.simulation_context.commit(rd, result);
                self.simulation_context.pc + 1
            }
            Op::IS(op, rd, rs1, shamt) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    ISOp::SLLI => self.simulation_context.registers[rs1] << shamt,
                    ISOp::SRLI => self.simulation_context.registers[rs1] >> shamt,
                    ISOp::SRAI => self.simulation_context.registers[rs1] >> shamt,
                };
                self.simulation_context.commit(rd, result);
                self.simulation_context.pc + 1
            }
            Op::B(op, rs2, rs1, imm) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let jmp = match op {
                    BOp::BEQ => {
                        self.simulation_context.registers[rs1]
                            == self.simulation_context.registers[rs2]
                    }
                    BOp::BNE => {
                        self.simulation_context.registers[rs1]
                            != self.simulation_context.registers[rs2]
                    }
                    BOp::BLT => {
                        self.simulation_context.registers[rs1]
                            < self.simulation_context.registers[rs2]
                    }
                    BOp::BGE => {
                        self.simulation_context.registers[rs1]
                            >= self.simulation_context.registers[rs2]
                    }
                    BOp::BGEU => {
                        (self.simulation_context.registers[rs1] as u32)
                            >= (self.simulation_context.registers[rs2] as u32)
                    }

                    BOp::BLTU => {
                        (self.simulation_context.registers[rs1] as u32)
                            < (self.simulation_context.registers[rs2] as u32)
                    }
                };

                if !jmp {
                    self.simulation_context.pc + 1
                } else {
                    let next = self.simulation_context.pc as i32 + imm.offset().unwrap();
                    if next < 0 {
                        panic!("negative pc");
                    }
                    next as usize
                }
            }
            Op::S(_, _, _, _) => todo!(),
        };
        if self.config.verbose {
            self.simulation_context.log_registers();
        }
        next_pc
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
        let code = qcpu_assembler::to_machine_code(ops, &parsing_context).unwrap();
        let mut sim = Simulator::new()
            .config(SimulationConfig::new().verbose(true))
            .load_program(code);
        sim.run(&mut parsing_context);
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
        println!("{:?}", ops);
        let code = qcpu_assembler::to_machine_code(ops, &parsing_context).unwrap();
        let mut sim = Simulator::new()
            .config(SimulationConfig::new().verbose(true))
            .load_program(code);

        sim.run(&mut parsing_context);

        fn fib(n: i32) -> i32 {
            if n == 1 {
                return 1;
            }
            if n == 2 {
                return 1;
            }
            fib(n - 1) + fib(n - 2)
        }

        assert_eq!(sim.simulation_context.registers[10], fib(16));
    }
}
