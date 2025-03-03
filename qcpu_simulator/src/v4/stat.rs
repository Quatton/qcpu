use std::fmt::Display;

use serde::Serialize;

#[derive(Default, Clone, Copy, Serialize, Debug)]
pub struct Statistics {
    pub instr_count: u64,
    pub cycle_count: u64,
    pub hazard_count: u64,
    pub fpu_stall: u64,
    pub forwarding_stall: u64,
}

impl Display for Statistics {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(f, "Instructions: {}", self.instr_count)?;
        writeln!(f, "Cycles: {}", self.cycle_count)?;
        writeln!(
            f,
            "Hazard count: {} ({:.02}% of instructions)",
            self.hazard_count,
            self.hazard_count as f64 / self.instr_count as f64 * 100.0
        )?;
        writeln!(
            f,
            "FPU stall: {} ({:.02}% of cycles)",
            self.fpu_stall,
            self.fpu_stall as f64 / self.cycle_count as f64 * 100.0
        )?;
        writeln!(
            f,
            "Forwarding stall: {} ({:.02}% of cycles)",
            self.forwarding_stall,
            self.forwarding_stall as f64 / self.cycle_count as f64 * 100.0
        )?;
        Ok(())
    }
}
