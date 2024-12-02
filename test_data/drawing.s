_min_caml_start:
	li  	ra, _min_caml_finish
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	inw 	a0
    ebreak
	sw  	a0, 0(sp) !2
	inw 	a0
	sw  	a0, 4(sp) !2
	inw 	a0
	sw  	a0, 8(sp) !3
	inw 	a0
	addi	a1, gp, 0 !6
	addi	gp, gp, 20 !6
	li  	a2, yloop.38 !6
	addi	t0, a1, 0 !6
	sw  	a2, 0(t0) !6
	lw  	a2, 0(sp) !6
	addi	t0, a1, 16 !6
	sw  	a2, 0(t0) !6
	addi	t0, a1, 12 !6
	sw  	a0, 0(t0) !6
	lw  	a0, 8(sp) !6
	addi	t0, a1, 8 !6
	sw  	a0, 0(t0) !6
	lw  	a0, 4(sp) !6
	addi	t0, a1, 4 !6
	sw  	a0, 0(t0) !6
	addi	a0, zero, 80 !21
	sw  	a1, 12(sp) !21
	outb	a0
	addi	a0, zero, 49 !22
	outb	a0
	addi	a0, zero, 10 !23
	outb	a0
	lw  	a0, 0(sp) !24
	addi	sp, sp, 16 !24
	jal 	ra, print_int !24
	addi	sp, sp, -16 !24
	addi	a0, zero, 32 !25
	outb	a0
	lw  	a0, 0(sp) !26
	addi	sp, sp, 16 !26
	jal 	ra, print_int !26
	addi	sp, sp, -16 !26
	addi	a0, zero, 10 !27
	outb	a0
	addi	a0, zero, 0 !28
	lw  	s7, 12(sp) !28
	addi	sp, sp, 16 !28
	lw  	t1, 0(s7) !28
	jalr	ra, t1, 0 !28
	addi	sp, sp, -16 !28
	addi	sp, sp, -4
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
abs.36:
	sw  	ra, 0(sp)
	addi	t0, zero, 0 !5
	blt 	a0, t0, bge_else.108 !5
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.108: !5
	sub 	a0, zero, a0 !5
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
xloop.53:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !10
	lw  	a2, 0(t0) !10
	addi	t0, s7, 12 !10
	lw  	a3, 0(t0) !10
	addi	t0, s7, 8 !10
	lw  	a4, 0(t0) !10
	addi	t0, s7, 4 !10
	lw  	a5, 0(t0) !10
	blt 	a0, a2, bge_else.109 !10
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.109: !10
	sub 	a2, a1, a4 !13
	sub 	a4, a0, a5 !14
	sw  	a1, 4(sp) !15
	sw  	s7, 8(sp) !15
	sw  	a0, 12(sp) !15
	sw  	a3, 16(sp) !15
	sw  	a4, 20(sp) !15
	addi	a0, a2, 0 !15
	addi	sp, sp, 24 !15
	jal 	ra, abs.36 !15
	addi	sp, sp, -24 !15
	lw  	a1, 20(sp) !15
	sw  	a0, 24(sp) !15
	addi	a0, a1, 0 !15
	addi	sp, sp, 28 !15
	jal 	ra, abs.36 !15
	addi	sp, sp, -28 !15
	lw  	a1, 24(sp) !15
	add 	a1, a1, a0 !15
	lw  	a0, 16(sp) !15
	blt 	a1, a0, bge_else.111 !15
	addi	a0, zero, 0 !15
	addi	sp, sp, 28 !15
	jal 	ra, print_int !15
	addi	sp, sp, -28 !15
	jal 	zero, bge_cont.112 !15
bge_else.111: !15
	addi	a0, zero, 1 !15
	addi	sp, sp, 28 !15
	jal 	ra, print_int !15
	addi	sp, sp, -28 !15
