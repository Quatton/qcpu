mod ppm;

use std::{
    fs::OpenOptions,
    io::{stdin, stdout, BufRead, BufReader, BufWriter, Read, Write},
    path::PathBuf,
    time::Duration,
};

use clap::{Parser, Subcommand};
use qcpu_simulator::v4::{SimulatorV4Builder, CACHE_MISS_PENALTY};
use qcpu_syntax::ParsingContext;

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
        #[clap(long, default_value = "122.22")]
        clock: f64,
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

            sim.log_registers();

            if verbose {
                sim.log_stat();

                let total_time_us = sim.stat.cycle_count as f64 / clock;

                let cache_miss = sim.memory.stat.read - sim.memory.stat.hit;

                let hazard_time_with_cache_hit = sim.stat.hazard_count as f64 * cache_miss as f64
                    / sim.memory.stat.read as f64
                    * 2.0
                    / clock;

                let cache_miss_time_us = cache_miss as f64 * CACHE_MISS_PENALTY as f64 / clock;

                let cache_write_miss = sim.memory.stat.write - sim.memory.stat.non_miss_write_back;

                let cache_write_miss_time_us =
                    cache_write_miss as f64 * CACHE_MISS_PENALTY as f64 / clock;

                let jalr_flush_time_us = sim.bp.flush_count_jalr as f64 * 2.0 / clock;

                let branch_flush_time_us = sim.bp.flush_count_branch as f64 * 2.0 / clock;

                let total_time = Duration::from_micros(total_time_us as u64);
                let hazard_time = Duration::from_micros(hazard_time_with_cache_hit as u64);
                let cache_miss_time = Duration::from_micros(cache_miss_time_us as u64);
                let cache_write_miss_time = Duration::from_micros(cache_write_miss_time_us as u64);
                let jalr_flush_time = Duration::from_micros(jalr_flush_time_us as u64);
                let branch_flush_time = Duration::from_micros(branch_flush_time_us as u64);

                sim.log.write_fmt(
                    format_args!(
                        "Time optimization info:\nShould complete in: {:?} for a clock of {} MHz\nHazard time with cache hit: {:?} ({:.02}%)\nCache miss time: read: {:?} ({:.02}%), write: {:?} ({:.02}%)\nJALR flush time: {:?} ({:.02}%)\nBranch flush time: {:?} ({:.02}%)\n",
                        total_time,
                        clock,
                        hazard_time,
                        hazard_time_with_cache_hit / total_time_us * 100.0,
                        cache_miss_time,
                        cache_miss_time_us / total_time_us * 100.0,
                        cache_write_miss_time,
                        cache_write_miss_time_us / total_time_us * 100.0,
                        jalr_flush_time,
                        jalr_flush_time_us / total_time_us * 100.0,
                        branch_flush_time,
                        branch_flush_time_us / total_time_us * 100.0,
                    )
                ).unwrap();
            }

            sim.log
                .write_fmt(format_args!("Loaded in: {:?}\nSimulated in: {:?}\n", e, e2))
                .unwrap();

            #[cfg(feature = "lw")]
            {
                let mut instat_vec: Vec<_> = sim
                    .instat
                    .iter()
                    .enumerate()
                    .filter(|(_, s)| s.read > 0 && s.hit < s.read)
                    .map(|(i, s)| {
                        let miss = s.read - s.hit;
                        let miss_rate = miss as f64 / s.read as f64;
                        (i, s, miss, miss_rate)
                    })
                    .collect();

                instat_vec.sort_by(|a, b| b.2.cmp(&a.2).then(b.3.partial_cmp(&a.3).unwrap()));

                sim.log
                    .write_fmt(format_args!("\nPer-instruction Stat\n"))
                    .unwrap();

                if ctx.is_some() {
                    sim.log.write_fmt(format_args!(
                        "{:4} {:32} {:12} {:12} {:4}\n",
                        "PC", "Label", "Total Read", "Cache Miss", "Miss Rate",
                    ))?;
                } else {
                    sim.log.write_fmt(format_args!(
                        "{:4} {:12} {:12} {:4}\n",
                        "PC", "Cache Hit", "Cache Miss", "Miss Rate",
                    ))?;
                }

                for (i, s, _miss, miss_rate) in instat_vec {
                    if miss_rate > 0.01 {
                        match ctx {
                            Some(ref ctx) => {
                                sim.log.write_fmt(format_args!(
                                    "{:02} {:32} {:12} {:12} {:.02}%\n",
                                    i,
                                    reverse_lookup_floor(i, ctx),
                                    s.read,
                                    s.read - s.hit,
                                    miss_rate * 100.0,
                                ))?;
                            }
                            None => {
                                sim.log.write_fmt(format_args!(
                                    "{:02}: {:12} {:12} {:.02}%\n",
                                    i,
                                    s.read,
                                    s.read - s.hit,
                                    miss_rate * 100.0,
                                ))?;
                            }
                        }
                    }
                }
            }

            println!("Output written to: {:?}", sim.output_file);
            println!("Log written to: {:?}", sim.log_file);
        }
    }
    Ok(())
}

/// A utility to reverse lookup the maximum label that has index just before the i so like a floor function
fn reverse_lookup_floor(i: usize, ctx: &ParsingContext) -> &str {
    let mut entries: Vec<_> = ctx.label_map.0.iter().collect();
    entries.sort_by_key(|(_, &idx)| idx);

    match entries.binary_search_by(|(_, &idx)| {
        if idx <= i {
            std::cmp::Ordering::Less
        } else {
            std::cmp::Ordering::Greater
        }
    }) {
        Ok(idx) => entries[idx].0,
        Err(idx) if idx > 0 => entries[idx - 1].0,
        _ => "",
    }
}
