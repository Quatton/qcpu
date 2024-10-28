use qcpu_syntax::{parser::Op, reg::IntReg};
use ratatui::{
    layout::{Constraint, Direction, Layout, Rect},
    style::{Color, Style},
    text::{Line, Span},
    widgets::{Block, Cell, Row, Table},
    Frame,
};
use strum::VariantArray;

use crate::app::{App, InputMode};

/// helper function to create a centered rect using up certain percentage of the available rect `r`
fn centered_rect(percent_x: u16, percent_y: u16, r: Rect) -> Rect {
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
        .constraints([Constraint::Min(1), Constraint::Percentage(40)])
        .split(frame.area());

    let mut list_items = Vec::new();

    let idx = app.snapshot_idx;
    let ss = app.simulator.ctx.history.get(idx).unwrap();

    for (i, &op) in app.simulator.ctx.program.iter().enumerate() {
        list_items.push(
            Row::new(vec![
                Cell::from(Span::styled(
                    "◍".to_string(),
                    if app
                        .breakpoint
                        .contains(&(i * 4 + app.simulator.ctx.program_offset))
                    {
                        Style::default().fg(Color::Red)
                    } else {
                        Style::default()
                    },
                )),
                Cell::from(Span::styled(
                    format!(
                        "0x{:05x}: {}",
                        i * 4 + app.simulator.ctx.program_offset,
                        app.simulator
                            .config
                            .parsing_context
                            .label_map
                            .get_label(i)
                            .map_or("", |v| v)
                    ),
                    if idx > 0 && ss.pc == i * 4 {
                        Style::default().fg(Color::Yellow)
                    } else {
                        Style::default()
                    },
                )),
                Cell::from(Span::styled(
                    Op::from_machine_code(op, &app.simulator.config.parsing_context)
                        .unwrap()
                        .to_asm(),
                    Style::default().fg(Color::White),
                )),
            ])
            .style(
                Style::default()
                    .bg(
                        if app.input_mode == InputMode::Breakpoint && app.breakpoint_idx == i {
                            Color::Yellow
                        } else {
                            Color::Reset
                        },
                    )
                    .fg(
                        if idx > 0 && ss.pc == i * 4 + app.simulator.ctx.program_offset {
                            Color::Yellow
                        } else {
                            Color::White
                        },
                    ),
            ),
        );
    }

    let list = Table::new(
        list_items,
        [
            Constraint::Length(2),
            Constraint::Min(1),
            Constraint::Min(1),
        ],
    )
    .block(Block::bordered());

    let regs: Vec<Cell> = ss
        .reg
        .iter()
        .enumerate()
        .map(|(i, val)| Cell::from(format!("{:<5}: {:<10} ", IntReg::VARIANTS[i], val)))
        .collect();

    let rows = regs.chunks_exact(2).map(|c| Row::new(Vec::from(c)));

    let widths = [Constraint::Min(1); 2];

    let reg_table = Table::new(rows, widths).block(
        Block::bordered()
            .title_bottom(Line::from(format!(" PC: 0x{:05x} ", ss.pc)).centered())
            .title_bottom(Line::from(format!(" Snapshot: {:05} ", idx)).centered())
            .title_bottom(Line::from(format!(" Done: {:05} ", app.done)).centered()),
    );

    frame.render_widget(list, chunks[1]);
    frame.render_widget(reg_table, chunks[0]);

    if app.show_dialog {
        let popup_block = Block::bordered()
            .title(app.dialog_message.as_str())
            .style(Style::default().bg(Color::DarkGray));

        let area = centered_rect(60, 25, frame.area());

        frame.render_widget(popup_block, area);
    }
}
