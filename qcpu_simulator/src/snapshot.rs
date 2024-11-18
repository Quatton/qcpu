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
    pub ireg_delay: [usize; 32],
    pub freg_delay: [usize; 32],

    // for pipelining
    pub bubble: bool,
    pub io_block: bool,

    pub fetch_result: Fetch,
    pub decode_result: Decode,
    pub execute_result: Execute,
    pub memory_access_result: MemoryAccess,
    pub write_back_result: Option<RegisterWriteBackRequest>,
}

impl Snapshot {}

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
    pub fn remove_front(&mut self) {
        self.0.remove(0);
    }
    pub fn new_snapshot(&self) -> Snapshot {
        let last = self.0.last().unwrap();
        let mut snapshot = Snapshot {
            ireg: last.ireg,
            freg: last.freg,
            ireg_delay: last.ireg_delay,
            freg_delay: last.freg_delay,
            ..Default::default()
        };

        snapshot
            .ireg_delay
            .iter_mut()
            .for_each(|d| *d = d.saturating_sub(1));

        snapshot
            .freg_delay
            .iter_mut()
            .for_each(|d| *d = d.saturating_sub(1));

        snapshot.decode_result = if last.decode_result.stall {
            let mut c = last.decode_result.clone();
            c.stall = false;
            c
        } else {
            Decode::from_fetch(last.fetch_result)
        };

        snapshot.fetch_result = if last.fetch_result.stall {
            let c = last.fetch_result;
            Fetch { stall: false, ..c }
        } else {
            Fetch {
                base_pc: last.next_pc,
                ..Default::default()
            }
        };

        snapshot.memory_access_result = MemoryAccess {
            wb: last.execute_result.register_write_back_request,
            req: last.execute_result.memory_access_request.clone(),
            ..Default::default()
        };

        if last.execute_result.stall {
            snapshot.execute_result = last.execute_result.clone();
            snapshot.execute_result.stall = false; // clear stall (it might stall again because we might set delay to longer than 1)
            snapshot.decode_result.stall = true;
            snapshot.fetch_result.stall = true;
        } else {
            snapshot.execute_result = Execute::from_decode(
                self.iter()
                    .rev()
                    .find_map(|s| {
                        if s.decode_result.stall {
                            None
                        } else {
                            Some(s.decode_result.clone())
                        }
                    })
                    .unwrap_or_default(),
            );

            snapshot.write_back_result = last.memory_access_result.wb;
        }

        snapshot
    }
}
