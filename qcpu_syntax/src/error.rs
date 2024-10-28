use nom::error::Error;

#[derive(Debug)]
pub enum ParseError {
    NomError(Error<String>),
    DisassemblerError(String),
    JumpTargetError(String),
    InvalidMachineCode(u32),
}

impl From<nom::Err<Error<&str>>> for ParseError {
    fn from(err: nom::Err<Error<&str>>) -> Self {
        match err {
            nom::Err::Incomplete(_) => ParseError::NomError(Error {
                input: "".to_string(),
                code: nom::error::ErrorKind::Complete,
            }),
            nom::Err::Error(e) | nom::Err::Failure(e) => ParseError::NomError(Error {
                input: e.input.to_string(),
                code: e.code,
            }),
        }
    }
}
