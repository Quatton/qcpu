extern crate proc_macro;

#[macro_export]
macro_rules! rop {
    ($($funct7:literal rs2 rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        pub enum ROp {
            $($name,)*
        }

        impl parser::WithParser for ROp {}

        impl ROp {
            pub fn to_machine_code(self, rd: reg::IntReg, rs1: reg::IntReg, rs2: reg::IntReg) -> u32 {
                match self {
                    $(
                        ROp::$name => {
                            let funct7 = $funct7;
                            let funct3 = $funct3;
                            let opcode = $opcode;
                            let rs2 = rs2 as u32;
                            let rs1 = rs1 as u32;
                            let rd = rd as u32;
                            funct7 << 25 | rs2 << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode for ROp {
          fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
            let opcode =  0b00000000000000000000000001111111  & mc;
            let rdi =     ((0b00000000000000000000111110000000  & mc) >> 7) as usize;
            let funct3 = (0b00000000000000000111000000000000  & mc) >> 12;
            let rs1i =   ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
            let rs2i =    ((0b00000001111100000000000000000000  & mc) >> 20) as usize;
            let funct7 = (0b11111110000000000000000000000000  & mc) >> 25;

            let rd = reg::IntReg::VARIANTS[rdi];
            let rs1 = reg::IntReg::VARIANTS[rs1i];
            let rs2 = reg::IntReg::VARIANTS[rs2i];

            match (funct3, funct7, opcode) {
                $(
                    ($funct3, $funct7, $opcode) => Ok(parser::Op::R(ROp::$name, rd, rs1, rs2)),
                )*
                _ => Err(error::ParseError::DisassemblerError(mc)),
            }
        }
      }
    };
}

#[macro_export]
macro_rules! iop {
    ($(imm[11:0] rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        pub enum IOp {
            $($name,)*
        }

        impl parser::WithParser for IOp {}

        impl IOp {
            pub fn to_machine_code(self, rd: reg::IntReg, rs1: reg::IntReg, imm: i32) -> u32 {
                match self {
                    $(
                        IOp::$name => {
                            let opcode = $opcode;
                            let funct3 = $funct3;
                            let rd = rd as u32;
                            let rs1 = rs1 as u32;
                            let imm = imm as u32;
                            imm << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode for IOp {
          fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
            let opcode =  0b00000000000000000000000001111111  & mc;
            let rdi =     ((0b00000000000000000000111110000000  & mc) >> 7) as usize;
            let funct3 = (0b00000000000000000111000000000000  & mc) >> 12;
            let rs1i =   ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
            let imm =     ((0b11111111111100000000000000000000  & mc) >> 20) as i32;

            let rd = reg::IntReg::VARIANTS[rdi];
            let rs1 = reg::IntReg::VARIANTS[rs1i];

            match (funct3, opcode) {
                $(
                    ($funct3, $opcode) => Ok(parser::Op::I(IOp::$name, rd, rs1, imm)),
                )*
                _ => Err(error::ParseError::DisassemblerError(mc)),
            }
        }
      }


    };
}

#[macro_export]
macro_rules! isop {
    ($($immf:literal shamt rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        pub enum ISOp {
            $($name,)*
        }

        impl parser::WithParser for ISOp {}

        impl ISOp {
            pub fn to_machine_code(self, rd: reg::IntReg, rs1: reg::IntReg, shamt: i32) -> u32 {
                match self {
                    $(
                        ISOp::$name => {
                            let opcode = $opcode;
                            let funct3 = $funct3;
                            let rd = rd as u32;
                            let rs1 = rs1 as u32;
                            let imm = shamt as u32;
                            $immf << 25 | imm << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode for ISOp {
          fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
            let opcode =  0b00000000000000000000000001111111  & mc;
            let rdi =     ((0b00000000000000000000111110000000  & mc) >> 7) as usize;
            let funct3 = (0b00000000000000000111000000000000  & mc) >> 12;
            let rs1i =   ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
            let imm =     ((0b11111110000000000000000000000000  & mc) >> 20) as i32;
            let immf =    ((0b10000000000000000000000000000000  & mc) >> 25) as i32;

            let rd = reg::IntReg::VARIANTS[rdi];
            let rs1 = reg::IntReg::VARIANTS[rs1i];

            match (funct3, immf, opcode) {
                $(
                    ($funct3, $immf, $opcode) => Ok(parser::Op::IS(ISOp::$name, rd, rs1, imm)),
                )*
                _ => Err(error::ParseError::DisassemblerError(mc)),
            }
        }
      }
    };
}
