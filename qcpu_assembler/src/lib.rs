#![allow(clippy::unusual_byte_groupings)]

use nom::multi::many0;
use qcpu_syntax::{
    error::ParseError,
    parser::{Node, Op, ParsingContext},
};

pub fn normalize(input: &str) -> String {
    // clean up
    format!("{}\n", input.trim().replace(",", " ").to_ascii_lowercase())
}

pub fn overnormalize_for_test(input: String) -> String {
    // regex
    input
        .replace(" ", "")
        .replace("\n", "")
        .to_ascii_lowercase()
}

pub fn parse_tree(input: &str, ctx: &mut ParsingContext) -> Result<Vec<Op>, ParseError> {
    let input = normalize(input);
    let (input, nodes) = many0(Node::parse)(&input)?;
    if !input.trim().is_empty() {
        return Err(ParseError::NomError(nom::error::Error {
            input: input.to_string(),
            code: nom::error::ErrorKind::Complete,
        }));
    };

    let mut len = 0;
    let mut ops: Vec<Op> = nodes
        .into_iter()
        .filter_map(|node| match node {
            Node::Label(label) => {
                ctx.label_map.insert(label, len);
                None
            }
            Node::OpNode(op) => {
                len += 1;
                Some(op)
            }
        })
        .collect();

    for (i, op) in ops.iter_mut().enumerate() {
        op.resolve_labels(ctx, i)?;
    }

    Ok(ops)
}

pub fn to_machine_code(ops: Vec<Op>, ctx: &ParsingContext) -> Result<Vec<u32>, ParseError> {
    Ok(ops.iter().map(|op| op.to_machine_code(ctx)).collect())
}

pub fn to_assembly(input: Vec<Op>) -> String {
    let mut result = String::new();
    for op in input {
        result.push_str(&format!("{}\n", op.to_asm()));
    }
    result
}

pub fn from_machine_code(input: Vec<u32>, ctx: &mut ParsingContext) -> Result<Vec<Op>, ParseError> {
    let mut ops = Vec::new();

    for mc in input {
        let op = Op::from_machine_code(mc, ctx)?;

        ops.push(op);
    }

    Ok(ops)
}

#[cfg(test)]
mod test {

    use std::str::FromStr;

    use qcpu_syntax::{reg::IntReg, BOp, ROp};

    use super::*;

    #[test]
    fn test_add() {
        let code = "add";
        assert_eq!(ROp::ADD, ROp::from_str(code).unwrap());
    }

    #[test]
    fn test_parse_op() {
        let code = r#"
            add a0 a1 a2
            sub a0 a1 a2
            addi a0 a1 1
        "#;
        let mut ctx = ParsingContext::default();
        let ops = parse_tree(code, &mut ctx).unwrap();
        for op in ops {
            println!("{:?}", op);
        }
    }

    #[test]
    fn test_machine_code() {
        let code = r#"
            add a0 a1 a2
            sub a3, a4, a5
            addi a0 a1 1
        "#;
        let mut ctx = ParsingContext::default();
        let ops = parse_tree(code, &mut ctx)
            .inspect_err(|e| eprintln!("{:?}", e))
            .unwrap();
        let expected = [0x00c58533, 0x40f706b3, 0x00158513];
        for (op, exp) in ops.iter().zip(expected.iter()) {
            println!("{:032b}", op.to_machine_code(&ctx));
            assert_eq!(op.to_machine_code(&ctx), *exp);
        }
    }

    #[test]
    fn test_from_machine_code() {
        let code = r#"
            addi t0, zero, 6
            addi t1, zero, 7
            addi t2, zero, 8
            addi t3, zero, 9
            addi t4, zero, 10
            add t5, t0, t1
            add t5, t5, t2
            add t5, t5, t3
            add t5, t5, t4
            addi t0, zero, 1
            addi t1, zero, 2
            addi t2, zero, 3
            addi t3, zero, 4
            addi t4, zero, 5
            sub t5, t5, t0
            sub t5, t5, t1
            sub t5, t5, t2
            sub t5, t5, t3
            sub t5, t5, t4

            srli t5, t5, 1
        "#;
        let mut ctx1 = ParsingContext::default();
        let ops = parse_tree(code, &mut ctx1).unwrap();
        let mcs = ops.iter().map(|op| op.to_machine_code(&ctx1)).collect();

        let mut ctx2 = ParsingContext::default();
        let ops = from_machine_code(mcs, &mut ctx2).unwrap();
        let asm = to_assembly(ops);

        assert_eq!(
            overnormalize_for_test(normalize(code)),
            overnormalize_for_test(normalize(&asm))
        );
    }

    #[test]
    fn branch_op() {
        let beq = BOp::BEQ;
        let u = beq.to_machine_code(IntReg::A0, IntReg::A1, 0b1101010101010);

        let expected: u32 = 0b1010101_01010_01011_000_01011_1100011;
        // println!("{:32b}", u);
        // println!("{:32b}", expected);
        assert_eq!(u, expected)
    }

    #[test]
    fn parse_branch_op() {
        let code = r#"
            addi a0 zero 3
            .los12312__op:
                addi a0 a0 -1
                bne a0 zero .los12312__op

            addi a1 zero 1
        "#;

        let mut ctx = ParsingContext::default();
        let ops = parse_tree(code, &mut ctx).unwrap();

        println!("{:?}", ops);
    }
}
