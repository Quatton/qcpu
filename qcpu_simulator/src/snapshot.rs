use std::ops::{Deref, DerefMut};

use crate::{
    reg::{FloatRegisters, IntRegisters},
    result::{Decode, Execute, Fetch, MemoryAccess, RegisterWriteBackRequest},
};

pub type MemoryTransition = Vec<(usize, u8, u8)>;

#[derive(Default, Clone)]
pub struct Snapshot {
    pub next_pc: usize,
    pub ireg: IntRegisters,
    pub freg: FloatRegisters,

    // for pipelining
    // pub busy_registers: [bool; 32],
    pub bubble: bool,

    pub fetch_result: Fetch,
    pub decode_result: Decode,
    pub execute_result: Execute,
    pub memory_access_result: MemoryAccess,
    pub write_back_result: Option<RegisterWriteBackRequest>,
}

impl Snapshot {
    pub fn get_ireg(&self, i: usize) -> (i32, bool, bool) {
        if i == 0 {
            return (0, false, false);
        }
        let mut memory_forward = false;
        let mut execute_forward = false;
        let value = self
            .memory_access_result
            .wb
            .filter(|&RegisterWriteBackRequest::WriteInt(_, j)| {
                memory_forward = i == j;
                memory_forward
            })
            .or_else(|| {
                self.execute_result.register_write_back_request.filter(
                    |&RegisterWriteBackRequest::WriteInt(_, j)| {
                        execute_forward = i == j;
                        execute_forward
                    },
                )
            })
            .map_or_else(
                || self.ireg[i],
                |RegisterWriteBackRequest::WriteInt(value, _)| value,
            );

        (value, execute_forward, memory_forward)
    }
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
            decode_result: Decode::from_fetch(last.fetch_result),
            execute_result: Execute::from_decode(if last.execute_result.stall {
                self.0.get(self.0.len().saturating_sub(2)).map_or_else(
                    || last.decode_result.clone(),
                    |prev| prev.decode_result.clone(),
                )
            } else {
                last.decode_result.clone()
            }),
            memory_access_result: MemoryAccess {
                wb: last.execute_result.register_write_back_request,
                ..Default::default()
            },
            ..Default::default()
        }
    }
}
