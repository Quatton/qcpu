use std::fmt::Display;

use super::SimulatorV4HaltKind;

#[derive(Debug, Clone)]
pub struct MemoryV4 {
    pub m: Vec<u32>,
    pub cache: Vec<CacheLine>,
    pub stat: CacheStat,
    pub cache_line: usize,
    cache_mask: usize, // optimization: precomputed mask
}

#[derive(Debug, Clone, Copy, Default)]
pub struct CacheLine {
    tag: u32,
    data: u32,
    valid: bool,
}

impl CacheLine {
    pub fn new() -> Self {
        Self::default()
    }

    #[inline(always)]
    pub fn read(&self, addr: usize) -> Option<u32> {
        let tag = (addr >> CACHE_LINE_BITS) as u32;
        (self.valid && self.tag == tag).then_some(self.data)
    }

    #[inline(always)]
    pub fn write(&mut self, addr: usize, val: u32) {
        let tag = (addr >> CACHE_LINE_BITS) as u32;
        self.tag = tag;
        self.data = val;
        self.valid = true;
    }
}

#[derive(Debug, Default, Clone, Copy)]
pub struct CacheStat {
    pub hit: usize,
    pub read: usize,
}

impl Display for CacheStat {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "{} lines * {} ways", CACHE_LINE, CACHE_WAY)?;
        write!(
            f,
            "Total: {}, Hit: {} ({:.02}%), Miss: {} ({:.02}%)",
            self.read,
            self.hit,
            self.hit as f64 / self.read as f64 * 100.0,
            self.read - self.hit,
            (self.read - self.hit) as f64 / self.read as f64 * 100.0
        )
    }
}

pub const CACHE_LINE_BITS: usize = 14;
pub const CACHE_LINE: usize = 1 << CACHE_LINE_BITS;
pub const MEMORY_SIZE: usize = 1 << 21;
pub const CACHE_WAY: usize = 1;

impl MemoryV4 {
    #[inline(always)]
    pub fn new(cache_line: Option<usize>) -> Self {
        let line = cache_line.unwrap_or(CACHE_LINE);
        Self {
            m: vec![0; MEMORY_SIZE],
            cache: vec![CacheLine::default(); line],
            stat: CacheStat::default(),
            cache_line: line,
            cache_mask: line - 1, // precompute mask
        }
    }

    pub fn read(&mut self, addr: usize) -> Result<u32, SimulatorV4HaltKind> {
        let idx = addr & self.cache_mask;
        let entry = &mut self.cache[idx];

        self.stat.read += 1;
        if let Some(val) = entry.read(addr) {
            self.stat.hit += 1;
            return Ok(val);
        }

        let value = self
            .m
            .get(addr)
            .copied()
            .ok_or(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            })?;
        entry.write(addr, value);
        Ok(value)
    }

    pub fn write(&mut self, addr: usize, val: u32) -> Result<(), SimulatorV4HaltKind> {
        if addr >= MEMORY_SIZE {
            return Err(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            });
        }
        let idx = addr & self.cache_mask;
        let entry = &mut self.cache[idx];
        entry.write(addr, val);
        self.m[addr] = val;
        Ok(())
    }

    /// Read a 32-bit word from memory without bounds checking.
    /// # Safety
    /// This function is unsafe because it does not check if the address is within bounds.
    #[inline(always)]
    pub unsafe fn read_unchecked(&mut self, addr: usize) -> u32 {
        let idx = addr & self.cache_mask;
        let entry = &mut self.cache.get_unchecked_mut(idx);
        self.stat.read += 1;
        if let Some(val) = entry.read(addr) {
            self.stat.hit += 1;
            return val;
        }
        let value = *self.m.get_unchecked(addr);
        entry.write(addr, value);
        value
    }

    /// Write a 32-bit word to memory without bounds checking.
    /// # Safety
    /// This function is unsafe because it does not check if the address is within bounds.
    #[inline(always)]
    pub unsafe fn write_unchecked(&mut self, addr: usize, val: u32) {
        let idx = addr & self.cache_mask;
        self.cache.get_unchecked_mut(idx).write(addr, val);
        *self.m.get_unchecked_mut(addr) = val;
    }
}

impl Default for MemoryV4 {
    fn default() -> Self {
        Self::new(None)
    }
}
