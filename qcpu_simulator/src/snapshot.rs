use std::ops::{Deref, DerefMut};

use crate::{
    reg::{FloatRegisters, IntRegisters},
    result::{Decode, Execute, Fetch, MemoryAccess, WriteBack},
};

pub type MemoryTransition = Vec<(usize, u8, u8)>;

#[derive(Default, Clone)]
pub struct Snapshot {
    pub next_pc: usize,
    pub ireg: IntRegisters,
    pub freg: FloatRegisters,

    // for pipelining
    // pub busy_registers: [bool; 32],
    pub fetch_result: Fetch,
    pub decode_result: Decode,
    pub execute_result: Execute,
    pub memory_access_result: MemoryAccess,
    pub write_back_result: WriteBack,
}

#[derive(Clone)]
pub struct Snapshots(Vec<Snapshot>);

impl Deref for Snapshots {
    type Target = Vec<Snapshot>;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for Snapshots {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl Default for Snapshots {
    fn default() -> Self {
        Self(vec![Snapshot::default()])
    }
}

impl Snapshots {
    pub fn new_snapshot(&self) -> Snapshot {
        let last = self.0.last().unwrap();
        Snapshot {
            ireg: last.ireg,
            freg: last.freg,
            ..Default::default()
        }
    }
}
