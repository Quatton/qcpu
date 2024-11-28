use std::{
    fs::OpenOptions,
    io::{stdin, stdout, BufRead, BufReader, BufWriter, Read, Write},
    path::PathBuf,
};

use clap::{Parser, Subcommand};
use qcpu_assembler::{from_machine_code, parse_tree, to_assembly};
use qcpu_simulator::v2::context::BranchPredictionStrategy;
use qcpu_syntax::parser::{Op, ParsingContext};
use qcpu_tui::app::App;

/// QCPU Utility
#[derive(Parser, Debug)]
#[command(version, about, long_about = None)]
struct Cmd {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Debug, Subcommand)]
enum Commands {
    /// A subcommand for assembling RISC-V assembly code to machine code
    Asm {
        /// The input file
        #[arg(short, long)]
        source: PathBuf,
        /// The output file
        #[arg(short, long)]
        output: Option<String>,
        /// Verbose mode
        #[arg(short, long, default_value = "false")]
        verbose: bool,
        /// Readable output
        #[arg(long, default_value = "false")]
        readable: bool,
    },

    /// A subcommand for assembling RISC-V assembly code to machine code (original ISA)
    Asmv2 {
        /// The input file
        #[arg(short, long)]
        source: PathBuf,
        /// The output file
        #[arg(short, long)]
        output: Option<String>,
        /// Verbose mode
        #[arg(short, long, default_value = "false")]
        verbose: bool,
        /// Readable output
        #[arg(long, default_value = "false")]
        readable: bool,
    },

    /// A subcommand for disassembling machine code to RISC-V assembly code
    Disasm {
        /// The input file
        #[arg(short, long)]
        bin: PathBuf,
        /// The output file
        #[arg(short, long)]
        output: Option<String>,
    },

    /// A subcommand for simulating RISC-V machine code
    Sim {
        /// The input file in machine code
        #[arg(short, long)]
        bin: Option<PathBuf>,

        /// The input file in assembly (This will override the bin)
        #[arg(short, long)]
        source: Option<PathBuf>,

        /// Verbose mode
        #[arg(short, long, default_value = "false")]
        verbose: bool,

        /// Interactive mode (overrides verbose mode)
        #[arg(long, default_value = "false")]
        it: bool,

        /// Low-memory mode. You can't go back too far in the program.
        #[arg(short, long, default_value = "32")]
        low_memory: usize,

        #[arg(short, long, default_value = "1048576")]
        memory_size: usize,

        #[arg(short, long, default_value = "_min_caml_start")]
        entry_point: String,

        #[arg(short, long)]
        output: Option<String>,

        #[arg(short, long)]
        input: Option<String>,
    },

    /// A subcommand for simulating RISC-V machine code (original ISA)
    Simv2 {
        /// The input file in machine code
        #[clap(short, long)]
        bin: Option<PathBuf>,

        /// The input file in assembly (This will override the bin)
        #[clap(short, long)]
        source: Option<PathBuf>,

        /// Verbose mode
        #[clap(short, long, default_value = "false")]
        verbose: bool,

        /// Interactive mode (overrides verbose mode)
        #[clap(long, default_value = "false")]
        it: bool,

        /// Low-memory mode. You can't go back too far in the program.
        // #[arg(short, long, default_value = "32")]
        // low_memory: usize,

        #[clap(short, long, default_value = "1048576")]
        memory_size: usize,

        // #[arg(short, long, default_value = "_min_caml_start")]
        // entry_point: String,
        #[clap(short, long)]
        output: Option<String>,

        #[clap(short, long)]
        input: Option<String>,

        #[clap(long)]
        bp: Option<BranchPredictionStrategy>,

        #[clap(
            short,
            long,
            required = true,
            value_delimiter = ',',
            default_value = "256"
        )]
        cs: Vec<usize>,
    },

    /// Parse input into a convenient binary
    Conv {
        #[arg(short, long)]
        input: Option<String>,

        #[arg(short, long)]
        output: Option<String>,
    },
}

fn create_writer(path: &Option<String>) -> BufWriter<Box<dyn Write>> {
    match path {
        Some(file) => BufWriter::new(Box::new(
            OpenOptions::new()
                .create(true)
                .write(true)
                .truncate(true)
                .open(file)
                .unwrap(),
        )),
        None => BufWriter::new(Box::new(stdout().lock())),
    }
}

