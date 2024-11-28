use std::{
    io::{self, stdout},
    panic::{set_hook, take_hook},
};

use crossterm::{
    event::KeyCode,
    execute,
    terminal::{disable_raw_mode, enable_raw_mode, EnterAlternateScreen, LeaveAlternateScreen},
};
use qcpu_simulator::v2::context::{SimulationConfig, Simulator};
use ratatui::{
    prelude::{Backend, CrosstermBackend},
    widgets::TableState,
    Terminal,
};
use strum::EnumString;

use crate::tui::{self, Action};

use super::ui::ui;

// use crate::{action::Action, event::Event, terminal::Frame};

#[derive(Default)]
pub enum CurrentScreen {
    #[default]
    Main,
    Exiting,
}

#[derive(Default, PartialEq)]
pub enum InputMode {
    #[default]
    Normal,
    Breakpoint,
}

#[derive(Debug, Default, PartialEq, EnumString)]
#[strum(serialize_all = "PascalCase")]
pub enum PlayMode {
    #[default]
    Manual,
    ForwardUntilBreakpoint,
    BackwardUntilBreakpoint,
}

#[derive(Default)]
pub struct App {
    pub simulator: Simulator,
    pub snapshot_idx: usize,
    pub current_screen: CurrentScreen,
    pub done: bool,
    pub show_dialog: bool,
    pub dialog_message: String,
    pub input_mode: InputMode,
    pub playmode: PlayMode,
    pub should_quit: bool,
    pub program_table_state: TableState,
}

impl App {
    pub fn new() -> App {
        App {
            done: false,
            simulator: Simulator::with_config(SimulationConfig::default().interactive(true)),
            program_table_state: Default::default(),
            snapshot_idx: 0,
            current_screen: CurrentScreen::Main,
            show_dialog: false,
            dialog_message: String::new(),
            input_mode: InputMode::Normal,
            playmode: PlayMode::Manual,
            should_quit: false,
        }
    }

    pub fn load_simulator(mut self, sim_ctx: Simulator) -> Self {
        self.simulator = sim_ctx;
        self
    }

    pub fn log_registers(&self) {
        self.simulator.log_registers();
    }

    pub async fn run(&mut self, mut tui: tui::Tui) -> Result<(), Box<dyn std::error::Error>> {
        init_panic_hook();
        tui.enter()?; // Starts event handler, enters raw mode, enters alternate screen

        loop {
            if let Some(evt) = tui.next().await {
                if evt == tui::Event::Render {
                    tui.draw(|f| {
                        // Deref allows calling `tui.terminal.draw`
                        ui(f, self);
                    })?;
                }
                // `tui.next().await` blocks till next event
                let mut maybe_action = self.handle_event(evt);
                while let Some(action) = maybe_action {
                    maybe_action = self.update(action);
                }
            };

            if self.should_quit {
                break;
            }
        }

        tui.exit()?; // stops event handler, exits raw mode, exits alternate screen

        Ok(())
    }

    fn handle_event(&mut self, evt: tui::Event) -> Option<tui::Action> {
        match evt {
            tui::Event::Quit => Some(tui::Action::Quit),
            tui::Event::Tick => None,
            tui::Event::Backend => Some(tui::Action::Calc),
            tui::Event::Key(key_event) => Some(self.handle_key_events(key_event)),
            _ => None,
        }
    }

    fn tick(&mut self) {
        // we don't need tick for now
    }

    fn calc(&mut self) {
        if self.done {
            return;
        }
        self.simulator.run_once().unwrap();
        let ctx = &mut self.simulator.ctx;
        ctx.current.pc = ctx.current.next_pc;
        if ctx.current.pc >= ctx.memory.size.min(ctx.program.len() * 4) {
            self.done = true;
        }
    }

    fn update(&mut self, action: Action) -> Option<Action> {
        match action {
            Action::Quit => {
                self.should_quit = true;
                None
            }
            Action::Tick => {
                self.tick();
                None
            }
            Action::Calc => {
                self.calc();
                None
            }
            Action::Noop => None,
        }
    }

    fn handle_key_events(&mut self, key: crossterm::event::KeyEvent) -> tui::Action {
        match self.current_screen {
            CurrentScreen::Main => match key.code {
                KeyCode::Char('q') => {
                    self.current_screen = CurrentScreen::Exiting;
                    self.show_dialog = true;
                    self.dialog_message = "Do you want to quit? [y/n]".to_string();
                    Action::Noop
                }
                KeyCode::Right => {
                    if self.input_mode == InputMode::Normal {
                        self.snapshot_idx =
                            (self.snapshot_idx + 1).min(self.simulator.ctx.snapshots.len());
                    }
                    Action::Noop
                }
                KeyCode::Left => {
                    if self.input_mode == InputMode::Normal {
                        self.snapshot_idx = self.snapshot_idx.saturating_sub(1);
                    }
                    Action::Noop
                }
                KeyCode::Char(' ') => {
                    self.playmode = PlayMode::Manual;
                    Action::Noop
                }
                KeyCode::Char('e') => {
                    self.show_dialog = !self.show_dialog;
                    Action::Noop
                }
                _ => Action::Noop,
            },
            CurrentScreen::Exiting => match key.code {
                KeyCode::Char('y') | KeyCode::Char('q') => Action::Quit,
                KeyCode::Char('n') => {
                    self.current_screen = CurrentScreen::Main;
                    self.show_dialog = false;
                    Action::Noop
                }
                _ => Action::Noop,
            },
        }
    }
}

pub fn init_panic_hook() {
    let original_hook = take_hook();
    set_hook(Box::new(move |panic_info| {
        // intentionally ignore errors here since we're already in a panic
        let _ = restore_tui();
        original_hook(panic_info);
    }));
}

pub fn init_tui() -> io::Result<Terminal<impl Backend>> {
    enable_raw_mode()?;
    execute!(stdout(), EnterAlternateScreen)?;
    Terminal::new(CrosstermBackend::new(stdout()))
}

pub fn restore_tui() -> io::Result<()> {
    disable_raw_mode()?;
    execute!(stdout(), LeaveAlternateScreen)?;
    Ok(())
}
