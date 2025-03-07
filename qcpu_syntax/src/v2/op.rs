use std::fmt::Debug;

use bitvec::{bitarr, field::BitField, order::Lsb0, view::BitView};
use nom::{
    branch::alt,
    bytes::complete::tag,
    character::complete::{char, multispace0, multispace1},
    combinator::{map, opt},
    number::complete::float,
    sequence::delimited,
    IResult,
};
use strum::VariantArray as _;

use crate::{identifier, parse_i32, LabelMap, ParsingContext, WithParser as _};

use super::{
    pseudo::pseudo,
    reg::Register,
    syntax::{OpInfo, OpName, OpType},
};

#[derive(Default, Clone)]
pub struct Immediate {
    label: Option<String>,
    raw: Option<i32>,
}

impl Debug for Immediate {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self.label() {
            Some(label) => write!(f, "{label}"),
            None => match self.raw() {
                Some(offset) => write!(f, "{}", offset),
                None => write!(f, "None"),
            },
        }
    }
}

impl PartialEq for Immediate {
    fn eq(&self, other: &Self) -> bool {
        self.raw == other.raw
    }
}

impl Immediate {
    pub fn new(label: String, offset: i32) -> Self {
        Self {
            label: Some(label),
            raw: Some(offset),
        }
    }
    pub fn from_label(label: String) -> Self {
        Self {
            label: Some(label),
            raw: None,
        }
    }
    pub fn from_offset(offset: i32) -> Self {
        Self {
            label: Some(format!("{}", offset)),
            raw: Some(offset),
        }
    }
    pub fn label(&self) -> Option<&String> {
        self.label.as_ref()
    }
    pub fn raw(&self) -> Option<i32> {
        self.raw
    }
    pub fn offset_or_lookup(&self, ctx: &ParsingContext) -> Option<i32> {
        self.raw().or_else(|| {
            ctx.label_map
                .get(self.label.as_ref().unwrap())
                .map(|x| (*x as i32))
        })
    }

    pub fn parse(input: &str) -> IResult<&str, Self> {
        let (input, offset) = opt(parse_i32)(input)?;
        let (input, f32) = opt(float)(input)?;
        if let Some(offset) = offset {
            return Ok((input, Self::from_offset(offset)));
        }

        if let Some(f32) = f32 {
            return Ok((input, Self::from_offset(f32.to_bits() as i32)));
        }

        identifier(input).map(|(input, label)| (input, Self::from_label(label.to_string())))
    }
}

#[derive(Debug, PartialEq, Clone)]
pub enum Node {
    Label(String),
    OpNode(Op),
}

impl Node {
    pub fn parse(input: &str) -> IResult<&str, Vec<Self>> {
        let (input, label) = opt(delimited(multispace0, identifier, char(':')))(input)?;
        let (input, _) = opt(multispace0)(input)?;
        if let Some(label) = label {
            return Ok((input, vec![Node::Label(label.to_string())]));
        }

        let (input, op) = Op::parse(input)?;

        Ok((input, op.into_iter().map(Node::OpNode).collect()))
    }
}

#[derive(Default, Debug, PartialEq, Clone)]
pub struct Op {
    pub o: OpName,
    pub rd: Register,
    pub rs1: Register,
    pub rs2: Register,
    pub imm: Immediate,
}

