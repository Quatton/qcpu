use std::fmt::Display;

use serde::Serialize;

#[derive(Default, Clone, Copy, Serialize, Debug)]
pub struct Statistics {
    pub instr_count: u64,
    pub cycle_count: u64,
    pub hazard_count: u64,
}

impl Display for Statistics {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "Instructions: {}", self.instr_count)?;
        writeln!(f, "Cycles: {}", self.cycle_count)?;
        writeln!(
            f,
            "Hazard count: {} ({:.02}%)",
            self.hazard_count,
            self.hazard_count as f64 / self.instr_count as f64 * 100.0
        )?;
        Ok(())
    }
}
