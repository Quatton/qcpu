use bitvec::prelude::Lsb0;
use bitvec::{bits, field::BitField as _, slice::BitSlice};

use super::{
    reg::Register,
    syntax::{OpInfo, OpType},
};

pub struct Op {
    pub o: OpInfo,
    pub bits: BitSlice<u32>,
}

impl Op {
    fn i9_4(&self) -> usize {
        self.bits[4..=9].load::<usize>()
    }

    fn i12_10(&self) -> usize {
        self.bits[10..=12].load::<usize>()
    }

    fn i13_18(&self) -> usize {
        self.bits[13..=18].load::<usize>()
    }

    fn i19_24(&self) -> usize {
        self.bits[19..=24].load::<usize>()
    }

    fn i31_25(&self) -> usize {
        self.bits[25..=31].load::<usize>()
    }

    pub fn rdi(&self) -> Option<usize> {
        match self.o.optype {
            OpType::S(_) | OpType::B(_) => None,
            _ => Some(self.i9_4()),
        }
    }

    pub fn rd(&self) -> Option<Register> {
        self.rdi().map(Register::from_repr)?
    }

    pub fn rs1i(&self) -> Option<usize> {
        match self.o.optype {
            OpType::U(_) | OpType::J(_) | OpType::O(_) => None,
            _ => Some(self.i13_18()),
        }
    }

    pub fn rs1(&self) -> Option<Register> {
        self.rs1i().map(Register::from_repr)?
    }

    pub fn rs2i(&self) -> Option<usize> {
        match self.o.optype {
            OpType::U(_) | OpType::J(_) | OpType::O(_) | OpType::I(_) => None,
            _ => Some(self.i19_24()),
        }
    }

    pub fn rs2(&self) -> Option<Register> {
        self.rs2i().map(Register::from_repr)?
    }

    // pub fn imm(&self) -> Option<i32> {
    //     match self.o.optype {
    //         OpType::R(_) | OpType::O(_) | OpType::F(_) => None,
    //         OpType::B(_) => Some(
    //           self.bits[]

    //         ), // OpType::I(_) => Some((sign | self.i
    //     }
    // }
}
