_min_caml_start:
	addi	ra, zero, _min_caml_finish
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	addi 	a0, zero, l.12 !4
	addi	t0, a0, 0 !4
	flw  	fa0, 0(t0) !4
	addi 	a0, zero, l.14 !4
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
	jalr	zero, ra, 0
_min_caml_finish:
