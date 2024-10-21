use std::collections::HashMap;

use nom::character::complete::{alphanumeric1, anychar, char};
use nom::combinator::{all_consuming, opt, recognize, verify};
use nom::multi::many0_count;
use nom::sequence::{pair, preceded};
use nom::{
    branch::alt,
    character::complete::{digit1, multispace0, multispace1},
    combinator::{map, map_res},
    sequence::{delimited, tuple},
    IResult,
};

use crate::error::ParseError;
use crate::reg::IntReg;
use crate::{BOp, IOp, ISOp, ROp};

pub fn parse_i32(input: &str) -> IResult<&str, i32> {
    map_res(digit1, |s: &str| s.parse::<i32>())(input)
}

pub trait WithParser: std::str::FromStr {
    fn parse(input: &str) -> IResult<&str, Self> {
        map_res(alphanumeric1, |s: &str| Self::from_str(s))(input)
    }
}

pub trait FromMachineCode<'a> {
    fn from_machine_code(input: u32) -> Result<Op, ParseError>;
}

pub type LabelMap = HashMap<String, usize>;
pub type WithContext<T> = (T, ParsingContext);

#[derive(Debug, PartialEq, Clone)]
pub struct JumpTarget {
    label: Option<String>,
    offset: Option<u32>,
}

impl JumpTarget {
    pub fn new(label: String, offset: u32) -> Self {
        Self {
            label: Some(label),
            offset: Some(offset),
        }
    }
    pub fn from_label(label: String) -> Self {
        Self {
            label: Some(label),
            offset: None,
        }
    }
    pub fn from_offset(offset: u32) -> Self {
        Self {
            label: None,
            offset: Some(offset),
        }
    }
    pub fn label(&self) -> Option<&String> {
        self.label.as_ref()
    }
    pub fn offset(&self) -> Option<u32> {
        self.offset
    }
    pub fn offset_or_lookup(&self, ctx: &ParsingContext) -> Option<u32> {
        self.offset().or_else(|| {
            ctx.label_map
                .get(self.label.as_ref().unwrap())
                .map(|x| (*x as u32))
        })
    }
}

#[derive(Default)]
pub struct ParsingContext {
    pub label_map: LabelMap,
}

#[derive(Debug, PartialEq, Clone)]
pub enum Op {
    R(ROp, IntReg, IntReg, IntReg),
    I(IOp, IntReg, IntReg, i32),
    IS(ISOp, IntReg, IntReg, i32),
    B(BOp, IntReg, IntReg, JumpTarget),
}

#[derive(Debug, PartialEq, Clone)]
pub enum Node {
    OpNode(Op),
    Label(String),
}

// courtesy of https://stackoverflow.com/a/61329008
pub fn identifier<'a, E: nom::error::ParseError<&'a str>>(
    s: &'a str,
) -> IResult<&'a str, &'a str, E> {
    recognize(all_consuming(pair(
        verify(anychar, |&c| c.is_lowercase()),
        many0_count(preceded(opt(char('_')), alphanumeric1)),
    )))(s)
}

impl Node {
    pub fn parse(input: &str) -> IResult<&str, Self> {
        let (input, label) = opt(delimited(multispace0, identifier, char(':')))(input)?;
        if let Some(label) = label {
            return Ok((input, Node::Label(label.to_string())));
        }

        let (input, op) = Op::parse(input)?;

        Ok((input, Node::OpNode(op)))
    }
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

    pub fn to_machine_code(&self, ctx: &ParsingContext) -> u32 {
        match self {
            &Op::R(op, rd, rs1, rs2) => op.to_machine_code(rd, rs1, rs2),
            &Op::I(op, rd, rs1, imm) => op.to_machine_code(rd, rs1, imm),
            &Op::IS(op, rd, rs1, shamt) => op.to_machine_code(rd, rs1, shamt),
            Op::B(op, rs2, rs1, label) => {
                let imm = label.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rs2, *rs1, imm)
            }
        }
    }

    pub fn from_machine_code(input: u32, _ctx: &mut ParsingContext) -> Result<Self, ParseError> {
        let opcode = 0b00000000000000000000000001111111 & input;
        match opcode {
            0b0110011 => ROp::from_machine_code(input),
            0b0010011 => IOp::from_machine_code(input).or_else(|_| ISOp::from_machine_code(input)),
            0b1100011 => BOp::from_machine_code(input),
            _ => Err(ParseError::DisassemblerError(format!("{:032b}", input))),
        }
    }

    pub fn to_asm(self) -> String {
        match self {
            Op::R(op, rd, rs1, rs2) => format!("{} {}, {}, {}", op, rd, rs1, rs2),
            Op::I(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rd, rs1, imm),
            Op::IS(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rd, rs1, imm),
            Op::B(op, rd, rs1, imm) => format!(
                "{} {}, {}, {}",
                op,
                rd,
                rs1,
                imm.label()
                    .map_or_else(|| imm.offset().unwrap().to_string(), |x| x.to_string())
            ),
        }
    }
}
