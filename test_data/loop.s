inw a0
li a0 1
slli a0 a0 28
li a1 0
li a2 65536
.loop:
beq a0 zero .end
addi a0 a0 -1
lw a3 0(a1)
lw a4 0(a2)
jal zero .loop
.end:
li a0 1
slli a0 a0 28
outb a0