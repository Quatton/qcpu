use std::{
    fmt::Display,
    ops::{Deref, DerefMut, Index, IndexMut},
};

pub struct CacheLine {
    pub cache_size: usize,
    pub occupying_tag: Vec<Option<usize>>,
    pub stat: CacheStat,
}

#[derive(Debug, Default)]
pub struct CacheStat {
    pub access_count: usize,
    pub hit_count: usize,
}

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
        writeln!(f, "Direct Mapped Cache: ")?;

        for cache in self.0.iter() {
            let acount = cache.stat.access_count;
            let hcount = cache.stat.hit_count;
            let mcount = cache.stat.access_count - cache.stat.hit_count;
            let hit_rate = if acount > 0 {
                (hcount as f32) / (acount as f32) * 100.0
            } else {
                0.0
            };

            let miss_rate = if acount > 0 {
                (mcount as f32) / (acount as f32) * 100.0
            } else {
                0.0
            };

            writeln!(f, "size: {}", 1 << cache.cache_size)?;
            writeln!(f, "   access: {}", acount)?;
            writeln!(f, "   hit: {}, ({:.2}%)", hcount, hit_rate)?;
            writeln!(f, "   miss: {}, ({:.2}%)", mcount, miss_rate)?;
        }

        Ok(())
    }
}

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

impl Memory {
    pub fn new(size: usize, cache_size: &[usize]) -> Self {
        Self {
            size,
            m: vec![0; size],
            cacheception: Cacheception::from(
                cache_size
                    .iter()
                    .map(|&cache_size| {
                        let cache_size = (cache_size as f32).log2().ceil() as usize;
                        CacheLine {
                            cache_size,
                            occupying_tag: vec![None; 1 << cache_size],
                            stat: CacheStat::default(),
                        }
                    })
                    .collect::<Vec<_>>(),
            ),
            cache_enabled: !cache_size.is_empty(),
        }
    }

    pub fn update_cache(&mut self, index: usize, read: bool) {
        if !self.cache_enabled {
            return;
        }

        for cache_type in self.cacheception.iter_mut() {
            let cache_idx = (index >> 2) & ((1 << cache_type.cache_size) - 1);
            let cache_tag = index >> (2 + cache_type.cache_size);
            cache_type.stat.access_count += 1;
            if let Some(occupied) = cache_type.occupying_tag[cache_idx] {
                if cache_tag == occupied && read {
                    cache_type.stat.hit_count += 1;
                }
            }
            cache_type.occupying_tag[cache_idx] = Some(cache_tag);
        }
    }
}

impl Default for Memory {
    fn default() -> Self {
        Self::new(1048576, &[256])
    }
}
