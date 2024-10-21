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

        impl parser::FromMachineCode<'_> for ROp {
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
                _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
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
                            let imm = i32_to_i12(imm);
                            imm << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode<'_> for IOp {
          fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
            let opcode =  0b00000000000000000000000001111111  & mc;
            let rdi =     ((0b00000000000000000000111110000000  & mc) >> 7) as usize;
            let funct3 = (0b00000000000000000111000000000000  & mc) >> 12;
            let rs1i =   ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
            let imm =     ((0b11111111111100000000000000000000  & mc) >> 20);

            let imm = i12_to_i32(imm);
            let rd = reg::IntReg::VARIANTS[rdi];
            let rs1 = reg::IntReg::VARIANTS[rs1i];

            match (funct3, opcode) {
                $(
                    ($funct3, $opcode) => Ok(parser::Op::I(IOp::$name, rd, rs1, imm)),
                )*
                _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
            }
        }
      }


    };
}

#[macro_export]
macro_rules! isop {
    ($($imm:literal shamt rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
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
                            $imm << 25 | imm << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode<'_> for ISOp {
          fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
            let opcode =    0b00000000000000000000000001111111  & mc;
            let rdi =     ((0b00000000000000000000111110000000  & mc) >> 7) as usize;
            let funct3 =   (0b00000000000000000111000000000000  & mc) >> 12;
            let rs1i =     ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
            let shamt =    ((0b00000001111100000000000000000000  & mc) >> 20) as i32;
            let imm =      ((0b11111110000000000000000000000000  & mc) >> 25) as i32;

            let rd = reg::IntReg::VARIANTS[rdi];
            let rs1 = reg::IntReg::VARIANTS[rs1i];

            match (funct3, imm, opcode) {
                $(
                    ($funct3, $imm, $opcode) => Ok(parser::Op::IS(ISOp::$name, rd, rs1, shamt)),
                )*
                _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
            }
        }
      }
    };
}

#[macro_export]
macro_rules! bop {
    ($(imm[12|10:5] rs2 rs1 $funct3:literal imm[4:1|11] $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        pub enum BOp {
            $($name,)*
        }

        impl parser::WithParser for BOp {}

        impl BOp {
            pub fn to_machine_code(self, rs2: reg::IntReg, rs1: reg::IntReg, imm: i32) -> u32 {
                match self {
                    $(
                        BOp::$name => {
                            let opcode = $opcode;
                            let funct3 = $funct3;
                            let rs2 = rs2 as u32;
                            let rs1 = rs1 as u32;
                            let imm = (imm as u32) << 1;
                            let imm11 = 0b1 & imm >> 11;
                            let imm4 = 0b1111 & imm >> 1;
                            let imm12 = 0b1 & imm >> 12;
                            let imm10 = 0b111111 & imm >> 5;

                            imm12 << 31
                            | imm10 << 25
                            | rs2 << 20
                            | rs1 << 15
                            | funct3 << 12
                            | imm4 << 8
                            | imm11 << 7
                            | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode<'_> for BOp {
            fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
              let opcode =       0b00000000000000000000000001111111  & mc;
                let imm12 =    ((0b10000000000000000000000000000000  & mc) >> 31) as u32;
                let imm10 =    ((0b01111110000000000000000000000000  & mc) >> 25) as u32;
                let rs2i =     ((0b00000001111100000000000000000000  & mc) >> 20) as usize;
                let rs1i =     ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
                let funct3 =   ((0b00000000000000000111000000000000  & mc) >> 12) as u32;
                let imm4 =     ((0b00000000000000000000111100000000  & mc) >> 8) as u32;
                let imm11 =    ((0b00000000000000000000000010000000  & mc) >> 7) as u32;

                let imm = (imm12 << 12 |
                imm11 << 11 | imm10 << 5 | imm4 << 1);

                let imm = i12_to_i32(imm >> 1);

                let rs2 = reg::IntReg::VARIANTS[rs2i];
                let rs1 = reg::IntReg::VARIANTS[rs1i];

                match (funct3, opcode) {
                    $(
                        ($funct3, $opcode) => Ok(parser::Op::B(BOp::$name, rs2, rs1, parser::JumpTarget::from_offset(imm as i32))),
                    )*
                    _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
                }
            }
        }
    }
}
