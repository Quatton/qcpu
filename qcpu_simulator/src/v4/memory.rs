use super::SimulatorV4HaltKind;

#[derive(Debug, Clone)]
pub struct MemoryV4 {
    pub m: Vec<u32>,
}

pub const MEMORY_SIZE: usize = 2097152;

impl MemoryV4 {
    pub fn new() -> Self {
        Self {
            m: vec![0; MEMORY_SIZE],
        }
    }

    pub fn read(&self, addr: usize) -> Result<u32, SimulatorV4HaltKind> {
        self.m
            .get(addr)
            .copied()
            .ok_or(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            })
    }

    pub fn write(&mut self, addr: usize, val: u32) -> Result<(), SimulatorV4HaltKind> {
        if addr >= MEMORY_SIZE {
            return Err(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            });
        }
        self.m[addr] = val;
        Ok(())
    }
}

impl Default for MemoryV4 {
    fn default() -> Self {
        Self::new()
    }
}
