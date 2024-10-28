use crate::error::ParseError;
use nom::{character::complete::alphanumeric1, combinator::map_res, IResult};
use std::str::FromStr;
use strum::VariantArray;
use strum_macros::{Display, EnumIter, EnumString};

#[derive(Display, PartialEq, Clone, Copy, Debug, EnumString, EnumIter, VariantArray)]
#[strum(serialize_all = "lowercase")]
pub enum IntReg {
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
}

impl IntReg {
    fn from_str_custom(s: &str) -> Result<Self, ParseError> {
        if &s[..1] == "x" {
            let num = u8::from_str(&s[1..]).map_err(|_| ParseError::InvalidIntReg)?;
            if num < 32 {
                Ok(Self::VARIANTS[num as usize])
            } else {
                Err(ParseError::InvalidIntReg)
            }
        } else {
            Self::from_str(s).map_err(|_| ParseError::InvalidIntReg)
        }
    }
}

impl crate::parser::WithParser for IntReg {
    fn parse(input: &str) -> IResult<&str, Self> {
        map_res(alphanumeric1, |s: &str| Self::from_str_custom(s))(input)
    }
}