impl Op {
    pub fn to_asm(&self) -> String {
        match self.o.optype {
            OpType::R => format!("{:?} {:?}, {:?}, {:?}", self.o, self.rd, self.rs1, self.rs2),
            OpType::F => format!("{:?} {:?}, {:?}, {:?}", self.o, self.rd, self.rs1, self.rs2),
            OpType::I => format!("{:?} {:?}, {:?}, {:?}", self.o, self.rd, self.rs1, self.imm),
            OpType::L => format!("{:?} {:?}, {:?}({:?})", self.o, self.rd, self.imm, self.rs1),
            OpType::S => format!(
                "{:?} {:?}, {:?}({:?})",
                self.o, self.rs2, self.imm, self.rs1
            ),
            OpType::U => format!("{:?} {:?}, {:?}", self.o, self.rd, self.imm),
            OpType::B => format!(
                "{:?} {:?}, {:?}, {:?}",
                self.o, self.rs1, self.rs2, self.imm
            ),
            OpType::J => format!("{:?} {:?}, {:?}", self.o, self.rd, self.imm),
            OpType::N => format!("{:?} {:?}", self.o, self.rd),
            OpType::O => format!("{:?} {:?}", self.o, self.rs2),
            OpType::Raw => format!(".word {:08x}", self.imm.raw().unwrap()),
            OpType::E => format!("{:?} {:?}", self.o, self.imm),
            OpType::LU => format!("{:?} {:?}, {:?}", self.o, self.rd, self.imm),
            OpType::SU => format!("{:?} {:?}, {:?}", self.o, self.rs2, self.imm),
        }
        .to_ascii_lowercase()
    }

    pub fn raw(&self) -> u32 {
        let mut vec = bitarr![0; 32];
        vec[0..=3].store(self.o.opcode as u32);
        vec[4..=9].store(self.rd as usize);
        vec[10..=12].store(self.o.funct3.unwrap_or(0) as u32);
        vec[13..=18].store(self.rs1 as usize);
        vec[19..=24].store(self.rs2 as usize);
        vec[25..=31].store(self.o.funct7.unwrap_or(0) as u32);

        let imm = self.imm.raw().unwrap_or_default();

        match self.o.optype {
            OpType::R | OpType::F | OpType::N | OpType::O => {}
            OpType::I | OpType::L => {
                vec[19..=30].store(imm);
            }
            OpType::S => {
                vec[4..=9].store(imm);
                vec[25..=30].store(imm >> 6);
            }
            OpType::U => {
                vec[10..=29].store(imm);
            }
            OpType::B => {
                vec[4..=9].store(imm);
                vec[25..=31].store(imm >> 6);

                if !(-(1 << 12)..(1 << 12)).contains(&imm) {
                    println!("Warning: imm: {imm} too large for B type");
                }
            }
            OpType::J => {
                vec[10..=31].store(imm);

                if !(-(1 << 21)..(1 << 21)).contains(&imm) {
                    println!("Warning: imm: {imm} too large for J type");
                }
            }
            OpType::Raw => {
                vec.store(imm as u32);
            }
            OpType::E => {
                vec[13..=30].store(imm);
            }
            OpType::LU => {
                vec[10..31].store(imm as u32);
            }
            OpType::SU => {
                vec[4..=18].store(imm);
                vec[25..31].store(imm >> 15);
            }
        }

        vec.load()
    }

