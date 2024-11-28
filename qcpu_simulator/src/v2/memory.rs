pub struct Memory {
    pub m: Vec<u8>,
    pub size: usize,
}

impl Memory {
    pub fn new(size: usize) -> Self {
        Self {
            size,
            m: vec![0; size],
        }
    }
}

impl Default for Memory {
    fn default() -> Self {
        Self::new(4096)
    }
}
