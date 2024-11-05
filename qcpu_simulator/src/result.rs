use std::fmt::Debug;

use qcpu_syntax::{IntReg, LOp, Op, STOp};

use crate::snapshot::MemoryTransition;

#[derive(Clone, PartialEq)]
pub enum MemoryAccessRequest {
    L(LOp, IntReg, IntReg, i32),
    S(STOp, IntReg, IntReg, i32),
}

#[derive(Clone, Copy, PartialEq)]

pub enum RegisterWriteBackRequest {
    /// (value, reg)
    WriteInt(i32, usize),
}

#[derive(Default, Clone, Copy, PartialEq)]
pub struct Fetch {
    pub bubble: bool,
    pub base_pc: usize,
    pub predicted_pc: usize,
    pub awaiting_decode: Option<u32>,
}

impl Debug for Fetch {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "IF")?;
        if self.bubble {
            write!(f, "🔄 ")?;
        } else {
            write!(f, "👇 ")?;
        }
        writeln!(f, "0x{:05x}", self.base_pc)?;
        writeln!(f, "🤔 0x{:05x}", self.predicted_pc)
    }
}

#[derive(Clone, PartialEq)]
pub struct Decode {
    pub predicted_pc: usize,
    pub bubble: bool,
    pub base_pc: usize,
    pub intr: Option<Op>,
}

impl Default for Decode {
    fn default() -> Self {
        Self {
            predicted_pc: Default::default(),
            bubble: true,
            base_pc: Default::default(),
            intr: Default::default(),
        }
    }
}

impl Debug for Decode {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "DE")?;
        match self.intr.as_ref() {
            Some(intr) => {
                writeln!(f, "0x{:05x}", self.base_pc)?;
                writeln!(f, "{:#?}", intr)
            }
            None => writeln!(f, "🫧"),
        }
    }
}

impl Decode {
    pub fn from_fetch(fetch: Fetch) -> Self {
        Self {
            bubble: fetch.bubble || fetch.awaiting_decode.is_none(),
            base_pc: fetch.base_pc,
            predicted_pc: fetch.predicted_pc,
            ..Default::default()
        }
    }

    pub fn set_intr(&mut self, intr: Op) {
        self.intr = Some(intr);
    }
}

#[derive(Clone, PartialEq)]
pub struct Execute {
    pub bubble: bool,
    pub base_pc: usize,
    pub predicted_pc: usize,
    pub refetch: bool,
    pub memory_access_request: Option<MemoryAccessRequest>,
    pub register_write_back_request: Option<RegisterWriteBackRequest>,
}

impl Debug for Execute {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "EX")?;
        if self.bubble {
            writeln!(f, "🫧")?;
        } else {
            writeln!(f, "0x{:05x}", self.base_pc)?;
            if self.refetch {
                writeln!(f, "🔄 0x{:05x}", self.predicted_pc)?;
            } else {
                writeln!(f, "✅ 0x{:05x}", self.predicted_pc)?;
            }
        }
        Ok(())
    }
}

impl Default for Execute {
    fn default() -> Self {
        Self {
            bubble: true,
            base_pc: Default::default(),
            predicted_pc: Default::default(),
            refetch: Default::default(),
            memory_access_request: Default::default(),
            register_write_back_request: Default::default(),
        }
    }
}

impl Execute {
    pub fn from_decode(decode: Decode) -> Self {
        Self {
            base_pc: decode.base_pc,
            bubble: decode.bubble || decode.intr.is_none(),
            predicted_pc: decode.predicted_pc,
            ..Default::default()
        }
    }

    pub fn set_predicted_pc(&mut self, predicted_pc: usize) {
        if predicted_pc == self.predicted_pc {
            return;
        }

        self.predicted_pc = predicted_pc;
        self.refetch = true;
    }

    pub fn forward_to_memory_access(&mut self, memory_access_request: MemoryAccessRequest) {
        self.memory_access_request = Some(memory_access_request);
    }
}

#[derive(Clone, PartialEq)]

pub struct MemoryAccess {
    pub bubble: bool,
    pub wb: Option<RegisterWriteBackRequest>,
    pub memory_transition: MemoryTransition,
}

impl Default for MemoryAccess {
    fn default() -> Self {
        Self {
            bubble: true,
            wb: Default::default(),
            memory_transition: Default::default(),
        }
    }
}

impl Debug for MemoryAccess {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "MEM")?;
        if self.bubble {
            writeln!(f, "🫧")?;
        } else {
            let (addrs, v1, v2) =
                self.memory_transition
                    .iter()
                    .fold((vec![], vec![], vec![]), |mut acc, cur| {
                        acc.0.push(cur.0);
                        acc.1.push(cur.1);
                        acc.2.push(cur.2);
                        acc
                    });

            for addr in addrs.into_iter() {
                write!(f, "{:05x} ", addr)?;
            }

            writeln!(f)?;

            for v1 in v1.into_iter() {
                write!(f, "{:?} ", v1)?;
            }

            writeln!(f)?;

            for v2 in v2.into_iter() {
                write!(f, "{:?} ", v2)?;
            }
            writeln!(f)?;
        }
        Ok(())
    }
}

impl MemoryAccess {
    pub fn from_execute(execute: Execute) -> Self {
        Self {
            bubble: execute.bubble,
            ..Default::default()
        }
    }
}

#[derive(Default, Clone, Copy, PartialEq)]
pub enum WriteBack {
    #[default]
    Ok,
}

impl Debug for WriteBack {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "WB")?;
        match self {
            Self::Ok => write!(f, "Ok"),
        }
    }
}
