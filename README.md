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