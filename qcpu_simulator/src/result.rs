use std::{fmt::Debug, ops::Range};

use qcpu_syntax::{FloatReg, IntReg, LOp, Op};

use crate::snapshot::MemoryTransition;

#[derive(Clone, PartialEq)]
pub enum MemoryAccessRequest {
    L(LOp, usize, IntReg),
    S(Range<usize>, i32),
}

impl Debug for MemoryAccessRequest {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::L(_, addr, _) => {
                writeln!(f, "L 0x{:05x}", addr)?;
            }
            Self::S(ref range, val) => {
                writeln!(f, "S 0x{:05x} → {}", range.start, val)?;
            }
        }

        Ok(())
    }
}

#[derive(Clone, Copy, PartialEq)]

pub enum RegisterWriteBackRequest {
    /// (value, reg)
    WriteInt(i32, IntReg),
    WriteFloat(f32, FloatReg),
}

impl Debug for RegisterWriteBackRequest {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::WriteInt(arg0, arg1) => {
                writeln!(f, "{} -> {}", arg1, arg0)?;
            }
            Self::WriteFloat(arg0, arg1) => {
                writeln!(f, "{} -> {}", arg1, arg0)?;
            }
        }
        Ok(())
    }
}

#[derive(Default, Clone, Copy, PartialEq)]
pub struct Fetch {
    pub stall: bool,
    pub base_pc: usize,
    pub predicted_pc: usize,
    pub awaiting_decode: Option<u32>,
}

impl Debug for Fetch {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if self.stall {
            writeln!(f, "🫸")?;
        } else {
            writeln!(f, "👉 0x{:05x}", self.base_pc)?;
            writeln!(f, "🤔 0x{:05x}", self.predicted_pc)?;
        }
        Ok(())
    }
}

#[derive(Clone, PartialEq, Default)]
pub struct Decode {
    pub stall: bool,
    pub predicted_pc: usize,
    pub base_pc: usize,
    pub intr: Option<Op>,
}

impl Debug for Decode {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if self.stall {
            writeln!(f, "🫸")?;
        } else {
            match self.intr.as_ref() {
                Some(intr) => {
                    writeln!(f, "👉 0x{:05x}", self.base_pc)?;
                    writeln!(f, "🤔 0x{:05x}", self.predicted_pc)?;
                    writeln!(f, "{:#?}", intr)?;
                }
                None => writeln!(f, "🫧")?,
            }
        }

        Ok(())
    }
}

impl Decode {
    pub fn from_fetch(fetch: Fetch) -> Self {
        Self {
            base_pc: fetch.base_pc,
            predicted_pc: fetch.predicted_pc,
            ..Default::default()
        }
    }

    pub fn set_intr(&mut self, intr: Op) {
        self.intr = Some(intr);
    }
}

#[derive(Clone, PartialEq, Default)]
pub struct Execute {
    pub stall: bool,
    pub base_pc: usize,
    pub predicted_pc: usize,
    pub intr: Option<Op>,
    pub refetch: bool,
    pub forward: bool,
    pub memory_access_request: Option<MemoryAccessRequest>,
    pub register_write_back_request: Option<RegisterWriteBackRequest>,
}

impl Debug for Execute {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if self.stall {
            writeln!(f, "🫸")?;
        } else if self.intr.is_some() {
            writeln!(f, "👉 0x{:05x}", self.base_pc)?;
            if self.forward {
                writeln!(f, "↖")?;
            }
            if self.refetch {
                writeln!(f, "🔄 0x{:05x}", self.predicted_pc)?;
            } else {
                writeln!(f, "✅ 0x{:05x}", self.predicted_pc)?;
            }
            if self.memory_access_request.is_some() {
                write!(f, "{:?}", self.memory_access_request.as_ref().unwrap())?;
            }
            if self.register_write_back_request.is_some() {
                write!(f, "{:?}", self.register_write_back_request.unwrap())?;
            }
            writeln!(f, "{:#?}", self.intr.as_ref().unwrap())?;
        } else {
            writeln!(f, "🫧")?;
        }
        Ok(())
    }
}

impl Execute {
    pub fn from_decode(decode: Decode) -> Self {
        Self {
            base_pc: decode.base_pc,
            predicted_pc: decode.predicted_pc,
            intr: decode.intr,
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

#[derive(Clone, PartialEq, Default)]
pub struct MemoryAccess {
    pub req: Option<MemoryAccessRequest>,
    pub memory_transition: MemoryTransition,
    pub wb: Option<RegisterWriteBackRequest>,
    pub forward: bool,
}

impl Debug for MemoryAccess {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if self.wb.is_some() {
            write!(f, "{:?}", self.wb.unwrap())?;
        }
        for (addr, _, val) in self.memory_transition.iter() {
            writeln!(f, "{:05x} → {:04x}", addr, val)?;
        }
        if self.req.is_some() {
            writeln!(f, "{:?}", self.req.as_ref().unwrap())?;
        }
        if !self.memory_transition.is_empty() {
            writeln!(
                f,
                "{:>12}",
                self.memory_transition
                    .iter()
                    .rev()
                    .fold(0_u32, |acc, &(_, _, val)| acc << 8 | (val as u32))
            )?;
        }
        Ok(())
    }
}
