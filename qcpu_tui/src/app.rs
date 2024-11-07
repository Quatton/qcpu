use std::{
    collections::HashSet,
    io::{self, stdout},
    panic::{set_hook, take_hook},
};

use crossterm::{
    event::KeyCode,
    execute,
    terminal::{disable_raw_mode, enable_raw_mode, EnterAlternateScreen, LeaveAlternateScreen},
};
use qcpu_simulator::{SimulationConfig, Simulator};
use ratatui::{
    prelude::{Backend, CrosstermBackend},
    Terminal,
};
use strum::EnumString;

use crate::{
    tui::{self, Action},
    ui::ui,
};

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

// pub trait Component {
//     fn init(&mut self) -> Result<()> {
//         Ok(())
//     }
//     fn handle_events(&mut self, event: Option<Event>) -> Action {
//         match event {
//             Some(Event::Quit) => Action::Quit,
//             Some(Event::Tick) => Action::Tick,
//             Some(Event::Key(key_event)) => self.handle_key_events(key_event),
//             Some(Event::Mouse(mouse_event)) => self.handle_mouse_events(mouse_event),
//             Some(Event::Resize(x, y)) => Action::Resize(x, y),
//             Some(_) => Action::Noop,
//             None => Action::Noop,
//         }
//     }
//     fn handle_key_events(&mut self, key: KeyEvent) -> Action {
//         Action::Noop
//     }
//     fn handle_mouse_events(&mut self, mouse: MouseEvent) -> Action {
//         Action::Noop
//     }
//     fn update(&mut self, action: Action) -> Action {
//         Action::Noop
//     }
//     fn render(&mut self, f: &mut Frame, rect: Rect);
// }

#[derive(Default)]
pub struct App {
    pub simulator: Simulator,
    pub snapshot_idx: usize,
    pub current_screen: CurrentScreen,
    pub done: bool,
    pub show_dialog: bool,
    pub dialog_message: String,
    pub input_mode: InputMode,
    pub breakpoint: HashSet<usize>,
    pub playmode: PlayMode,
    pub breakpoint_idx: usize,
    pub should_quit: bool,
}

impl App {
    pub fn new() -> App {
        App {
            done: false,
            simulator: Simulator::new().config(SimulationConfig::new().interactive(true)),
            snapshot_idx: 0,
            current_screen: CurrentScreen::Main,
            show_dialog: false,
            dialog_message: String::new(),
            input_mode: InputMode::Normal,
            breakpoint: HashSet::new(),
            playmode: PlayMode::Manual,
            breakpoint_idx: 0,
            should_quit: false,
        }
    }

    pub fn load_simulator(mut self, sim_ctx: Simulator) -> Self {
        self.simulator = sim_ctx;
        self
    }

    pub fn log_registers(&self) {
        self.simulator.ctx.log_registers();
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
            tui::Event::Tick => Some(tui::Action::Tick),
            tui::Event::Backend => Some(tui::Action::Calc),
            tui::Event::Key(key_event) => Some(self.handle_key_events(key_event)),
            _ => None,
        }
    }

    fn tick(&mut self) {
        let curlen = self.simulator.ctx.history.len();
        let rel_idx = self
            .snapshot_idx
            .saturating_sub(self.simulator.ctx.removed_cycles);
        let speed_step = 1;

        match self.playmode {
            PlayMode::ForwardUntilBreakpoint => {
                if self.done && rel_idx == curlen - 1 {
                    self.playmode = PlayMode::Manual;
                    return;
                } else if let Some(ss) = self.simulator.ctx.history.get(rel_idx) {
                    if self.breakpoint.contains(&ss.fetch_result.base_pc) {
                        self.playmode = PlayMode::Manual;
                        return;
                    }
                }

                self.snapshot_idx += 1;
            }
            PlayMode::BackwardUntilBreakpoint => {
                if rel_idx > 0 {
                    self.snapshot_idx = self
                        .snapshot_idx
                        .saturating_sub(speed_step)
                        .max(self.simulator.ctx.removed_cycles + 1);
                    if let Some(ss) = self.simulator.ctx.history.get(self.snapshot_idx) {
                        if self.breakpoint.contains(&ss.fetch_result.base_pc) {
                            self.playmode = PlayMode::Manual;
                        }
                    }
                } else {
                    self.playmode = PlayMode::Manual;
                }
            }
            _ => {}
        }
    }

    fn calc(&mut self) {
        if self.snapshot_idx <= self.simulator.ctx.removed_cycles {
            self.snapshot_idx = self.simulator.ctx.removed_cycles + 1;
        } else {
            let max_aval = self.simulator.ctx.removed_cycles + self.simulator.ctx.history.len();

            if self.snapshot_idx > max_aval {
                if self.done {
                    self.snapshot_idx = max_aval;
                    return;
                }
                for _ in max_aval + 1..self.snapshot_idx {
                    match self.simulator.run_unit() {
                        Ok(_) => {}
                        // Ok(_) => {
                        //     self.dialog_message = format!("Simulation ended at snapshot {}", i);
                        //     self.done = true;
                        //     self.show_dialog = true;
                        //     self.snapshot_idx -= 1;
                        //     break;
                        // }
                        Err(e) => {
                            self.show_dialog = true;
                            self.dialog_message = format!("{:?}", e);
                            self.done = true;
                            self.snapshot_idx -= 1;
                            break;
                        }
                    }
                }
            }
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
                        self.snapshot_idx += 1;
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
                    if self.input_mode == InputMode::Breakpoint {
                        let pc = self.breakpoint_idx * 4 + self.simulator.ctx.program_offset;
                        if self.breakpoint.contains(&pc) {
                            self.breakpoint.remove(&pc);
                        } else {
                            self.breakpoint.insert(pc);
                        }
                    } else {
                        self.playmode = PlayMode::Manual;
                    }
                    Action::Noop
                }
                KeyCode::Down => {
                    if self.input_mode == InputMode::Breakpoint {
                        self.breakpoint_idx = self.breakpoint_idx.saturating_add(1);
                    }
                    Action::Noop
                }
                KeyCode::Up => {
                    if self.input_mode == InputMode::Breakpoint {
                        self.breakpoint_idx = self.breakpoint_idx.saturating_sub(1);
                    }
                    Action::Noop
                }
                KeyCode::Char(']') => {
                    self.playmode = PlayMode::ForwardUntilBreakpoint;
                    self.snapshot_idx += 1;
                    Action::Noop
                }
                KeyCode::Char('[') => {
                    self.playmode = PlayMode::BackwardUntilBreakpoint;
                    Action::Noop
                }
                KeyCode::Char('e') => {
                    self.show_dialog = !self.show_dialog;
                    Action::Noop
                }
                KeyCode::Char('m') => {
                    self.breakpoint_idx = 0;
                    self.input_mode = match self.input_mode {
                        InputMode::Normal => InputMode::Breakpoint,
                        InputMode::Breakpoint => InputMode::Normal,
                    };
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