bge_cont.112: !15
	lw  	a0, 12(sp) !16
	addi	a0, a0, 1 !16
	lw  	a1, 4(sp) !16
	lw  	s7, 8(sp) !16
	lw  	t1, 0(s7) !16
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !16
yloop.38:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !7
	lw  	a1, 0(t0) !7
	addi	t0, s7, 12 !7
	lw  	a2, 0(t0) !7
	addi	t0, s7, 8 !7
	lw  	a3, 0(t0) !7
	addi	t0, s7, 4 !7
	lw  	a4, 0(t0) !7
	blt 	a0, a1, bge_else.113 !7
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.113: !7
	addi	a5, gp, 0 !9
	addi	gp, gp, 20 !9
	li  	a6, xloop.53 !9
	addi	t0, a5, 0 !9
	sw  	a6, 0(t0) !9
	addi	t0, a5, 16 !9
	sw  	a1, 0(t0) !9
	addi	t0, a5, 12 !9
	sw  	a2, 0(t0) !9
	addi	t0, a5, 8 !9
	sw  	a3, 0(t0) !9
	addi	t0, a5, 4 !9
	sw  	a4, 0(t0) !9
	addi	a1, zero, 0 !18
	sw  	s7, 4(sp) !18
	sw  	a0, 8(sp) !18
	addi	s7, a5, 0 !18
	sw  	a1, 12(sp) !18
	addi	a1, a0, 0 !18
	lw  	a0, 12(sp) !18
	addi	sp, sp, 12 !18
	lw  	t1, 0(s7) !18
	jalr	ra, t1, 0 !18
	addi	sp, sp, -12 !18
	lw  	a0, 8(sp) !19
	addi	a0, a0, 1 !19
	lw  	s7, 4(sp) !19
	lw  	t1, 0(s7) !19
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !19
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
    sw      ra, 0(sp)
    li      fa1, 0.4375
    li      fa2, 2.4375
    fsgnjx  fa3, fa0, fa0
    flt     t0, fa3, fa1
    bne     t0, zero, atan_case0
    flt     t0, fa3, fa2
    bne     t0, zero, atan_case1
atan_case2:
    fsgnj   ft1, fa0, fa0
    li      fa4, 1.0
    fdiv    fa0, fa4, fa3
    li      fa2, 1.570796
    fsub    fa0, fa2, fa0
    fsgnj   fa0, fa0, ft1
    lw      ra, 0(sp)
    jalr    zero, ra, 0
atan_case0:
    jal     ra, kernel_atan
    lw      ra, 0(sp)
    jalr    zero, ra, 0
atan_case1:
    li      fa4, 1.0
    fsub    fa5, fa3, fa4
    fadd    fa6, fa3, fa4
    fsgnj   ft1, fa0, fa0
    fdiv    fa0, fa5, fa6
    jal     ra, kernel_atan
    li      fa1, 0.785398
    fadd    fa0, fa0, fa1
    fsgnj   fa0, fa0, ft1
    lw      ra, 0(sp)
    jalr    zero, ra, 0

kernel_atan:
    li      fa1, -0.3333333
    li      fa2, 0.2
    li      fa3, -0.142857142
    li      fa4, 0.111111104
    li      fa5, -0.08976446
    li      fa6, 0.060035485
    fmul    fa7, fa0, fa0
    fmul    fs1, fa0, fa7
    fmul    fs2, fa7, fs1
    fmul    fs3, fa7, fs2
    fmul    fs4, fa7, fs3
    fmul    fs5, fa7, fs4
    fmul    fs6, fa7, fs5
    fmul    fs7, fa7, fs6
    fmul    fs1, fs1, fa1
    fmul    fs2, fs2, fa2
    fmul    fs3, fs3, fa3
    fmul    fs4, fs4, fa4
    fmul    fs5, fs5, fa5
    fmul    fs6, fs6, fa6
    fmul    fs7, fs7, fa7
    fadd    fa0, fa0, fs1
    fadd    fa0, fa0, fs2
    fadd    fa0, fa0, fs3
    fadd    fa0, fa0, fs4
    fadd    fa0, fa0, fs5
    fadd    fa0, fa0, fs6
    fadd    fa0, fa0, fs7
    jalr    zero, ra, 0

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
