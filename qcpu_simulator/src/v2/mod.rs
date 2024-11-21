use std::ops::Range;

use context::Simulator;
use qcpu_syntax::v2::{
    op::Op,
    syntax::{OpName, OpType},
};

pub mod context;
pub mod execute;

impl Simulator {
    fn fetch(&mut self) -> u32 {
        let mut pc = self.ctx.current.pc;

        // if let Some(instr) = self.config.fetch_cache.get(&pc) {
        //     return *instr;
        // }

        let mut instr = 0u32;
        for i in 0..4 {
            instr |= (self.ctx.memory[pc] as u32) << (i * 8); // little fucking endian
            pc += 1;
        }

        // self.config.fetch_cache.insert(pc, instr);

        instr
    }

    fn decode(&mut self, mc: u32) -> Op {
        if let Some(op) = self.config.decode_cache.get(&mc) {
            return op.clone();
        }

        let op = Op::decode(mc);

        self.config.decode_cache.insert(mc, op.clone());

        op
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
        let instr = self.fetch();

        let op = self.decode(instr);

        let next_pc_predicted = self.ctx.current.pc.wrapping_add(4);

        self.ctx.current.next_pc = next_pc_predicted;

        if op.o == OpName::EBREAK {
            self.ctx.snapshots.push(self.ctx.current.clone());
            return;
        }

        self.ctx.stat.cycle_count += 1;
        self.ctx.current.reg_status.iter_mut().for_each(|d| {
            if d == &0 {
                *d = 0
            } else {
                *d = d.saturating_sub(1)
            }
        });

        // might be zero anyway so we don't need to check
        self.ctx.stat.hazard_stall_count += self.ctx.current.reg_status[op.rs1 as usize]
            .max(self.ctx.current.reg_status[op.rs2 as usize]);

        self.ctx.current.op = op.clone();

        let (rd_res, next_pc_true, wm) = self.execute();

        self.ctx
            .stat
            .instr_count
            .entry(op.o.optype)
            .and_modify(|count| *count += 1)
            .or_insert(1);

        if rd_res.is_some() {
            self.ctx.current.reg_status[op.rd as usize] = self.get_instruction_delay(op.o);
        }

        if next_pc_predicted != next_pc_true && op.o.optype == OpType::B {
            self.ctx.stat.flash_count += 1;
        }

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

    pub fn get_instruction_delay(&self, op: OpName) -> usize {
        match op.optype {
            OpType::R | OpType::I | OpType::U | OpType::J => 1,
            OpType::L => 2,
            OpType::N => 1,
            OpType::F => 1,
            OpType::Raw | OpType::S | OpType::O | OpType::B | OpType::E => 0,
        }
    }
}
