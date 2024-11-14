use std::collections::HashMap;
use std::fmt::Debug;
use std::ops::{Deref, DerefMut};

use nom::bytes::complete::tag;
use nom::character::complete::{char, hex_digit1, one_of};
use nom::combinator::{opt, recognize, verify};
use nom::multi::many0;
use nom::sequence::{pair, preceded, terminated};
use nom::{
    branch::alt,
    character::complete::{digit1, multispace0, multispace1},
    combinator::{map, map_res},
    sequence::{delimited, tuple},
    IResult,
};

use crate::error::ParseError;
use crate::reg::IntReg;
use crate::{
    BOp, FCOp, FLOp, FROp, FSOp, FXOp, FloatReg, IOp, ISOp, JOp, JROp, LOp, ROp, RoundingMode,
    STOp, UOp,
};

pub fn parse_i32(input: &str) -> IResult<&str, i32> {
    alt((
        map_res(preceded(tag("0x"), hex_digit1), |s: &str| {
            i32::from_str_radix(s, 16)
        }),
        map_res(recognize(pair(opt(char('-')), digit1)), |s: &str| {
            // println!("{:?} {:?}", s, d);
            s.parse::<i32>()
        }),
    ))(input)
}

pub fn parse_both(input: &str) -> IResult<&str, usize> {
    let (input, reg) = opt(IntReg::parse)(input)?;
    match reg {
        Some(reg) => Ok((input, reg as usize)),
        None => {
            let (input, reg) = FloatReg::parse(input)?;
            Ok((input, reg as usize))
        }
    }
}

pub trait WithParser: std::str::FromStr {
    fn parse(input: &str) -> IResult<&str, Self> {
        map_res(identifier, |s: &str| Self::from_str(s))(input)
    }
}

pub trait FromMachineCode<'a> {
    fn from_machine_code(input: u32) -> Result<Op, ParseError>;
}

#[derive(Debug, Clone, PartialEq)]
pub struct LabelMap(HashMap<String, usize>, HashMap<usize, String>);

impl LabelMap {
    pub fn new() -> Self {
        Self(HashMap::new(), HashMap::new())
    }

    pub fn insert(&mut self, label: String, idx: usize) {
        self.0.insert(label.clone(), idx);
        self.1.insert(idx, label);
    }

    pub fn get_label(&self, idx: usize) -> Option<&String> {
        self.1.get(&idx)
    }
}

impl Default for LabelMap {
    fn default() -> Self {
        Self::new()
    }
}

