mod execute;
pub mod reg;
mod result;
pub mod snapshot;
pub mod v2;
pub mod v4;

use std::{collections::VecDeque, io::Read as _};

use qcpu_syntax::{
    parser::{Op, ParsingContext},
    IntReg, Reg,
};
use result::{MemoryAccessRequest, RegisterWriteBackRequest};
use snapshot::{Snapshot, Snapshots};

#[derive(Default, Clone)]
pub struct SimulationContext {
    pub program_offset: usize,
    pub removed_cycles: usize,
    pub history: Snapshots,
    pub memory: Vec<u8>,
    pub program: Vec<u32>,
    pub in_buffer: VecDeque<u8>,
    pub out_buffer: VecDeque<u8>,
}

impl SimulationContext {
    pub fn new() -> Self {
        Self::default()
    }

    pub fn log_registers(&self) {
        let last = self.history.last().unwrap();
        println!("{:?}", last.ireg);
        println!("{:?}", last.freg);
    }

    pub fn load_program(mut self, program: Vec<u32>, addr: usize) -> Self {
        self.program_offset = addr;
        let mut pc = addr;
        self.program = program.clone();
        for line in program.into_iter() {
            for byte in line.to_le_bytes() {
                self.memory[pc] = byte;
                pc += 1;
            }
        }
        self
    }
}

#[derive(Default)]
pub struct SimulationConfig {
    pub verbose: bool,
    pub interactive: bool,
    pub memory_size: usize,
    pub parsing_context: ParsingContext,
    pub low_memory: usize,
    pub output: Option<String>,
    pub input: Option<String>,
}

