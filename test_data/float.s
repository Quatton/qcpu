addi    ra, zero, 80
addi    sp, sp, -32
sw      ra, 28(sp)
sw      s0, 24(sp)
addi    s0, sp, 32
lui     a0, 255181
addi    a0, a0, -819
sw      a0, -12(s0)
lui     a0, 253133
addi    a0, a0, -819
sw      a0, -16(s0)
flw     fa5, -12(s0)
flw     fa4, -16(s0)
fadd    fa5, fa5, fa4
fsw     fa5, -20(s0)
addi    a0, a0, 0
lw      ra, 28(sp)
lw      s0, 24(sp)
addi    sp, sp, 32
jalr    zero, ra, 0
