use std::collections::HashMap;

use nom::character::complete::{alphanumeric1, char, one_of};
use nom::combinator::{opt, recognize, verify};
use nom::multi::many0;
use nom::sequence::pair;
use nom::{
    branch::alt,
    character::complete::{digit1, multispace0, multispace1},
    combinator::{map, map_res},
    sequence::{delimited, tuple},
    IResult,
};

use crate::error::ParseError;
use crate::reg::IntReg;
use crate::{BOp, IOp, ISOp, JOp, JROp, ROp, STOp};

pub fn parse_i32(input: &str) -> IResult<&str, i32> {
    map_res(recognize(pair(opt(char('-')), digit1)), |s: &str| {
        // println!("{:?} {:?}", s, d);
        s.parse::<i32>()
    })(input)
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

#[derive(Debug, Clone)]
pub struct JumpTarget {
    label: Option<String>,
    offset: Option<i32>,
}

impl PartialEq for JumpTarget {
    fn eq(&self, other: &Self) -> bool {
        self.offset == other.offset
    }
}

impl JumpTarget {
    pub fn new(label: String, offset: i32) -> Self {
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
    pub fn from_offset(offset: i32) -> Self {
        Self {
            label: None,
            offset: Some(offset),
        }
    }
    pub fn label(&self) -> Option<&String> {
        self.label.as_ref()
    }
    pub fn offset(&self) -> Option<i32> {
        self.offset
    }
    pub fn offset_or_lookup(&self, ctx: &ParsingContext) -> Option<i32> {
        self.offset().or_else(|| {
            ctx.label_map
                .get(self.label.as_ref().unwrap())
                .map(|x| (*x as i32))
        })
    }
    fn parse(input: &str) -> IResult<&str, Self> {
        identifier(input).map(|(input, label)| (input, Self::from_label(label.to_string())))
    }
}

impl std::fmt::Display for JumpTarget {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self.label() {
            Some(label) => write!(f, "{label}"),
            None => write!(f, "{}", self.offset().unwrap()),
        }
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
    S(STOp, IntReg, IntReg, i32),
    J(JOp, IntReg, JumpTarget),
    JR(JROp, IntReg, IntReg, JumpTarget),
    Halt,
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
    verify(
        recognize(pair(
            alt((one_of(
                "_.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
            ),)),
            many0(alt((one_of(
                "_.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
            ),))),
        )),
        |s: &str| !s.chars().next().unwrap().is_numeric(),
    )(s)
}

impl Node {
    pub fn parse(input: &str) -> IResult<&str, Self> {
        let (input, label) = opt(delimited(multispace0, identifier, char(':')))(input)?;
        let (input, _) = opt(multispace0)(input)?;
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
            map(
                tuple((
                    delimited(multispace0, BOp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, JumpTarget::parse, multispace0),
                )),
                |(op, rs2, rs1, imm)| Op::B(op, rs2, rs1, imm),
            ),
            map(
                tuple((
                    delimited(multispace0, JOp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, JumpTarget::parse, multispace0),
                )),
                |(op, rd, imm)| Op::J(op, rd, imm),
            ),
            map(
                tuple((
                    delimited(multispace0, JROp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, JumpTarget::parse, multispace0),
                )),
                |(op, rd, rs1, imm)| Op::JR(op, rd, rs1, imm),
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
            &Op::S(op, rs2, rs1, imm) => op.to_machine_code(rs2, rs1, imm),
            Op::JR(op, rd, rs1, label) => {
                let imm = label.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rd, *rs1, imm)
            }
            Op::J(op, rd, label) => {
                let imm = label.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rd, imm)
            }
            Op::Halt => 0,
        }
    }

    pub fn from_machine_code(input: u32, _ctx: &ParsingContext) -> Result<Self, ParseError> {
        if input == 0 {
            return Ok(Op::Halt);
        }
        let opcode = 0b00000000000000000000000001111111 & input;
        match opcode {
            0b0110011 => ROp::from_machine_code(input),
            0b0010011 => IOp::from_machine_code(input).or_else(|_| ISOp::from_machine_code(input)),
            0b1100011 => BOp::from_machine_code(input),
            0b1100111 => JROp::from_machine_code(input),
            0b1101111 => JOp::from_machine_code(input),
            _ => Err(ParseError::DisassemblerError(format!("{:032b}", input))),
        }
    }

    pub fn to_asm(&self) -> String {
        match self {
            Op::R(op, rd, rs1, rs2) => format!("{} {}, {}, {}", op, rd, rs1, rs2),
            Op::I(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rd, rs1, imm),
            Op::IS(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rd, rs1, imm),
            Op::B(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rd, rs1, imm),
            Op::S(op, rs2, rs1, imm) => format!("{op} {rs2}, {imm}({rs1})"),
            Op::J(op, rd, imm) => format!("{op} {rd}, {imm}"),
            Op::JR(op, rd, rs1, imm) => format!("{op} {rd}, {rs1}, {imm}"),
            Op::Halt => "".to_owned(),
        }
    }

    pub fn resolve_labels(&mut self, ctx: &ParsingContext, idx: usize) -> Result<(), ParseError> {
        let label = match self {
            Op::B(_, _, _, label) => label,
            Op::J(_, _, label) => label,
            Op::JR(_, _, _, label) => label,
            _ => return Ok(()),
        };

        if label.offset().is_none() {
            if label.label.is_none() {
                return Err(ParseError::JumpTargetError(
                    "Jump target must have either a label or an offset".to_string(),
                ));
            }
            if !ctx.label_map.contains_key(label.label.as_ref().unwrap()) {
                return Err(ParseError::DisassemblerError(format!(
                    "Label {} not found",
                    label.label.as_ref().unwrap()
                )));
            }

            let target = ctx.label_map.get(label.label.as_ref().unwrap()).unwrap();
            let offset = (*target as i32 - idx as i32) * 4;
            label.offset = Some(offset);
        }
        Ok(())
    }
}
