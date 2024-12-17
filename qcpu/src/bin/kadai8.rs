use std::{collections::VecDeque, fs::File, io::Read as _};

use qcpu_syntax::{
    v2::{
        op::Op,
        reg::Register,
        syntax::{OpName, OpType},
    },
    ParsingContext,
};

#[derive(Clone)]
struct Node {
    nodes: Vec<usize>,
    op: Op,

    parent_by_rs1: Option<usize>,
    parent_by_rs2: Option<usize>,
}

impl Node {
    fn new(op: Op) -> Self {
        Self {
            nodes: Vec::new(),
            op,
            parent_by_rs1: None,
            parent_by_rs2: None,
        }
    }
}

fn calc_critical_path(nodes: &[Node], until_idx: usize) -> u32 {
    let mut max_latency = 0;

    let node = &nodes[until_idx];

    if node.parent_by_rs1.is_none() && node.parent_by_rs2.is_none() {
        return get_latency(node.op.o);
    }

    if node.parent_by_rs1.is_some() {
        let latency = calc_critical_path(nodes, node.parent_by_rs1.unwrap());
        max_latency = max_latency.max(latency);
    }

    if node.parent_by_rs2.is_some() {
        let latency = calc_critical_path(nodes, node.parent_by_rs2.unwrap());
        max_latency = max_latency.max(latency);
    }

    max_latency + get_latency(node.op.o)
}

fn get_latency(opname: OpName) -> u32 {
    match opname.optype {
        OpType::S | OpType::L | OpType::F => 2,
        _ => 1,
    }
}

fn dry_execute(nodes: &[Node]) -> u32 {
    let mut i = 0;

    let mut busy_alu = VecDeque::new();
    let mut busy_fpu = VecDeque::new();
    let mut busy_mem = VecDeque::new();

    let mut cycles = 0;

    while i < nodes.len() {
        let node = &nodes[i];

        busy_alu.pop_back();
        busy_fpu.pop_back();
        busy_mem.pop_back();
        cycles += 1;

        if let Some(pidx) = node.parent_by_rs1 {
            if busy_alu.contains(&pidx) || busy_fpu.contains(&pidx) || busy_mem.contains(&pidx) {
                continue;
            }
        }

        if let Some(pidx) = node.parent_by_rs2 {
            if busy_alu.contains(&pidx) || busy_fpu.contains(&pidx) || busy_mem.contains(&pidx) {
                continue;
            }
        }

        match node.op.o.optype {
            OpType::S | OpType::L => {
                if busy_mem.len() >= 2 {
                    continue;
                }
                busy_mem.push_front(i);
            }
            OpType::F => {
                if busy_fpu.len() >= 2 {
                    continue;
                }
                busy_fpu.push_front(i);
            }
            _ => {
                if busy_alu.len() >= 1 {
                    continue;
                }
                busy_alu.push_front(i);
            }
        }

        while busy_mem.len() < 2 {
            busy_mem.push_front(usize::MAX);
        }

        while busy_fpu.len() < 2 {
            busy_fpu.push_front(usize::MAX);
        }

        i += 1;
    }

    cycles
}

fn schedule(nodes: &[Node]) -> Vec<Node> {
    let mut scheduled = Vec::new();
    let mut queue = Vec::from_iter(0..nodes.len());

    let mut busy_alu = VecDeque::new();
    let mut busy_fpu = VecDeque::new();
    let mut busy_mem = VecDeque::new();

    while !queue.is_empty() {
        busy_alu.pop_back();
        busy_fpu.pop_back();
        busy_mem.pop_back();

        let mut next_node = None;
        for &idx in queue.iter() {
            let node = &nodes[idx];

            if node.parent_by_rs1.is_some() {
                let pidx = node.parent_by_rs1.unwrap();
                if busy_alu.contains(&pidx) || busy_fpu.contains(&pidx) || busy_mem.contains(&pidx)
                {
                    continue;
                }
            }

            if node.parent_by_rs2.is_some() {
                let pidx = node.parent_by_rs2.unwrap();
                if busy_alu.contains(&pidx) || busy_fpu.contains(&pidx) || busy_mem.contains(&pidx)
                {
                    continue;
                }
            }

            next_node = Some(idx);
            break;
        }

        if next_node.is_none() {
            continue;
        }

        let idx = next_node.unwrap();

        match nodes[idx].op.o.optype {
            OpType::S | OpType::L => {
                busy_mem.push_front(idx);
            }
            OpType::F => {
                busy_fpu.push_front(idx);
            }
            _ => {
                busy_alu.push_front(idx);
            }
        }

        while busy_mem.len() < 2 {
            busy_mem.push_front(usize::MAX);
        }

        while busy_fpu.len() < 2 {
            busy_fpu.push_front(usize::MAX);
        }

        scheduled.push(nodes[idx].clone());
        queue.retain(|&x| x != idx);
    }

    scheduled
}

fn main() {
    let mut file = File::open("test_data/minrt_partial.s").unwrap();
    let mut asm = String::new();

    file.read_to_string(&mut asm).unwrap();

    let mut ctx = ParsingContext::new();
    let tree = qcpu_assembler::v2::parse_tree(&asm, &mut ctx).unwrap();

    let mut nodes = Vec::new();

    for (i, op) in tree.iter().enumerate() {
        let mut node = Node::new(op.clone());
        for j in (0..i).rev() {
            if node.parent_by_rs1.is_none() && op.rs1 != Register::Zero && op.rs1 == tree[j].rd {
                node.parent_by_rs1 = Some(j);
            }
            if node.parent_by_rs2.is_none() && op.rs2 != Register::Zero && op.rs2 == tree[j].rd {
                node.parent_by_rs2 = Some(j);
            }

            if node.parent_by_rs1.is_some() && node.parent_by_rs2.is_some() {
                break;
            }
        }
        nodes.push(node);
    }

    let mut i = nodes.len() - 1;

    while i > 0 {
        if let Some(pidx) = nodes[i].parent_by_rs1 {
            nodes[pidx].nodes.push(i);
        }

        if let Some(pidx) = nodes[i].parent_by_rs2 {
            nodes[pidx].nodes.push(i);
        }

        i -= 1;
    }

    let cycles = dry_execute(&nodes);

    println!("Cycles: {}", cycles);

    let scheduled = schedule(&nodes);

    let cycles = dry_execute(&scheduled);

    println!("Scheduled cycles: {}", cycles);

    for (i, (node, scheduled)) in nodes.iter().zip(scheduled.iter()).enumerate() {
        println!(
            "{:03}: {:<20} -> {:<20}",
            i,
            node.op.to_asm(),
            scheduled.op.to_asm()
        );
    }
}
