use bitvec::{field::BitField as _, order::Lsb0, view::BitView as _};
use nom::{
    branch::alt, bytes::complete::tag, character::complete::multispace1, combinator::opt, IResult,
};

use crate::WithParser;

use super::{
    op::{Immediate, Op},
    reg::Register,
    syntax::OpName,
};

pub fn li(input: &str) -> IResult<&str, Vec<Op>> {
    let (i, _) = tag("li")(input)?;
    let (i, _) = multispace1(i)?;
    let (i, reg) = Register::parse(i)?;
    let (i, _) = multispace1(i)?;
    let (i, imm) = Immediate::parse(i)?;

    // li reg, label

    if imm.raw().is_none() {
        return Ok((
            i,
            vec![
                Op {
                    imm: imm.clone(),
                    o: OpName::LUI,
                    rd: reg,
                    rs1: Register::Zero,
                    ..Default::default()
                },
                Op {
                    imm,
                    o: OpName::ADDI,
                    rd: reg,
                    rs1: reg,
                    ..Default::default()
                },
            ],
        ));
    }

    // li reg, i32

    let imm = imm.raw().unwrap() as u32;

    let bv = imm.view_bits::<Lsb0>();

    let mut ops = Vec::new();

    let lui = (bv[12..=31]
        .load::<u32>()
        .wrapping_add(bv[11..=11].load::<u32>())
        << 12
        >> 12) as i32;

    if lui != 0 {
        ops.push(Op {
            imm: Immediate::from_offset(lui),
            o: OpName::LUI,
            rd: reg,
            rs1: Register::Zero,
            ..Default::default()
        });

        ops.push(Op {
            imm: Immediate::from_offset(bv[0..=11].load::<i32>()),
            o: OpName::ADDI,
            rd: reg,
            rs1: reg,
            ..Default::default()
        });
    } else {
        ops.push(Op {
            imm: Immediate::from_offset(bv.load::<i32>()),
            o: OpName::ADDI,
            rd: reg,
            rs1: Register::Zero,
            ..Default::default()
        });
    }

    Ok((i, ops))
}

pub fn pseudo(input: &str) -> IResult<&str, Option<Vec<Op>>> {
    opt(alt((li, li)))(input)
}