impl SimulationConfig {
    pub fn new() -> Self {
        Self {
            verbose: false,
            interactive: false,
            memory_size: 1048576,
            parsing_context: ParsingContext::default(),
            low_memory: 32,
            output: None,
            input: None,
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

    pub fn low_memory(mut self, low_memory: usize) -> Self {
        self.low_memory = low_memory;
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

        if self.config.input.is_some() {
            self.ctx.in_buffer = std::fs::File::open(self.config.input.as_ref().unwrap())
                .unwrap()
                .bytes()
                .map(|x| x.unwrap())
                .collect();
        }

        self
    }

    pub fn init(&mut self) {
        self.ctx.history = Snapshots::default();
        let last = self.ctx.history.last_mut().unwrap();

        last.fetch_result.predicted_pc =
            self.config.parsing_context.get_main_pc().unwrap_or(0) * 4 + self.ctx.program_offset;
        last.ireg[2] = (self.config.memory_size >> 1).try_into().unwrap();
        last.ireg[3] = ((self.config.memory_size >> 1) + (self.config.memory_size >> 2))
            .try_into()
            .unwrap();
    }

    pub fn instruction_fetch(&self, prev: &Snapshot, next: &mut Snapshot) {
        if next.fetch_result.stall {
            return;
        }

        let pc = next.fetch_result.base_pc;

        next.bubble = prev.execute_result.refetch;

        next.fetch_result.awaiting_decode = Some(
            self.ctx.memory[pc..pc + 4]
                .iter()
                .rev()
                .fold(0, |acc, &x| acc << 8 | x as u32),
        );

        next.fetch_result.predicted_pc = pc + 4; // TODO: better branch prediction
        next.next_pc = next.fetch_result.predicted_pc;
    }

    pub fn instruction_decode(&self, prev: &Snapshot, next: &mut Snapshot) {
        if next.bubble || prev.fetch_result.awaiting_decode.is_none() {
            return;
        }

        let program = prev.fetch_result.awaiting_decode.unwrap();

        // just crash the program idc
        next.decode_result
            .set_intr(Op::from_machine_code(program, &self.config.parsing_context).unwrap());
    }

    pub fn run(&mut self) -> Result<(), &str> {
        self.init();
        let mut i = 0;
        loop {
            if self.config.verbose {
                let last = self.ctx.history.last().unwrap();
                println!(
                    "{:?} | {:?} | {:?} | {:?} | {:?}",
                    last.fetch_result.awaiting_decode,
                    last.decode_result.intr,
                    last.execute_result.predicted_pc,
                    last.memory_access_result.memory_transition,
                    last.write_back_result,
                )
            }
            let pc = self.run_unit();
            if pc.is_err() {
                break;
            }
            i += 1;
        }

        println!();
        println!("======finished in {} cycles======", i);
        Ok(())
    }

    pub fn run_unit(&mut self) -> Result<Option<usize>, &str> {
        let mut next = self.ctx.history.new_snapshot();
        let prev = self.ctx.history.last().unwrap().clone();

        self.write_back(&prev, &mut next);

        self.memory_access(&prev, &mut next);

        self.instruction_fetch(&prev, &mut next);
        let mut next_pc = Some(next.next_pc);

        if !next.bubble {
            self.instruction_decode(&prev, &mut next);
            next_pc = self.execute(&prev, &mut next);

            if prev.execute_result.stall {
                next.next_pc = next.execute_result.predicted_pc;
            }
        }

        // execute

        if self.config.verbose {
            self.ctx.log_registers();
        }

        for (addr, _, new) in next.memory_access_result.memory_transition.iter() {
            self.ctx.memory[*addr] = *new;
        }

        let done = next_pc.is_none()
            && next.execute_result.register_write_back_request.is_none()
            && next.memory_access_result.wb.is_none()
            && next.write_back_result.is_none();

        self.ctx.history.push(next);

        if self.ctx.history.len() > self.config.low_memory {
            self.ctx.history.remove_front();
            self.ctx.removed_cycles += 1;
        }

        if done {
            return Err("done");
        }

        Ok(next_pc)
    }

    pub fn memory_access(&self, prev: &Snapshot, next: &mut Snapshot) {
        if let Some(thing) = next.memory_access_result.wb {
            match thing {
                RegisterWriteBackRequest::WriteInt(value, rd) => {
                    if rd == IntReg::Zero {
                        return;
                    }
                    next.ireg[rd as usize] = value;
                }
                RegisterWriteBackRequest::WriteFloat(value, rd) => {
                    next.freg[rd as usize] = value;
                }
            }
        }

        if next.memory_access_result.req.is_none() {
            return;
        }

        let req = prev.execute_result.memory_access_request.clone().unwrap();

        match req {
            MemoryAccessRequest::S(addr, value) => {
                for (addr, value) in addr.clone().zip(value.to_le_bytes().iter()) {
                    next.memory_access_result.memory_transition.push((
                        addr,
                        self.ctx.memory[addr],
                        *value,
                    ));
                }
            }
            MemoryAccessRequest::L(op, addr, rd) => {
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

                next.memory_access_result.wb = Some(match rd {
                    Reg::I(rd) => RegisterWriteBackRequest::WriteInt(value, rd),
                    Reg::F(rd) => {
                        RegisterWriteBackRequest::WriteFloat(f32::from_bits(value as u32), rd)
                    }
                });
            }
        }
    }

    pub fn write_back(&self, prev: &Snapshot, next: &mut Snapshot) {
        if let Some(thing) = prev.memory_access_result.wb {
            match thing {
                RegisterWriteBackRequest::WriteInt(value, rd) => {
                    if rd == IntReg::Zero {
                        return;
                    }
                    next.ireg[rd as usize] = value;
                }
                RegisterWriteBackRequest::WriteFloat(value, rd) => {
                    next.freg[rd as usize] = value;
                }
            }
            next.write_back_result = Some(prev.memory_access_result.wb.unwrap());
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

        assert_eq!(sim.ctx.history.last().unwrap().ireg[10], fib(16));
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
            .config(
                SimulationConfig::new()
                    .memory_size(65536)
                    .verbose(true)
                    .parsing_context(ctx),
            )
            .load_program(mc);

        sim.run().unwrap();
    }

    #[test]
    fn just_testing() {
        let float_int_repr = 1036831949;
        let float = f32::from_bits(float_int_repr);

        println!("{float_int_repr:32b}");
        println!("{float}");
    }
}
