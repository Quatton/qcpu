use std::{
    collections::{HashMap, VecDeque},
    fmt::Display,
    fs::OpenOptions,
    io::{stdin, stdout, BufReader, BufWriter, Read, Write},
};

use qcpu_syntax::{
    v2::{
        op::Op,
        reg::Registers,
        syntax::{OpName, OpType},
    },
    ParsingContext,
};
use strum::VariantArray;

use super::memory::{Memory, RP};

#[derive(Clone)]
pub struct Snapshot {
    pub pc: usize,
    pub next_pc: usize,
    pub op: Op,
    pub regs: Registers,
    pub busy: [usize; 64],
}

impl Default for Snapshot {
    fn default() -> Self {
        Self {
            pc: 0,
            next_pc: 0,
            op: Op::default(),
            regs: [0; 64].into(),
            busy: [0; 64],
        }
    }
}

#[derive(Default)]
pub struct ETimer {
    pub start: VecDeque<usize>,
    pub sum_for_avg: usize,
    pub real_sum: usize,
    pub count: usize,
    pub max: usize,
    pub min: usize,
}

#[derive(Default)]
pub struct EUtils {
    pub counter: HashMap<usize, usize>,
    pub timer: HashMap<usize, ETimer>,
}

pub struct SimulationContext {
    pub current: Snapshot,
    pub snapshots: Vec<Snapshot>,
    pub program: Vec<u32>,
    pub memory: Memory,

    pub taken_pht: Vec<i8>,
    pub untaken_pht: Vec<i8>,
    pub selector_pht: Vec<i8>,
    pub jalr_addr: Vec<usize>,
    pub gh: usize,

    pub stat: Stat,

    pub e: EUtils,
}

impl Default for SimulationContext {
    fn default() -> Self {
        Self {
            current: Default::default(),
            snapshots: Default::default(),
            program: Default::default(),
            memory: Default::default(),
            taken_pht: vec![2; 1024],
            untaken_pht: vec![1; 1024],
            selector_pht: vec![2; 256],
            jalr_addr: vec![0; 1024],
            gh: 0,
            stat: Default::default(),
            e: Default::default(),
        }
    }
}

pub struct Stat {
    pub instr_count: Vec<usize>,
    pub cache_miss_stall: usize,
    pub cycle_count: usize,
    pub flash_count: Vec<usize>,
    pub hazard_stall_count: usize,
    pub max_sp: usize,
    pub max_gp: usize,
    pub sp_init: usize,
    pub gp_init: usize,
}

impl Default for Stat {
    fn default() -> Self {
        Self {
            instr_count: vec![0; OpName::VARIANTS.len()],
            cycle_count: Default::default(),
            cache_miss_stall: Default::default(),
            flash_count: vec![0; OpType::VARIANTS.len()],
            hazard_stall_count: Default::default(),
            max_sp: Default::default(),
            max_gp: Default::default(),
            sp_init: Default::default(),
            gp_init: Default::default(),
        }
    }
}

impl Display for Stat {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let b_count: usize = self
            .instr_count
            .iter()
            .enumerate()
            .filter_map(|(k, v)| {
                if OpName::from_repr(k).unwrap().optype == OpType::B {
                    Some(v)
                } else {
                    None
                }
            })
            .sum();
        let instr_count = self.instr_count.iter().sum::<usize>();

        writeln!(f, "Statistics:")?;
        writeln!(f, "Max SP incr: {}", self.max_sp - self.sp_init)?;
        if self.max_sp >= self.gp_init {
            writeln!(f, "Max SP overlapping GP, increase memory")?;
        }
        writeln!(f, "Max GP incr: {}", self.max_gp - self.gp_init)?;
        writeln!(f, "Instruction count (times, not cycle): {}", instr_count)?;
        let mut cur = None;
        let mut csum = 0;
        let mut iccp = self
            .instr_count
            .iter()
            .enumerate()
            .map(|(k, v)| (OpName::from_repr(k).unwrap(), v))
            .collect::<Vec<_>>();

        iccp.sort_by(|a, b| a.0.optype.cmp(&b.0.optype));
        for (op, count) in iccp {
            if Some(op.optype) != cur {
                if cur.is_some() {
                    writeln!(f, "   {}: {}", cur.unwrap(), csum)?;
                }
                cur = Some(op.optype);
                csum = 0;
            }
            writeln!(f, "       {:?}: {}", op, count)?;
            csum += count;
        }
        if cur.is_some() {
            writeln!(f, "   {}: {}", cur.unwrap(), csum)?;
        }
        writeln!(f, "Cycle count: {}", self.cycle_count)?;
        writeln!(
            f,
            "Branch Prediction Miss: {} out of {} B instructions ({:.2}%)",
            self.flash_count[OpType::B as usize],
            b_count,
            self.flash_count[OpType::B as usize] as f32 / b_count as f32 * 100.0
        )?;
        writeln!(
            f,
            "Flash count for JALR: {} out of {} instructions ({:.2}%)",
            self.flash_count[OpType::I as usize],
            self.instr_count[OpName::JALR as usize],
            if self.instr_count[OpName::JALR as usize] == 0 {
                0.0
            } else {
                self.flash_count[OpType::I as usize] as f32 * 100.0
                    / self.instr_count[OpName::JALR as usize] as f32
            },
        )?;
        writeln!(f, "Hazard stall count: {}", self.hazard_stall_count)?;
        writeln!(
            f,
            "Should complete for 50MHz clock in: {} s",
            self.cycle_count as f32 / 50_000_000.0
        )?;

