use std::{
    fs::OpenOptions,
    io::{BufReader, BufWriter, Read, Write},
};

use qcpu_syntax::v2::reg::Register;

pub struct SimulationContext {
    pub pc: usize,
    pub program: Vec<u32>,
    pub next_pc: usize,
    pub regs: [u32; 64],
    pub reg_status: [usize; 64],

    pub memory: Vec<u8>,
}

impl Default for SimulationContext {
    fn default() -> Self {
        Self {
            pc: 0,
            next_pc: 0,
            regs: [0; 64],
            reg_status: [0; 64],
            memory: vec![0; 4096],
            program: Vec::new(),
        }
    }
}

impl SimulationContext {
    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.program = program;
        let mut pc = 0;
        for line in self.program.iter() {
            for byte in line.to_le_bytes() {
                self.memory[pc] = byte;
                pc += 1;
            }
        }
        self
    }
}

#[derive(Default)]
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

    pub fn init(&mut self) {
        self.ctx.regs[2] = (self.config.memory_size >> 1).try_into().unwrap();
        self.ctx.regs[3] = ((self.config.memory_size >> 1) + (self.config.memory_size >> 2))
            .try_into()
            .unwrap();
    }

    pub fn with_config(config: SimulationConfig) -> Self {
        let ctx = SimulationContext {
            memory: vec![0; config.memory_size],
            ..SimulationContext::default()
        };

        Self { ctx, config }
    }

    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.ctx = self.ctx.load_program(program);
        self
    }

    pub fn log_registers(&self) {
        for (i, reg) in self.ctx.regs.iter().enumerate() {
            let reg_name = Register::from_usize(i);
            if i < 32 {
                print!("{:5}: 0x{:08x} ({:12}) ", reg_name, reg, *reg as i32);
            } else {
                print!(
                    "{:5}: 0x{:08x} ({:12.6e}) ",
                    reg_name,
                    reg,
                    f32::from_bits(*reg)
                );
            }
            if i % 4 == 3 {
                println!();
            }
        }
    }
}

pub struct SimulationConfig {
    pub verbose: bool,
    pub memory_size: usize,
    pub in_buffer: BufReader<Box<dyn Read>>,
    pub out_buffer: BufWriter<Box<dyn Write>>,
}

impl Default for SimulationConfig {
    fn default() -> Self {
        Self {
            verbose: false,
            memory_size: 4096,
            in_buffer: BufReader::new(Box::new(std::io::stdin().lock())),
            out_buffer: BufWriter::new(Box::new(std::io::stdout().lock())),
        }
    }
}

impl SimulationConfig {
    pub fn verbose(mut self, verbose: bool) -> Self {
        self.verbose = verbose;
        self
    }

    pub fn memory_size(mut self, memory_size: usize) -> Self {
        self.memory_size = memory_size;
        self
    }

    pub fn file_in(mut self, file_path: &str) -> Self {
        let file = OpenOptions::new()
            .read(true)
            .open(file_path)
            .expect("Failed to open file");

        self.in_buffer = BufReader::new(Box::new(file));
        self
    }

    pub fn file_out(mut self, file_path: &str) -> Self {
        let file = OpenOptions::new()
            .write(true)
            .create(true)
            .truncate(true)
            .open(file_path)
            .expect("Failed to open file");

        self.out_buffer = BufWriter::new(Box::new(file));
        self
    }
}
