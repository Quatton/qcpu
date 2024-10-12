use std::{
    fs::OpenOptions,
    io::{Read, Write},
};

use clap::{Parser, Subcommand};
use qcpu_assembler::{from_machine_code, to_assembly};

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
        source: String,
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
        source: String,
        /// The output file
        #[arg(short, long)]
        output: Option<String>,
    },
}

fn main() {
    let args = Args::parse();

    match args.command {
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

            let code = match qcpu_assembler::parse_tree(&input) {
                Ok(code) => code,
                Err(e) => {
                    eprintln!("Error parsing assembly code: {:?}", e);
                    std::process::exit(1);
                }
            };

            let mut output_file = match std::fs::File::create(&output_path) {
                Ok(file) => file,
                Err(e) => {
                    eprintln!("Error creating output file: {}", e);
                    std::process::exit(1);
                }
            };

            let mut writer = std::io::BufWriter::new(&mut output_file);

            for op in code {
                let mc = op.to_machine_code();
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
        Commands::Disasm { source, output } => {
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

            let ops = from_machine_code(mcs).unwrap();
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
