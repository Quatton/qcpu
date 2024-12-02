use std::{
    collections::{HashMap, VecDeque},
    fmt::Display,
    fs::OpenOptions,
    io::{BufReader, BufWriter, Read, Write},
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
use strum_macros::{EnumString, FromRepr};

use super::memory::Memory;

#[derive(Clone)]
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

#[derive(Default)]
pub struct SimulationContext {
    pub current: Snapshot,
    pub snapshots: Vec<Snapshot>,
    pub program: Vec<u32>,
    pub memory: Memory,

    pub sc: HashMap<usize, i8>,
    pub stat: Stat,

    pub e: EUtils,
}

#[derive(Default)]
pub struct Stat {
    pub instr_count: HashMap<OpName, usize>,
    pub cycle_count: usize,
    pub flash_count: HashMap<OpType, usize>,
    pub branch_prediction_stats: HashMap<usize, usize>,
    pub hazard_stall_count: usize,
    pub max_sp: usize,
    pub sp_init: usize,
}

#[derive(Default, FromRepr, EnumString, Clone, PartialEq, Eq, Debug, VariantArray, Copy)]
#[strum(serialize_all = "lowercase")]
pub enum BranchPredictionStrategy {
    #[default]
    Ant,
    At,
    Bm,
}

impl Display for BranchPredictionStrategy {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            BranchPredictionStrategy::Ant => write!(f, "Always not taken"),
            BranchPredictionStrategy::At => write!(f, "Always taken"),
            BranchPredictionStrategy::Bm => write!(f, "Bimodal"),
        }
    }
}

impl Display for Stat {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let b_count: usize = self
            .instr_count
            .iter()
            .filter_map(|(k, v)| if k.optype == OpType::B { Some(v) } else { None })
            .sum();
        let instr_count = self
            .instr_count
            .iter()
            .fold(0, |acc, (_, count)| acc + count);

        writeln!(f, "Statistics:")?;
        writeln!(f, "Max SP incr: {}", self.max_sp - self.sp_init)?;
        writeln!(f, "Instruction count (times, not cycle): {}", instr_count)?;
        let mut cur = None;
        let mut csum = 0;
        let mut iccp = self.instr_count.iter().collect::<Vec<_>>();
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
            "Branch Prediction Miss: out of {} B instructions",
            b_count,
        )?;
        for (&bp, &count) in self.branch_prediction_stats.iter() {
            let bp = BranchPredictionStrategy::from_repr(bp).unwrap();

            writeln!(
                f,
                "   {}: {} ({:.2}%)",
                bp,
                count,
                count as f32 / b_count as f32 * 100.0
            )?;
        }
        writeln!(
            f,
            "Flash count for JALR: {} out of {} instructions ({}%)",
            self.flash_count.get(&OpType::I).unwrap_or(&0),
            instr_count,
            if self.instr_count.get(&OpName::JALR).unwrap_or(&0) == &0 {
                0
            } else {
                self.flash_count.get(&OpType::I).unwrap_or(&0) * 100 / instr_count
            },
        )?;
        writeln!(f, "Hazard stall count: {}", self.hazard_stall_count)?;

        Ok(())
    }
}

impl SimulationContext {
    pub fn load_program(mut self, program: Vec<u32>) -> Self {
        self.program = program;
        let mut pc = 0;
        for line in self.program.iter() {
            for byte in line.to_le_bytes() {
                self.memory.m[pc] = byte;
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
        self.ctx.stat.sp_init = self.ctx.current.regs[2] as usize;
        self.ctx.current.regs[3] = ((self.config.memory_size >> 1)
            + (self.config.memory_size >> 2))
            .try_into()
            .unwrap();
    }

    pub fn with_config(config: SimulationConfig) -> Self {
        let ctx = SimulationContext {
            memory: Memory::new(config.memory_size, &config.cache_size),
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

    pub branch_prediction: Vec<BranchPredictionStrategy>,

    pub parsing_ctx: ParsingContext,

    pub decode_cache: HashMap<u32, Op>,
    pub fetch_cache: HashMap<usize, u32>,

    pub in_buffer: BufReader<Box<dyn Read>>,
    pub out_buffer: BufWriter<Box<dyn Write>>,
}

pub fn make_cache(mcs: Vec<u32>, ops: Vec<Op>) -> HashMap<u32, Op> {
    mcs.into_iter().zip(ops).collect()
}

impl Default for SimulationConfig {
    fn default() -> Self {
        Self {
            verbose: false,
            interactive: false,
            memory_size: 65536,
            cache_size: vec![],
            parsing_ctx: ParsingContext::default(),
            branch_prediction: vec![],
            decode_cache: HashMap::new(),
            fetch_cache: HashMap::new(),
            in_buffer: BufReader::new(Box::new(std::io::stdin().lock())),
            out_buffer: BufWriter::new(Box::new(std::io::stdout().lock())),
        }
    }
}

impl SimulationConfig {
    pub fn branch_prediction(mut self, strategy: Vec<BranchPredictionStrategy>) -> Self {
        self.branch_prediction = strategy;
        self
    }

    pub fn verbose(mut self, verbose: bool) -> Self {
        self.verbose = verbose;
        self
    }

    pub fn parsing_context(mut self, parsing_context: ParsingContext) -> Self {
        self.parsing_ctx = parsing_context;
        self
    }

    pub fn load_cache(mut self, cache: HashMap<u32, Op>) -> Self {
        self.decode_cache = cache;
        self
    }

    pub fn interactive(mut self, interactive: bool) -> Self {
        self.interactive = interactive;
        self.verbose = !interactive || self.verbose;
        self.in_buffer = BufReader::new(Box::new(std::fs::File::open("/dev/null").unwrap()));
        self
    }

    pub fn memory_size(mut self, memory_size: usize) -> Self {
        self.memory_size = memory_size;
        self
    }

    pub fn cache_size(mut self, cache_size: Vec<usize>) -> Self {
        self.cache_size = cache_size;
        self
    }

    pub fn file_in(mut self, file_path: Option<String>) -> Self {
        if let Some(file_path) = file_path {
            let file = OpenOptions::new()
                .read(true)
                .open(file_path)
                .expect("Failed to open file");

            self.in_buffer = BufReader::new(Box::new(file));
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

            self.out_buffer = BufWriter::new(Box::new(file));
        }
        self
    }
}
