_min_caml_start:
	li  	ra, _min_caml_finish
	li  	sp, 131072
	li  	gp, 262144
	sw  	ra, 0(sp)
	addi	sp, sp, 1
	jal 	ra, f.14 !5
	sw  	a0, 0(sp) !6
	addi	sp, sp, 1 !6
	jal 	ra, g.16 !6
	addi	sp, sp, -1 !6
	sw  	a0, 1(sp) !7
	addi	sp, sp, 2 !7
	jal 	ra, h.18 !7
	addi	sp, sp, -2 !7
	bne 	a0, zero, beq_else.35 !7
	lw  	a0, 0(sp) !7
	addi	a0, a0, 1 !7
	jal 	zero, beq_cont.36 !7
beq_else.35: !7
	lw  	a0, 1(sp) !7
	addi	a0, a0, 2 !7
beq_cont.36: !7
	lw  	a1, 0(sp) !7
	add 	a0, a0, a1 !7
	lw  	a1, 1(sp) !7
	add 	a0, a0, a1 !7
	addi	sp, sp, 2 !7
	jal 	ra, print_int !7
	addi	sp, sp, -2 !7
	addi	sp, sp, 1
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
f.14:
	sw  	ra, 0(sp)
	addi	a0, zero, 123 !1
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
g.16:
	sw  	ra, 0(sp)
	addi	a0, zero, 456 !2
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
h.18:
	sw  	ra, 0(sp)
	addi	a0, zero, 789 !3
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
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
    bge     a0, zero, print_int_abs
    addi    t0, zero, 45
    outb    t0
    sub     a0, zero, a0
print_int_abs:
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

fequal:
    feq     a0, fa0, fa1
    jalr    zero, ra, 0

fless:
    flt     a0, fa0, fa1
    jalr    zero, ra, 0

fispos:
    flt     a0, zero, fa0
    jalr    zero, ra, 0

fisneg:
    flt     a0, fa0, zero
    jalr    zero, ra, 0

fiszero:
    feq     a0, zero, fa0
    jalr    zero, ra, 0

xor:
    xor     a0, a0, a1
    jalr    zero, ra, 0

not:
    addi    t0, zero, 1
    sub     a0, t0, a0
    jalr    zero, ra, 0

fhalf:
    li      ft0, 2.0
    fdiv    fa0, fa0, ft0
    jalr    zero, ra, 0

fsqr:
    fmul    fa0, fa0, fa0
    jalr    zero, ra, 0

fabs:
    fsgnjx  fa0, fa0, fa0
    jalr    zero, ra, 0

fneg:
    fsgnjn  fa0, fa0, fa0
    jalr    zero, ra, 0

sqrt:
    fsqrt   fa0, fa0
    jalr    zero, ra, 0

floor:
    ftoi    a0, fa0
    itof    fa1, a0
    fle     a1, fa1, fa0
    bne     a1, zero, floor_else
    li      fa2, 1.0
    fsub    fa1, fa1, fa2
floor_else:
    fsgnj   fa0, fa1, fa1
    jalr    zero, ra, 0

int_of_float:
    ftoi    a0, fa0
    jalr    zero, ra, 0

float_of_int:
    itof    fa0, a0
    jalr    zero, ra, 0

print_char:
    outb    a0
    jalr    zero, ra, 0

read_int:
    inw     a0
    jalr    zero, ra, 0

read_float:
    inw     fa0
    jalr    zero, ra, 0
_min_caml_finish:
