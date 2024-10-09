use code::Op;
use error::ParseError;
use nom::{multi::many0, IResult};
use syntax::IntReg;

pub mod code;
pub mod error;
pub mod syntax;

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
    if !input.is_empty() {
        return Err(ParseError::NomError(nom::error::Error {
            input: input.to_string(),
            code: nom::error::ErrorKind::Complete,
        }));
    };
    Ok(ops)
}

#[cfg(test)]
mod test {
    use code::ROp;
    use std::str::FromStr;

    use super::*;

    #[test]
    fn test_add() {
        //   let code = r#"
        //   add a0 a1 a2
        //   sub a0 a1 a2
        // "#;
        //   let lines = code.trim().lines();
        //   for line in lines.into_iter() {
        //       let op =
        //       println!("{op:?} {:b}", op.to_machine_code());
        //   }
        let code = "add";
        println!("{:?}", ROp::from_str(code));
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