    pub fn decode(mc: u32) -> Self {
        let bv = mc.view_bits::<Lsb0>();

        let opcode = bv[0..=3].load::<usize>();
        let funct3 = bv[10..=12].load::<usize>();
        let funct7 = bv[25..=31].load::<usize>();

        let opinfo = OpInfo {
            optype: OpType::Raw,
            opcode,
            funct3: Some(funct3),
            funct7: Some(funct7),
        };

        let opname = OpName::VARIANTS
            .iter()
            .find(|it| OpInfo::match_code(&opinfo, it))
            .unwrap_or(&OpName::RAW);

        if opname == &OpName::RAW {
            // println!("Parsing as raw with imm {}", bv.load::<i32>());
            return Op {
                o: *opname,
                imm: Immediate::from_offset(bv.load::<i32>()),
                ..Default::default()
            };
        }

        let rd = bv[4..=9].load::<usize>();
        let rs1 = bv[13..=18].load::<usize>();
        let rs2 = bv[19..=24].load::<usize>();

        let mut op = Op {
            o: *opname,
            ..Default::default()
        };

        match opname.optype {
            OpType::R
            | OpType::F
            | OpType::J
            | OpType::U
            | OpType::I
            | OpType::N
            | OpType::L
            | OpType::LU => {
                op.rd = Register::from_usize(rd);
            }
            OpType::S | OpType::SU | OpType::B | OpType::Raw | OpType::O | OpType::E => {}
        };

        match opname.optype {
            OpType::R | OpType::F | OpType::S | OpType::B | OpType::L | OpType::I => {
                op.rs1 = Register::from_usize(rs1);
            }
            OpType::U
            | OpType::Raw
            | OpType::J
            | OpType::LU
            | OpType::SU
            | OpType::N
            | OpType::O
            | OpType::E => {}
        };

        match opname.optype {
            OpType::SU | OpType::R | OpType::F | OpType::S | OpType::B | OpType::O => {
                op.rs2 = Register::from_usize(rs2);
            }
            OpType::I
            | OpType::U
            | OpType::J
            | OpType::Raw
            | OpType::LU
            | OpType::N
            | OpType::L
            | OpType::E => {}
        };

        match opname.optype {
            OpType::I | OpType::L => {
                op.imm = Immediate::from_offset(bv[19..=30].load::<i32>());
            }
            OpType::S => {
                let mut of = bv[4..=9].to_bitvec();
                of.extend_from_bitslice(&bv[25..=30]);
                op.imm = Immediate::from_offset(of.load::<i32>());
            }
            OpType::U => {
                op.imm = Immediate::from_offset(bv[10..=29].load::<i32>());
            }
            OpType::LU => {
                op.imm = Immediate::from_offset(bv[10..=31].load::<u32>() as i32);
            }
            OpType::SU => {
                let mut of = bv[4..=18].to_bitvec();
                of.extend_from_bitslice(&bv[25..=31]);
                op.imm = Immediate::from_offset(of.load::<u32>() as i32);
            }
            OpType::B => {
                let mut of = bv[4..=9].to_bitvec();
                of.extend_from_bitslice(&bv[25..=31]);
                op.imm = Immediate::from_offset(of.load::<i32>());
            }
            OpType::J => {
                op.imm = Immediate::from_offset(bv[10..=31].load::<i32>());
            }
            OpType::E => {
                op.imm = Immediate::from_offset(bv[13..=30].load::<i32>());
            }
            OpType::F | OpType::R | OpType::N | OpType::Raw | OpType::O => {}
        };

        op
    }

    pub fn resolve_label(&mut self, label_map: &mut LabelMap, idx: usize) -> Result<(), String> {
        let offset = match self.o.optype {
            OpType::I | OpType::L | OpType::U | OpType::LU | OpType::SU => 0,
            OpType::B | OpType::S | OpType::J => idx as i32,
            OpType::R | OpType::F | OpType::N | OpType::Raw | OpType::O => return Ok(()),
            OpType::E => {
                // special case

                if self.o == OpName::EBREAK || self.imm.raw().is_some() {
                    return Ok(());
                }

                0
            }
        };

        let imm = &mut self.imm;
        if imm.raw().is_some() {
            return Ok(());
        }

        if let Some(label) = imm.label() {
            match label_map.get(label) {
                Some(&target) => match self.o.optype {
                    OpType::U => {
                        let tgt = (target as u32) * 4;
                        let bv = tgt.view_bits::<Lsb0>();

                        imm.raw = Some(
                            bv[12..=31]
                                .load::<u32>()
                                .wrapping_add(bv[11..=11].load::<u32>())
                                as i32,
                        );
                    }
                    OpType::E => {
                        imm.raw = Some(target as i32);
                    }
                    _ => {
                        let target = target as i32;
                        imm.raw = Some((target - offset) * 4);
                    }
                },
                None => {
                    if self.o.optype == OpType::E {
                        let next = *label_map.values().max().unwrap();

                        label_map.insert(label.clone(), next + 1);

                        imm.raw = Some((next + 1) as i32);
                        return Ok(());
                    }

                    return Err(format!("Label not set for op {:?} at {}", self, idx));
                }
            }
        }

        Ok(())
    }

