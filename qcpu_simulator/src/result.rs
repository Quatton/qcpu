use std::fmt::Debug;

use qcpu_syntax::{IntReg, LOp, Op, STOp};
use strum::VariantArray;

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

impl Debug for RegisterWriteBackRequest {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            &Self::WriteInt(arg0, arg1) => {
                writeln!(f, "{} -> {}", IntReg::VARIANTS[arg1], arg0)?;
            }
        }

        Ok(())
    }
}

#[derive(Default, Clone, Copy, PartialEq)]
pub struct Fetch {
    pub base_pc: usize,
    pub predicted_pc: usize,
    pub awaiting_decode: Option<u32>,
}

impl Debug for Fetch {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "👉 0x{:05x}", self.base_pc)?;
        writeln!(f, "🤔 0x{:05x}", self.predicted_pc)
    }
}

#[derive(Clone, PartialEq, Default)]
pub struct Decode {
    pub predicted_pc: usize,
    pub base_pc: usize,
    pub intr: Option<Op>,
}

impl Debug for Decode {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self.intr.as_ref() {
            Some(intr) => {
                writeln!(f, "👉 0x{:05x}", self.base_pc)?;
                writeln!(f, "🤔 0x{:05x}", self.predicted_pc)?;
                writeln!(f, "{:#?}", intr)
            }
            None => writeln!(f, "🫧"),
        }
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

    pub fn busy(&self, regs: &[IntReg]) -> bool {
        if let Some(MemoryAccessRequest::L(_, rding, _, _)) = self.memory_access_request {
            for &rs in regs {
                if rding == rs {
                    return true;
                }
            }
        }
        false
    }
}

#[derive(Clone, PartialEq, Default)]
pub struct MemoryAccess {
    pub memory_transition: MemoryTransition,
    pub wb: Option<RegisterWriteBackRequest>,
    pub forward: bool,
}

impl Debug for MemoryAccess {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        if self.wb.is_some() {
            writeln!(f, "{:?}", self.wb.unwrap())?;
        }
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
        Ok(())
    }
}
