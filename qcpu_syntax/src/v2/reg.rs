use nom::{character::complete::alphanumeric1, combinator::map_res, IResult};
use std::{
    fmt::Debug,
    ops::{Deref, DerefMut},
    str::FromStr as _,
};
use strum_macros::{Display, EnumIter, EnumString, FromRepr, VariantArray};

use crate::error::ParseError;

#[derive(Clone, Copy)]
pub struct Registers([u32; 64]);

impl From<[u32; 64]> for Registers {
    fn from(regs: [u32; 64]) -> Self {
        Self(regs)
    }
}

impl Deref for Registers {
    type Target = [u32; 64];

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for Registers {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl Default for Registers {
    fn default() -> Self {
        Self([0; 64])
    }
}

impl Debug for Registers {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        for (i, reg) in self.iter().enumerate() {
            let reg_name = Register::from_usize(i);
            if i < 32 {
                write!(f, "{:5}: 0x{:08x} ({:12}) ", reg_name, reg, *reg as i32)?;
            } else {
                write!(
                    f,
                    "{:5}: 0x{:08x} ({:12.6e}) ",
                    reg_name,
                    reg,
                    f32::from_bits(*reg)
                )?;
            }
            if i % 4 == 3 {
                writeln!(f)?;
            }
        }

        Ok(())
    }
}

#[derive(
    Default, Display, PartialEq, Clone, Copy, Debug, EnumString, EnumIter, VariantArray, FromRepr,
)]
#[strum(serialize_all = "lowercase")]
pub enum Register {
    #[default]
    Zero,
    Ra,
    Sp,
    Gp,
    Tp,
    T0,
    T1,
    T2,
    #[strum(serialize = "s0", serialize = "fp")]
    S0,
    S1,
    A0,
    A1,
    A2,
    A3,
    A4,
    A5,
    A6,
    A7,
    S2,
    S3,
    S4,
    S5,
    S6,
    S7,
    S8,
    S9,
    S10,
    S11,
    T3,
    T4,
    T5,
    T6,
    Ft0,
    Ft1,
    Ft2,
    Ft3,
    Ft4,
    Ft5,
    Ft6,
    Ft7,
    Fs0,
    Fs1,
    Fa0,
    Fa1,
    Fa2,
    Fa3,
    Fa4,
    Fa5,
    Fa6,
    Fa7,
    Fs2,
    Fs3,
    Fs4,
    Fs5,
    Fs6,
    Fs7,
    Fs8,
    Fs9,
    Fs10,
    Fs11,
    Ft8,
    Ft9,
    Ft10,
    Ft11,
}

impl Register {
    fn from_str_custom(s: &str) -> Result<Self, ParseError> {
        Self::from_str(s).or_else(|_| {
            if &s[..1] == "f" {
                let num = u8::from_str(&s[1..]).map_err(|_| ParseError::InvalidFloatReg)?;
                if num < 32 {
                    match Self::from_repr((num + 32) as usize) {
                        Some(reg) => Ok(reg),
                        None => Err(ParseError::InvalidFloatReg),
                    }
                } else {
                    Err(ParseError::InvalidFloatReg)
                }
            } else if &s[..1] == "x" {
                let num = u8::from_str(&s[1..]).map_err(|_| ParseError::InvalidIntReg)?;
                if num < 32 {
                    match Self::from_repr(num as usize) {
                        Some(reg) => Ok(reg),
                        None => Err(ParseError::InvalidIntReg),
                    }
                } else {
                    Err(ParseError::InvalidIntReg)
                }
            } else {
                Err(ParseError::InvalidIntReg)
            }
        })
    }

    pub fn from_usize(n: usize) -> Self {
        Self::from_repr(n).unwrap_or_default()
    }
}

impl From<Register> for usize {
    fn from(reg: Register) -> Self {
        reg as usize
    }
}
impl crate::parser::WithParser for Register {
    fn parse(input: &str) -> IResult<&str, Self> {
        map_res(alphanumeric1, |s: &str| Self::from_str_custom(s))(input)
    }
}
