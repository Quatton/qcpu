use std::{io::Write as _, time::Duration};

use qcpu_syntax::ParsingContext;

use crate::v4::syntax::get_reg_name;

pub const CLOCK_MHZ: u64 = 122;
pub const CACHE_HIT_PENALTY: u64 = 2;
pub const CACHE_MISS_PENALTY_PER_100: u64 = 45;
pub const CACHE_MISS_PENALTY: u64 = 56;
pub const INW_DELAY: u64 = 107;

use super::{
    syntax::{OpName, OpV4},
    Instat, SimulatorV4,
};

pub fn get_delay(opname: OpName) -> u64 {
    match opname {
        OpName::Fadd => 4,
        OpName::Fsub => 4,
        OpName::Fmul => 3,
        OpName::Ftoi => 2,
        OpName::Fitof => 3,
        OpName::Fdiv => 6,
        _ => 1,
    }
}

impl SimulatorV4 {
    pub fn log_stat(&mut self) -> std::result::Result<(), std::io::Error> {
        self.log
            .write_all(format!("{}\n{}\n{}\n", self.stat, self.memory.stat, self.bp).as_bytes())
    }

    pub fn process_stat(
        &mut self,
        ctx: Option<&ParsingContext>,
    ) -> std::result::Result<(), std::io::Error> {
        let mut instat_vec: Vec<_> = self
            .per_instruction_stat
            .iter()
            .zip(self.instructions.iter())
            .enumerate()
            .filter_map(|(i, (s, op))| match op.opname {
                OpName::Lwi | OpName::Lwr | OpName::Lw => {
                    if s.call > 0 && s.hit < s.call {
                        let miss = s.call - s.hit;
                        let miss_rate = miss as f64 / s.call as f64;
                        Some((i, s, miss, miss_rate))
                    } else {
                        None
                    }
                }
                _ => None,
            })
            .collect();

        instat_vec.sort_by(|a, b| b.2.cmp(&a.2).then(b.3.partial_cmp(&a.3).unwrap()));

        self.log
            .write_fmt(format_args!("\nPer-instruction Stat\n"))?;

        if ctx.is_some() {
            self.log.write_fmt(format_args!(
                "{:4} {:32} {:12} {:12} {:4}\n",
                "PC", "Label", "Total Read", "Cache Miss", "Miss Rate",
            ))?;
        } else {
            self.log.write_fmt(format_args!(
                "{:4} {:12} {:12} {:4}\n",
                "PC", "Cache Hit", "Cache Miss", "Miss Rate",
            ))?;
        }

        for (i, s, _miss, miss_rate) in instat_vec {
            if miss_rate > 0.01 {
                match ctx {
                    Some(ctx) => {
                        self.log.write_fmt(format_args!(
                            "{:02} {:32} {:12} {:12} {:.02}%\n",
                            i,
                            ctx.reverse_lookup_floor(i),
                            s.call,
                            s.call - s.hit,
                            miss_rate * 100.0,
                        ))?;
                    }
                    None => {
                        self.log.write_fmt(format_args!(
                            "{:02}: {:12} {:12} {:.02}%\n",
                            i,
                            s.call,
                            s.call - s.hit,
                            miss_rate * 100.0,
                        ))?;
                    }
                }
            }
        }

        Ok(())
    }

