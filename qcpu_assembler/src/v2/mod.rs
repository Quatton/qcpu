use nom::{
    character::complete::{char, multispace0, not_line_ending},
    multi::many0,
    sequence::{delimited, terminated},
};
use qcpu_syntax::{
    error::ParseError,
    v2::op::{Node, Op},
    ParsingContext,
};

pub fn normalize(input: &str) -> String {
    // clean up
    format!("{}\n", input.trim().replace(",", " ").to_ascii_lowercase())
}

pub fn assemble(input: &str) -> Result<(Vec<u32>, ParsingContext), ParseError> {
    let mut ctx = ParsingContext::new();
    let input = normalize(input);

    let ops = parse_tree(input.as_str(), &mut ctx)?;

    let mc = to_machine_code(ops);

    Ok((mc, ctx))
}

pub fn to_machine_code(ops: Vec<Op>) -> Vec<u32> {
    ops.into_iter().map(|op| op.raw()).collect()
}

pub fn disassemble(input: &Vec<u32>) -> Vec<Op> {
    let mut ops = Vec::new();

    for &mc in input {
        ops.push(Op::decode(mc));
    }

    ops
}

pub fn parse_tree(input: &str, ctx: &mut ParsingContext) -> Result<Vec<Op>, ParseError> {
    let input = &normalize(input);
    let comment = many0(terminated(
        delimited(multispace0, char('!'), not_line_ending),
        multispace0,
    ));
    let (input, nodes) = many0(delimited(multispace0, Node::parse, comment))(input)?;
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
        op.resolve_label(&ctx.label_map, i)
            .map_err(ParseError::JumpTargetError)?;
    }

    Ok(ops)
}

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn fib10() {
        let code = r#"
_min_caml_start:
	addi 	a0, zero, 10 !4
	jal 	ra, fib.10 !4
	jal 	ra, min_caml_print_int !4
fib.10:
	sw  	ra, 0(sp)
	addi	t0, zero, 1 !2
	blt 	t0, a0, bge_else.24 !2
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.24: !2
	addi	a1, a0, -1 !3
	sw  	a0, 4(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 8 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -8 !3
	lw  	a1, 4(sp) !3
	addi	a1, a1, -2 !3
	sw  	a0, 8(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 16 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -16 !3
	lw  	a1, 8(sp) !3
	add 	a0, a1, a0 !3
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
min_caml_print_int:
        "#;

        let (mc, _ctx) = assemble(code).unwrap();

        let ops = disassemble(&mc);

        let mc2 = to_machine_code(ops);

        assert_eq!(mc, mc2);
    }
}
