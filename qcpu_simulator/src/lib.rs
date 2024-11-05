use std::ops::{Deref, DerefMut, Range};

use qcpu_syntax::{
    parser::{Op, ParsingContext},
    reg::IntReg,
    BOp, FROp, IOp, ISOp, ROp, STOp,
};

use strum::VariantArray;

type _IntRegisters = [i32; 32];
type _FloatRegisters = [f32; 32];

#[derive(Default, Clone, Copy)]
pub struct IntRegisters(_IntRegisters);

impl Deref for IntRegisters {
    type Target = _IntRegisters;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for IntRegisters {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl IntRegisters {
    pub fn new() -> Self {
        Self([0; 32])
    }

    pub fn from_array(reg: _IntRegisters) -> Self {
        Self(reg)
    }
}

#[derive(Default, Clone, Copy)]
pub struct FloatRegisters(_FloatRegisters);

impl Deref for FloatRegisters {
    type Target = _FloatRegisters;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for FloatRegisters {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl FloatRegisters {
    pub fn new() -> Self {
        Self([0.0; 32])
    }

    pub fn from_array(reg: _FloatRegisters) -> Self {
        Self(reg)
    }
}

#[derive(Default, Clone)]
pub struct Snapshot {
    pub pc: usize,
    pub ireg: IntRegisters,
    pub freg: FloatRegisters,
    pub memory_transition: Vec<(usize, u8, u8)>,
}

impl std::fmt::Debug for IntRegisters {
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
    pub ireg: IntRegisters,
    pub freg: FloatRegisters,
    pub program_offset: usize,
    pub history: Vec<Snapshot>,
    pub pc: usize,
    pub memory: Vec<u8>,
    pub program: Vec<u32>,
}

impl Default for SimulationContext {
    fn default() -> Self {
        Self {
            ireg: IntRegisters::new(),
            freg: FloatRegisters::new(),
            program_offset: 0,
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
        println!("{:?}", self.ireg);
    }

    pub fn load_program(mut self, program: Vec<u32>, addr: usize) -> Self {
        self.program_offset = addr;
        self.pc = addr;
        self.program = program.clone();
        for line in program.into_iter() {
            for byte in line.to_le_bytes() {
                self.memory[self.pc] = byte;
                self.pc += 1;
            }
        }
        self
    }

    pub fn commit_ireg(&mut self, reg: usize, value: i32) {
        if reg == 0 {
            return;
        }
        let latest = if let Some(lastest) = self.history.last_mut() {
            lastest
        } else {
            self.history.push(Snapshot::default());
            self.history.last_mut().unwrap()
        };

        latest.ireg[reg] = value;
        self.ireg[reg] = value;
    }

    pub fn commit_memory(&mut self, addr: Range<usize>, value: i32) {
        let latest = if let Some(lastest) = self.history.last_mut() {
            lastest
        } else {
            self.history.push(Snapshot::default());
            self.history.last_mut().unwrap()
        };

        for (addr, value) in addr.clone().zip(value.to_le_bytes().iter()) {
            latest
                .memory_transition
                .push((addr, self.memory[addr], *value));
        }

        self.memory[addr].copy_from_slice(&value.to_le_bytes());
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
            memory_size: 1048576,
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
        self.ctx = self.ctx.load_program(program, 0);
        self
    }

    pub fn config(mut self, config: SimulationConfig) -> Self {
        self.config = config;
        self.ctx.memory = vec![0; self.config.memory_size];
        self
    }

    pub fn init(&mut self) {
        self.ctx.pc =
            self.config.parsing_context.get_main_pc().unwrap_or(0) * 4 + self.ctx.program_offset;
        self.ctx.ireg = IntRegisters::new();
        self.ctx.ireg[2] = (self.config.memory_size >> 1).try_into().unwrap();
    }

    pub fn run(&mut self) -> Result<(), &str> {
        self.init();
        let mut i = 0;
        loop {
            // align
            self.ctx.pc = (self.ctx.pc >> 2) << 2;
            let pc = self.run_unit();
            match pc.unwrap() {
                Some(pc) => self.ctx.pc = pc,
                None => break,
            }
            i += 1;
        }

        println!("======finished in {} cycles======", i);
        Ok(())
    }

    pub fn run_unit(&mut self) -> Result<Option<usize>, &str> {
        self.ctx.pc = (self.ctx.pc >> 2) << 2;
        let pc = self.ctx.pc;

        self.ctx.history.push(Snapshot {
            pc: self.ctx.pc,
            ireg: self.ctx.ireg,
            freg: self.ctx.freg,
            memory_transition: Vec::new(),
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
                    ROp::ADD => self.ctx.ireg[rs1] + self.ctx.ireg[rs2],
                    ROp::SUB => self.ctx.ireg[rs1] - self.ctx.ireg[rs2],
                    ROp::AND => self.ctx.ireg[rs1] & self.ctx.ireg[rs2],
                    ROp::OR => self.ctx.ireg[rs1] | self.ctx.ireg[rs2],
                    ROp::XOR => self.ctx.ireg[rs1] ^ self.ctx.ireg[rs2],
                    ROp::SLL => self.ctx.ireg[rs1] << self.ctx.ireg[rs2],
                    ROp::SRL => self.ctx.ireg[rs1] >> self.ctx.ireg[rs2],
                    ROp::SRA => self.ctx.ireg[rs1] >> self.ctx.ireg[rs2],
                    // signed comparison
                    ROp::SLT => {
                        if self.ctx.ireg[rs1] < self.ctx.ireg[rs2] {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    ROp::SLTU => {
                        if (self.ctx.ireg[rs1] as u32) < (self.ctx.ireg[rs2] as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.ctx.commit_ireg(rd, result);
                self.ctx.pc + 4
            }
            Op::I(op, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    IOp::ADDI => self.ctx.ireg[rs1] + imm,
                    IOp::ANDI => self.ctx.ireg[rs1] & imm,
                    IOp::ORI => self.ctx.ireg[rs1] | imm,
                    IOp::XORI => self.ctx.ireg[rs1] ^ imm,
                    // signed comparison
                    IOp::SLTI => {
                        if self.ctx.ireg[rs1] < imm {
                            1
                        } else {
                            0
                        }
                    }
                    // unsigned comparison
                    IOp::SLTIU => {
                        if (self.ctx.ireg[rs1] as u32) < (imm as u32) {
                            1
                        } else {
                            0
                        }
                    }
                };
                self.ctx.commit_ireg(rd, result);
                self.ctx.pc + 4
            }
            Op::IS(op, rd, rs1, shamt) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let result = match op {
                    ISOp::SLLI => self.ctx.ireg[rs1] << shamt,
                    ISOp::SRLI => self.ctx.ireg[rs1] >> shamt,
                    ISOp::SRAI => self.ctx.ireg[rs1] >> shamt,
                };
                self.ctx.commit_ireg(rd, result);
                self.ctx.pc + 4
            }
            Op::B(op, rs2, rs1, imm) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let jmp = match op {
                    BOp::BEQ => self.ctx.ireg[rs1] == self.ctx.ireg[rs2],
                    BOp::BNE => self.ctx.ireg[rs1] != self.ctx.ireg[rs2],
                    BOp::BLT => self.ctx.ireg[rs1] < self.ctx.ireg[rs2],
                    BOp::BGE => self.ctx.ireg[rs1] >= self.ctx.ireg[rs2],
                    BOp::BGEU => (self.ctx.ireg[rs1] as u32) >= (self.ctx.ireg[rs2] as u32),

                    BOp::BLTU => (self.ctx.ireg[rs1] as u32) < (self.ctx.ireg[rs2] as u32),
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
            Op::S(op, rs2, rs1, imm) => {
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let addr = self.ctx.ireg[rs1] + imm;

                // check addr out of bound
                if addr < 0 || addr >= self.ctx.memory.len() as i32 {
                    panic!("out of bound memory access");
                }

                let addr = addr as usize;
                let value = self.ctx.ireg[rs2];
                self.ctx.commit_memory(
                    match op {
                        STOp::SB => addr..addr + 1,
                        STOp::SH => addr..addr + 2,
                        STOp::SW => addr..addr + 4,
                    },
                    value,
                );
                self.ctx.pc + 4
            }
            Op::L(op, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let addr = self.ctx.ireg[rs1] + imm;

                // check addr out of bound
                if addr < 0 || addr >= self.ctx.memory.len() as i32 {
                    panic!("out of bound memory access");
                }

                let addr = addr as usize;
                let value = match op {
                    qcpu_syntax::LOp::LB => self.ctx.memory[addr] as i8 as i32,
                    qcpu_syntax::LOp::LH => {
                        let bytes = &self.ctx.memory[addr..addr + 2];
                        i16::from_le_bytes([bytes[0], bytes[1]]) as i32
                    }
                    qcpu_syntax::LOp::LW => {
                        let bytes = &self.ctx.memory[addr..addr + 4];
                        i32::from_le_bytes([bytes[0], bytes[1], bytes[2], bytes[3]])
                    }
                    qcpu_syntax::LOp::LBU => self.ctx.memory[addr] as i32,
                    qcpu_syntax::LOp::LHU => {
                        let bytes = &self.ctx.memory[addr..addr + 2];
                        u16::from_le_bytes([bytes[0], bytes[1]]) as i32
                    }
                };

                self.ctx.commit_ireg(rd, value);
                self.ctx.pc + 4
            }
            Op::J(_, rd, imm) => {
                let rd = rd as usize;
                // op is JOp::JAL anyway so idc
                let next = self.ctx.pc as i32 + imm.offset().unwrap();
                if next < 0 {
                    panic!("negative pc");
                }
                self.ctx.commit_ireg(rd, self.ctx.pc as i32 + 4);
                next as usize
            }
            Op::JR(_, rd, rs1, imm) => {
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                // op is JOp::JALR anyway so idc
                let next = self.ctx.ireg[rs1] + imm.offset().unwrap();
                if next < 0 {
                    panic!("negative pc");
                }
                self.ctx.commit_ireg(rd, self.ctx.pc as i32 + 4);
                next as usize
            }
            Op::FR(op, rd, rs1, rs2, _rm) => {
                // we ignore _rm at this point because idk how
                let rd = rd as usize;
                let rs1 = rs1 as usize;
                let rs2 = rs2 as usize;
                let rs1_d = self.ctx.freg[rs1];
                let rs2_d = self.ctx.freg[rs2];
                let res = match op {
                    FROp::FADD => rs1_d + rs2_d,
                    FROp::FSUB => rs1_d - rs2_d,
                    FROp::FMUL => rs1_d * rs2_d,
                    FROp::FDIV => rs1_d / rs2_d,
                };
                self.ctx.freg[rd] = res;
                self.ctx.pc + 4
            }
            Op::Exit(_) => return None,
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

    fn fib(n: i32) -> i32 {
        if n == 1 {
            return 1;
        }
        if n == 2 {
            return 1;
        }
        fib(n - 1) + fib(n - 2)
    }

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

        assert_eq!(sim.ctx.ireg[10], fib(16));
    }

    #[test]
    fn real_program() {
        let code = r#"
_min_caml_start:
	addi 	a0, zero, 10 !4
	jal 	ra, fib.10 !4
	jal 	ra, min_caml_print_int !4
fib.10:
	sw  	ra, 0(sp)
	addi	t0, zero, 1 !2
	blt 	t0, a0, bge_else.24 !2
bge_else.24: !2
	addi	a1, a0, -1 !3
	sw  	a0, 4(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 8 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -8 !3
	lw  	a1, 4(sp) !3
	addi	a1, a1, -2 !3
	sw  	a0, 8(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 16 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -16 !3
	lw  	a1, 8(sp) !3
	add 	a0, a1, a0 !3
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
min_caml_print_int:
"#;

        let mut ctx = ParsingContext::default();
        let ops = qcpu_assembler::parse_tree(code, &mut ctx).unwrap();
        let mc = qcpu_assembler::to_machine_code(&ops, &ctx).unwrap();

        let mut sim = Simulator::new()
            .config(SimulationConfig::new().verbose(true).parsing_context(ctx))
            .load_program(mc);

        sim.run().unwrap();

        assert_eq!(sim.ctx.memory.get(3000).unwrap(), &55);
    }
}
