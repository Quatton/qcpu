_min_caml_start:
	addi 	a0, zero, 10 !4
	jal 	ra, fib.10 !4
	jal 	ra, min_caml_print_int !4
fib.10:
	sw  	ra, 0(sp)
	addi	t0, zero, 1 !2
	blt 	t0, a0, bge_else.24 !2
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.24: !2
	addi	a1, a0, -1 !3
	sw  	a0, 4(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 8 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -8 !3
	lw  	a1, 4(sp) !3
	addi	a1, a1, -2 !3
	sw  	a0, 8(sp) !3
	addi	a0, a1, 0 !3
	addi	sp, sp, 16 !3
	jal 	ra, fib.10 !3
	addi	sp, sp, -16 !3
	lw  	a1, 8(sp) !3
	add 	a0, a1, a0 !3
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
min_caml_print_int: