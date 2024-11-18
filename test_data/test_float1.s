_min_caml_start:
	addi	ra, zero, _min_caml_finish
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	addi 	a0, zero, l.12 !4
	addi	t0, a0, 0 !4
	flw  	fa0, 0(t0) !4
	addi 	a0, zero, l.14 !4 <1
	addi	t0, a0, 0 !4
	flw  	fa1, 0(t0) !4
	jal 	ra, float_add.5 !4
	fcvt.w.s a0, fa0
	jal 	ra, print_int !4
	addi	sp, sp, -4
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
        float_add.5:
	sw  	ra, 0(sp)
	fadd	fa0, fa0, fa1 !2
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
        l.14:	! 2.433000
	.word	0x401bb646
        l.12:	! 2.564000
	.word	0x40241893
        print_int:
	addi	a1, a0, 0
	addi	a2, zero, 1
	addi	a3, zero, 10
        print_int_calc_digits:
	blt 	a1, a3, print_int_body
            addi    a4, a1, 0
            addi    a1, zero, 0
        print_int_calc_digits_div:
            addi    a4, a4, -10
            addi    a1, a1, 1
            bge     a4, a3, print_int_calc_digits_div
	addi	a2, a2, 1
	jal  	zero, print_int_calc_digits
        print_int_body:
	addi	a1, a0, 0
            add     fp, fp, a2
            addi    a5, fp, 0
        print_int_body_loop:
	bge 	zero, a2, print_int_finish
            addi    a4, a1, 0
            addi    a1, zero, 0
        print_int_body_div:
            sub     a4, a4, a3
            addi    a1, a1, 1
            bge     a4, a3, print_int_body_div
            addi    a5, a5, -1
            sb      a4, 0(a5)
	addi	a2, a2, -1
	jal  	zero, print_int_body_loop
        print_int_finish:
	jalr	zero, ra, 0
        _min_caml_finish:
