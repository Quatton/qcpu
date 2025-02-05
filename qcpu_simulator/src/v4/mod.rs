use std::{
    fs::File,
    io::{BufReader, BufWriter, Read},
};

pub struct SimulatorV4Builder {
    pub input: String,
    pub output: String,
    pub bin: String,
}

impl SimulatorV4Builder {
    pub fn new(input: String, output: String, bin: String) -> Self {
        Self { input, output, bin }
    }
    pub fn build(self) -> SimulatorV4 {
        let mut program_unchunked = Vec::<u8>::with_capacity(131072);
        File::open(self.bin)
            .unwrap()
            .read_to_end(&mut program_unchunked)
            .unwrap();
        let program = program_unchunked
            .chunks_exact(4)
            .map(|c| u32::from_le_bytes(unsafe { *(c.as_ptr() as *const [_; 4]) }))
            .collect();

        let input_target = File::options().read(true).open(self.input).unwrap();
        let output_target = File::options()
            .write(true)
            .create(true)
            .truncate(true)
            .open(self.output)
            .unwrap();

        let input = BufReader::new(input_target);
        let output = BufWriter::new(output_target);

        SimulatorV4 {
            program,
            input,
            output,
        }
    }
}

pub struct SimulatorV4Context {}

pub struct SimulatorV4 {
    pub program: Vec<u32>,
    pub input: BufReader<File>,
    pub output: BufWriter<File>,
}

impl SimulatorV4 {
    pub fn run(&self) {
        for p in self.program.iter() {
            println!("{p}")
        }
        println!("size: {}", self.program.len())
    }
}
