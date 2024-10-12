use qcpu_syntax::{parser::Op, reg::IntReg, IOp, ISOp, ROp};
use strum::VariantArray;

#[derive(Default)]
pub struct SimulationContext {
    pub registers: [u32; 32],
}

impl SimulationContext {
    pub fn new() -> Self {
        Self { registers: [0; 32] }
    }

    pub fn log_registers(&self) {
        // 4 x 8 table
        for (i, r) in IntReg::VARIANTS.iter().enumerate() {
            print!("{:<5}: {:<10} ", r, self.registers[i]);
            if (i + 1) % 4 == 0 {
                println!();
            }
        }
    }
}

#[derive(Default)]
pub struct SimulationConfig {
    pub verbose: bool,
}

pub struct Simulator {
    pub context: SimulationContext,
    pub config: SimulationConfig,
}

impl Simulator {
    pub fn new() -> Self {
        Self {
            context: SimulationContext::default(),
            config: SimulationConfig::default(),
        }
    }

    pub fn config(mut self, config: SimulationConfig) -> Self {
        self.config = config;
        self
    }

    pub fn run(&mut self, code: Vec<u32>) {
        let mut pc = 0;
        while pc < code.len() {
            if self.config.verbose {
                println!("======pc: {}======\n", pc);
            }
            let op = Op::from_machine_code(code[pc]).unwrap();
            self.execute(op);
            pc += 1;
        }
    }

    pub fn execute(&mut self, op: Op) {
        if self.config.verbose {
            println!("{:?}", op);
        }
        match op {
            Op::R(op, rd, rs1, rs2) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let result = match op {
                    ROp::ADD => self.context.registers[rs1] + self.context.registers[rs2],
                    ROp::SUB => self.context.registers[rs1] - self.context.registers[rs2],
                    ROp::AND => self.context.registers[rs1] & self.context.registers[rs2],
                    ROp::OR => self.context.registers[rs1] | self.context.registers[rs2],
                    ROp::XOR => self.context.registers[rs1] ^ self.context.registers[rs2],
                    ROp::SLL => self.context.registers[rs1] << self.context.registers[rs2],
                    ROp::SRL => self.context.registers[rs1] >> self.context.registers[rs2],
                    ROp::SRA => {
                        (self.context.registers[rs1] as i32 >> self.context.registers[rs2]) as u32
                    }
                    // signed comparison
                    ROp::SLT => {
                        if (self.context.registers[rs1] as i32)
                            < (self.context.registers[rs2] as i32)
                        {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    ROp::SLTU => {
                        if self.context.registers[rs1] < self.context.registers[rs2] {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.context.registers[rd] = result;
            }
            Op::I(op, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    IOp::ADDI => self.context.registers[rs1] + imm as u32,
                    IOp::ANDI => self.context.registers[rs1] & imm as u32,
                    IOp::ORI => self.context.registers[rs1] | imm as u32,
                    IOp::XORI => self.context.registers[rs1] ^ imm as u32,
                    // signed comparison
                    IOp::SLTI => {
                        if (self.context.registers[rs1] as i32) < imm {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    IOp::SLTIU => {
                        if self.context.registers[rs1] < imm as u32 {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.context.registers[rd] = result;
            }
            Op::IS(op, rd, rs1, shamt) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    ISOp::SLLI => self.context.registers[rs1] << shamt,
                    ISOp::SRLI => self.context.registers[rs1] >> shamt,
                    ISOp::SRAI => (self.context.registers[rs1] as i32 >> shamt) as u32,
                };
                self.context.registers[rd] = result;
            }
        }
        if self.config.verbose {
            self.context.log_registers();
        }
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
        let mut sim = Simulator::new().config(SimulationConfig { verbose: true });
        let asm = r#"
            addi a0 zero 1
            addi a1 zero 2
            add a2 a0 a1
        "#;
        let code = qcpu_assembler::to_machine_code(asm).unwrap();
        sim.run(code);
    }
}
