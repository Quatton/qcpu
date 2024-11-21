use std::ops::Range;

use context::Simulator;
use qcpu_syntax::v2::{op::Op, syntax::OpName};

pub mod context;
pub mod execute;

impl Simulator {
    fn fetch(&self) -> (u32, usize) {
        let mut pc = self.ctx.current.pc;
        let mut instr = 0u32;
        for i in 0..4 {
            instr |= (self.ctx.memory[pc] as u32) << (i * 8); // little fucking endian
            pc += 1;
        }

        (instr, pc)
    }

    fn decode(&self, mc: u32) -> Op {
        Op::decode(mc)
    }

    fn memory_access(&mut self, req: Option<(Range<usize>, u32)>) {
        if let Some((range, data)) = req {
            for (i, byte) in data.to_le_bytes().iter().enumerate() {
                self.ctx.memory[range.start + i] = *byte;
            }
        }
    }

    fn write_back(&mut self, result: Option<(usize, u32)>) {
        if let Some((rd, data)) = result {
            if rd == 0 {
                return;
            }

            self.ctx.current.regs[rd] = data;
        }
    }

    pub fn run_once(&mut self) {
        let (instr, next_pc) = self.fetch();

        let op = self.decode(instr);

        self.ctx.current.next_pc = next_pc;

        if op.o == OpName::EBREAK {
            self.ctx.snapshots.push(self.ctx.current.clone());
            return;
        }

        self.ctx.current.op = op.clone();

        let (rd_res, next_pc_true, wm) = self.execute();

        self.memory_access(wm);
        self.write_back(rd_res.map(|data| (op.rd as usize, data)));

        self.ctx.current.next_pc = next_pc_true;
    }

    pub fn run(&mut self) {
        loop {
            self.run_once();
            self.ctx.current.pc = self.ctx.current.next_pc;
            if self.ctx.current.pc >= self.ctx.memory.len().min(self.ctx.program.len() * 4) {
                println!("Program finished");
                break;
            }
        }
    }
}
