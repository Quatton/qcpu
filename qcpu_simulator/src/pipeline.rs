use std::ops::{Deref, DerefMut};

use qcpu_syntax::parser::Op;

use crate::reg::{FloatRegisters, IntRegisters};

#[derive(Default, Clone)]
pub struct Snapshot {
    pub pc: usize,
    pub ireg: IntRegisters,
    pub freg: FloatRegisters,
    pub memory_transition: Vec<(usize, u8, u8)>,

    // for pipelining
    pub next_pc: usize,
    pub awaiting_decode: Option<(usize, u32)>,
    pub decoded_instruction: Option<(usize, Op)>,
    pub busy_registers: [bool; 32],
}

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

impl Snapshots {}
