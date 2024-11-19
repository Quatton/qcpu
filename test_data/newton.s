_min_caml_start:
	addi	ra, zero, _min_caml_finish
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	add 	a0, gp, zero !9
	addi	gp, gp, 8 !9
	addi 	a1, zero, f0.21 !9
	addi	t0, a0, 0 !9
	sw  	a1, 0(t0) !9
	add 	a1, gp, zero !10
	addi	gp, gp, 8 !10
	addi 	a2, zero, f1.23 !10
	addi	t0, a1, 0 !10
	sw  	a2, 0(t0) !10
	addi 	a2, zero, l.42 !11
	addi	t0, a2, 0 !11
	flw  	fa0, 0(t0) !11
	addi 	a2, zero, l.44 !11
	addi	t0, a2, 0 !11
	flw  	fa1, 0(t0) !11
	jal 	ra, newton.16 !11
	fcvt.w.s a0, fa0
	jal 	ra, print_int !12
	addi	sp, sp, -4
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
newton.16:
	sw  	ra, 0(sp)
	sw  	a1, 4(sp) !3
	sw  	a0, 8(sp) !3
	fsw 	fa0, 16(sp) !3
	fsw 	fa1, 24(sp) !3
	addi	a7, a0, 0 !3
	addi	sp, sp, 32 !3
	lw  	t1, 0(a7) !3
    add     zero, zero, zero !fix
	jalr	ra, t1, 0 !3
	addi	sp, sp, -32 !3
	fsgnjx  fa0, fa0, fa0
	flw  	fa1, 24(sp) !3
	fle 	t0, fa0, fa1 !3
	beq 	t0, zero, bne_else.67 !3
	flw  	fa0, 16(sp) !4
	lw  	ra, 0(sp)
    add     zero, zero, zero !fix
	jalr	zero, ra, 0
bne_else.67: !3
	flw  	fa0, 16(sp) !6
	lw  	a7, 8(sp) !6
	addi	sp, sp, 32 !6
	lw  	t1, 0(a7) !6
	jalr	ra, t1, 0 !6
	addi	sp, sp, -32 !6
	flw  	fa1, 16(sp) !6
	lw  	a7, 4(sp) !6
	fsw 	fa0, 32(sp) !6
	fsgnj   fa0, fa1, fa1 !6
	addi	sp, sp, 40 !6
	lw  	t1, 0(a7) !6
  add     zero, zero, zero !fix
	jalr	ra, t1, 0 !6
	addi	sp, sp, -40 !6
	flw  	fa1, 32(sp) !6
	fdiv	fa1, fa1, fa0 !6
	flw  	fa0, 16(sp) !6
	fsub	fa0, fa0, fa1 !6
	flw  	fa1, 24(sp) !7
	lw  	a0, 8(sp) !7
	lw  	a1, 4(sp) !7
	lw  	ra, 0(sp)
	jal 	zero, newton.16 !7
f0.21:
	sw  	ra, 0(sp)
	fmul	fa1, fa0, fa0 !9
	fmul	fa1, fa1, fa0 !9
	addi 	a0, zero, l.38 !9
	addi	t0, a0, 0 !9
	flw  	fa0, 0(t0) !9
	fsub	fa0, fa1, fa0 !9
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
f1.23:
	sw  	ra, 0(sp)
	addi 	a0, zero, l.40 !10
	addi	t0, a0, 0 !10
	flw  	fa1, 0(t0) !10
	fmul	fa1, fa1, fa0 !10
	fmul	fa0, fa1, fa0 !10
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
l.44:	! 0.000100
	.word	0x38d1b717
l.42:	! 5.000000
	.word	0x40a00000
l.40:	! 3.000000
	.word	0x40400000
l.38:	! 18.000000
	.word	0x41900000
create_array:
    addi    a2, a0, 0
    addi    a0, gp, 0
create_array_loop:
    bge     zero, a2, create_array_finish
    sw      a1, 0(gp)
    addi    gp, gp, 4
    addi    a2, a2, -1
    jal     zero, create_array_loop
create_array_finish:
    jalr    zero, ra, 0

create_float_array:
    addi    a1, a0, 0
    addi    a0, gp, 0
    flw     fa1, 0(a0)
create_float_array:
    bge     zero, a1, create_array_finish
    fsw     fa0, 0(gp)
    addi    gp, gp, 4
    addi    a1, a1, -1
    jal     zero, create_array_loop
create_array_finish:
    jalr    zero, ra, 0

reduction_2pi:
    fadd    fa2, fa1, fa1
    fadd    fa3, fa1, fa1
reduction_2pi_loop1:
    fle     a0, fa2, fa0
    beq     a0, zero, reduction_2pi_loop2
    fadd    fa2, fa2, fa2
    jal     zero, reduction_2pi_loop1
reduction_2pi_loop2:
    fle     a0, fa3, fa0
    beq     a0, zero, reduction_2pi_finish
    fle     a0, fa2, fa0
    beq     a0, zero, reduction_2pi_skip
    fsub    fa0, fa0, fa2
reduction_2pi_skip:
    fdiv    fa2, fa2, fa4
    jal     zero, reduction_2pi_loop2
reduction_2pi_finish:
    jalr    zero, ra, 0

sin:
    sw      ra, 0(sp)
    flw     fa1, PI(zero)
    flw     fa4, Const_two(zero)
    flw     fa7, Const_zero(zero)
    flt     a7, fa0, fa7
    beq     a7, zero, sin_fispos
    fsgnjn  fa0, fa0, fa0
