use std::{
    fs::OpenOptions,
    io::{stdin, stdout, BufRead, BufReader, BufWriter, Read, Write},
    path::PathBuf,
    time::Duration,
};

use clap::{Parser, Subcommand};
use qcpu_simulator::v4::SimulatorV4Builder;

/// QCPU Utility
#[derive(Parser, Debug)]
#[command(version, about, long_about = None)]
struct Cmd {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Debug, Subcommand)]
enum Commands {
    /// A subcommand for assembling RISC-V assembly code to machine code (original ISA)
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

    /// Parse input into a convenient binary
    Conv {
        #[arg(short, long)]
        input: Option<String>,

        #[arg(short, long)]
        output: Option<String>,
    },

    Sim {
        /// The input file in machine code
        #[arg(short, long)]
        bin: Option<String>,

        /// The input file in assembly (This will override the bin)
        #[arg(short, long)]
        source: Option<String>,

        #[clap(short, long)]
        output: Option<String>,

        #[clap(short, long)]
        input: Option<String>,

        /// Verbose mode
        #[clap(short, long, default_value = "false")]
        verbose: bool,

        /// Clock (MHz)
        #[clap(long, default_value = "120")]
        clock: f64,

        /// Cache line
        #[clap(long)]
        cache_line: Option<usize>,

        /// Cache miss penalty
        #[clap(long)]
        cache_miss_penalty: Option<u64>,
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

fn main() -> Result<(), Box<dyn std::error::Error>> {
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

            let code = match qcpu_assembler::v2::assemble(&input, verbose) {
                Ok((code, _)) => code,
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
        Commands::Sim {
            mut bin,
            source,
            input,
            output,
            verbose,
            clock,
            cache_line,
            cache_miss_penalty,
        } => {
            let s = std::time::Instant::now();

            if let Some(source) = source {
                let asm = std::fs::read_to_string(source).unwrap();

                let (mc, _) = qcpu_assembler::v2::assemble(&asm, false).unwrap();
                let tmp_dir = std::env::temp_dir().join("qcpu");

                if !tmp_dir.exists() {
                    std::fs::create_dir(&tmp_dir).unwrap();
                }

                let path = tmp_dir.join("tmp.bin");

                let mut output_file = std::fs::File::options()
                    .create(true)
                    .write(true)
                    .truncate(true)
                    .open(&path)
                    .unwrap();

                let mut writer = std::io::BufWriter::new(&mut output_file);

                for mc in mc {
                    writer.write_all(&mc.to_le_bytes()).unwrap();
                }

                bin = Some(path.to_str().unwrap().to_string());
            }

            if bin.is_none() {
                eprintln!("No input file provided");
                std::process::exit(1);
            }

            let mut sim = (SimulatorV4Builder {
                bin: bin.unwrap(),
                input,
                output,
                verbose,
                cache_line,
                cache_miss_penalty,
            })
            .build();
            let e = s.elapsed();

            if let Err(e) = sim.run() {
                eprintln!("Simulation Result: {:?}", e);
            }
            let e2 = s.elapsed();

            sim.log_registers();

            if verbose {
                sim.log_stat();

                let total_time_us = sim.stat.cycle_count as f64 / clock;

                let cache_miss = sim.memory.stat.read - sim.memory.stat.hit;

                let hazard_time_with_cache_hit = sim.stat.hazard_count as f64 * cache_miss as f64
                    / sim.memory.stat.read as f64
                    * 2.0
                    / clock;

                let cache_miss_time_us =
                    cache_miss as f64 * cache_miss_penalty.unwrap_or(55) as f64 / clock;

                let cache_write_miss = sim.memory.stat.write - sim.memory.stat.non_miss_write_back;

                let cache_write_miss_time_us =
                    cache_write_miss as f64 * cache_miss_penalty.unwrap_or(55) as f64 / clock;

                let jalr_flush_time_us = sim.bp.flush_count_jalr as f64 * 2.0 / clock;

                let branch_flush_time_us = sim.bp.flush_count_branch as f64 * 2.0 / clock;

                let total_time = Duration::from_micros(total_time_us as u64);
                let hazard_time = Duration::from_micros(hazard_time_with_cache_hit as u64);
                let cache_miss_time = Duration::from_micros(cache_miss_time_us as u64);
                let cache_write_miss_time = Duration::from_micros(cache_write_miss_time_us as u64);
                let jalr_flush_time = Duration::from_micros(jalr_flush_time_us as u64);
                let branch_flush_time = Duration::from_micros(branch_flush_time_us as u64);

                println!();
                println!("Time optimization info:");
                println!(
                    "Should complete in: {:?} for a clock of {} MHz",
                    total_time, clock
                );
                println!(
                    "Hazard time with cache hit: {:?} ({:.02}%)",
                    hazard_time,
                    hazard_time_with_cache_hit / total_time_us * 100.0
                );
                println!(
                    "Cache miss time: read: {:?} ({:.02}%), write: {:?} ({:.02}%)",
                    cache_miss_time,
                    cache_miss_time_us / total_time_us * 100.0,
                    cache_write_miss_time,
                    cache_write_miss_time_us / total_time_us * 100.0
                );
                println!(
                    "JALR flush time: {:?} ({:.02}%)",
                    jalr_flush_time,
                    jalr_flush_time_us / total_time_us * 100.0
                );
                println!(
                    "Branch flush time: {:?} ({:.02}%)",
                    branch_flush_time,
                    branch_flush_time_us / total_time_us * 100.0
                );
            }
            println!("Loaded in: {:?}", e);
            println!("Simulated in: {:?}", e2);
        }
    }
    Ok(())
}