fn create_reader(path: &Option<String>) -> Box<dyn BufRead> {
    match path {
        Some(file) => Box::new(BufReader::new(
            OpenOptions::new().read(true).open(file).unwrap(),
        )),
        None => Box::new(BufReader::new(stdin().lock())),
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let args = Cmd::parse();

    match args.command {
        Commands::Conv { input, output } => {
            let mut reader = create_reader(&input);
            let mut writer = create_writer(&output);

            let mut bfr = String::new();

            reader.read_to_string(&mut bfr)?;

            for c in bfr.split_ascii_whitespace() {
                if let Ok(r) = c.parse::<u32>() {
                    writer.write_all(&r.to_le_bytes())?;
                    continue;
                };

                if let Ok(r) = c.parse::<i32>() {
                    writer.write_all(&r.to_le_bytes())?;
                    continue;
                };

                if let Ok(r) = c.parse::<f32>() {
                    writer.write_all(&r.to_le_bytes())?;
                    continue;
                };

                writer.write_all(c.as_bytes())?;
            }
        }
        Commands::Sim {
            bin,
            source,
            verbose,
            it,
            memory_size,
            entry_point,
            low_memory,
            output,
            input,
        } => {
            let mut ctx = ParsingContext::default().with_main_label(entry_point);
            let ops: Vec<Op> = if let Some(source) = source {
                let asm = std::fs::read_to_string(source).unwrap();

                parse_tree(&asm, &mut ctx).unwrap()
            } else if let Some(bin) = bin {
                let bytes = std::fs::read(bin).unwrap();

                let mcs = bytes
                    .chunks_exact(4)
                    .map(|x| u32::from_le_bytes([x[0], x[1], x[2], x[3]]))
                    .collect();

                from_machine_code(mcs, &mut ctx).unwrap()
            } else {
                panic!("bro come on");
            };

            let code = ops.into_iter().map(|op| op.to_machine_code(&ctx)).collect();

            if let Some(ref file) = output {
                std::fs::File::create(file).unwrap();
            };

            let mut out_writer = create_writer(&output);

            let cfg = qcpu_simulator::SimulationConfig {
                verbose: if it { false } else { verbose },
                interactive: it,
                memory_size,
                parsing_context: ctx,
                low_memory,
                output,
                input,
            };

            let mut sim = qcpu_simulator::Simulator::new()
                .config(cfg)
                .load_program(code);

            sim.init();

            let ctx = if it {
                let mut app = App::new().load_simulator(sim);
                let tui = qcpu_tui::Tui::new()?.tick_rate(1000000.0).frame_rate(30.0);

                if let Err(e) = app.run(tui).await {
                    eprintln!("Error running TUI: {}", e);
                }

                app.simulator.ctx
            } else {
                let t0 = std::time::Instant::now();
                if let Err(e) = sim.run() {
                    eprintln!("Error running simulation: {}", e);
                };
                let t1 = std::time::Instant::now();

                println!("Time elapsed: {:?}", t1 - t0);

                sim.ctx.log_registers();
                sim.ctx
            };

            println!("stdout: ");
            out_writer.write_all(ctx.out_buffer.as_slices().0)?;

            // for c in ctx.out_buffer {
            //     print!("{}", c as char);
            // }
        }
        Commands::Asm {
            source,
            output,
            verbose,
            readable,
        } => {
            let source_path = std::path::Path::new(&source);
            let dir_of_source = source_path.parent().unwrap_or(std::path::Path::new("."));
            let output_path = output.unwrap_or_else(|| {
                dir_of_source
                    .join(source_path.file_stem().unwrap())
                    .with_extension(if !readable { "bin" } else { "txt" })
                    .to_str()
                    .unwrap()
                    .to_string()
            });

            let mut input = String::new();
            if let Err(e) = std::fs::File::open(source_path)
                .and_then(|mut file| file.read_to_string(&mut input))
            {
                eprintln!("Error reading source file: {}", e);
                std::process::exit(1);
            }

            let mut ctx = ParsingContext::default();
            let code = match qcpu_assembler::parse_tree(&input, &mut ctx) {
                Ok(code) => code,
                Err(e) => {
                    eprintln!("Error parsing assembly code: {:?}", e);
                    std::process::exit(1);
                }
            };

            // code.push(qcpu_syntax::parser::Op::S(
            //     qcpu_syntax::STOp::SW,
            //     IntReg::A0,
            //     IntReg::Zero,
            //     0,
            // ));

            let mut output_file = match std::fs::File::create(&output_path) {
                Ok(file) => file,
                Err(e) => {
                    eprintln!("Error creating output file: {}", e);
                    std::process::exit(1);
                }
            };

            let mut writer = std::io::BufWriter::new(&mut output_file);

            for op in code {
                let mc = op.to_machine_code(&ctx);
                if verbose {
                    println!("{:?} {:b}", op, mc);
                }
                let formatted;
                let res = if readable {
                    formatted = format!("{:032b}\n", mc);
                    formatted.as_bytes()
                } else {
                    &mc.to_le_bytes()
                };
                if let Err(e) = writer.write_all(res) {
                    eprintln!("Error writing to output file: {}", e);
                    std::process::exit(1);
                }
            }
            println!("Done!");
        }
        Commands::Disasm {
            bin: source,
            output,
        } => {
            let source_path = std::path::Path::new(&source);
            let dir_of_source = source_path.parent().unwrap_or(std::path::Path::new("."));
            let output_path = output.unwrap_or_else(|| {
                dir_of_source
                    .join(source_path.file_stem().unwrap())
                    .with_extension("s")
                    .to_str()
                    .unwrap()
                    .to_string()
            });

            let bytes = std::fs::read(source_path).unwrap();

            let mcs: Vec<u32> = bytes
                .chunks_exact(4)
                .map(|x| u32::from_le_bytes([x[0], x[1], x[2], x[3]]))
                .collect();

            let mut ctx = ParsingContext::default();
            let ops = from_machine_code(mcs, &mut ctx).unwrap();
            let asm = to_assembly(ops);

            let mut output_file = OpenOptions::new()
                .create(true)
                .truncate(true)
                .write(true)
                .open(output_path)
                .unwrap();

            let mut writer = std::io::BufWriter::new(&mut output_file);

            writer.write_all(asm.as_bytes()).unwrap();
        }
        Commands::Asmv2 {
            source,
            output,
            verbose,
            readable,
        } => {
            let source_path = std::path::Path::new(&source);
            let dir_of_source = source_path.parent().unwrap_or(std::path::Path::new("."));
            let output_path = output.unwrap_or_else(|| {
                dir_of_source
                    .join(source_path.file_stem().unwrap())
                    .with_extension(if !readable { "bin" } else { "txt" })
                    .to_str()
                    .unwrap()
                    .to_string()
            });

            let mut input = String::new();
            if let Err(e) = std::fs::File::open(source_path)
                .and_then(|mut file| file.read_to_string(&mut input))
            {
                eprintln!("Error reading source file: {}", e);
                std::process::exit(1);
            }

            let code = match qcpu_assembler::v2::assemble(&input, verbose) {
                Ok((code, _, _)) => code,
                Err(e) => {
                    eprintln!("Error parsing assembly code: {:?}", e);
                    std::process::exit(1);
                }
            };

            // code.push(qcpu_syntax::parser::Op::S(
            //     qcpu_syntax::STOp::SW,
            //     IntReg::A0,
            //     IntReg::Zero,
            //     0,
            // ));

            let mut output_file = match std::fs::File::create(&output_path) {
                Ok(file) => file,
                Err(e) => {
                    eprintln!("Error creating output file: {}", e);
                    std::process::exit(1);
                }
            };

            let mut writer = std::io::BufWriter::new(&mut output_file);

            for mc in code {
                if verbose {
                    println!("{:032b}", mc);
                }
                let formatted;
                let res = if readable {
                    formatted = format!("{:032b}\n", mc);
                    formatted.as_bytes()
                } else {
                    &mc.to_le_bytes()
                };
                if let Err(e) = writer.write_all(res) {
                    eprintln!("Error writing to output file: {}", e);
                    std::process::exit(1);
                }
            }
            println!("Done!");
        }
        Commands::Simv2 {
            bin,
            source,
            verbose,
            memory_size,
            output,
            input,
            it,
            bp,
            cs,
        } => {
            let mut ops = None;
            let (code, _ctx) = if let Some(source) = source {
                let asm = std::fs::read_to_string(source).unwrap();

                match qcpu_assembler::v2::assemble(&asm, it) {
                    Ok((code, ctx, o)) => {
                        ops = Some(o);
                        (code, ctx)
                    }
                    Err(e) => {
                        eprintln!("Error parsing assembly code: {:?}", e);
                        std::process::exit(1);
                    }
                }
            } else if let Some(bin) = bin {
                let bytes = std::fs::read(bin).unwrap();

                let mcs = bytes
                    .chunks_exact(4)
                    .map(|x| u32::from_le_bytes([x[0], x[1], x[2], x[3]]))
                    .collect();

                (mcs, ParsingContext::default())
            } else {
                panic!("bro come on");
            };

            if let Some(ref file) = output {
                std::fs::File::create(file).unwrap();
            };

            let cfg = qcpu_simulator::v2::context::SimulationConfig::default()
                .memory_size(memory_size)
                .branch_prediction(bp.unwrap_or_default())
                .verbose(verbose)
                .interactive(it)
                .cache_size(cs)
                .file_in(input)
                .file_out(output);

            let mut sim =
                qcpu_simulator::v2::context::Simulator::with_config(cfg).load_program(code, ops);

            sim.init();

            if it {
                let mut app = qcpu_tui::v2::app::App::new().load_simulator(sim);
                let tui = qcpu_tui::Tui::new()?.tick_rate(1000000.0).frame_rate(30.0);

                if let Err(e) = app.run(tui).await {
                    eprintln!("Error running TUI: {}", e);
                }
            } else {
                let t0 = std::time::Instant::now();
                sim.run();
                let t1 = std::time::Instant::now();

                println!("Time elapsed: {:?}", t1 - t0);
                sim.log_registers();

                if verbose {
                    sim.log_statistics();
                }
            }

            println!("========================================");
            println!("stdout: ");
        }
    }
    Ok(())
}
