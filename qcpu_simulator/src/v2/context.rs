use std::{
    fs::OpenOptions,
    io::{BufReader, BufWriter, Read, Write},
};

use qcpu_syntax::v2::{op::Op, reg::Registers};

pub struct Snapshot {
    pub pc: usize,
    pub next_pc: usize,
    pub op: Op,
    pub regs: Registers,
    pub reg_status: [usize; 64],
}

impl Default for Snapshot {
    fn default() -> Self {
        Self {
            pc: 0,
            next_pc: 0,
            op: Op::default(),
            regs: [0; 64].into(),
            reg_status: [0; 64],
        }
    }
}

pub struct SimulationContext {
    pub current: Snapshot,
    pub snapshots: Vec<Snapshot>,
    pub program: Vec<u32>,
    pub memory: Vec<u8>,
}

impl Default for SimulationContext {
    fn default() -> Self {
        Self {
            current: Snapshot::default(),
            snapshots: Vec::new(),
            program: Vec::new(),
            memory: vec![0; 4096],
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
        self.ctx.current.regs[2] = (self.config.memory_size >> 1).try_into().unwrap();
        self.ctx.current.regs[3] = ((self.config.memory_size >> 1)
            + (self.config.memory_size >> 2))
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
        println!("{:?}", self.ctx.current.regs);
    }
}

pub struct SimulationConfig {
    pub verbose: bool,
    pub interactive: bool,
    pub memory_size: usize,
    pub in_buffer: BufReader<Box<dyn Read>>,
    pub out_buffer: BufWriter<Box<dyn Write>>,
}

impl Default for SimulationConfig {
    fn default() -> Self {
        Self {
            verbose: false,
            interactive: false,
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

    pub fn interactive(mut self, interactive: bool) -> Self {
        self.interactive = interactive;
        self.verbose = !interactive || self.verbose;
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
