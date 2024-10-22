pub mod app;
mod ui;

use ui::ui;

use app::{App, CurrentScreen};
use ratatui::prelude::*;

use ratatui::crossterm::event::{self, EnableMouseCapture, Event, KeyCode};
use ratatui::crossterm::execute;
use ratatui::crossterm::terminal::{enable_raw_mode, EnterAlternateScreen};
use std::error::Error;
use std::io;

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
        let curlen = app.simulator.simulation_context.history.len();
        if app.snapshot_idx >= curlen as i32 && !app.done {
            let mut i = curlen;
            while i <= app.snapshot_idx as usize {
                if let Ok(pc) = app.simulator.run_unit(
                    app.simulator.simulation_context.pc,
                    &mut app.parsing_context,
                ) {
                    app.simulator.simulation_context.pc = pc;
                    i += 1;
                } else {
                    app.done = true;
                    app.snapshot_idx -= 1;
                    break;
                }
            }
        }
        terminal.draw(|f| ui(f, app))?;
        if let Event::Key(key) = event::read()? {
            if key.kind == event::KeyEventKind::Release {
                // Skip events that are not KeyEventKind::Press
                continue;
            }
            match app.current_screen {
                CurrentScreen::Main => match key.code {
                    KeyCode::Char('q') => {
                        app.current_screen = CurrentScreen::Exiting;
                    }
                    KeyCode::Right => {
                        if !app.done || (app.snapshot_idx) as usize <= curlen - 2 {
                            app.snapshot_idx += 1;
                        }
                    }
                    KeyCode::Left => {
                        if app.snapshot_idx > 0 {
                            app.snapshot_idx -= 1;
                        }
                    }
                    _ => {}
                },
                CurrentScreen::Exiting => match key.code {
                    KeyCode::Char('y') => {
                        return Ok(true);
                    }
                    KeyCode::Char('n') | KeyCode::Char('q') => {
                        return Ok(false);
                    }
                    _ => {}
                },
            }
        }
    }
}
