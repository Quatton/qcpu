use std::str::FromStr;

use nom::IResult;
use strum_macros::{EnumIter, EnumString, VariantNames};

use nom::character::complete::alphanumeric1;
use nom::combinator::map_res;

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

impl IntReg {
    pub fn parse(input: &str) -> IResult<&str, Self> {
        map_res(alphanumeric1, |s: &str| Self::from_str(s))(input)
    }
}

#[macro_export]
macro_rules! rop {
    ($($funct7:literal rs2 rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, EnumString, EnumProperty, VariantNames)]
        #[strum(serialize_all = "lowercase")]
        pub enum ROp {
            $($name,)*
        }

        impl ROp {
            pub fn parse(input: &str) -> IResult<&str, Self> {
                map_res(alphanumeric1, |s: &str| Self::from_str(s))(input)
            }

            pub fn to_machine_code(self, rd: IntReg, rs1: IntReg, rs2: IntReg) -> u32 {
                match self {
                    $(
                        ROp::$name => {
                            let funct7 = $funct7;
                            let funct3 = $funct3;
                            let opcode = $opcode;
                            let rs2 = rs2 as u32;
                            let rs1 = rs1 as u32;
                            let rd = rd as u32;
                            funct7 << 25 | rs2 << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }
    };
}

#[macro_export]
macro_rules! iop {
    ($(imm[11:0] rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, EnumString, EnumProperty, VariantNames)]
        #[strum(serialize_all = "lowercase")]
        pub enum IOp {
            $($name,)*
        }

        impl IOp {
            pub fn parse(input: &str) -> IResult<&str, Self> {
                map_res(alphanumeric1, |s: &str| Self::from_str(s))(input)
            }

            pub fn to_machine_code(self, rd: IntReg, rs1: IntReg, imm: i32) -> u32 {
                match self {
                    $(
                        IOp::$name => {
                            let opcode = $opcode;
                            let funct3 = $funct3;
                            let rd = rd as u32;
                            let rs1 = rs1 as u32;
                            let imm = imm as u32;
                            imm << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }
    };
}