    pub fn parse(s: &str) -> IResult<&str, Vec<Self>> {
        let (s, _) = multispace0(s)?;

        let (s, op) = pseudo(s)?;

        if let Some(op) = op {
            return Ok((s, op));
        }

        let (s, o) = alt((OpName::parse, map(tag(".word"), |_| OpName::RAW)))(s)?;
        let (s, _) = multispace1(s)?;

        let (s, o) = match o.optype {
            OpType::E => {
                // ebreak
                let (s, imm) = match o {
                    OpName::EBREAK => (s, Immediate::default()),
                    OpName::ESTART => Immediate::parse(s)?,
                    OpName::ESTOP => Immediate::parse(s)?,
                    OpName::ECOUNT => Immediate::parse(s)?,
                    _ => unreachable!(),
                };

                (
                    s,
                    Self {
                        o,
                        imm,
                        ..Default::default()
                    },
                )
            }
            OpType::L => {
                // lw a0 imm(a1)
                let (s, rd) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;
                let (s, rs1) = delimited(char('('), Register::parse, char(')'))(s)?;

                (
                    s,
                    Self {
                        o,
                        rd,
                        rs1,
                        imm,
                        ..Default::default()
                    },
                )
            }
            OpType::S => {
                // sw a0 imm(a1)
                let (s, rs2) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;
                let (s, rs1) = delimited(char('('), Register::parse, char(')'))(s)?;

                (
                    s,
                    Self {
                        o,
                        rs1,
                        rs2,
                        imm,
                        ..Default::default()
                    },
                )
            }
            OpType::B => {
                // bne a0 a1 label/imm
                let (s, rs1) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, rs2) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rs1,
                        rs2,
                        imm,
                        ..Default::default()
                    },
                )
            }
            OpType::F => {
                // fadd fa0 fa1 fa2
                // fsqrt fa0 fa1
                let (s, rd) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, rs1) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;

                let (s, rs2) = match o {
                    OpName::FCVTSW | OpName::FCVTWS | OpName::FSQRT => (s, Register::Zero),
                    _ => Register::parse(s)?,
                };

                (
                    s,
                    Self {
                        o,
                        rd,
                        rs1,
                        rs2,
                        ..Default::default()
                    },
                )
            }
            OpType::I => {
                // addi a0 a1 imm
                let (s, rd) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, rs1) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rd,
                        rs1,
                        imm,
                        ..Default::default()
                    },
                )
            }

            OpType::J => {
                // jal ra label/imm
                let (s, rd) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rd,
                        imm,
                        ..Default::default()
                    },
                )
            }

            OpType::R => {
                // add a0 a1 a2
                let (s, rd) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, rs1) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, rs2) = Register::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rd,
                        rs1,
                        rs2,
                        ..Default::default()
                    },
                )
            }

            OpType::LU => {
                // lwi a0 imm
                let (s, rd) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rd,
                        imm,
                        ..Default::default()
                    },
                )
            }

            OpType::SU => {
                // swi a0 imm
                let (s, rs2) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rs2,
                        imm,
                        ..Default::default()
                    },
                )
            }

            OpType::U => {
                // lui a0 imm
                let (s, rd) = Register::parse(s)?;
                let (s, _) = multispace1(s)?;
                let (s, imm) = Immediate::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rd,
                        imm,
                        ..Default::default()
                    },
                )
            }

            OpType::N => {
                // inb a0
                let (s, rd) = Register::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rd,
                        ..Default::default()
                    },
                )
            }

            OpType::O => {
                // inb a0
                let (s, rs2) = Register::parse(s)?;

                (
                    s,
                    Self {
                        o,
                        rs2,
                        ..Default::default()
                    },
                )
            }

            OpType::Raw => {
                // .word imm
                let (s, imm) = Immediate::parse(s)?;

                if imm.label().is_some() {
                    return Err(nom::Err::Failure(nom::error::Error::new(
                        s,
                        nom::error::ErrorKind::Fail,
                    )));
                }

                (
                    s,
                    Self {
                        o,
                        imm,
                        ..Default::default()
                    },
                )
            }
        };

        Ok((s, vec![o]))
    }
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn bit_from() {
        let mut bv = bitarr![0; 32];

        bv[0..=3].store(0b0100_1011);

        assert_eq!(
            bv.load::<u32>(),
            0b0000_0000_0000_0000_0000_0000_0000_0000_1011
        );
    }
}
