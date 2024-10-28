pub mod app;
mod ui;

use ui::ui;

use app::{App, CurrentScreen, InputMode, PlayMode};
use ratatui::prelude::*;

use ratatui::crossterm::event::{self, poll, EnableMouseCapture, Event, KeyCode};
use ratatui::crossterm::execute;
use ratatui::crossterm::terminal::{enable_raw_mode, EnterAlternateScreen};
use std::error::Error;
use std::io;
use std::time::Duration;

use ratatui::crossterm::event::DisableMouseCapture;
use ratatui::crossterm::terminal::{disable_raw_mode, LeaveAlternateScreen};

pub fn main(app: &mut App) -> Result<(), Box<dyn Error>> {
    // setup terminal
    enable_raw_mode()?;
    let mut stderr = io::stderr(); // This is a special case. Normally using stdout is fine
    execute!(stderr, EnterAlternateScreen, EnableMouseCapture)?;

    let backend = CrosstermBackend::new(stderr);
    let mut terminal = Terminal::new(backend)?;

    let res = run_app(&mut terminal, app);

    // restore terminal
    disable_raw_mode()?;
    execute!(
        terminal.backend_mut(),
        LeaveAlternateScreen,
        DisableMouseCapture
    )?;
    terminal.show_cursor()?;

    if let Ok(do_print) = res {
        if do_print {
            app.log_registers();
        }
    } else if let Err(err) = res {
        println!("{err:?}");
    }

    Ok(())
}

fn run_app<B: Backend>(terminal: &mut Terminal<B>, app: &mut App) -> io::Result<bool> {
    loop {
        let curlen = app.simulator.ctx.history.len();

        match app.playmode {
            PlayMode::ForwardUntilBreakpoint => {
                if let Some(ss) = app.simulator.ctx.history.get(app.snapshot_idx) {
                    if app.breakpoint.contains(&(ss.pc)) {
                        app.playmode = PlayMode::Manual;
                    } else {
                        app.snapshot_idx += 1;
                    }
                }
            }
            PlayMode::BackwardUntilBreakpoint => {
                if app.snapshot_idx > 0 {
                    app.snapshot_idx -= 1;
                    if let Some(ss) = app.simulator.ctx.history.get(app.snapshot_idx) {
                        if app.breakpoint.contains(&(ss.pc)) {
                            app.playmode = PlayMode::Manual;
                        }
                    }
                }
            }
            PlayMode::Forward => {
                if app.snapshot_idx < curlen - 1 {
                    app.snapshot_idx += 1;
                } else {
                    app.playmode = PlayMode::Manual;
                }
            }
            PlayMode::Backward => {
                if app.snapshot_idx > 0 {
                    app.snapshot_idx -= 1;
                }
            }
            _ => {}
        }
        if app.snapshot_idx >= curlen {
            if !app.done {
                let mut i = curlen;
                while i <= app.snapshot_idx {
                    match app.simulator.run_unit() {
                        Ok(Some(pc)) => {
                            app.simulator.ctx.pc = pc;
                            i += 1;
                        }
                        Ok(_) => {
                            app.dialog_message = format!("Simulation ended at snapshot {}", i);
                            app.done = true;
                            app.show_dialog = true;
                            app.snapshot_idx -= 1;
                            break;
                        }
                        Err(e) => {
                            app.show_dialog = true;
                            app.dialog_message = format!("{:?}", e);
                            app.done = true;
                            app.snapshot_idx -= 1;
                            break;
                        }
                    }
                }
            } else {
                app.snapshot_idx = curlen - 1;
            }
        }
        terminal.draw(|f| ui(f, app))?;

        if poll(Duration::from_millis(10))? {
            if let Event::Key(key) = event::read()? {
                if key.kind == event::KeyEventKind::Release {
                    // Skip events that are not KeyEventKind::Press
                    continue;
                }
                match app.current_screen {
                    CurrentScreen::Main => match key.code {
                        KeyCode::Char('q') => {
                            app.current_screen = CurrentScreen::Exiting;
                            app.show_dialog = true;
                            app.dialog_message = "Do you want to quit? [y/n]".to_string();
                        }
                        KeyCode::Right => {
                            if app.input_mode == InputMode::Normal
                                && (!app.done || app.snapshot_idx < curlen - 1)
                            {
                                app.snapshot_idx += 1;
                            }
                        }
                        KeyCode::Left => {
                            if app.input_mode == InputMode::Normal {
                                app.snapshot_idx = app.snapshot_idx.saturating_sub(1);
                            }
                        }
                        KeyCode::Char(' ') => {
                            if app.input_mode == InputMode::Breakpoint {
                                let pc = app.breakpoint_idx * 4 + app.simulator.ctx.program_offset;
                                if app.breakpoint.contains(&pc) {
                                    app.breakpoint.remove(&pc);
                                } else {
                                    app.breakpoint.insert(pc);
                                }
                            } else {
                                app.playmode = PlayMode::Manual;
                            }
                        }
                        KeyCode::Down => {
                            if app.input_mode == InputMode::Breakpoint {
                                app.breakpoint_idx = app.breakpoint_idx.saturating_add(1);
                            }
                        }
                        KeyCode::Up => {
                            if app.input_mode == InputMode::Breakpoint {
                                app.breakpoint_idx = app.breakpoint_idx.saturating_sub(1);
                            }
                        }
                        KeyCode::Char(']') => app.playmode = PlayMode::ForwardUntilBreakpoint,
                        KeyCode::Char('[') => app.playmode = PlayMode::BackwardUntilBreakpoint,
                        KeyCode::Char('e') => {
                            app.show_dialog = !app.show_dialog;
                        }
                        KeyCode::Char('m') => {
                            app.breakpoint_idx = 0;
                            app.input_mode = match app.input_mode {
                                InputMode::Normal => InputMode::Breakpoint,
                                InputMode::Breakpoint => InputMode::Normal,
                            };
                        }
                        _ => {}
                    },
                    CurrentScreen::Exiting => match key.code {
                        KeyCode::Char('y') | KeyCode::Char('q') => {
                            return Ok(true);
                        }
                        KeyCode::Char('n') => {
                            app.current_screen = CurrentScreen::Main;
                            app.show_dialog = false;
                        }
                        _ => {}
                    },
                }
            }
        }
    }
}
