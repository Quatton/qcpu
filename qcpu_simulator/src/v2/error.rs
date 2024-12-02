use qcpu_syntax::v2::op::Op;

#[derive(Debug)]
pub struct SimulationError {
    pub kind: SimulationErrorKind,
    pub line: usize,
    pub op: Op,
}

#[derive(Debug)]
pub enum SimulationErrorKind {
    MemoryAccess { size: usize, idx: usize },
    ETimeStop { label: String },
}
