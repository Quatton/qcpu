use ratatui::{
    layout::{Constraint, Direction, Layout, Rect},
    style::{Color, Style},
    text::Line,
    widgets::{Block, Paragraph},
    Frame,
};

use super::app::App;

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

pub fn ui(frame: &mut Frame, app: &mut App) {
    let vertical_split = Layout::default()
        .direction(Direction::Vertical)
        .constraints([Constraint::Length(1), Constraint::Min(1)])
        .split(frame.area());

    let cur = app
        .window
        .get(app.snapshot_idx)
        .unwrap_or(&app.simulator.ctx.current);

    let op = Paragraph::new(format!("{:?}", cur.op));

    let reg_table = Paragraph::new(format!("{:?}", cur.regs)).block(
        Block::bordered()
            .title("Registers")
            .title_bottom(
                Line::from(format!(
                    " ← Captured Snapshot ({}/{}) → ",
                    if app.snapshot_idx >= app.window.len() {
                        "Current".to_string()
                    } else {
                        (app.snapshot_idx + 1).to_string()
                    },
                    app.window.len()
                ))
                .left_aligned(),
            )
            .title_bottom(Line::from(format!(" PC: {} ", cur.pc)).left_aligned())
            .title_bottom(Line::from(format!(" Is done: {} ", app.done)).left_aligned()),
    );

    frame.render_widget(op, vertical_split[0]);
    frame.render_widget(reg_table, vertical_split[1]);

    if app.show_dialog {
        let popup_block = Block::bordered()
            .title(app.dialog_message.as_str())
            .style(Style::default().bg(Color::DarkGray));

        let area = centered_rect(60, 25, frame.area());

        frame.render_widget(popup_block, area);
    }
}
