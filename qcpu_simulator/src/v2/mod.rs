use std::ops::Range;

use context::Simulator;
use qcpu_syntax::v2::op::Op;

pub mod context;
pub mod execute;

impl Simulator {
    fn fetch(&self) -> (u32, usize) {
        let mut pc = self.ctx.pc;
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

            self.ctx.regs[rd] = data;
        }
    }

    pub fn run_once(&mut self) {
        let (instr, next_pc) = self.fetch();
        self.ctx.next_pc = next_pc;

        let op = self.decode(instr);
        let (rd_res, next_pc_true, wm) = self.execute(&op);

        self.memory_access(wm);
        self.write_back(rd_res.map(|data| (op.rd as usize, data)));

        self.ctx.next_pc = next_pc_true;
    }

    pub fn run(&mut self) -> Result<(), String> {
        loop {
            self.run_once();
            self.ctx.pc = self.ctx.next_pc;
            if self.ctx.pc >= self.ctx.memory.len().min(self.ctx.program.len() * 4) {
                println!("Program finished");
                break;
            }
        }

        Ok(())
    }
}
