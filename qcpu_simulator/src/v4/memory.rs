use std::fmt::Display;

use super::SimulatorV4HaltKind;

#[derive(Debug, Clone)]
pub struct MemoryV4 {
    pub m: Vec<u32>,
    pub cache: Vec<CacheLine>,
    pub stat: CacheStat,
    pub verbose: bool,
}

#[derive(Debug, Clone, Copy)]
pub struct CacheLine {
    tag: u8,
}

impl Default for CacheLine {
    fn default() -> Self {
        Self { tag: u8::MAX }
    }
}

impl CacheLine {
    pub fn new() -> Self {
        Self::default()
    }

    //
    // pub fn read(&mut self, addr: usize) -> Option<u32> {
    //     let tag = (addr >> CACHE_LINE_BITS) as u8;
    //     if self.valid && self.tag == tag {
    //         Some(self.data)
    //     } else {
    //         None
    //     }
    // }

    pub fn replace(&mut self, addr: usize) -> bool {
        let tag = (addr >> CACHE_LINE_BITS) as u8;
        let hit = self.tag == tag;
        self.tag = tag;
        // self.data = val;
        // self.valid = true;
        hit
    }
}

#[derive(Debug, Default, Clone, Copy)]
pub struct CacheStat {
    pub hit: u64,
    pub read: u64,
    pub write: u64,
    pub write_hit: u64,
}

impl Display for CacheStat {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "{} lines direct-mapped cache", CACHE_LINE)?;
        writeln!(
            f,
            "Read: {}, Hit: {} ({:.02}%), Miss: {} ({:.02}%)",
            self.read,
            self.hit,
            self.hit as f64 / self.read as f64 * 100.0,
            self.read - self.hit,
            (self.read - self.hit) as f64 / self.read as f64 * 100.0
        )?;
        writeln!(
            f,
            "Write: {}, Hit: {} ({:.02}%), Miss: {} ({:.02}%)",
            self.write,
            self.write_hit,
            self.write_hit as f64 / self.write as f64 * 100.0,
            self.write - self.write_hit,
            (self.write - self.write_hit) as f64 / self.write as f64 * 100.0
        )?;

        Ok(())
    }
}

pub const CACHE_LINE_BITS: usize = 14;
pub const CACHE_LINE: usize = 1 << CACHE_LINE_BITS;
pub const MEMORY_SIZE: usize = 1 << 19;
pub const CACHE_MASK: usize = CACHE_LINE - 1;

impl MemoryV4 {
    pub fn new(verbose: bool) -> Self {
        Self {
            m: vec![0; MEMORY_SIZE],
            cache: vec![CacheLine::default(); CACHE_LINE],
            stat: CacheStat::default(),
            verbose,
        }
    }

    pub fn read(&mut self, addr: usize) -> Result<(u32, bool), SimulatorV4HaltKind> {
        if addr >= MEMORY_SIZE {
            return Err(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            });
        }

        let value = unsafe { *self.m.get_unchecked(addr) };

        if !self.verbose {
            return Ok((value, false));
        }

        // self.stat.read += 1;
        let idx = addr & CACHE_MASK;
        let entry = &mut self.cache[idx];
        let hit = entry.replace(addr);
        // self.stat.hit += hit as u64;
        Ok((value, hit))
    }

    pub fn write(&mut self, addr: usize, val: u32) -> Result<bool, SimulatorV4HaltKind> {
        if addr >= MEMORY_SIZE {
            return Err(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            });
        }

        unsafe {
            *self.m.get_unchecked_mut(addr) = val;
        }

        if !self.verbose {
            return Ok(true);
        }

        // self.stat.write += 1;
        let idx = addr & CACHE_MASK;
        let entry = &mut self.cache[idx];
        let hit = entry.replace(addr);
        // self.stat.non_miss_write_back += hit as u64;
        Ok(hit)
    }
}

impl Default for MemoryV4 {
    fn default() -> Self {
        Self::new(false)
    }
}