        Ok(())
    }
}

impl SimulationContext {
    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.program = program;
        // appararently we separate memory for program and data??
        // let mut pc = 0;
        // for line in self.program.iter() {
        //     for byte in line.to_le_bytes() {
        //         self.memory.m[pc] = byte;
        //         pc += 1;
        //     }
        // }
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
        self.ctx.current.regs[3] = (self.config.memory_size >> 2).try_into().unwrap();
        self.ctx.stat.gp_init = self.ctx.current.regs[3] as usize;
        self.ctx.stat.max_gp = self.ctx.stat.gp_init;
    }

    pub fn with_config(config: SimulationConfig) -> Self {
        let ctx = SimulationContext {
            memory: Memory::new(
                config.memory_size,
                &config.cache_size,
                &config.cache_ways,
                &config.cache_rp,
            ),
            ..SimulationContext::default()
        };

        Self { ctx, config }
    }

    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.ctx = self.ctx.load_program(program);
        self
    }

    pub fn log_eutils(&self) {
        println!("========= Profiler ===========");
        println!("==== Counter =====");

        for (&raw, &count) in self.ctx.e.counter.iter() {
            let placeholder = raw.to_string();
            let label = self
                .config
                .parsing_ctx
                .label_map
                .get_label(raw)
                .unwrap_or(&placeholder);

            println!("{}: {}", label, count);
        }

        println!("==== Timer =====");
        println!(
            "{0: <12} {1: <12} {2: <12} {3: <12} {4: <12} {5: <12}",
            "LABEL", "NCALLS", "TOTAL CYCLES", "AVG CYCLES", "MAX CYCLES", "MIN CYCLES"
        );
        for (&raw, timer) in self.ctx.e.timer.iter() {
            let placeholder = raw.to_string();
            let label = self
                .config
                .parsing_ctx
                .label_map
                .get_label(raw)
                .unwrap_or(&placeholder);

            let avg = if timer.count == 0 {
                0
            } else {
                timer.sum_for_avg / timer.count
            };

            println!(
                "{:<12} {:<12} {:<12} {:<12} {:<12} {:<12}",
                label, timer.count, timer.real_sum, avg, timer.max, timer.min
            );
        }
        println!("=============================");
    }

    pub fn log_registers(&self) {
        println!("{:?}", self.ctx.current.regs);
    }

    pub fn log_statistics(&self) {
        println!("{}", self.ctx.stat);
        println!("{}", self.ctx.memory.cacheception);
    }
}

pub struct SimulationConfig {
    pub verbose: bool,
    pub interactive: bool,

    pub memory_size: usize,
    pub cache_size: Vec<usize>,
    pub cache_ways: Vec<usize>,
    pub cache_rp: Vec<RP>,

    pub bp_enabled: bool,

    pub program: Vec<Op>,
    pub parsing_ctx: ParsingContext,

    pub in_reader: BufReader<Box<dyn Read>>,
    pub out_writer: BufWriter<Box<dyn Write>>,
}

impl Default for SimulationConfig {
    fn default() -> Self {
        Self {
            verbose: false,
            interactive: false,
            memory_size: 65536,
            cache_size: vec![],
            cache_ways: vec![],
            cache_rp: vec![],
            program: vec![],
            parsing_ctx: ParsingContext::default(),
            bp_enabled: false,
            in_reader: BufReader::new(Box::new(stdin().lock())),
            out_writer: BufWriter::new(Box::new(stdout().lock())),
        }
    }
}

impl SimulationConfig {
    pub fn branch_prediction(mut self, bp_enabled: bool) -> Self {
        self.bp_enabled = bp_enabled;
        self
    }

    pub fn verbose(mut self, verbose: bool) -> Self {
        self.verbose = verbose;
        self
    }

    pub fn load_decoded_program(mut self, program: Vec<Op>) -> Self {
        self.program = program;
        self
    }

    pub fn parsing_context(mut self, parsing_context: ParsingContext) -> Self {
        self.parsing_ctx = parsing_context;
        self
    }

    pub fn interactive(mut self, interactive: bool) -> Self {
        self.interactive = interactive;
        self.verbose = !interactive || self.verbose;
        self.in_reader = BufReader::new(Box::new(std::fs::File::open("/dev/null").unwrap()));
        self
    }

    pub fn memory_size(mut self, memory_size: usize) -> Self {
        self.memory_size = memory_size;
        self
    }

    pub fn cache(
        mut self,
        cache_size: Vec<usize>,
        cache_ways: Vec<usize>,
        cache_rp: Vec<RP>,
    ) -> Self {
        self.cache_size = cache_size;
        self.cache_ways = cache_ways;
        self.cache_rp = cache_rp;
        self
    }

    pub fn file_in(mut self, file_path: Option<String>) -> Self {
        if let Some(file_path) = file_path {
            let file = OpenOptions::new()
                .read(true)
                .open(file_path)
                .expect("Failed to open file");

            self.in_reader = BufReader::new(Box::new(file));
        }
        self
    }

    pub fn file_out(mut self, file_path: Option<String>) -> Self {
        if let Some(file_path) = file_path {
            let file = OpenOptions::new()
                .write(true)
                .create(true)
                .truncate(true)
                .open(file_path)
                .expect("Failed to open file");

            self.out_writer = BufWriter::new(Box::new(file));
        }
        self
    }
}