impl Deref for LabelMap {
    type Target = HashMap<String, usize>;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl DerefMut for LabelMap {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

pub type WithContext<T> = (T, ParsingContext);

#[derive(Clone)]
pub struct JumpTarget {
    label: Option<String>,
    offset: Option<i32>,
}

impl Debug for JumpTarget {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self.label() {
            Some(label) => write!(f, "{label}"),
            None => write!(f, "{}", self.offset().unwrap()),
        }
    }
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
    pub fn parse(input: &str) -> IResult<&str, Self> {
        let (input, offset) = opt(parse_i32)(input)?;
        if let Some(offset) = offset {
            return Ok((input, Self::from_offset(offset)));
        }
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

pub struct ParsingContext {
    pub label_map: LabelMap,
    pub main_label: String,
}

impl Default for ParsingContext {
    fn default() -> Self {
        Self {
            label_map: LabelMap::new(),
            main_label: "_min_caml_start".to_owned(),
        }
    }
}

impl ParsingContext {
    pub fn new() -> Self {
        Self::default()
    }

    pub fn get_main_pc(&self) -> Option<usize> {
        self.label_map.get(&self.main_label).copied()
    }

    pub fn with_main_label(mut self, label: String) -> Self {
        self.main_label = label;
        self
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum Op {
    R(ROp, IntReg, IntReg, IntReg),
    I(IOp, IntReg, IntReg, JumpTarget),
    IS(ISOp, IntReg, IntReg, i32),
    B(BOp, IntReg, IntReg, JumpTarget),
    S(STOp, IntReg, IntReg, i32),
    L(LOp, IntReg, IntReg, i32),
    J(JOp, IntReg, JumpTarget),
    JR(JROp, IntReg, IntReg, JumpTarget),
    U(UOp, IntReg, JumpTarget),

    FS(FSOp, FloatReg, IntReg, i32),
    FL(FLOp, FloatReg, IntReg, JumpTarget),
    FR(FROp, FloatReg, FloatReg, FloatReg, RoundingMode),
    FC(FCOp, usize, FloatReg, FloatReg),
    FX(FXOp, usize, usize, RoundingMode),
    Raw(u32),
}

#[derive(Debug, PartialEq, Clone)]
pub enum Node {
    OpNode(Op),
    Label(String),
}

// courtesy of https://stackoverflow.com/a/61329008
// also OH MY GOD
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
                    delimited(multispace0, JumpTarget::parse, multispace0),
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
                |(op, rs1, rs2, imm)| Op::B(op, rs2, rs1, imm),
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
            map(
                tuple((
                    delimited(multispace0, STOp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    preceded(multispace0, parse_i32),
                    terminated(delimited(char('('), IntReg::parse, char(')')), multispace1),
                )),
                |(op, rs2, imm, rs1)| Op::S(op, rs2, rs1, imm),
            ),
            map(
                tuple((
                    delimited(multispace0, LOp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    preceded(multispace0, parse_i32),
                    terminated(delimited(char('('), IntReg::parse, char(')')), multispace1),
                )),
                |(op, rd, imm, rs1)| Op::L(op, rd, rs1, imm),
            ),
            // frop
            map(
                tuple((
                    delimited(multispace0, FROp::parse, multispace1),
                    delimited(multispace0, FloatReg::parse, multispace1),
                    delimited(multispace0, FloatReg::parse, multispace1),
                    delimited(multispace0, FloatReg::parse, multispace0),
                )),
                |(op, rd, rs1, rs2)| Op::FR(op, rd, rs1, rs2, RoundingMode::RNE),
            ), // fcop
            map(
                tuple((
                    delimited(multispace0, FCOp::parse, multispace1),
                    delimited(multispace0, parse_both, multispace1),
                    delimited(multispace0, FloatReg::parse, multispace1),
                    delimited(multispace0, FloatReg::parse, multispace0),
                )),
                |(op, rd, rs1, rs2)| Op::FC(op, rd, rs1, rs2),
            ),
            map(
                tuple((
                    delimited(multispace0, FSOp::parse, multispace1),
                    delimited(multispace0, FloatReg::parse, multispace1),
                    preceded(multispace0, parse_i32),
                    terminated(delimited(char('('), IntReg::parse, char(')')), multispace1),
                )),
                |(op, rs2, imm, rs1)| Op::FS(op, rs2, rs1, imm),
            ),
            map(
                tuple((
                    delimited(multispace0, FLOp::parse, multispace1),
                    delimited(multispace0, FloatReg::parse, multispace1),
                    preceded(multispace0, JumpTarget::parse),
                    terminated(delimited(char('('), IntReg::parse, char(')')), multispace1),
                )),
                |(op, rd, imm, rs1)| Op::FL(op, rd, rs1, imm),
            ),
            // uop
            map(
                tuple((
                    delimited(multispace0, UOp::parse, multispace1),
                    delimited(multispace0, IntReg::parse, multispace1),
                    delimited(multispace0, JumpTarget::parse, multispace0),
                )),
                |(op, rd, imm)| Op::U(op, rd, imm),
            ),
            map(
                tuple((
                    delimited(multispace0, FXOp::parse, multispace1),
                    delimited(multispace0, parse_both, multispace1),
                    delimited(multispace0, parse_both, multispace0),
                )),
                |(op, rd, rs1)| Op::FX(op, rd, rs1, RoundingMode::RNE),
            ),
            map(
                delimited(
                    tuple((multispace0, tag(".word"), multispace1)),
                    parse_i32,
                    multispace1,
                ),
                |w| Op::Raw(w as u32),
            ),
        ))(input)
    }

    pub fn to_machine_code(&self, ctx: &ParsingContext) -> u32 {
        match self {
            &Op::R(op, rd, rs1, rs2) => op.to_machine_code(rd, rs1, rs2),
            Op::I(op, rd, rs1, imm) => {
                let imm = imm.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rd, *rs1, imm)
            }
            &Op::IS(op, rd, rs1, shamt) => op.to_machine_code(rd, rs1, shamt),
            Op::B(op, rs2, rs1, label) => {
                let imm = label.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rs2, *rs1, imm)
            }
            &Op::S(op, rs2, rs1, imm) => op.to_machine_code(rs2, rs1, imm),
            &Op::L(op, rd, rs1, imm) => op.to_machine_code(rd, rs1, imm),
            Op::JR(op, rd, rs1, label) => {
                let imm = label.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rd, *rs1, imm)
            }
            Op::J(op, rd, label) => {
                let imm = label.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rd, imm)
            }
            Op::U(op, rd, imm) => op.to_machine_code(*rd, imm.offset().unwrap()),
            Op::FR(op, rd, rs1, rs2, rm) => op.to_machine_code(*rd, *rs1, *rs2, *rm),
            Op::FC(op, rd, rs1, rs2) => op.to_machine_code(*rd, *rs1, *rs2),
            &Op::FS(op, rs2, rs1, imm) => op.to_machine_code(rs2, rs1, imm),
            Op::FL(op, rd, rs1, imm) => {
                let imm = imm.offset_or_lookup(ctx).unwrap(); // then just panic idc
                op.to_machine_code(*rd, *rs1, imm)
            }
            Op::FX(op, rd, rs1, rm) => op.to_machine_code(*rd, *rs1, *rm),
            Op::Raw(mc) => *mc,
        }
    }

    pub fn from_machine_code(input: u32, _ctx: &ParsingContext) -> Result<Self, ParseError> {
        let opcode = 0b00000000000000000000000001111111 & input;
        match opcode {
            0b0110011 => ROp::from_machine_code(input),
            0b0010011 => IOp::from_machine_code(input).or_else(|_| ISOp::from_machine_code(input)),
            0b1100011 => BOp::from_machine_code(input),
            0b1100111 => JROp::from_machine_code(input),
            0b1101111 => JOp::from_machine_code(input),
            0b0100011 => STOp::from_machine_code(input),
            0b0000011 => LOp::from_machine_code(input),
            0b0000111 => FLOp::from_machine_code(input),
            0b0100111 => FSOp::from_machine_code(input),
            0b0110111 | 0b0010111 => UOp::from_machine_code(input),
            0b1010011 => FROp::from_machine_code(input).or_else(|_| {
                FCOp::from_machine_code(input).or_else(|_| FXOp::from_machine_code(input))
            }),
            _ => Ok(Op::Raw(input)),
        }
    }

    pub fn to_asm(&self) -> String {
        match self {
            Op::R(op, rd, rs1, rs2) => format!("{} {}, {}, {}", op, rd, rs1, rs2),
            Op::I(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rd, rs1, imm),
            Op::IS(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rd, rs1, imm),
            Op::B(op, rd, rs1, imm) => format!("{} {}, {}, {}", op, rs1, rd, imm),
            Op::S(op, rs2, rs1, imm) => format!("{op} {rs2}, {imm}({rs1})"),
            Op::L(op, rd, rs1, imm) => format!("{op} {rd}, {imm}({rs1})"),
            Op::J(op, rd, imm) => format!("{op} {rd}, {imm}"),
            Op::JR(op, rd, rs1, imm) => format!("{op} {rd}, {rs1}, {imm}"),
            Op::U(op, rd, imm) => format!("{op} {rd}, {imm}"),

            Op::FR(op, rd, rs1, rs2, _) => format!("{} {}, {}, {}", op, rd, rs1, rs2),
            Op::FC(op, rd, rs1, rs2) => format!("{} {}, {}, {}", op, rd, rs1, rs2),
            Op::FS(op, rs2, rs1, imm) => format!("{op} {rs2}, {imm}({rs1})"),
            Op::FL(op, rd, rs1, imm) => format!("{op} {rd}, {imm}({rs1})"),
            Op::FX(op, rd, rs1, _) => format!("{op} {rd}, {rs1}"),

            Op::Raw(input) => format!(".word 0x{input:08x}"),
        }
    }

    pub fn resolve_labels(&mut self, ctx: &ParsingContext, idx: usize) -> Result<(), ParseError> {
        let label = match self {
            Op::B(_, _, _, label) => label,
            Op::J(_, _, label) => label,
            Op::JR(_, _, _, label) => label,
            Op::FL(_, _, _, label) => label,
            Op::I(_, _, _, label) => label,
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
