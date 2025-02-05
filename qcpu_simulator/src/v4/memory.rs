use super::SimulatorV4HaltKind;

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
        match self.m.get(addr) {
            Some(cell) => Ok(*cell),
            None => Err(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE as u32,
                index: addr as u32,
            }),
        }
    }

    pub fn write(&mut self, addr: usize, val: u32) -> Result<(), SimulatorV4HaltKind> {
        match self.m.get_mut(addr) {
            Some(cell) => {
                *cell = val;
                Ok(())
            }
            None => Err(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE as u32,
                index: addr as u32,
            }),
        }
    }
}

impl Default for MemoryV4 {
    fn default() -> Self {
        Self::new()
    }
}
