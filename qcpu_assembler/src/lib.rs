use nom::{multi::many0, IResult};
use qcpu_syntax::{error::ParseError, parser::Op, reg::IntReg, WithParser};

pub fn normalize(input: &str) -> String {
    // clean up
    format!("{}\n", input.trim().replace(",", " ").to_ascii_lowercase())
}

pub fn parse_intreg(input: &str) -> IResult<&str, IntReg> {
    IntReg::parse(input)
}

pub fn parse_op(input: &str) -> IResult<&str, Op> {
    Op::parse(input)
}

pub fn parse_tree(input: &str) -> Result<Vec<Op>, ParseError> {
    let input = normalize(input);
    let (input, ops) = many0(parse_op)(&input)?;
    if !input.trim().is_empty() {
        return Err(ParseError::NomError(nom::error::Error {
            input: input.to_string(),
            code: nom::error::ErrorKind::Complete,
        }));
    };
    Ok(ops)
}

pub fn to_machine_code(input: &str) -> Result<Vec<u32>, ParseError> {
    let ops = parse_tree(input)?;
    Ok(ops.into_iter().map(|op| op.to_machine_code()).collect())
}

#[cfg(test)]
mod test {

    use std::str::FromStr;

    use qcpu_syntax::ROp;

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
        let ops = parse_tree(code).unwrap();
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
        let ops = parse_tree(code)
            .inspect_err(|e| eprintln!("{:?}", e))
            .unwrap();
        let expected = [0x00c58533, 0x40f706b3, 0x00158513];
        for (op, exp) in ops.iter().zip(expected.iter()) {
            println!("{:032b}", op.to_machine_code());
            assert_eq!(op.to_machine_code(), *exp);
        }
    }
}
