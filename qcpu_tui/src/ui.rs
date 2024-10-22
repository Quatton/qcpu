use qcpu_syntax::{parser::Op, reg::IntReg};
use ratatui::{
    layout::{Constraint, Direction, Layout, Rect},
    style::{Color, Style},
    text::{Line, Span},
    widgets::{Block, Cell, List, ListItem, Row, Table},
    Frame,
};
use strum::VariantArray;

use crate::app::App;

/// helper function to create a centered rect using up certain percentage of the available rect `r`
fn _centered_rect(percent_x: u16, percent_y: u16, r: Rect) -> Rect {
    // Cut the given rectangle into three vertical pieces
    let popup_layout = Layout::default()
        .direction(Direction::Vertical)
        .constraints([
            Constraint::Percentage((100 - percent_y) / 2),
            Constraint::Percentage(percent_y),
            Constraint::Percentage((100 - percent_y) / 2),
        ])
        .split(r);

    // Then cut the middle vertical piece into three width-wise pieces
    Layout::default()
        .direction(Direction::Horizontal)
        .constraints([
            Constraint::Percentage((100 - percent_x) / 2),
            Constraint::Percentage(percent_x),
            Constraint::Percentage((100 - percent_x) / 2),
        ])
        .split(popup_layout[1])[1] // Return the middle chunk
}

pub fn ui(frame: &mut Frame, app: &App) {
    let chunks = Layout::default()
        .direction(Direction::Horizontal)
        .constraints([Constraint::Min(1), Constraint::Percentage(30)])
        .split(frame.area());

    let mut list_items = Vec::<ListItem>::new();

    let idx: Result<usize, _> = app.snapshot_idx.try_into();

    let ss = match idx {
        Ok(x) => app.simulator.simulation_context.history.get(x).copied(),
        Err(_) => None,
    };

    for (i, &op) in app.simulator.simulation_context.program.iter().enumerate() {
        list_items.push(ListItem::new(Line::from(Span::styled(
            Op::from_machine_code(op, &app.parsing_context)
                .unwrap()
                .to_asm(),
            if let Some(ss) = ss {
                if ss.pc == i {
                    Style::default().fg(Color::Yellow)
                } else {
                    Style::default()
                }
            } else {
                Style::default()
            },
        ))));
    }

    let list = List::new(list_items).block(Block::bordered());

    let regs: Vec<Cell> = ss
        .unwrap_or_default()
        .reg
        .iter()
        .enumerate()
        .map(|(i, val)| Cell::from(format!("{:<5}: {:<10} ", IntReg::VARIANTS[i], val)))
        .collect();

    let rows = regs.chunks_exact(4).map(|c| Row::new(Vec::from(c)));

    let widths = [
        Constraint::Min(1),
        Constraint::Min(1),
        Constraint::Min(1),
        Constraint::Min(1),
    ];

    let reg_table = Table::new(rows, widths).block(Block::bordered());
    frame.render_widget(list, chunks[1]);
    frame.render_widget(reg_table, chunks[0]);
}
