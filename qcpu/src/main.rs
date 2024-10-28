use std::{
    fs::OpenOptions,
    io::{Read, Write},
    path::PathBuf,
};

use clap::{Parser, Subcommand};
use qcpu_assembler::{from_machine_code, parse_tree, to_assembly};
use qcpu_syntax::parser::{Op, ParsingContext};
use qcpu_tui::app::App;

/// QCPU Utility
#[derive(Parser, Debug)]
#[command(version, about, long_about = None)]
struct Args {
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
        #[arg(short, long, default_value = "false")]
        interactive: bool,

        #[arg(short, long, default_value = "4096")]
        memory_size: usize,
    },
}

fn main() {
    let args = Args::parse();

    match args.command {
        Commands::Sim {
            bin,
            source,
            verbose,
            interactive,
            memory_size,
        } => {
            let mut ctx = ParsingContext::default();
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

            let cfg = qcpu_simulator::SimulationConfig {
                verbose: if interactive { false } else { verbose },
                interactive,
                memory_size,
                parsing_context: ctx,
            };

            let mut sim = qcpu_simulator::Simulator::new()
                .config(cfg)
                .load_program(code);

            sim.init();
            if interactive {
                let mut app = App::new().load_simulator(sim);
                qcpu_tui::main(&mut app).unwrap();
            } else {
                sim.run().unwrap();
                sim.ctx.log_registers();
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
    }
}
