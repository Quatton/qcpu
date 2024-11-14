use strum::VariantArray;

use crate::{parser::JumpTarget, reg, RoundingMode};

extern crate proc_macro;

pub(crate) fn i12_to_i32(i: u32) -> i32 {
    if i >> 11 == 0 {
        i as i32
    } else {
        (i | 0xFFFFF000) as i32
    }
}

pub(crate) fn i32_to_i12(i: i32) -> u32 {
    (i & 0xFFF) as u32
}

pub(crate) fn in_to_i32(i: u32, n: u32) -> i32 {
    if i >> (n - 1) == 0 {
        i as i32
    } else {
        i as i32 | -(1 << n)
    }
}

pub(crate) fn i32_to_in(i: i32, n: u32) -> u32 {
    (i & ((1 << n) - 1)) as u32
}

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
                            let imm = imm as u32;
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

                let imm = i12_to_i32(imm);

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

#[macro_export]
macro_rules! stop {
    ($(imm[11:5] rs2 rs1 $funct3:literal imm[4:0] $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        pub enum STOp {
            $($name,)*
        }

        impl parser::WithParser for STOp {}

        impl STOp {
            pub fn to_machine_code(self, rs2: reg::IntReg, rs1: reg::IntReg, imm: i32) -> u32 {
                match self {
                    $(
                        STOp::$name => {
                            let opcode = $opcode;
                            let funct3 = $funct3;
                            let rs2 = rs2 as u32;
                            let rs1 = rs1 as u32;

                            let imm4 = (imm & 0b11111) as u32;
                            let imm11 = ((imm >> 5)  & 0b1111111) as u32;

                            imm11 << 25
                            | rs2 << 20
                            | rs1 << 15
                            | funct3 << 12
                            | imm4 << 7
                            | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode<'_> for STOp {
            fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
                let opcode =     0b00000000000000000000000001111111  & mc;
                let imm11 =    ((0b11111110000000000000000000000000  & mc) >> 25) as u32;
                let rs2i =     ((0b00000001111100000000000000000000  & mc) >> 20) as usize;
                let rs1i =     ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
                let funct3 =   ((0b00000000000000000111000000000000  & mc) >> 12) as u32;
                let imm4 =     ((0b00000000000000000000111110000000  & mc) >> 7) as u32;

                let imm = i12_to_i32(imm11 << 5 | imm4);

                let rs2 = reg::IntReg::VARIANTS[rs2i];
                let rs1 = reg::IntReg::VARIANTS[rs1i];

                match (funct3, opcode) {
                    $(
                        ($funct3, $opcode) => Ok(parser::Op::S(STOp::$name, rs2, rs1, imm as i32)),
                    )*
                    _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
                }
            }
        }

    }
}

#[macro_export]
macro_rules! uop {
    ($(imm[31:12] rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        pub enum UOp {
            $($name,)*
        }

        impl parser::WithParser for UOp {}

        impl UOp {
            pub fn to_machine_code(self, rd: reg::IntReg, imm: i32) -> u32 {
                match self {
                    $(
                        UOp::$name => {
                            let opcode = $opcode;
                            let rd = rd as u32;
                            let imm32 = imm as u32;

                            imm32 << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode<'_> for UOp {
            fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
                let opcode =      0b00000000000000000000000001111111  & mc;
                let rd =         (0b00000000000000000000111110000000 & mc) >> 7;
                let imm =        (0b11111111111111111111000000000000 & mc) >> 12;

                let rd = reg::IntReg::VARIANTS[rd as usize];

                match opcode {
                    $(
                        $opcode => Ok(parser::Op::U(UOp::$name, rd, parser::JumpTarget::from_offset(imm as i32))),
                    )*
                    _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
                }
            }
        }
    };
}

#[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
#[strum(serialize_all = "lowercase")]
pub enum JOp {
    JAL,
}

impl crate::parser::WithParser for JOp {}
#[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
#[strum(serialize_all = "lowercase")]
pub enum JROp {
    JALR,
}

impl crate::parser::WithParser for JROp {}

impl JOp {
    pub fn to_machine_code(self, rd: reg::IntReg, imm: i32) -> u32 {
        let imm = i32_to_in(imm, 21);
        let opcode = 0b1101111;
        let rd = rd as u32;
        let imm20 = (imm >> 20) & 0b1;
        let imm10 = (imm >> 1) & 0b1111111111;
        let imm11 = (imm >> 11) & 0b1;
        let imm19 = (imm >> 12) & 0b11111111;

        imm20 << 31 | imm10 << 21 | imm11 << 20 | imm19 << 12 | rd << 7 | opcode
    }
}

impl JROp {
    pub fn to_machine_code(self, rd: reg::IntReg, rs1: reg::IntReg, imm: i32) -> u32 {
        let imm = i32_to_i12(imm);
        let opcode = 0b1100111;
        let rd = rd as u32;
        let rs1 = rs1 as u32;
        let imm = imm & 0b111111111111;
        let funct3 = 0b000;

        imm << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
    }
}

impl crate::parser::FromMachineCode<'_> for crate::JROp {
    fn from_machine_code(
        mc: u32,
    ) -> std::result::Result<crate::parser::Op, crate::error::ParseError> {
        let opcode = 0b00000000000000000000000001111111 & mc;

        match opcode {
            0b1100111 => {
                let imm = (0b11111111111100000000000000000000 & mc) >> 20;
                let rs1i = (0b00000000000011111000000000000000 & mc) >> 15;
                let funct3 = (0b00000000000000000111000000000000 & mc) >> 12;
                let rdi = (0b00000000000000000000111110000000 & mc) >> 7;

                if funct3 != 0b000 {
                    return Err(crate::error::ParseError::DisassemblerError(format!(
                        "{:032b}",
                        mc
                    )));
                }

                let imm = i12_to_i32(imm);

                let rd = reg::IntReg::VARIANTS[rdi as usize];
                let rs1 = reg::IntReg::VARIANTS[rs1i as usize];

                Ok(crate::parser::Op::JR(
                    JROp::JALR,
                    rd,
                    rs1,
                    JumpTarget::from_offset(imm),
                ))
            }

            _ => Err(crate::error::ParseError::DisassemblerError(format!(
                "{:032b}",
                mc
            ))),
        }
    }
}
impl crate::parser::FromMachineCode<'_> for crate::JOp {
    fn from_machine_code(
        mc: u32,
    ) -> std::result::Result<crate::parser::Op, crate::error::ParseError> {
        let opcode = 0b00000000000000000000000001111111 & mc;

        match opcode {
            0b1101111 => {
                let imm20 = 0b1 & (mc >> 31);
                let imm10_1 = 0b1111111111 & (mc >> 21);
                let imm11 = 0b1 & (mc >> 20);
                let imm19_12 = 0b11111111 & (mc >> 12);
                let rdi = 0b11111 & (mc >> 7);

                let imm = in_to_i32(
                    imm20 << 20 | imm10_1 << 1 | imm11 << 11 | imm19_12 << 12,
                    21,
                );

                let rd = reg::IntReg::VARIANTS[rdi as usize];

                Ok(crate::parser::Op::J(
                    JOp::JAL,
                    rd,
                    JumpTarget::from_offset(imm),
                ))
            }

            _ => Err(crate::error::ParseError::DisassemblerError(format!(
                "{:032b}",
                mc
            ))),
        }
    }
}

#[macro_export]
macro_rules! lop {
    ($(imm[11:0] rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        pub enum LOp {
            $($name,)*
        }

        impl parser::WithParser for LOp {}

        impl LOp {
            pub fn to_machine_code(self, rd: reg::IntReg, rs1: reg::IntReg, imm: i32) -> u32 {
                match self {
                    $(
                        LOp::$name => {
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

        impl parser::FromMachineCode<'_> for LOp {
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
                    ($funct3, $opcode) => Ok(parser::Op::L(LOp::$name, rd, rs1, imm)),
                )*
                _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),

            }
          }
        }
    }
}

#[macro_export]
macro_rules! frop {
    ($($funct7:literal rs2 rs1 rm rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        #[allow(non_camel_case_types)]
        pub enum FROp {
            $($name,)*
        }

        impl parser::WithParser for FROp {}

        impl FROp {
            pub fn to_machine_code(self, rd: reg::FloatReg, rs1: reg::FloatReg, rs2: reg::FloatReg, rm: reg::RoundingMode) -> u32 {
                match self {
                    $(
                        FROp::$name => {
                            let funct7 = $funct7;
                            let opcode = $opcode;
                            let rs2 = rs2 as u32;
                            let rs1 = rs1 as u32;
                            let rd = rd as u32;
                            let rm = rm as u32;
                            funct7 << 25 | rs2 << 20 | rs1 << 15 | rm << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode<'_> for FROp {
          fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
            let opcode =    0b00000000000000000000000001111111  & mc;
            let rdi =     ((0b00000000000000000000111110000000  & mc) >> 7) as usize;
            let rm =      ((0b00000000000000000111000000000000  & mc) >> 12) as usize;
            let rs1i =    ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
            let rs2i =    ((0b00000001111100000000000000000000  & mc) >> 20) as usize;
            let funct7 =   (0b11111110000000000000000000000000  & mc) >> 25;

            let rd = reg::FloatReg::VARIANTS[rdi];
            let rs1 = reg::FloatReg::VARIANTS[rs1i];
            let rs2 = reg::FloatReg::VARIANTS[rs2i];
            let rm = reg::RoundingMode::VARIANTS[rm];

            match (funct7, opcode) {
                $(
                    ($funct7, $opcode) => Ok(parser::Op::FR(FROp::$name, rd, rs1, rs2, rm)),
                )*
                _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
            }
          }
        }
    };
}

#[macro_export]
macro_rules! fcop {
    ($($funct7:literal rs2 rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
        #[strum(serialize_all = "lowercase")]
        #[allow(non_camel_case_types)]
        pub enum FCOp {
            $($name,)*
        }

        impl parser::WithParser for FCOp {}

        impl FCOp {
            pub fn to_machine_code(self, rd: usize, rs1: reg::FloatReg, rs2: reg::FloatReg) -> u32 {
                match self {
                    $(
                        FCOp::$name => {
                            let funct7 = $funct7;
                            let opcode = $opcode;
                            let rs2 = rs2 as u32;
                            let rs1 = rs1 as u32;
                            let rd = rd as u32;
                            let rm = $funct3;
                            funct7 << 25 | rs2 << 20 | rs1 << 15 | rm << 12 | rd << 7 | opcode
                        }
                    )*
                }
            }
        }

        impl parser::FromMachineCode<'_> for FCOp {
            fn from_machine_code(mc: u32) -> std::result::Result<parser::Op, error::ParseError> {
              let opcode =    0b00000000000000000000000001111111  & mc;
              let rdi =     ((0b00000000000000000000111110000000  & mc) >> 7) as usize;
              let rm =      ((0b00000000000000000111000000000000  & mc) >> 12) as usize;
              let rs1i =    ((0b00000000000011111000000000000000  & mc) >> 15) as usize;
              let rs2i =    ((0b00000001111100000000000000000000  & mc) >> 20) as usize;
              let funct7 =   (0b11111110000000000000000000000000  & mc) >> 25;

              let rd = rdi;
              let rs1 = reg::FloatReg::VARIANTS[rs1i];
              let rs2 = reg::FloatReg::VARIANTS[rs2i];
              let funct3 = rm;


              match (funct7, funct3, opcode) {
                  $(
                      ($funct7, $funct3, $opcode) => Ok(parser::Op::FC(FCOp::$name, rd, rs1, rs2)),
                  )*
                  _ => Err(error::ParseError::DisassemblerError(format!("{:032b}", mc))),
              }
            }
          }
    };
}

#[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
#[strum(serialize_all = "lowercase")]
pub enum FLOp {
    FLW,
}

impl crate::parser::WithParser for FLOp {}

impl FLOp {
    pub fn to_machine_code(self, rd: reg::FloatReg, rs1: reg::IntReg, imm: i32) -> u32 {
        match self {
            FLOp::FLW => {
                let opcode = 0b0000111;
                let funct3 = 0b010;
                let rd = rd as u32;
                let rs1 = rs1 as u32;
                let imm = i32_to_i12(imm);
                imm << 20 | rs1 << 15 | funct3 << 12 | rd << 7 | opcode
            }
        }
    }
}

impl crate::parser::FromMachineCode<'_> for FLOp {
    fn from_machine_code(
        mc: u32,
    ) -> std::result::Result<crate::parser::Op, crate::error::ParseError> {
        let opcode = 0b00000000000000000000000001111111 & mc;
        let rdi = ((0b00000000000000000000111110000000 & mc) >> 7) as usize;
        let funct3 = (0b00000000000000000111000000000000 & mc) >> 12;
        let rs1i = ((0b00000000000011111000000000000000 & mc) >> 15) as usize;
        let imm = (0b11111111111100000000000000000000 & mc) >> 20;

        let imm = i12_to_i32(imm);
        let rd = reg::FloatReg::VARIANTS[rdi];
        let rs1 = reg::IntReg::VARIANTS[rs1i];

        match (funct3, opcode) {
            (0b010, 0b0000111) => Ok(crate::parser::Op::FL(FLOp::FLW, rd, rs1, imm)),
            _ => Err(crate::error::ParseError::DisassemblerError(format!(
                "{:032b}",
                mc
            ))),
        }
    }
}

#[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
#[strum(serialize_all = "lowercase")]
pub enum FSOp {
    FSW,
}

impl crate::parser::WithParser for FSOp {}

impl FSOp {
    pub fn to_machine_code(self, rs2: reg::FloatReg, rs1: reg::IntReg, imm: i32) -> u32 {
        match self {
            FSOp::FSW => {
                let opcode = 0b0100111;
                let funct3 = 0b010;
                let rs2 = rs2 as u32;
                let rs1 = rs1 as u32;

                let imm4 = (imm & 0b11111) as u32;
                let imm11 = ((imm >> 5) & 0b1111111) as u32;

                imm11 << 25 | rs2 << 20 | rs1 << 15 | funct3 << 12 | imm4 << 7 | opcode
            }
        }
    }
}

impl crate::parser::FromMachineCode<'_> for FSOp {
    fn from_machine_code(
        mc: u32,
    ) -> std::result::Result<crate::parser::Op, crate::error::ParseError> {
        let opcode = 0b00000000000000000000000001111111 & mc;
        let imm11 = (0b11111110000000000000000000000000 & mc) >> 25;
        let rs2i = ((0b00000001111100000000000000000000 & mc) >> 20) as usize;
        let rs1i = ((0b00000000000011111000000000000000 & mc) >> 15) as usize;
        let funct3 = (0b00000000000000000111000000000000 & mc) >> 12;
        let imm4 = (0b00000000000000000000111110000000 & mc) >> 7;

        let imm = i12_to_i32(imm11 << 5 | imm4);

        let rs2 = reg::FloatReg::VARIANTS[rs2i];
        let rs1 = reg::IntReg::VARIANTS[rs1i];

        match (funct3, opcode) {
            (0b010, 0b0100111) => Ok(crate::parser::Op::FS(FSOp::FSW, rs2, rs1, imm)),
            _ => Err(crate::error::ParseError::DisassemblerError(format!(
                "{:032b}",
                mc
            ))),
        }
    }
}

#[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString, strum_macros::Display)]
#[strum(serialize_all = "lowercase")]
pub enum FXOp {
    #[strum(serialize = "fcvt.s.w", serialize = "fcvtsw")]
    FCVTSW,
    #[strum(serialize = "fcvt.w.s", serialize = "fcvtws")]
    FCVTWS,
    FSQRT,
}

impl crate::parser::WithParser for FXOp {}

impl FXOp {
    pub fn to_machine_code(self, rd: usize, rs1: usize, rm: RoundingMode) -> u32 {
        let opcode = 0b1010011;
        let rs2 = 0b00000;
        let rd = rd as u32;
        let rm = rm as u32;
        let rs1 = rs1 as u32;

        let funct7 = match self {
            FXOp::FSQRT => 0b0101100,
            FXOp::FCVTSW => 0b1101000,
            FXOp::FCVTWS => 0b1100000,
        };

        funct7 << 25 | rs2 << 20 | rs1 << 15 | rm << 12 | rd << 7 | opcode
    }
}

impl crate::parser::FromMachineCode<'_> for FXOp {
    fn from_machine_code(
        mc: u32,
    ) -> std::result::Result<crate::parser::Op, crate::error::ParseError> {
        let opcode = 0b00000000000000000000000001111111 & mc;
        let funct7 = (0b11111110000000000000000000000000 & mc) >> 25;
        let rd = ((0b00000000000000000000111110000000 & mc) >> 20) as usize;
        let rs1 = ((0b00000000000011111000000000000000 & mc) >> 15) as usize;
        let rm = ((0b00000000000000000111000000000000 & mc) >> 12) as usize;

        if opcode != 0b1010011 {
            return Err(crate::error::ParseError::DisassemblerError(format!(
                "{:032b}",
                mc
            )));
        }

        let op = match funct7 {
            0b0101100 => FXOp::FSQRT,
            0b1101000 => FXOp::FCVTSW,
            0b1100000 => FXOp::FCVTWS,
            _ => {
                return Err(crate::error::ParseError::DisassemblerError(format!(
                    "{:032b}",
                    mc
                )))
            }
        };

        Ok(crate::parser::Op::FX(
            op,
            rd,
            rs1,
            RoundingMode::from_repr(rm).unwrap(),
        ))
    }
}
