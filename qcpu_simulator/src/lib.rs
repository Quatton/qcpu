use qcpu_syntax::{parser::Op, reg::IntReg, IOp, ISOp, ROp};
use strum::VariantArray;
#[derive(Default)]

pub struct Snapshot {
    pc: usize,
    reg: [Option<i32>; 32],
}

#[derive(Default)]
pub struct SimulationContext {
    pub registers: [i32; 32],
    pub history: Vec<Snapshot>,
    pub pc: usize,
}

impl SimulationContext {
    pub fn new() -> Self {
        Self {
            registers: [0; 32],
            history: vec![],
            pc: 0,
        }
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

    pub fn commit(&mut self, rd: usize, new: i32) {
        let latest = if let Some(lastest) = self.history.last_mut() {
            lastest
        } else {
            self.history.push(Snapshot::default());
            self.history.last_mut().unwrap()
        };

        latest.reg[rd] = Some(new);
        self.registers[rd] = new;
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
        while self.context.pc < code.len() {
            if self.config.verbose {
                println!("======pc: {}======\n", self.context.pc);
            }
            let op = Op::from_machine_code(code[self.context.pc]).unwrap();
            self.context.history.push(Snapshot {
                pc: self.context.pc,
                reg: [None; 32],
            });
            self.execute(op);
            self.context.pc += 1;
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
                    ROp::SRA => self.context.registers[rs1] >> self.context.registers[rs2],
                    // signed comparison
                    ROp::SLT => {
                        if self.context.registers[rs1] < self.context.registers[rs2] {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    ROp::SLTU => {
                        if (self.context.registers[rs1] as u32)
                            < (self.context.registers[rs2] as u32)
                        {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.context.commit(rd, result);
            }
            Op::I(op, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    IOp::ADDI => self.context.registers[rs1] + imm,
                    IOp::ANDI => self.context.registers[rs1] & imm,
                    IOp::ORI => self.context.registers[rs1] | imm,
                    IOp::XORI => self.context.registers[rs1] ^ imm,
                    // signed comparison
                    IOp::SLTI => {
                        if self.context.registers[rs1] < imm {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    IOp::SLTIU => {
                        if (self.context.registers[rs1] as u32) < (imm as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.context.commit(rd, result);
            }
            Op::IS(op, rd, rs1, shamt) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    ISOp::SLLI => self.context.registers[rs1] << shamt,
                    ISOp::SRLI => self.context.registers[rs1] >> shamt,
                    ISOp::SRAI => self.context.registers[rs1] >> shamt,
                };
                self.context.commit(rd, result);
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
