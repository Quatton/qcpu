use qcpu_syntax::{parser::Op, reg::IntReg, FloatReg};
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

pub fn ui(frame: &mut Frame, app: &mut App) {
    let upper = Layout::default()
        .direction(Direction::Vertical)
        .constraints([Constraint::Min(1), Constraint::Length(12)])
        .split(frame.area());

    let chunks = Layout::default()
        .direction(Direction::Horizontal)
        .constraints([Constraint::Min(1), Constraint::Percentage(30)])
        .split(upper[0]);

    let mut list_items = Vec::new();

    let idx = app
        .snapshot_idx
        .saturating_sub(app.simulator.ctx.removed_cycles);

    let history = &app.simulator.ctx.history;
    let len = history.len();
    let ss = history.get(idx.min(len - 1)).unwrap();

    let if_style: Style = Style::default().fg(Color::Yellow);
    let de_style: Style = Style::default().fg(Color::Green);
    let ex_style: Style = Style::default().fg(Color::Blue);
    let ma_style: Style = Style::default().fg(Color::Magenta);
    let wb_style: Style = Style::default().fg(Color::Cyan);

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
                Cell::from(format!(
                    "0x{:05x}: {}",
                    i * 4 + app.simulator.ctx.program_offset,
                    app.simulator
                        .config
                        .parsing_context
                        .label_map
                        .get_label(i)
                        .map_or("", |v| v)
                )),
                Cell::from(
                    Op::from_machine_code(op, &app.simulator.config.parsing_context)
                        .unwrap_or(Op::Raw(op))
                        .to_asm(),
                ),
            ])
            .style(
                if ss.fetch_result.base_pc == i * 4 && !ss.fetch_result.stall {
                    if_style
                } else if ss.decode_result.base_pc == i * 4 && !ss.decode_result.stall && !ss.bubble
                {
                    de_style
                } else if ss.execute_result.base_pc == i * 4
                    && !ss.execute_result.stall
                    && !ss.bubble
                {
                    ex_style
                } else {
                    Style::default()
                }
                .bg(
                    if app.input_mode == InputMode::Breakpoint && app.breakpoint_idx == i {
                        Color::Yellow
                    } else {
                        Color::Reset
                    },
                ),
            ),
        );
    }

    let program_list = Table::new(
        list_items,
        [
            Constraint::Length(2),
            Constraint::Min(1),
            Constraint::Min(1),
        ],
    )
    .block(Block::bordered());

    let mut iregs: Vec<Cell> = ss
        .ireg
        .iter()
        .enumerate()
        .map(|(i, val)| {
            Cell::from(format!(
                "{}{:<4}: {:<10}",
                ss.ireg_delay[i],
                IntReg::VARIANTS[i],
                val,
            ))
            .style(if ss.ireg_delay[i] > 0 {
                Style::default().fg(Color::Red)
            } else {
                Style::default()
            })
        })
        .collect();

    let mut fregs: Vec<Cell> = ss
        .freg
        .iter()
        .enumerate()
        .map(|(i, val)| {
            Cell::from(format!(
                "{}{:<4}: {:<10}",
                ss.freg_delay[i],
                FloatReg::from_repr(i).unwrap(),
                val,
            ))
            .style(if ss.freg_delay[i] > 0 {
                Style::default().fg(Color::Red)
            } else {
                Style::default()
            })
        })
        .collect();

    iregs.append(&mut fregs);
    let rows = iregs.chunks_exact(8).map(|c| Row::new(Vec::from(c)));

    let widths = [Constraint::Min(1); 8];

    let reg_table = Table::new(rows, widths).block(
        Block::bordered()
            .title_bottom(Line::from(format!(" PC: 0x{:05x} ", ss.fetch_result.base_pc)).centered())
            .title_bottom(
                Line::from(format!(
                    " Snapshot: {:05} ",
                    app.simulator.ctx.removed_cycles + idx
                ))
                .centered(),
            )
            .title_bottom(Line::from(format!(" Done: {:05} ", app.done)).centered())
            .title_bottom(Line::from(format!(" Mode: {:?} ", app.playmode)).centered()),
    );

    let window = 5;
    let history_window = history[idx.saturating_sub(window)..(idx + 1).min(len)].to_vec();

    let mut lag = 0;

    let mut history_rows = vec![];

    for (i, cur) in history_window.iter().enumerate() {
        let mut row: Vec<Cell> = vec![];
        let prev = history_window.get(i.saturating_sub(1));

        // if cur.bubble || cur.fetch_result.stall {
        //     lag -= 1;
        // }

        for _ in 0..lag {
            row.push(Cell::new(""));
        }

        if cur.write_back_result.is_some() {
            row.push(
                Cell::from(format!("WB\n{:?}", cur.write_back_result.unwrap())).style(wb_style),
            );
        } else if prev.is_some_and(|v| !v.decode_result.stall) {
            row.push(Cell::new("WB").style(wb_style));
        }

        if !cur.fetch_result.stall {
            row.push(Cell::from(format!("MA\n{:?}", cur.memory_access_result)).style(ma_style));
        }

        if cur.bubble {
            row.push(Cell::from("EX\n🫧").style(ex_style));
            row.push(Cell::from("DE\n🫧").style(de_style));

            // row.push(Cell::from("MA\n🫧"));
            // row.push(Cell::from("WB\n🫧"));
        } else {
            row.push(Cell::from(format!("EX\n{:?}", cur.execute_result)).style(ex_style));
            row.push(Cell::from(format!("DE\n{:?}", cur.decode_result)).style(de_style));
        }

        row.push(Cell::from(format!("IF\n{:?}", cur.fetch_result)).style(if_style));

        lag += 1;

        history_rows.push(Row::from_iter(row).height(4));
    }

    let target_length = 5 + lag - 1;
    let pipeline = Table::new(
        history_rows,
        std::iter::repeat_n(Constraint::Min(1), target_length),
    )
    .block(Block::bordered());

    frame.render_widget(pipeline, chunks[0]);

    frame.render_stateful_widget(program_list, chunks[1], &mut app.program_table_state);
    frame.render_widget(reg_table, upper[1]);

    if app.show_dialog {
        let popup_block = Block::bordered()
            .title(app.dialog_message.as_str())
            .style(Style::default().bg(Color::DarkGray));

        let area = centered_rect(60, 25, frame.area());

        frame.render_widget(popup_block, area);
    }
}
