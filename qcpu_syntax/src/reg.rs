use strum_macros::{EnumIter, EnumString, VariantNames};

use crate::WithParser;

#[derive(PartialEq, Clone, Copy, Debug, EnumString, EnumIter, VariantNames)]
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

impl WithParser for IntReg {}
