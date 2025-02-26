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

    // Handle labels as before.
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

    let imm_val = imm.raw().unwrap();
    if (-2048..2048).contains(&imm_val) {
        return Ok((
            i,
            vec![Op {
                imm: Immediate::from_offset(imm_val),
                o: OpName::ADDI,
                rd: reg,
                rs1: Register::Zero,
                ..Default::default()
            }],
        ));
    }

    let upper = (imm_val + 0x800) >> 12;
    let lower = imm_val - (upper << 12);

    let mut ops = Vec::new();
    if upper != 0 {
        ops.push(Op {
            imm: Immediate::from_offset(upper),
            o: OpName::LUI,
            rd: reg,
            rs1: Register::Zero,
            ..Default::default()
        });
        ops.push(Op {
            imm: Immediate::from_offset(lower),
            o: OpName::ADDI,
            rd: reg,
            rs1: reg,
            ..Default::default()
        });
    } else {
        ops.push(Op {
            imm: Immediate::from_offset(lower),
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
