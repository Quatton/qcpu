rotate_quadratic_matrix.2529:
	sw  	ra, 0(sp)
	addi	t0, a1, 0 !617
	flw  	fa0, 0(t0) !617
	sw  	a0, 4(sp) !617
	sw  	a1, 8(sp) !617
	lw  	a0, 8(sp) !618
	addi	t0, a0, 0 !618
	flw  	fa1, 0(t0) !618
	fsw 	fa0, 16(sp) !618
	fsgnj   fa0, fa1, fa1 !618
	lw  	a0, 8(sp) !619
	addi	t0, a0, 4 !619
	flw  	fa1, 0(t0) !619
	fsw 	fa0, 24(sp) !619
	fsgnj   fa0, fa1, fa1 !619
	lw  	a0, 8(sp) !620
	addi	t0, a0, 4 !620
	flw  	fa1, 0(t0) !620
	fsw 	fa0, 32(sp) !620
	fsgnj   fa0, fa1, fa1 !620
	lw  	a0, 8(sp) !621
	addi	t0, a0, 8 !621
	flw  	fa1, 0(t0) !621
	fsw 	fa0, 40(sp) !621
	fsgnj   fa0, fa1, fa1 !621
	lw  	a0, 8(sp) !622
	addi	t0, a0, 8 !622
	flw  	fa1, 0(t0) !622
	fsw 	fa0, 48(sp) !622
	fsgnj   fa0, fa1, fa1 !622
	flw  	fa1, 48(sp) !624
	flw  	fa2, 32(sp) !624
	fmul	fa3, fa2, fa1 !624
	flw  	fa4, 40(sp) !625
	flw  	fa5, 24(sp) !625
	fmul	fa6, fa5, fa4 !625
	fmul	fa6, fa6, fa1 !625
	flw  	fa7, 16(sp) !625
	fmul	fs1, fa7, fa0 !625
	fsub	fa6, fa6, fs1 !625
	fmul	fs1, fa7, fa4 !626
	fmul	fs1, fs1, fa1 !626
	fmul	fs2, fa5, fa0 !626
	fadd	fs1, fs1, fs2 !626
	fmul	fs2, fa2, fa0 !628
	fmul	fs3, fa5, fa4 !629
	fmul	fs3, fs3, fa0 !629
	fmul	fs4, fa7, fa1 !629
	fadd	fs3, fs3, fs4 !629
	fmul	fs4, fa7, fa4 !630
	fmul	fs4, fs4, fa0 !630
	fmul	fa1, fa5, fa1 !630
	fsub	fa0, fs4, fa1 !630
	fsw 	fa0, 56(sp) !632
	fsw 	fs1, 64(sp) !632
	fsw 	fs3, 72(sp) !632
	fsw 	fa6, 80(sp) !632
	fsw 	fs2, 88(sp) !632
	fsw 	fa3, 96(sp) !632
	fsgnj   fa0, fa4, fa4 !632
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 32(sp) !633
	flw  	fa2, 24(sp) !633
	fmul	fa2, fa2, fa1 !633
	flw  	fa3, 16(sp) !634
	fmul	fa3, fa3, fa1 !634
	lw  	a0, 4(sp) !637
	addi	t0, a0, 0 !637
	flw  	fa1, 0(t0) !637
	addi	t0, a0, 4 !638
	flw  	fa4, 0(t0) !638
	addi	t0, a0, 8 !639
	flw  	fa5, 0(t0) !639
	flw  	fa6, 96(sp) !644
	fsw 	fa3, 104(sp) !644
	fsw 	fa2, 112(sp) !644
	fsw 	fa5, 120(sp) !644
	fsw 	fa0, 128(sp) !644
	fsw 	fa4, 136(sp) !644
	fsw 	fa1, 144(sp) !644
	fsgnj   fa0, fa6, fa6 !644
	fmul	fa0, fa0, fa0
	flw  	fa1, 144(sp) !644
	fmul	fa0, fa1, fa0 !644
	flw  	fa2, 88(sp) !644
	fsw 	fa0, 152(sp) !644
	fsgnj   fa0, fa2, fa2 !644
	fmul	fa0, fa0, fa0
	flw  	fa1, 136(sp) !644
	fmul	fa0, fa1, fa0 !644
	flw  	fa2, 152(sp) !644
	fadd	fa2, fa2, fa0 !644
	flw  	fa0, 128(sp) !644
	fsw 	fa2, 160(sp) !644
	fmul	fa0, fa0, fa0
	flw  	fa1, 120(sp) !644
	fmul	fa0, fa1, fa0 !644
	flw  	fa2, 160(sp) !644
	fadd	fa2, fa2, fa0 !644
	lw  	a0, 4(sp) !644
	addi	t0, a0, 0 !644
	fsw  	fa2, 0(t0) !644
	flw  	fa0, 80(sp) !645
	fmul	fa0, fa0, fa0
	flw  	fa1, 144(sp) !645
	fmul	fa0, fa1, fa0 !645
	flw  	fa2, 72(sp) !645
	fsw 	fa0, 168(sp) !645
	fsgnj   fa0, fa2, fa2 !645
	fmul	fa0, fa0, fa0
	flw  	fa1, 136(sp) !645
	fmul	fa0, fa1, fa0 !645
	flw  	fa2, 168(sp) !645
	fadd	fa2, fa2, fa0 !645
	flw  	fa0, 112(sp) !645
	fsw 	fa2, 176(sp) !645
	fmul	fa0, fa0, fa0
	flw  	fa1, 120(sp) !645
	fmul	fa0, fa1, fa0 !645
	flw  	fa2, 176(sp) !645
	fadd	fa2, fa2, fa0 !645
	lw  	a0, 4(sp) !645
	addi	t0, a0, 4 !645
	fsw  	fa2, 0(t0) !645
	flw  	fa0, 64(sp) !646
	fmul	fa0, fa0, fa0
	flw  	fa1, 144(sp) !646
	fmul	fa0, fa1, fa0 !646
	flw  	fa2, 56(sp) !646
	fsw 	fa0, 184(sp) !646
	fsgnj   fa0, fa2, fa2 !646
	fmul	fa0, fa0, fa0
	flw  	fa1, 136(sp) !646
	fmul	fa0, fa1, fa0 !646
	flw  	fa2, 184(sp) !646
	fadd	fa2, fa2, fa0 !646
	flw  	fa0, 104(sp) !646
	fsw 	fa2, 192(sp) !646
	fmul	fa0, fa0, fa0
	flw  	fa1, 120(sp) !646
	fmul	fa0, fa1, fa0 !646
	flw  	fa2, 192(sp) !646
	fadd	fa2, fa2, fa0 !646
	lw  	a0, 4(sp) !646
	addi	t0, a0, 8 !646
	fsw  	fa2, 0(t0) !646
	li  	fa0, 2.000000 !649
	flw  	fa2, 80(sp) !649
	flw  	fa3, 144(sp) !649
	fmul	fa4, fa3, fa2 !649
	flw  	fa5, 64(sp) !649
	fmul	fa4, fa4, fa5 !649
	flw  	fa6, 72(sp) !649
	flw  	fa7, 136(sp) !649
	fmul	fs1, fa7, fa6 !649
	flw  	fs2, 56(sp) !649
	fmul	fs1, fs1, fs2 !649
	fadd	fa4, fa4, fs1 !649
	flw  	fs1, 112(sp) !649
	fmul	fs3, fa1, fs1 !649
	flw  	fs4, 104(sp) !649
	fmul	fs3, fs3, fs4 !649
	fadd	fa4, fa4, fs3 !649
	fmul	fa0, fa0, fa4 !649
	lw  	a0, 8(sp) !649
	addi	t0, a0, 0 !649
	fsw  	fa0, 0(t0) !649
	li  	fa0, 2.000000 !650
	flw  	fa4, 96(sp) !650
	fmul	fs3, fa3, fa4 !650
	fmul	fs3, fs3, fa5 !650
	flw  	fa5, 88(sp) !650
	fmul	fs5, fa7, fa5 !650
	fmul	fs5, fs5, fs2 !650
	fadd	fs3, fs3, fs5 !650
	flw  	fs2, 128(sp) !650
	fmul	fs5, fa1, fs2 !650
	fmul	fs5, fs5, fs4 !650
	fadd	fs3, fs3, fs5 !650
	fmul	fa0, fa0, fs3 !650
	addi	t0, a0, 4 !650
	fsw  	fa0, 0(t0) !650
	li  	fa0, 2.000000 !651
	fmul	fa3, fa3, fa4 !651
	fmul	fa3, fa3, fa2 !651
	fmul	fa7, fa7, fa5 !651
	fmul	fa7, fa7, fa6 !651
	fadd	fa3, fa3, fa7 !651
	fmul	fa1, fa1, fs2 !651
	fmul	fa1, fa1, fs1 !651
	fadd	fa3, fa3, fa1 !651
	fmul	fa0, fa0, fa3 !651
	addi	t0, a0, 8 !651
	fsw  	fa0, 0(t0) !651
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
