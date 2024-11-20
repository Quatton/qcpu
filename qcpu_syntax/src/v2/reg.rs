use nom::{character::complete::alphanumeric1, combinator::map_res, IResult};
use std::str::FromStr as _;
use strum_macros::{Display, EnumIter, EnumString, FromRepr, VariantArray};

use crate::error::ParseError;

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
