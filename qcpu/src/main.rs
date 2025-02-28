mod ppm;

use std::{
    fs::OpenOptions,
    io::{stdin, stdout, BufRead, BufReader, BufWriter, Read, Write},
    path::PathBuf,
};

use clap::{Parser, Subcommand};
use qcpu_simulator::v4::{
    log::{CACHE_HIT_PENALTY, CACHE_MISS_PENALTY, INW_DELAY},
    SimulatorV4Builder,
};

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
        bin: Option<PathBuf>,

        /// The input file in assembly (This will override the bin)
        #[arg(short, long)]
        source: Option<PathBuf>,

        #[clap(short, long)]
        output: Option<PathBuf>,

        #[clap(short, long)]
        input: Option<PathBuf>,

        #[clap(short, long)]
        log: Option<PathBuf>,

        /// Verbose mode
        #[clap(short, long, default_value = "false")]
        verbose: bool,

        /// Clock (MHz)
        #[clap(long, default_value = "125")]
        clock: f64,

        /// JSON
        #[clap(long)]
        json: Option<PathBuf>,
    },

    Diff {
        /// The first input file
        #[clap(short = 's', long)]
        file1: PathBuf,

        /// The second input file
        #[clap(short = 't', long)]
        file2: PathBuf,

        /// The output file
        #[arg(short, long)]
        output: Option<PathBuf>,
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
        Commands::Diff {
            file1,
            file2,
            output,
        } => {
            let ppm1 = ppm::PPMImage::from_base_on_extension(&file1);
            let ppm2 = ppm::PPMImage::from_base_on_extension(&file2);

            let diff = ppm1.diff(&ppm2).contrast(0, 0xff);

            diff.export(&output.unwrap_or_else(|| {
                file1.with_file_name(format!(
                    "{}.diff.ppm",
                    file1.file_stem().unwrap().to_string_lossy()
                ))
            }));

            let file = OpenOptions::new()
                .create(true)
                .write(true)
                .truncate(true)
                .open(file1.with_extension("diff"))
                .unwrap();

            let mut writer = BufWriter::new(file);

            for (i, (p1, p2)) in ppm1
                .image
                .chunks_exact(3)
                .zip(ppm2.image.chunks_exact(3))
                .enumerate()
            {
                if p1 != p2 {
                    writer.write_fmt(format_args!("Pixel {}: {:?} != {:?}\n", i, p1, p2))?;
                }
            }
        }
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
            log,
            json,
        } => {
            let s = std::time::Instant::now();

            let mut ctx = None;
            if let Some(source) = source {
                let asm = std::fs::read_to_string(&source).unwrap();

                let (mc, _ctx) = qcpu_assembler::v2::assemble(&asm, false).unwrap();

                ctx = Some(_ctx);

                let path = source.with_extension("bin");

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

                bin = Some(path);
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
                log,
            })
            .build();

            let e = s.elapsed();
            if let Err(e) = sim.run() {
                eprintln!("Simulation Result: {:?}", e);
            }
            let e2 = s.elapsed();

            sim.tally();
            sim.log_registers();

            sim.log.write_fmt(format_args!(
                "Loaded in: {:?}\nSimulated in: {:?}\n\n",
                e, e2
            ))?;

            println!("Loaded in: {:?}\nSimulated in: {:?}", e, e2);

            if verbose {
                sim.log_stat()?;
                sim.time_optimize_info(clock)?;

                sim.process_stat(ctx.as_ref())?;

                #[cfg(feature = "conflict_pair")]
                sim.process_memory_conflict_pc(ctx.as_ref())?;

                if let Some(json) = json {
                    let mut file = std::fs::File::options()
                        .create(true)
                        .write(true)
                        .truncate(true)
                        .open(json)
                        .unwrap();

                    let mut writer = std::io::BufWriter::new(&mut file);

                    let json = JsonOutput {
                        data: sim.per_instruction_stat.clone(),
                        label: ctx.as_ref().map(|c| c.label_map.0.clone()),
                        program: sim.instructions.clone(),
                        memory: sim.memory.stat,
                        stat: sim.stat,
                        const_: Constants {
                            clock_mhz: clock as u64,
                            cache_hit_penalty: CACHE_HIT_PENALTY,
                            cache_miss_penalty: CACHE_MISS_PENALTY,
                            inw_delay: INW_DELAY,
                        },
                    };

                    serde_json::to_writer_pretty(&mut writer, &json)?;
                }
            }

            println!("Output written to: {:?}", sim.output_file);
            println!("Log written to: {:?}", sim.log_file);
        }
    }
    Ok(())
}

#[derive(Debug, serde::Serialize)]
struct JsonOutput {
    const_: Constants,
    stat: qcpu_simulator::v4::stat::Statistics,
    memory: qcpu_simulator::v4::memory::CacheStat,
    data: Vec<qcpu_simulator::v4::Instat>,
    label: Option<std::collections::HashMap<String, usize>>,
    program: Vec<qcpu_simulator::v4::syntax::OpV4>,
}

#[derive(Debug, serde::Serialize)]
struct Constants {
    clock_mhz: u64,
    cache_hit_penalty: u64,
    cache_miss_penalty: u64,
    inw_delay: u64,
}
