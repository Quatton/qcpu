extern crate proc_macro;

#[macro_export]
macro_rules! rop {
    ($($funct7:literal rs2 rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString)]
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
    };
}

#[macro_export]
macro_rules! iop {
    ($(imm[11:0] rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString)]
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
    };
}

#[macro_export]
macro_rules! isop {
    ($($immf:literal shamt rs1 $funct3:literal rd $opcode:literal $name:ident)*) => {
        #[derive(PartialEq, Clone, Copy, Debug, strum_macros::EnumString)]
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
    };
}
