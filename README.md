# qcpu

```
.
├── CHANGELOG.md
├── README.md
├── qcpu
├── qcpu_assembler
├── qcpu_simulator
├── qcpu_syntax
```

## Installation

Make sure you have cargo installed.

```sh
# Linux/MacOS
curl https://sh.rustup.rs -sSf | sh

# Windows
winget install -e --id Rustlang.Rustup
```

Then install the qcpu package.

```sh
cargo install --path ./qcpu # <- if you're in the root directory, otherwise just make sure the path is correct
```

## For assembler
  
```sh
qcpu asm -s <input_file> -o <output_file>
```

## For disassembler

```sh
qcpu disasm -b <input_file_in_binary> -o <output_file>
```

## For simulator

```sh
qcpu sim -b <input_file_in_binary>
```