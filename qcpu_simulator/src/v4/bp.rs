use std::fmt::Display;

use super::syntax::{OpName, OpV4};

#[derive(Debug, Clone, Copy)]
pub struct BranchPredictor {
    pub taken_pht: [u8; TAKEN_PHT_SIZE],
    pub untaken_pht: [u8; TAKEN_PHT_SIZE],
    pub selector_pht: [u8; SELECTOR_PHT_SIZE],
    pub jalr_addr: [usize; JALR_ADDR_SIZE],
    pub gh: usize,

    pub flush_count_jalr: usize,
    pub total_count_jalr: usize,
    pub flush_count_branch: usize,
    pub total_count_branch: usize,
}

const TAKEN_PHT_SIZE: usize = 1024;
const TAKEN_PHT_MASK: usize = TAKEN_PHT_SIZE - 1;
const SELECTOR_PHT_SIZE: usize = 256;
const SELECTOR_PHT_MASK: usize = SELECTOR_PHT_SIZE - 1;
const JALR_ADDR_SIZE: usize = 256;
const JALR_ADDR_MASK: usize = JALR_ADDR_SIZE - 1;
const GH_MASK: usize = 1023;

impl BranchPredictor {
    pub fn new() -> Self {
        Self {
            taken_pht: [2; TAKEN_PHT_SIZE],
            untaken_pht: [1; TAKEN_PHT_SIZE],
            selector_pht: [2; SELECTOR_PHT_SIZE],
            jalr_addr: [0; JALR_ADDR_SIZE],
            gh: 0,

            flush_count_jalr: 0,
            total_count_jalr: 0,
            flush_count_branch: 0,
            total_count_branch: 0,
        }
    }

    pub fn update_taken(&mut self, op: &OpV4, pc: usize, next_pc: usize) -> bool {
        let untaken = pc.wrapping_add(1);

        match op.opname {
            OpName::Jalr => {
                self.total_count_jalr += 1;
                let idx = pc & JALR_ADDR_MASK;
                let predicted_pc = if self.jalr_addr[idx] == 0 {
                    untaken
                } else {
                    self.jalr_addr[idx]
                };
                let update = next_pc != predicted_pc;
                if update {
                    self.flush_count_jalr += 1;
                    self.jalr_addr[idx] = next_pc;
                }
                update
            }
            OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                self.total_count_branch += 1;
                let xor = self.gh ^ pc;
                let taken = pc.wrapping_add_signed(op.imm as isize);
                let taken_idx = xor & TAKEN_PHT_MASK;
                let selector_idx = xor & SELECTOR_PHT_MASK;

                let taken_val = self.taken_pht[taken_idx];
                let untaken_val = self.untaken_pht[taken_idx];
                let selector_val = self.selector_pht[selector_idx];

                let predicted_pc = if selector_val >= 2 {
                    if taken_val >= 2 {
                        taken
                    } else {
                        untaken
                    }
                } else if untaken_val >= 2 {
                    taken
                } else {
                    untaken
                };

                let update = next_pc != untaken;
                self.gh = ((self.gh << 1) | update as usize) & GH_MASK;

                if update {
                    self.taken_pht[taken_idx] = (taken_val + 1).min(3);
                    self.untaken_pht[taken_idx] = (untaken_val + 1).min(3);
                    self.selector_pht[selector_idx] = (selector_val + 1).min(3);
                } else {
                    self.taken_pht[taken_idx] = taken_val.saturating_sub(1);
                    self.untaken_pht[taken_idx] = untaken_val.saturating_sub(1);
                    self.selector_pht[selector_idx] = selector_val.saturating_sub(1);
                }

                if next_pc != predicted_pc {
                    self.flush_count_branch += 1;
                    true
                } else {
                    false
                }
            }
            _ => false,
        }
    }
}

impl Default for BranchPredictor {
    fn default() -> Self {
        Self::new()
    }
}

impl Display for BranchPredictor {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        writeln!(
            f,
            "JALR Flush Count: {} ({:.02}%)",
            self.flush_count_jalr,
            self.flush_count_jalr as f64 / self.total_count_jalr as f64 * 100.0
        )?;
        write!(
            f,
            "Branch Flush Count: {} ({:.02}%)",
            self.flush_count_branch,
            self.flush_count_branch as f64 / self.total_count_branch as f64 * 100.0
        )?;
        Ok(())
    }
}
