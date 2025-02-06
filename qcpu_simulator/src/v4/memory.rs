use std::fmt::Display;

use super::SimulatorV4HaltKind;

#[derive(Debug, Clone)]
pub struct MemoryV4 {
    pub m: Vec<u32>,
    pub cache: Vec<CacheLine<usize, CACHE_WAY>>,
    pub stat: CacheStat,
}

#[derive(Debug, Clone)]
pub struct CacheLine<T, const N: usize> {
    buf: [T; N],
    head: usize,
}

impl Default for CacheLine<usize, CACHE_WAY> {
    fn default() -> Self {
        Self {
            buf: [0; CACHE_WAY],
            head: 0,
        }
    }
}

impl CacheLine<usize, CACHE_WAY> {
    pub fn new() -> Self {
        Self::default()
    }
}

impl CacheLine<usize, 4> {
    pub fn read(&self, addr: usize) -> Option<usize> {
        match (
            addr == self.buf[0],
            addr == self.buf[1],
            addr == self.buf[2],
            addr == self.buf[3],
        ) {
            (true, _, _, _) => Some(self.buf[0]),
            (_, true, _, _) => Some(self.buf[1]),
            (_, _, true, _) => Some(self.buf[2]),
            (_, _, _, true) => Some(self.buf[3]),
            _ => None,
        }
    }

    pub fn write(&mut self, addr: usize) {
        self.buf[self.head] = addr;
        self.head = (self.head + 1) % 4;
    }
}

impl CacheLine<usize, 16> {
    pub fn read(&self, addr: usize) -> Option<usize> {
        match (
            addr == self.buf[0],
            addr == self.buf[1],
            addr == self.buf[2],
            addr == self.buf[3],
            addr == self.buf[4],
            addr == self.buf[5],
            addr == self.buf[6],
            addr == self.buf[7],
            addr == self.buf[8],
            addr == self.buf[9],
            addr == self.buf[10],
            addr == self.buf[11],
            addr == self.buf[12],
            addr == self.buf[13],
            addr == self.buf[14],
            addr == self.buf[15],
        ) {
            (true, ..) => Some(self.buf[0]),
            (_, true, ..) => Some(self.buf[1]),
            (_, _, true, ..) => Some(self.buf[2]),
            (_, _, _, true, ..) => Some(self.buf[3]),
            (_, _, _, _, true, ..) => Some(self.buf[4]),
            (_, _, _, _, _, true, ..) => Some(self.buf[5]),
            (_, _, _, _, _, _, true, ..) => Some(self.buf[6]),
            (_, _, _, _, _, _, _, true, ..) => Some(self.buf[7]),
            (_, _, _, _, _, _, _, _, true, ..) => Some(self.buf[8]),
            (_, _, _, _, _, _, _, _, _, true, ..) => Some(self.buf[9]),
            (_, _, _, _, _, _, _, _, _, _, true, ..) => Some(self.buf[10]),
            (_, _, _, _, _, _, _, _, _, _, _, true, ..) => Some(self.buf[11]),
            (_, _, _, _, _, _, _, _, _, _, _, _, true, ..) => Some(self.buf[12]),
            (_, _, _, _, _, _, _, _, _, _, _, _, _, true, ..) => Some(self.buf[13]),
            (_, _, _, _, _, _, _, _, _, _, _, _, _, _, true, ..) => Some(self.buf[14]),
            (_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, true) => Some(self.buf[15]),
            _ => None,
        }
    }

    pub fn write(&mut self, addr: usize) {
        self.buf[self.head] = addr;
        self.head = (self.head + 1) % 16;
    }
}

impl CacheLine<usize, 1> {
    pub fn read(&self, addr: usize) -> Option<usize> {
        if addr == self.buf[0] {
            Some(self.buf[0])
        } else {
            None
        }
    }

    pub fn write(&mut self, addr: usize) {
        self.buf[0] = addr;
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
            "Total: {}, Hit: {} ({:.02}%)",
            self.read,
            self.hit,
            self.hit as f64 / self.read as f64 * 100.0
        )
    }
}

pub const MEMORY_SIZE: usize = 2097152;
pub const CACHE_LINE: usize = 4096;
pub const CACHE_WAY: usize = 4;

impl MemoryV4 {
    pub fn new() -> Self {
        Self {
            m: vec![0; MEMORY_SIZE],
            cache: vec![CacheLine::default(); CACHE_LINE],
            stat: CacheStat::default(),
        }
    }

    pub fn read(&mut self, addr: usize) -> Result<u32, SimulatorV4HaltKind> {
        self.m
            .get(addr)
            .copied()
            .ok_or(SimulatorV4HaltKind::MemoryAccess {
                bound: MEMORY_SIZE,
                index: addr,
            })
    }

    pub fn update_cache(&mut self, addr: usize, read: bool) -> bool {
        let idx = addr & (CACHE_LINE - 1);
        let entry = &mut self.cache[idx];

        if read {
            match entry.read(addr) {
                Some(_) => {
                    self.stat.hit += 1;
                    self.stat.read += 1;
                    true
                }
                None => {
                    self.stat.read += 1;
                    entry.write(addr);
                    false
                }
            }
        } else {
            entry.write(addr);
            false
        }
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
