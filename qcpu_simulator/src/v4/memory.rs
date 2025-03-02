use std::{collections::BTreeMap, fmt::Display};

use serde::Serialize;

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
    #[cfg(feature = "conflict_pair")]
    pc: u32,
}

impl Default for CacheLine {
    fn default() -> Self {
        Self {
            tag: u8::MAX,
            #[cfg(feature = "conflict_pair")]
            pc: u32::MAX,
        }
    }
}

impl CacheLine {
    pub fn new() -> Self {
        Self::default()
    }

    #[cfg(feature = "conflict_pair")]
    pub fn replace(&mut self, addr: usize, pc: u32) -> (bool, u32) {
        let tag = (addr >> CACHE_LINE_BITS >> 2) as u8;
        let hit = self.tag == tag;
        self.tag = tag;
        let prev = self.pc;
        self.pc = pc;
        (hit, prev)
    }

    #[cfg(not(feature = "conflict_pair"))]
    #[inline(always)]
    pub fn replace(&mut self, addr: usize) -> bool {
        let tag = (addr >> CACHE_LINE_BITS >> 2) as u8;
        let hit = self.tag == tag;
        self.tag = tag;
        hit
    }
}

#[derive(Debug, Default, Clone, Serialize)]
pub struct CacheStat {
    pub hit: u64,
    pub read: u64,
    pub write: u64,
    pub write_hit: u64,
    pub conflict_pair: BTreeMap<u32, u64>,
}

impl Display for CacheStat {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "{} lines x 4 words direct-mapped cache", CACHE_LINE)?;
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
            cache: if verbose {
                vec![CacheLine::default(); CACHE_LINE]
            } else {
                // Empty vector when not needed
                Vec::new()
            },
            stat: CacheStat::default(),
            verbose,
        }
    }

    pub fn read(
        &mut self,
        addr: usize,
        #[cfg(feature = "conflict_pair")] pc: u32,
    ) -> Result<(u32, bool), SimulatorV4HaltKind> {
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

        let idx = addr & CACHE_MASK;
        let entry = unsafe { self.cache.get_unchecked_mut(idx) };

        #[cfg(feature = "conflict_pair")]
        {
            let (hit, prev) = entry.replace(addr, pc);
            if !prev != 0 {
                let map_idx = if prev < pc {
                    prev << 16 | pc
                } else {
                    pc << 16 | prev
                };
                *self.stat.conflict_pair.entry(map_idx).or_insert(0) += 1;
            }
            Ok((value, hit))
        }

        #[cfg(not(feature = "conflict_pair"))]
        {
            let hit = entry.replace(addr);
            Ok((value, hit))
        }
    }

    pub fn write(
        &mut self,
        addr: usize,
        val: u32,
        #[cfg(feature = "conflict_pair")] pc: u32,
    ) -> Result<bool, SimulatorV4HaltKind> {
        if addr >= MEMORY_SIZE {
            return Err(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            });
        }

        unsafe { *self.m.get_unchecked_mut(addr) = val };

        if !self.verbose {
            return Ok(true);
        }

        let idx = addr & CACHE_MASK;
        let entry = &mut unsafe { self.cache.get_unchecked_mut(idx) };
        #[cfg(feature = "conflict_pair")]
        {
            let (hit, prev) = entry.replace(addr, pc);
            if !prev != 0 {
                let map_idx = if prev < pc {
                    prev << 16 | pc
                } else {
                    pc << 16 | prev
                };
                *self.stat.conflict_pair.entry(map_idx).or_insert(0) += 1;
            }
            Ok(hit)
        }

        #[cfg(not(feature = "conflict_pair"))]
        {
            let hit = entry.replace(addr);
            Ok(hit)
        }
    }
}

impl Default for MemoryV4 {
    fn default() -> Self {
        Self::new(false)
    }
}
