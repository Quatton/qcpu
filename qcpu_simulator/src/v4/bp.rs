use std::fmt::Display;

use super::syntax::{OpName, OpV4};

#[derive(Debug, Clone, Copy)]
pub struct BranchPredictor {
    pub taken_pht: [i8; TAKEN_PHT_SIZE],
    pub untaken_pht: [i8; TAKEN_PHT_SIZE],
    pub selector_pht: [i8; SELECTOR_PHT_SIZE],
    pub jalr_addr: [usize; JALR_ADDR_SIZE],
    pub gh: usize,

    pub flush_count: [usize; 2],
    pub total_count: [usize; 2],
}

const TAKEN_PHT_SIZE: usize = 1024;
const TAKEN_PHT_MASK: usize = TAKEN_PHT_SIZE - 1;
const SELECTOR_PHT_SIZE: usize = 256;
const SELECTOR_PHT_MASK: usize = SELECTOR_PHT_SIZE - 1;
const JALR_ADDR_SIZE: usize = 2048;
const JALR_ADDR_MASK: usize = JALR_ADDR_SIZE - 1;
const GH_SIZE: usize = 1024;
const GH_MASK: usize = GH_SIZE - 1;

impl BranchPredictor {
    pub fn new() -> Self {
        Self {
            taken_pht: [2; TAKEN_PHT_SIZE],
            untaken_pht: [1; TAKEN_PHT_SIZE],
            selector_pht: [2; SELECTOR_PHT_SIZE],
            jalr_addr: [0; JALR_ADDR_SIZE],
            gh: 0,
            flush_count: [0; 2],
            total_count: [0; 2],
        }
    }

    pub fn predict(&self, op: &OpV4, pc: usize) -> usize {
        let pci = pc >> 2;
        let untaken = pc.wrapping_add(4);

        match op.opname {
            OpName::Jalr => {
                let addr = unsafe { *self.jalr_addr.get_unchecked(pci & JALR_ADDR_MASK) };
                if addr > 0 {
                    addr
                } else {
                    untaken
                }
            }
            OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                let taken = pc.wrapping_add_signed(op.imm as isize);
                let xor = self.gh ^ pci;
                let selector_idx = xor & SELECTOR_PHT_MASK;
                let sel = unsafe { *self.selector_pht.get_unchecked(selector_idx) };
                if sel >= 2 {
                    let taken_idx = xor & TAKEN_PHT_MASK;
                    let taken_val = unsafe { *self.taken_pht.get_unchecked(taken_idx) };
                    if taken_val >= 2 {
                        taken
                    } else {
                        untaken
                    }
                } else {
                    let untaken_idx = xor & TAKEN_PHT_MASK;
                    let untaken_val = unsafe { *self.untaken_pht.get_unchecked(untaken_idx) };
                    if untaken_val >= 2 {
                        taken
                    } else {
                        untaken
                    }
                }
            }
            _ => untaken,
        }
    }

    pub fn update_taken(
        &mut self,
        op: &OpV4,
        pc: usize,
        predicted_pc: usize,
        next_pc: usize,
    ) -> bool {
        let pci = pc >> 2;

        match op.opname {
            OpName::Jalr => {
                self.total_count[0] += 1;
                let flushed = next_pc != predicted_pc;
                if flushed {
                    self.flush_count[0] += 1;

                    unsafe {
                        *self.jalr_addr.get_unchecked_mut(pci & JALR_ADDR_MASK) = next_pc;
                    }
                }
                flushed
            }
            OpName::Beq | OpName::Bne | OpName::Blt | OpName::Bge => {
                self.total_count[1] += 1;
                let xor = self.gh ^ pci;

                self.gh = ((self.gh << 1) | (next_pc != pc + 4) as usize) & GH_MASK;

                let flushed = next_pc != predicted_pc;

                let taken_idx = xor & TAKEN_PHT_MASK;
                let untaken_idx = xor & TAKEN_PHT_MASK;
                let selector_idx = xor & SELECTOR_PHT_MASK;

                let taken = unsafe { self.taken_pht.get_unchecked_mut(taken_idx) };
                let untaken = unsafe { self.untaken_pht.get_unchecked_mut(untaken_idx) };
                let selector = unsafe { self.selector_pht.get_unchecked_mut(selector_idx) };

                if next_pc != pc.wrapping_add(4) {
                    *taken = (*taken + 1).min(3);
                    *untaken = (*untaken + 1).min(3);
                    *selector = (*selector + 1).min(3);
                } else {
                    *untaken = (*untaken - 1).max(0);
                    *taken = (*taken - 1).max(0);
                    *selector = (*selector - 1).max(0);
                }

                if flushed {
                    self.flush_count[1] += 1;
                }

                flushed
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
            self.flush_count[0],
            self.flush_count[0] as f64 / self.total_count[0] as f64 * 100.0
        )?;
        write!(
            f,
            "Branch Flush Count: {} ({:.02}%)",
            self.flush_count[1],
            self.flush_count[1] as f64 / self.total_count[1] as f64 * 100.0
        )?;
        Ok(())
    }
}
