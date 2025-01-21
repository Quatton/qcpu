use std::{
    fmt::Display,
    ops::{Deref, DerefMut, Index, IndexMut},
};

use strum_macros::{Display, EnumString};

#[derive(Debug, Clone, Copy, EnumString, Display)]
#[strum(serialize_all = "lowercase")]
pub enum RP {
    LRU,
    SC,
    FIFO,
}

#[derive(Debug)]
pub struct CacheLine {
    pub idx_bits: usize,
    pub way_bits: usize,
    pub occupying_tag: Vec<Vec<(usize, u32)>>,
    pub stat: CacheStat,
    pub strat: RP,
}

#[derive(Debug, Default)]
pub struct CacheStat {
    pub access_count: usize,
    pub hit_count: usize,
}

#[derive(Debug)]
pub struct Cacheception(Vec<CacheLine>);

impl Deref for Cacheception {
    type Target = Vec<CacheLine>;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl From<Vec<CacheLine>> for Cacheception {
    fn from(value: Vec<CacheLine>) -> Self {
        Self(value)
    }
}

impl DerefMut for Cacheception {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl Display for Cacheception {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "===== Memory Statistics =====")?;
        for cache in self.0.iter() {
            let acount = cache.stat.access_count;
            let hcount = cache.stat.hit_count;
            // let mcount = cache.stat.access_count - cache.stat.hit_count;
            let hit_rate = if acount > 0 {
                (hcount as f32) / (acount as f32) * 100.0
            } else {
                0.0
            };

            // let miss_rate = if acount > 0 {
            //     (mcount as f32) / (acount as f32) * 100.0
            // } else {
            //     0.0
            // };

            writeln!(
                f,
                "size: {}, way: {}, strat: {}",
                1 << cache.idx_bits,
                1 << cache.way_bits,
                cache.strat
            )?;
            writeln!(f, "   access: {}", acount)?;
            writeln!(f, "   hit: {}, ({:.2}%)", hcount, hit_rate)?;
            // writeln!(f, "   miss: {}, ({:.2}%)", mcount, miss_rate)?;
        }

        Ok(())
    }
}
#[derive(Debug)]
pub struct Memory {
    pub m: Vec<u8>,
    pub size: usize,
    pub cacheception: Cacheception,
    pub cache_enabled: bool,
}

impl Index<usize> for Memory {
    type Output = u8;

    fn index(&self, index: usize) -> &Self::Output {
        &self.m[index]
    }
}

impl IndexMut<usize> for Memory {
    fn index_mut(&mut self, index: usize) -> &mut Self::Output {
        &mut self.m[index]
    }
}

pub enum CacheResult {
    NoStall,
    ReadStall,
    WriteStall,
}

impl Memory {
    pub fn new(size: usize, cache_size: &[usize], ways: &[usize], strats: &[RP]) -> Self {
        Self {
            size,
            m: vec![0; size],
            cacheception: Cacheception::from(
                cache_size
                    .iter()
                    .flat_map(|&cache_size| {
                        let cache_size = (cache_size as f32).log2().ceil() as usize;
                        ways.iter().flat_map(move |&way| {
                            let way = (way as f32).log2().ceil() as usize;
                            strats.iter().map(move |&rp| CacheLine {
                                idx_bits: cache_size,
                                way_bits: way,
                                occupying_tag: vec![vec![]; 1 << cache_size],
                                stat: CacheStat::default(),
                                strat: rp,
                            })
                        })
                    })
                    .collect::<Vec<_>>(),
            ),
            cache_enabled: !cache_size.is_empty(),
        }
    }

    pub fn update_cache(&mut self, index: usize, read: bool) -> CacheResult {
        let mut res = CacheResult::NoStall;

        if !self.cache_enabled {
            return res;
        }

        for cache_type in self.cacheception.iter_mut() {
            let cache_idx = (index >> 2) & ((1 << (cache_type.idx_bits)) - 1);
            let cache_tag = index >> (2 + cache_type.idx_bits);
            if read {
                cache_type.stat.access_count += 1;
            }

            if let Some((idx, (_, data))) = cache_type.occupying_tag[cache_idx]
                .iter_mut()
                .enumerate()
                .find(|(_, (x, _))| *x == cache_tag)
            {
                if read {
                    cache_type.stat.hit_count += 1;
                    match cache_type.strat {
                        RP::SC => {
                            *data = 1;
                        }
                        RP::LRU => {
                            cache_type.occupying_tag[cache_idx].remove(idx);
                            cache_type.occupying_tag[cache_idx].push((cache_tag, 0));
                        }
                        RP::FIFO => {}
                    }
                }
            } else {
                if cache_type.occupying_tag[cache_idx].len() >= 1 << cache_type.way_bits {
                    match cache_type.strat {
                        RP::SC => {
                            let i = cache_type.occupying_tag[cache_idx]
                                .iter()
                                .position(|o| o.1 == 0);
                            cache_type.occupying_tag[cache_idx].remove(i.unwrap_or(0));
                        }
                        RP::LRU => {
                            cache_type.occupying_tag[cache_idx].remove(0);
                        }
                        RP::FIFO => {
                            cache_type.occupying_tag[cache_idx].remove(0);
                        }
                    }
                }
                cache_type.occupying_tag[cache_idx].push((cache_tag, 0));

                if read {
                    res = CacheResult::ReadStall;
                }
            }
        }

        res
    }
}

impl Default for Memory {
    fn default() -> Self {
        Self::new(1048576, &[256], &[1], &[RP::SC])
    }
}