sin_fispos:
    jal     ra, reduction_2pi
    lw      ra, 0(sp)
    fle     a0, fa1, fa0
    beq     a0, zero, sin_ltpi
    fsub    fa0, fa0, fa1
    sub     a7, zero, a7
sin_ltpi:
    fdiv    fa5, fa1, fa4
    fle     a0, fa5, fa0
    beq     a0, zero, sin_ltpi_2
    fsub    fa0, fa1, fa0
sin_ltpi_2:
    fdiv    fa6, fa5, fa4
    flt     a0, fa6, fa0
    beq     a0, zero, sin_lepi_4
    fsub    fa0, fa5, fa0
    jal     ra, kernel_cos
    jal     zero, sin_finish
sin_lepi_4:
    jal     ra, kernel_sin
    jal     zero, sin_finish
sin_finish:
    blt     a7, zero, sin_noflag
    fsgnjn  fa0, fa0, fa0
sin_noflag:
    lw      ra, 0(sp)
    jalr    zero, ra, 0

cos:
    sw      ra, 0(sp)
    flw     fa1, PI(zero)
    flw     fa4, Const_two(zero)
    flw     fa7, Const_zero(zero)
    flt     a7, fa0, fa7
    beq     a7, zero, cos_fispos
    fsgnjn  fa0, fa0, fa0
cos_fispos:
    addi    a7, zero, -1
    jal     ra, reduction_2pi
    lw      ra, 0(sp)
    fle     a0, fa1, fa0
    beq     a0, zero, cos_ltpi
    fsub    fa0, fa0, fa1
    sub     a7, zero, a7
cos_ltpi:
    fdiv    fa5, fa1, fa4
    fle     a0, fa5, fa0
    beq     a0, zero, cos_ltpi_2
    fsub    fa0, fa1, fa0
    sub     a7, zero, a7
cos_ltpi_2:
    fdiv    fa6, fa5, fa4
    flt     a0, fa6, fa0
    beq     a0, zero, cos_lepi_4
    fsub    fa0, fa5, fa0
    jal     ra, kernel_sin
    jal     zero, cos_finish
cos_lepi_4:
    jal     ra, kernel_cos
    jal     zero, cos_finish
cos_finish:
    blt     a7, zero, cos_noflag
    fsgnjn  fa0, fa0, fa0
cos_noflag:
    lw      ra, 0(sp)
    jalr    zero, ra, 0

kernel_sin:
    flw     fa1, S3(zero)
    flw     fa2, S5(zero)
    flw     fa3, S7(zero)
    fmul    fa4, fa0, fa0
    fmul    fa5, fa4, fa0
    fmul    fa6, fa5, fa4
    fmul    fa7, fa6, fa4
    fmul    fa5, fa5, fa1
    fmul    fa6, fa6, fa2
    fmul    fa7, fa7, fa3
    fadd    fa0, fa0, fa5
    fadd    fa0, fa0, fa6
    fadd    fa0, fa0, fa7
    jalr    zero, ra, 0

kernel_cos:
    flw     fa1, C2(zero)
    flw     fa2, C4(zero)
    flw     fa3, C6(zero)
    fmul    fa4, fa0, fa0
    fmul    fa5, fa4, fa4
    fmul    fa6, fa4, fa5
    flw     fa0, Const_one(zero)
    fmul    fa4, fa1, fa4
    fmul    fa5, fa2, fa5
    fmul    fa6, fa3, fa6
    fadd    fa0, fa0, fa4
    fadd    fa0, fa0, fa5
    fadd    fa0, fa0, fa6
    jalr    zero, ra, 0

atan:

kernel_atan:

print_int:
	addi	a1, zero, 10
	addi	a2, zero, 1
print_int_loop:
    blt     a0, a1, print_int_break
    addi    a3, a0, 0
    addi    a0, zero, 0
print_int_div:
    blt     a3, a1, print_int_push
    addi    a3, a3, -10
    addi    a0, a0, 1
    jal     zero, print_int_div
print_int_push:
    sw      a3, 0(sp)
    addi    sp, sp, 4
    addi    a2, a2, 1
    jal     zero, print_int_loop
print_int_break:
    sw      a0, 0(sp)
    addi    sp, sp, 4
print_int_loop2:
    bge     zero, a2, print_int_finish
    addi    sp, sp, -4
    lw      a0, 0(sp)
    add     zero, zero, zero
    addi    a0, a0, 48
    addi    a2, a2, -1
    outb    a0
    jal     zero, print_int_loop2
print_int_finish:
	jalr	zero, ra, 0

Const_zero:
    .word   0x00000000
Const_one:
    .word   0x3f800000
Const_two:
    .word   0x40000000
PI:
    .word   0x40490fdb
S3:
    .word   0xbe2aaaac
S5:
    .word   0x3c088666
S7:
    .word   0xb94d64b6
C2:
    .word   0xbf000000
C4:
    .word   0x3d2aa789
C6:
    .word   0xbab38106
AT3:
    .word   0xbeaaaaaa
AT5:
    .word   0x3e4ccccd
AT7:
    .word   0xbe124925
AT9:
    .word   0x3de38e38
AT11:
    .word   0xdbd7d66e
AT13:
    .word   0x3d75e7c5
_min_caml_finish:
