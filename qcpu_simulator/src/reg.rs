use std::ops::{Deref, DerefMut};

use qcpu_syntax::{FloatReg, IntReg};
use strum::VariantArray as _;

type _IntRegisters = [i32; 32];
type _FloatRegisters = [f32; 32];

#[derive(Default, Clone, Copy)]
pub struct IntRegisters(_IntRegisters);

impl Deref for IntRegisters {
    type Target = _IntRegisters;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for IntRegisters {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl IntRegisters {
    pub fn new() -> Self {
        Self([0; 32])
    }

    pub fn from_array(reg: _IntRegisters) -> Self {
        Self(reg)
    }
}

#[derive(Default, Clone, Copy)]
pub struct FloatRegisters(_FloatRegisters);

impl Deref for FloatRegisters {
    type Target = _FloatRegisters;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for FloatRegisters {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl FloatRegisters {
    pub fn new() -> Self {
        Self([0.0; 32])
    }

    pub fn from_array(reg: _FloatRegisters) -> Self {
        Self(reg)
    }
}

impl std::fmt::Debug for IntRegisters {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        for (i, r) in IntReg::VARIANTS.iter().enumerate() {
            write!(f, "{:<5}: {:<10} ", r, self[i])?;
            if (i + 1) % 4 == 0 {
                writeln!(f)?;
            }
        }
        Ok(())
    }
}

impl std::fmt::Debug for FloatRegisters {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        for (i, r) in FloatReg::VARIANTS.iter().enumerate() {
            write!(f, "{:<5}: {:<10} ", r, self[i])?;
            if (i + 1) % 4 == 0 {
                writeln!(f)?;
            }
        }
        Ok(())
    }
}
