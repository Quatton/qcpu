use nom::character::complete::alphanumeric1;
use nom::{
    branch::alt,
    character::complete::{digit1, multispace0, multispace1},
    combinator::{map, map_res},
    sequence::{delimited, tuple},
    IResult,
};

use crate::reg::IntReg;
use crate::{IOp, ISOp, ROp};

pub fn parse_i32(input: &str) -> IResult<&str, i32> {
    map_res(digit1, |s: &str| s.parse::<i32>())(input)
}

pub trait WithParser: std::str::FromStr {
    fn parse(input: &str) -> IResult<&str, Self> {
        map_res(alphanumeric1, |s: &str| Self::from_str(s))(input)
    }
}

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Op {
    R(ROp, IntReg, IntReg, IntReg),
    I(IOp, IntReg, IntReg, i32),
    IS(ISOp, IntReg, IntReg, i32),
}

impl Op {
    pub fn parse(input: &str) -> IResult<&str, Self> {
        alt((
            map(
                tuple((
                    delimited(multispace0, ROp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace0),
                )),
                |(op, rd, rs1, rs2)| Op::R(op, rd, rs1, rs2),
            ),
            map(
                tuple((
                    delimited(multispace0, IOp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, parse_i32, multispace0),
                )),
                |(op, rd, rs1, imm)| Op::I(op, rd, rs1, imm),
            ),
            map(
                tuple((
                    delimited(multispace0, ISOp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, parse_i32, multispace0),
                )),
                |(op, rd, rs1, imm)| Op::IS(op, rd, rs1, imm),
            ),
        ))(input)
    }

    pub fn to_machine_code(self) -> u32 {
        match self {
            Op::R(op, rd, rs1, rs2) => op.to_machine_code(rd, rs1, rs2),
            Op::I(op, rd, rs1, imm) => op.to_machine_code(rd, rs1, imm),
            Op::IS(op, rd, rs1, shamt) => op.to_machine_code(rd, rs1, shamt),
        }
    }
}