    pub fn tally(&mut self) {
        self.stat.cycle_count = 0;
        self.stat.instr_count = 0;
        self.stat.hazard_count = 0;
        self.memory.stat.hit = 0;
        self.memory.stat.read = 0;
        self.memory.stat.write = 0;
        self.memory.stat.write_hit = 0;

        let mut prev_op = &OpV4::default();
        let mut prev_stat = &Instat::default();

        for (stat, op) in self
            .per_instruction_stat
            .iter()
            .zip(self.instructions.iter())
            .chain(std::iter::once((&Instat::default(), &OpV4::default())))
        {
            self.stat.instr_count += stat.call;
            let delay = get_delay(op.opname);

            self.stat.cycle_count += match prev_op.opname {
                OpName::Lwi | OpName::Lw | OpName::Lwr | OpName::Swi | OpName::Sw => {
                    if (op.rs1 == prev_op.rd || op.rs2 == prev_op.rd) && prev_op.rd != 0 {
                        self.stat.hazard_count += prev_stat.call;
                        prev_stat.hit * (CACHE_HIT_PENALTY + delay)
                            + (prev_stat.call - prev_stat.hit) * (CACHE_MISS_PENALTY + delay)
                    } else {
                        prev_stat.call * delay.max(CACHE_HIT_PENALTY)
                            + (prev_stat.call - prev_stat.hit) * CACHE_MISS_PENALTY
                    }
                }
                OpName::Inw => prev_stat.call,
                _ => prev_stat.call * delay,
            };

            match op.opname {
                OpName::Lw | OpName::Lwr | OpName::Lwi => {
                    self.memory.stat.read += stat.call;
                    self.memory.stat.hit += stat.hit;
                }
                OpName::Sw | OpName::Swi => {
                    self.memory.stat.write += stat.call;
                    self.memory.stat.write_hit += stat.hit;
                }
                _ => {}
            }

            prev_op = op;
            prev_stat = stat;
        }

        self.stat.cycle_count += (self.bp.flush_count_branch + self.bp.flush_count_jalr) as u64 * 2;
    }

    pub fn log_registers(&self) {
        for (i, reg) in self.reg.iter().enumerate() {
            let reg_name = get_reg_name(i as u8);
            if i < 32 {
                print!("{:5}: 0x{:08x} ({:12})", reg_name, reg, *reg as i32);
            } else {
                print!(
                    "{:5}: 0x{:08x} ({:12.6e})",
                    reg_name,
                    reg,
                    f32::from_bits(*reg)
                );
            }

            print!(" ");
            if i % 4 == 3 {
                println!();
            }
        }
    }
}

fn percent(n: f64, total: f64) -> f64 {
    n / total * 100.0
}

impl SimulatorV4 {
    pub fn time_optimize_info(&mut self, clock: f64) -> Result<(), std::io::Error> {
        let cache_miss = self.memory.stat.read - self.memory.stat.hit;
        let cache_write_miss = self.memory.stat.write - self.memory.stat.write_hit;

        let [total_time, hazard_time, cache_miss_time, cache_write_miss_time, jalr_flush_time, branch_flush_time] =
            [
                self.stat.cycle_count as f64 / clock,
                self.stat.hazard_count as f64 * cache_miss as f64 / self.memory.stat.read as f64
                    * 2.0
                    / clock,
                cache_miss as f64 * CACHE_MISS_PENALTY as f64 / clock,
                cache_write_miss as f64 * CACHE_MISS_PENALTY as f64 / clock,
                self.bp.flush_count_jalr as f64 * 2.0 / clock,
                self.bp.flush_count_branch as f64 * 2.0 / clock,
            ]
            .map(|s| Duration::from_micros(s as u64));

        self.log.write_fmt(format_args!(
            "Time optimization info:\n\
            Should complete in: {:?} for a clock of {} MHz\n\
            Hazard time with cache hit: {:?} ({:.02}%)\n\
            Cache miss time: read: {:?} ({:.02}%), write: {:?} ({:.02}%)\n\
            JALR flush time: {:?} ({:.02}%)\n\
            Branch flush time: {:?} ({:.02}%)\n",
            total_time,
            clock,
            hazard_time,
            percent(
                hazard_time.as_micros() as f64,
                total_time.as_micros() as f64
            ),
            cache_miss_time,
            percent(
                cache_miss_time.as_micros() as f64,
                total_time.as_micros() as f64
            ),
            cache_write_miss_time,
            percent(
                cache_write_miss_time.as_micros() as f64,
                total_time.as_micros() as f64
            ),
            jalr_flush_time,
            percent(
                jalr_flush_time.as_micros() as f64,
                total_time.as_micros() as f64
            ),
            branch_flush_time,
            percent(
                branch_flush_time.as_micros() as f64,
                total_time.as_micros() as f64
            ),
        ))?;

        Ok(())
    }
}
