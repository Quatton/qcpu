#![allow(clippy::unusual_byte_groupings)]

use nom::{
    character::complete::{char, multispace0, not_line_ending},
    combinator::opt,
    multi::many0,
    sequence::delimited,
};
use qcpu_syntax::{
    error::{ParseError, ParseErrorContext},
    parser::{Node, Op, ParsingContext},
};

pub fn assemble(input: &str) -> Result<(Vec<Op>, ParsingContext), ParseError> {
    let mut ctx = ParsingContext::new();
    let input = normalize(input);

    let ops = parse_tree(input.as_str(), &mut ctx)?;

    Ok((ops, ctx))
}

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
    let input = &normalize(input);
    let comment = opt(delimited(multispace0, char('!'), not_line_ending));
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

    // if ctx.get_main_pc().is_some() {
    //     ops.insert(
    //         0,
    //         Op::J(
    //             qcpu_syntax::JOp::JAL,
    //             qcpu_syntax::IntReg::Ra,
    //             qcpu_syntax::JumpTarget::from_label(ctx.main_label.clone()),
    //         ),
    //     );
    // }

    for (i, op) in ops.iter_mut().enumerate() {
        op.resolve_labels(ctx, i)?;
    }

    Ok(ops)
}

pub fn to_machine_code(ops: &[Op], ctx: &ParsingContext) -> Result<Vec<u32>, ParseError> {
    Ok(ops.iter().map(|op| op.to_machine_code(ctx)).collect())
}

pub fn to_assembly(input: Vec<Op>) -> String {
    let mut result = String::new();
    for op in input {
        result.push_str(&format!("{}\n", op.to_asm()));
    }
    result
}

pub fn from_machine_code(
    input: Vec<u32>,
    ctx: &mut ParsingContext,
) -> Result<Vec<Op>, ParseErrorContext> {
    let mut ops = Vec::new();

    for (i, mc) in input.into_iter().enumerate() {
        match Op::from_machine_code(mc, ctx) {
            Ok(op) => {
                ops.push(op);
            }
            Err(err) => {
                return Err(ParseErrorContext {
                    error: err,
                    line: i + 1,
                });
            }
        }
    }

    Ok(ops)
}

#[cfg(test)]
mod test {
    use std::str::FromStr;

    use qcpu_syntax::{reg::IntReg, BOp, ROp, STOp};

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
            addi a0 zero 10
            addi t0 zero 1

            fib:
                addi a1 zero 1
                addi a2 zero 1
            .loop:
                beq a0 t0 .end
                add a3 a1 a2
                add a1 zero a2
                add a2 zero a3
                addi a0 a0 -1
                beq zero zero .loop

            .end:
                add a0 zero a1
        "#;

        let mut ctx = ParsingContext::default();
        let mut ops = parse_tree(code, &mut ctx).unwrap();

        ops.push(Op::S(STOp::SW, IntReg::A0, IntReg::Zero, 0));

        let mc = to_machine_code(&ops, &ctx).unwrap();

        for i in mc {
            println!("{:032b}", i);
        }
    }

    #[test]
    fn parse_jmp_op() {
        let code = r#"
            addi a0 zero 10
            addi t0 zero 1

            fib:
                addi a1 zero 1
                addi a2 zero 1
            .loop:
                beq a0 t0 .end
                add a3 a1 a2
                add a1 zero a2
                add a2 zero a3
                addi a0 a0 -1
                jal ra .loop

            .end:
                add a0 zero a1
        "#;
        let mut ctx = ParsingContext::default();
        let ops = parse_tree(code, &mut ctx).unwrap();
        let mc = to_machine_code(&ops, &ctx).unwrap();
        let dis_ops = from_machine_code(mc, &mut ctx).unwrap();

        for (op, dis) in ops.into_iter().zip(dis_ops) {
            assert_eq!(op, dis)
        }
    }

    #[test]
    fn real_program() {
        let code = r#"
fib(int):
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        sw      s1,20(sp)
        addi    s0,sp,32
        sw      a0,-20(s0)
        lw      a4,-20(s0)
        addi      a5,zero,1
        beq     a4,a5,.L2
        lw      a4,-20(s0)
        addi      a5,zero,2
        bne     a4,a5,.L3
.L2:
        addi      a5,zero,1
        jal     ra .L4
.L3:
        lw      a5,-20(s0)
        addi    a5,a5,-1
        add      a0,zero,a5
        jal     ra    fib(int)
        add      s1,zero,a0
        lw      a5,-20(s0)
        addi    a5,a5,-2
        add      a0,zero,a5
        jalr   ra ra 0
        add      a5,zero,a0
        add     a5,s1,a5
.L4:
        add      a0,zero,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
        lw      s1,20(sp)
        addi    sp,sp,32
        jalr    ra ra 0
main:
        addi    sp,sp,-16
        sw      ra,12(sp)
        sw      s0,8(sp)
        addi    s0,sp,16
        addi      a0,zero,5
        jal     ra    fib(int)
        add      a5,zero,a0
        add      a0,zero,a5
        lw      ra,12(sp)
        lw      s0,8(sp)
        addi    sp,sp,16
        jalr    ra ra 0
"#;

        let mut ctx = ParsingContext::default();
        let ops = parse_tree(code, &mut ctx).unwrap();
        let mc = to_machine_code(&ops, &ctx).unwrap();

        // for i in mc.iter() {
        //     println!("{:032b}", i);
        // }

        let dis_ops = from_machine_code(mc, &mut ctx).unwrap();

        for (op, dis) in ops.into_iter().zip(dis_ops) {
            assert_eq!(op, dis)
        }
    }

    #[test]
    fn floats() {
        let code = "
        addi    sp, sp, -32
        sw      ra, 28(sp)
        sw      s0, 24(sp)
        addi    s0, sp, 32
        lui     a0, 255181
        addi    a0, a0, -819
        sw      a0, -12(s0)
        lui     a0, 253133
        addi    a0, a0, -819
        sw      a0, -16(s0)
        flw     fa5, -12(s0)
        flw     fa4, -16(s0)
        fadd    fa5, fa5, fa4
        fsw     fa5, -20(s0)
        addi    a0, a0, 0
        lw      ra, 28(sp)
        lw      s0, 24(sp)
        addi    sp, sp, 32
        jalr    zero, ra, 0
";

        let (ops, mut ctx) = assemble(code).unwrap();

        let mc = to_machine_code(&ops, &ctx).unwrap();
        let dis_ops = from_machine_code(mc, &mut ctx).unwrap();

        for (op, dis) in ops.into_iter().zip(dis_ops) {
            assert_eq!(op, dis)
        }
    }
}
