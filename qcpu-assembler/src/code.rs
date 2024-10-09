use nom::character::complete::alphanumeric1;
use nom::{
    branch::alt,
    character::complete::{digit1, multispace0, multispace1},
    combinator::{map, map_res},
    sequence::{delimited, tuple},
    IResult,
};
use std::str::FromStr;
use strum_macros::{EnumProperty, EnumString, VariantNames};

use crate::syntax::IntReg;
use crate::{iop, rop};

rop! {
  0b0000000 rs2 rs1 000 rd 0b0110011 Add
  0b0100000 rs2 rs1 000 rd 0b0110011 Sub
}

iop! {
  imm[11:0] rs1 000 rd 0b0010011 Addi
}

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Op {
    R(ROp, IntReg, IntReg, IntReg),
    I(IOp, IntReg, IntReg, i32),
}

pub fn parse_i32(input: &str) -> IResult<&str, i32> {
    map_res(digit1, |s: &str| s.parse::<i32>())(input)
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
        ))(input)
    }

    pub fn to_machine_code(self) -> u32 {
        match self {
            Op::R(op, rd, rs1, rs2) => op.to_machine_code(rd, rs1, rs2),
            Op::I(op, rd, rs1, imm) => op.to_machine_code(rd, rs1, imm),
        }
    }
}
