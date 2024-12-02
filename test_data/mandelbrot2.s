_min_caml_start:
	li  	ra, _min_caml_finish
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	addi	a0, zero, 80 !41
	outb	a0
	addi	a0, zero, 49 !42
	outb	a0
	addi	a0, zero, 10 !43
	outb	a0
	addi	a0, zero, 400 !44
	jal 	ra, print_int !44
	addi	a0, zero, 32 !45
	outb	a0
	addi	a0, zero, 400 !46
	jal 	ra, print_int !46
	addi	a0, zero, 10 !47
	outb	a0
	addi	a0, zero, 0 !48
	jal 	ra, yloop.54 !48
	addi	sp, sp, -4
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
dbl.52:
	sw  	ra, 0(sp)
	fadd	fa0, fa0, fa0 !2
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iloop.82:
	sw  	ra, 0(sp)
	addi	t0, zero, 0 !19
	bne 	a0, t0, beq_else.140 !19
	addi	a0, zero, 1 !19
	lw  	ra, 0(sp)
	jal 	zero, print_int !19
beq_else.140: !19
	fsub	fa2, fa2, fa3 !21
	fadd	fa2, fa2, fa4 !21
	fsw 	fa4, 8(sp) !22
	sw  	a0, 16(sp) !22
	fsw 	fa2, 24(sp) !22
	fsw 	fa5, 32(sp) !22
	fsw 	fa1, 40(sp) !22
	addi	sp, sp, 48 !22
	jal 	ra, dbl.52 !22
	addi	sp, sp, -48 !22
	flw  	fa1, 40(sp) !22
	fmul	fa0, fa0, fa1 !22
	flw  	fa5, 32(sp) !22
	fadd	fa1, fa0, fa5 !22
	flw  	fa0, 24(sp) !25
	fmul	fa2, fa0, fa0 !25
	fmul	fa3, fa1, fa1 !26
	fadd	fa4, fa2, fa3 !27
	li  	fa6, 4.000000 !27
	fle 	t0, fa4, fa6 !27
	beq 	t0, zero, bne_else.143 !27
	lw  	a0, 16(sp) !28
	addi	a0, a0, -1 !28
	flw  	fa4, 8(sp) !28
	lw  	ra, 0(sp)
	jal 	zero, iloop.82 !28
bne_else.143: !27
	addi	a0, zero, 0 !27
	lw  	ra, 0(sp)
	jal 	zero, print_int !27
xloop.72:
	sw  	ra, 0(sp)
	addi	t0, zero, 400 !14
	blt 	a0, t0, bge_else.144 !14
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.144: !14
	sw  	a0, 4(sp) !16
	sw  	a1, 8(sp) !16
	fcvt.s.w fa0, a0
	addi	sp, sp, 16 !16
	jal 	ra, dbl.52 !16
	addi	sp, sp, -16 !16
	li  	fa1, 400.000000 !16
	fdiv	fa0, fa0, fa1 !16
	li  	fa1, 1.500000 !16
	fsub	fa0, fa0, fa1 !16
	lw  	a0, 8(sp) !17
	fsw 	fa0, 16(sp) !17
	fcvt.s.w fa0, a0
	addi	sp, sp, 24 !17
	jal 	ra, dbl.52 !17
	addi	sp, sp, -24 !17
	li  	fa1, 400.000000 !17
	fdiv	fa0, fa0, fa1 !17
	li  	fa1, 1.000000 !17
	fsub	fa5, fa0, fa1 !17
	addi	a0, zero, 100 !30
	li  	fa0, 0.000000 !30
	li  	fa1, 0.000000 !30
	li  	fa2, 0.000000 !30
	li  	fa3, 0.000000 !30
	flw  	fa4, 16(sp) !30
	addi	sp, sp, 24 !30
	jal 	ra, iloop.82 !30
	addi	sp, sp, -24 !30
	lw  	a0, 4(sp) !33
	addi	a0, a0, 1 !33
	lw  	a1, 8(sp) !33
	lw  	ra, 0(sp)
	jal 	zero, xloop.72 !33
yloop.54:
	sw  	ra, 0(sp)
	addi	t0, zero, 400 !8
	blt 	a0, t0, bge_else.147 !8
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.147: !8
	addi	a1, zero, 0 !36
	sw  	a0, 4(sp) !36
	sw  	a1, 8(sp) !36
	addi	a1, a0, 0 !36
	lw  	a0, 8(sp) !36
	addi	sp, sp, 8 !36
	jal 	ra, xloop.72 !36
	addi	sp, sp, -8 !36
	lw  	a0, 4(sp) !39
	addi	a0, a0, 1 !39
	lw  	ra, 0(sp)
	jal 	zero, yloop.54 !39
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
create_float_array_loop:
    bge     zero, a1, create_float_array_finish
    fsw     fa0, 0(gp)
    addi    gp, gp, 4
    addi    a1, a1, -1
    jal     zero, create_float_array_loop
create_float_array_finish:
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
    li      fa1, 3.141592
    li      fa4, 2.0
    li      fa7, 0.0
    addi    a7, zero, -1
    flt     a6, fa0, fa7
    beq     a6, zero, sin_fispos
    fsgnjn  fa0, fa0, fa0
    sub     a7, zero, a7
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
    bge     zero, a7, sin_noflag
    fsgnjn  fa0, fa0, fa0
sin_noflag:
    lw      ra, 0(sp)
    jalr    zero, ra, 0

cos:
    sw      ra, 0(sp)
    li      fa1, 3.141592
    li      fa4, 2.0
    li      fa7, 0.0
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
    li      fa1, -0.16666668
    li      fa2, 0.008332824
    li      fa3, -0.00019587841
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
    li      fa1, -0.5
    li      fa2, 0.04166368
    li      fa3, -0.0013695068
    fmul    fa4, fa0, fa0
    fmul    fa5, fa4, fa4
    fmul    fa6, fa4, fa5
    li      fa0, 1.0
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
_min_caml_finish:
