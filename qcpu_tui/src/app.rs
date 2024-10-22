use qcpu_simulator::{SimulationConfig, Simulator};
use qcpu_syntax::parser::ParsingContext;

// use crate::{action::Action, event::Event, terminal::Frame};

#[derive(Default)]
pub enum CurrentScreen {
    #[default]
    Main,
    Exiting,
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
    pub parsing_context: ParsingContext,
    pub simulator: Simulator,
    pub snapshot_idx: i32,
    pub current_screen: CurrentScreen,
    pub done: bool,
}

impl App {
    pub fn new() -> App {
        App {
            done: false,
            parsing_context: ParsingContext::default(),
            simulator: Simulator::new().config(SimulationConfig::new().interactive(true)),
            snapshot_idx: -1,
            current_screen: CurrentScreen::Main,
        }
    }

    pub fn load_simulator(mut self, sim_ctx: Simulator) -> Self {
        self.simulator = sim_ctx;
        self
    }

    pub fn load_parsing_context(mut self, prs_ctx: ParsingContext) -> Self {
        self.parsing_context = prs_ctx;
        self
    }

    pub fn log_registers(&self) {
        self.simulator.simulation_context.log_registers();
    }
}
