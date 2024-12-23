_min_caml_start:
	li  	ra, _min_caml_finish
	li  	sp, 524288
	li  	gp, 1048576
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	addi	a0, zero, 1 !6
	addi	a1, zero, 0 !6
	jal 	ra, create_array !6
	addi	a0, zero, 0 !11
	li  	fa0, 0.000000 !11
	jal 	ra, create_float_array !11
	addi	a1, zero, 60 !12
	addi	a2, zero, 0 !12
	addi	a3, zero, 0 !12
	addi	a4, zero, 0 !12
	addi	a5, zero, 0 !12
	addi	a6, zero, 0 !12
	addi	a7, gp, 0 !12
	addi	gp, gp, 44 !12
	sw  	a0, 40(a7) !12
	sw  	a0, 36(a7) !12
	sw  	a0, 32(a7) !12
	sw  	a0, 28(a7) !12
	sw  	a6, 24(a7) !12
	sw  	a0, 20(a7) !12
	sw  	a0, 16(a7) !12
	sw  	a5, 12(a7) !12
	sw  	a4, 8(a7) !12
	sw  	a3, 4(a7) !12
	sw  	a2, 0(a7) !12
	addi	a0, a1, 0 !12
	addi	a1, a7, 0 !12
	jal 	ra, create_array !12
	addi	a0, zero, 3 !16
	li  	fa0, 0.000000 !16
	jal 	ra, create_float_array !16
	addi	a0, zero, 3 !19
	li  	fa0, 0.000000 !19
	jal 	ra, create_float_array !19
	addi	a0, zero, 3 !22
	li  	fa0, 0.000000 !22
	jal 	ra, create_float_array !22
	addi	a0, zero, 1 !25
	li  	fa0, 255.000000 !25
	jal 	ra, create_float_array !25
	addi	a0, zero, 50 !28
	addi	a1, zero, 1 !28
	addi	a2, zero, -1 !28
	sw  	a0, 0(sp) !28
	addi	a0, a1, 0 !28
	addi	a1, a2, 0 !28
	addi	sp, sp, 4 !28
	jal 	ra, create_array !28
	addi	sp, sp, -4 !28
	addi	a1, a0, 0 !28
	lw  	a0, 0(sp) !28
	addi	sp, sp, 4 !28
	jal 	ra, create_array !28
	addi	sp, sp, -4 !28
	addi	a0, zero, 1 !31
	addi	a1, zero, 1 !31
	li  	a2, 1048908 !31
	lw  	a2, 0(a2) !31
	sw  	a0, 4(sp) !31
	addi	a0, a1, 0 !31
	addi	a1, a2, 0 !31
	addi	sp, sp, 8 !31
	jal 	ra, create_array !31
	addi	sp, sp, -8 !31
	addi	a1, a0, 0 !31
	lw  	a0, 4(sp) !31
	addi	sp, sp, 8 !31
	jal 	ra, create_array !31
	addi	sp, sp, -8 !31
	addi	a0, zero, 1 !36
	li  	fa0, 0.000000 !36
	addi	sp, sp, 8 !36
	jal 	ra, create_float_array !36
	addi	sp, sp, -8 !36
	addi	a0, zero, 1 !39
	addi	a1, zero, 0 !39
	addi	sp, sp, 8 !39
	jal 	ra, create_array !39
	addi	sp, sp, -8 !39
	addi	a0, zero, 1 !42
	li  	fa0, 1000000000.000000 !42
	addi	sp, sp, 8 !42
	jal 	ra, create_float_array !42
	addi	sp, sp, -8 !42
	addi	a0, zero, 3 !45
	li  	fa0, 0.000000 !45
	addi	sp, sp, 8 !45
	jal 	ra, create_float_array !45
	addi	sp, sp, -8 !45
	addi	a0, zero, 1 !48
	addi	a1, zero, 0 !48
	addi	sp, sp, 8 !48
	jal 	ra, create_array !48
	addi	sp, sp, -8 !48
	addi	a0, zero, 3 !51
	li  	fa0, 0.000000 !51
	addi	sp, sp, 8 !51
	jal 	ra, create_float_array !51
	addi	sp, sp, -8 !51
	addi	a0, zero, 3 !54
	li  	fa0, 0.000000 !54
	addi	sp, sp, 8 !54
	jal 	ra, create_float_array !54
	addi	sp, sp, -8 !54
	addi	a0, zero, 3 !58
	li  	fa0, 0.000000 !58
	addi	sp, sp, 8 !58
	jal 	ra, create_float_array !58
	addi	sp, sp, -8 !58
	addi	a0, zero, 3 !61
	li  	fa0, 0.000000 !61
	addi	sp, sp, 8 !61
	jal 	ra, create_float_array !61
	addi	sp, sp, -8 !61
	addi	a0, zero, 2 !65
	addi	a1, zero, 0 !65
	addi	sp, sp, 8 !65
	jal 	ra, create_array !65
	addi	sp, sp, -8 !65
	addi	a0, zero, 2 !68
	addi	a1, zero, 0 !68
	addi	sp, sp, 8 !68
	jal 	ra, create_array !68
	addi	sp, sp, -8 !68
	addi	a0, zero, 1 !71
	li  	fa0, 0.000000 !71
	addi	sp, sp, 8 !71
	jal 	ra, create_float_array !71
	addi	sp, sp, -8 !71
	addi	a0, zero, 3 !75
	li  	fa0, 0.000000 !75
	addi	sp, sp, 8 !75
	jal 	ra, create_float_array !75
	addi	sp, sp, -8 !75
	addi	a0, zero, 3 !78
	li  	fa0, 0.000000 !78
	addi	sp, sp, 8 !78
	jal 	ra, create_float_array !78
	addi	sp, sp, -8 !78
	addi	a0, zero, 3 !82
	li  	fa0, 0.000000 !82
	addi	sp, sp, 8 !82
	jal 	ra, create_float_array !82
	addi	sp, sp, -8 !82
	addi	a0, zero, 3 !84
	li  	fa0, 0.000000 !84
	addi	sp, sp, 8 !84
	jal 	ra, create_float_array !84
	addi	sp, sp, -8 !84
	addi	a0, zero, 3 !86
	li  	fa0, 0.000000 !86
	addi	sp, sp, 8 !86
	jal 	ra, create_float_array !86
	addi	sp, sp, -8 !86
	addi	a0, zero, 3 !90
	li  	fa0, 0.000000 !90
	addi	sp, sp, 8 !90
	jal 	ra, create_float_array !90
	addi	sp, sp, -8 !90
	addi	a0, zero, 0 !95
	li  	fa0, 0.000000 !95
	addi	sp, sp, 8 !95
	jal 	ra, create_float_array !95
	addi	sp, sp, -8 !95
	addi	a1, a0, 0 !95
	addi	a0, zero, 0 !96
	sw  	a1, 8(sp) !96
	addi	sp, sp, 12 !96
	jal 	ra, create_array !96
	addi	sp, sp, -12 !96
	addi	a1, zero, 0 !97
	addi	a2, gp, 0 !97
	addi	gp, gp, 8 !97
	sw  	a0, 4(a2) !97
	lw  	a0, 8(sp) !97
	sw  	a0, 0(a2) !97
	addi	a0, a1, 0 !97
	addi	a1, a2, 0 !97
	addi	sp, sp, 12 !97
	jal 	ra, create_array !97
	addi	sp, sp, -12 !97
	addi	a1, a0, 0 !97
	addi	a0, zero, 5 !98
	addi	sp, sp, 12 !98
	jal 	ra, create_array !98
	addi	sp, sp, -12 !98
	addi	a0, zero, 0 !103
	li  	fa0, 0.000000 !103
	addi	sp, sp, 12 !103
	jal 	ra, create_float_array !103
	addi	sp, sp, -12 !103
	addi	a1, zero, 3 !104
	li  	fa0, 0.000000 !104
	sw  	a0, 12(sp) !104
	addi	a0, a1, 0 !104
	addi	sp, sp, 16 !104
	jal 	ra, create_float_array !104
	addi	sp, sp, -16 !104
	addi	a1, zero, 60 !105
	lw  	a2, 12(sp) !105
	sw  	a0, 16(sp) !105
	addi	a0, a1, 0 !105
	addi	a1, a2, 0 !105
	addi	sp, sp, 20 !105
	jal 	ra, create_array !105
	addi	sp, sp, -20 !105
	addi	a1, gp, 0 !106
	addi	gp, gp, 8 !106
	sw  	a0, 4(a1) !106
	lw  	a0, 16(sp) !106
	sw  	a0, 0(a1) !106
	addi	a0, zero, 0 !111
	li  	fa0, 0.000000 !111
	addi	sp, sp, 20 !111
	jal 	ra, create_float_array !111
	addi	sp, sp, -20 !111
	addi	a1, a0, 0 !111
	addi	a0, zero, 0 !112
	sw  	a1, 20(sp) !112
	addi	sp, sp, 24 !112
	jal 	ra, create_array !112
	addi	sp, sp, -24 !112
	addi	a1, gp, 0 !113
	addi	gp, gp, 8 !113
	sw  	a0, 4(a1) !113
	lw  	a0, 20(sp) !113
	sw  	a0, 0(a1) !113
	addi	a0, zero, 180 !114
	addi	a2, zero, 0 !114
	li  	fa0, 0.000000 !114
	addi	a3, gp, 0 !114
	addi	gp, gp, 12 !114
	fsw  	fa0, 8(a3) !114
	sw  	a1, 4(a3) !114
	sw  	a2, 0(a3) !114
	addi	a1, a3, 0 !114
	addi	sp, sp, 24 !114
	jal 	ra, create_array !114
	addi	sp, sp, -24 !114
	addi	a0, zero, 1 !118
	addi	a1, zero, 0 !118
	addi	sp, sp, 24 !118
	jal 	ra, create_array !118
	addi	sp, sp, -24 !118
	addi	a0, zero, 256 !2314
	addi	a1, zero, 256 !2314
	addi	a2, zero, 3 !2314
	li  	a3, 1049192 !2294
	sw  	a0, 0(a3) !2294
	li  	a3, 1049192 !2295
	sw  	a1, 4(a3) !2295
	addi	a1, zero, 128 !2296
	li  	a3, 1049200 !2296
	sw  	a1, 0(a3) !2296
	addi	a1, zero, 128 !2297
	li  	a3, 1049200 !2297
	sw  	a1, 4(a3) !2297
	li  	fa0, 128.000000 !2298
	sw  	a2, 24(sp) !2298
	fsw 	fa0, 32(sp) !2298
	fcvt.s.w fa0, a0
	flw  	fa1, 32(sp) !2298
	fdiv	fa1, fa1, fa0 !2298
	li  	a0, 1049208 !2298
	sw  	fa1, 0(a0) !2298
	li  	a0, 1049192 !2121
	lw  	a0, 0(a0) !2121
	addi	a1, zero, 3 !2099
	li  	fa0, 0.000000 !2099
	sw  	a0, 40(sp) !2099
	addi	a0, a1, 0 !2099
	addi	sp, sp, 44 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -44 !2099
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 44(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 48 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -48 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 48 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -48 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 48(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 52 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -52 !2089
	lw  	a1, 48(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 52 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -52 !2090
	lw  	a1, 48(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 52 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -52 !2091
	lw  	a1, 48(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 52 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -52 !2092
	lw  	a1, 48(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a2, zero, 0 !2101
	addi	a1, a2, 0 !2101
	addi	sp, sp, 52 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -52 !2101
	addi	a1, zero, 5 !2102
	addi	a2, zero, 0 !2102
	sw  	a0, 52(sp) !2102
	addi	a0, a1, 0 !2102
	addi	a1, a2, 0 !2102
	addi	sp, sp, 56 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -56 !2102
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 56(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 60 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -60 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 60 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -60 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 60(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 64 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -64 !2089
	lw  	a1, 60(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 64 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -64 !2090
	lw  	a1, 60(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 64 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -64 !2091
	lw  	a1, 60(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 64 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -64 !2092
	lw  	a1, 60(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	addi	sp, sp, 64 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -64 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 64 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -64 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 64(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 68 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -68 !2089
	lw  	a1, 64(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 68 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -68 !2090
	lw  	a1, 64(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 68 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -68 !2091
	lw  	a1, 64(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 68 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -68 !2092
	lw  	a1, 64(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a2, zero, 0 !2105
	addi	a1, a2, 0 !2105
	addi	sp, sp, 68 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -68 !2105
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 68(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 72 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -72 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 72 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -72 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 72(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 76 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -76 !2089
	lw  	a1, 72(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 76 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -76 !2090
	lw  	a1, 72(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 76 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -76 !2091
	lw  	a1, 72(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 76 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -76 !2092
	lw  	a1, 72(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 32 !2107
	sw  	a1, 28(a0) !2107
	lw  	a1, 68(sp) !2107
	sw  	a1, 24(a0) !2107
	lw  	a1, 64(sp) !2107
	sw  	a1, 20(a0) !2107
	lw  	a1, 60(sp) !2107
	sw  	a1, 16(a0) !2107
	lw  	a1, 56(sp) !2107
	sw  	a1, 12(a0) !2107
	lw  	a1, 52(sp) !2107
	sw  	a1, 8(a0) !2107
	lw  	a1, 48(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 44(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 40(sp) !2121
	addi	sp, sp, 76 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -76 !2121
	li  	a1, 1049192 !2122
	lw  	a1, 0(a1) !2122
	addi	a1, a1, -2 !2122
	blt 	a1, zero, bge_else.26117 !2112
	sw  	a1, 76(sp) !2113
	sw  	a0, 80(sp) !2113
	addi	sp, sp, 84 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -84 !2113
	lw  	a1, 76(sp) !2113
	lw  	a2, 80(sp) !2113
	slli	t0, a1, 2 !2113
	add 	t0, t0, a2 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	addi	sp, sp, 84 !2114
	jal 	ra, init_line_elements.2847 !2114
	addi	sp, sp, -84 !2114
	jal 	zero, bge_cont.26118 !2112
bge_else.26117: !2112
bge_cont.26118: !2112
	li  	a1, 1049192 !2121
	lw  	a1, 0(a1) !2121
	addi	a2, zero, 3 !2099
	li  	fa0, 0.000000 !2099
	sw  	a0, 84(sp) !2099
	sw  	a1, 88(sp) !2099
	addi	a0, a2, 0 !2099
	addi	sp, sp, 92 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -92 !2099
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 92(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 96 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -96 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 96 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -96 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 96(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 100 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -100 !2089
	lw  	a1, 96(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 100 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -100 !2090
	lw  	a1, 96(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 100 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -100 !2091
	lw  	a1, 96(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 100 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -100 !2092
	lw  	a1, 96(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a2, zero, 0 !2101
	addi	a1, a2, 0 !2101
	addi	sp, sp, 100 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -100 !2101
	addi	a1, zero, 5 !2102
	addi	a2, zero, 0 !2102
	sw  	a0, 100(sp) !2102
	addi	a0, a1, 0 !2102
	addi	a1, a2, 0 !2102
	addi	sp, sp, 104 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -104 !2102
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 104(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 108 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -108 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 108 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -108 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 108(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 112 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -112 !2089
	lw  	a1, 108(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 112 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -112 !2090
	lw  	a1, 108(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 112 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -112 !2091
	lw  	a1, 108(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 112 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -112 !2092
	lw  	a1, 108(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	addi	sp, sp, 112 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -112 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 112 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -112 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 112(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 116 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -116 !2089
	lw  	a1, 112(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 116 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -116 !2090
	lw  	a1, 112(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 116 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -116 !2091
	lw  	a1, 112(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 116 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -116 !2092
	lw  	a1, 112(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a2, zero, 0 !2105
	addi	a1, a2, 0 !2105
	addi	sp, sp, 116 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -116 !2105
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 116(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 120 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -120 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 120 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -120 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 120(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 124 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -124 !2089
	lw  	a1, 120(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 124 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -124 !2090
	lw  	a1, 120(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 124 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -124 !2091
	lw  	a1, 120(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 124 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -124 !2092
	lw  	a1, 120(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 32 !2107
	sw  	a1, 28(a0) !2107
	lw  	a1, 116(sp) !2107
	sw  	a1, 24(a0) !2107
	lw  	a1, 112(sp) !2107
	sw  	a1, 20(a0) !2107
	lw  	a1, 108(sp) !2107
	sw  	a1, 16(a0) !2107
	lw  	a1, 104(sp) !2107
	sw  	a1, 12(a0) !2107
	lw  	a1, 100(sp) !2107
	sw  	a1, 8(a0) !2107
	lw  	a1, 96(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 92(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 88(sp) !2121
	addi	sp, sp, 124 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -124 !2121
	li  	a1, 1049192 !2122
	lw  	a1, 0(a1) !2122
	addi	a1, a1, -2 !2122
	blt 	a1, zero, bge_else.26119 !2112
	sw  	a1, 124(sp) !2113
	sw  	a0, 128(sp) !2113
	addi	sp, sp, 132 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -132 !2113
	lw  	a1, 124(sp) !2113
	lw  	a2, 128(sp) !2113
	slli	t0, a1, 2 !2113
	add 	t0, t0, a2 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	addi	sp, sp, 132 !2114
	jal 	ra, init_line_elements.2847 !2114
	addi	sp, sp, -132 !2114
	jal 	zero, bge_cont.26120 !2112
bge_else.26119: !2112
bge_cont.26120: !2112
	li  	a1, 1049192 !2121
	lw  	a1, 0(a1) !2121
	addi	a2, zero, 3 !2099
	li  	fa0, 0.000000 !2099
	sw  	a0, 132(sp) !2099
	sw  	a1, 136(sp) !2099
	addi	a0, a2, 0 !2099
	addi	sp, sp, 140 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -140 !2099
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 140(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 144 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -144 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 144 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -144 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 144(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 148 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -148 !2089
	lw  	a1, 144(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 148 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -148 !2090
	lw  	a1, 144(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 148 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -148 !2091
	lw  	a1, 144(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 148 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -148 !2092
	lw  	a1, 144(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a2, zero, 0 !2101
	addi	a1, a2, 0 !2101
	addi	sp, sp, 148 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -148 !2101
	addi	a1, zero, 5 !2102
	addi	a2, zero, 0 !2102
	sw  	a0, 148(sp) !2102
	addi	a0, a1, 0 !2102
	addi	a1, a2, 0 !2102
	addi	sp, sp, 152 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -152 !2102
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 152(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 156 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -156 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 156 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -156 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 156(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 160 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -160 !2089
	lw  	a1, 156(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 160 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -160 !2090
	lw  	a1, 156(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 160 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -160 !2091
	lw  	a1, 156(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 160 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -160 !2092
	lw  	a1, 156(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	addi	sp, sp, 160 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -160 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 160 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -160 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 160(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 164 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -164 !2089
	lw  	a1, 160(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 164 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -164 !2090
	lw  	a1, 160(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 164 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -164 !2091
	lw  	a1, 160(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 164 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -164 !2092
	lw  	a1, 160(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a2, zero, 0 !2105
	addi	a1, a2, 0 !2105
	addi	sp, sp, 164 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -164 !2105
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 164(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 168 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -168 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 168 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -168 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 168(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 172 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -172 !2089
	lw  	a1, 168(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 172 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -172 !2090
	lw  	a1, 168(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 172 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -172 !2091
	lw  	a1, 168(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 172 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -172 !2092
	lw  	a1, 168(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 32 !2107
	sw  	a1, 28(a0) !2107
	lw  	a1, 164(sp) !2107
	sw  	a1, 24(a0) !2107
	lw  	a1, 160(sp) !2107
	sw  	a1, 20(a0) !2107
	lw  	a1, 156(sp) !2107
	sw  	a1, 16(a0) !2107
	lw  	a1, 152(sp) !2107
	sw  	a1, 12(a0) !2107
	lw  	a1, 148(sp) !2107
	sw  	a1, 8(a0) !2107
	lw  	a1, 144(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 140(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 136(sp) !2121
	addi	sp, sp, 172 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -172 !2121
	li  	a1, 1049192 !2122
	lw  	a1, 0(a1) !2122
	addi	a1, a1, -2 !2122
	blt 	a1, zero, bge_else.26121 !2112
	sw  	a1, 172(sp) !2113
	sw  	a0, 176(sp) !2113
	addi	sp, sp, 180 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -180 !2113
	lw  	a1, 172(sp) !2113
	lw  	a2, 176(sp) !2113
	slli	t0, a1, 2 !2113
	add 	t0, t0, a2 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	addi	sp, sp, 180 !2114
	jal 	ra, init_line_elements.2847 !2114
	addi	sp, sp, -180 !2114
	jal 	zero, bge_cont.26122 !2112
bge_else.26121: !2112
bge_cont.26122: !2112
	sw  	a0, 180(sp) !2302
	addi	sp, sp, 184 !2302
	jal 	ra, read_parameter.2564 !2302
	addi	sp, sp, -184 !2302
	addi	a0, zero, 80 !1938
	outb	a0
	addi	a0, zero, 51 !1939
	outb	a0
	addi	a0, zero, 10 !1940
	outb	a0
	li  	a0, 1049192 !1941
	lw  	a0, 0(a0) !1941
	addi	sp, sp, 184 !1941
	jal 	ra, print_int !1941
	addi	sp, sp, -184 !1941
	addi	a0, zero, 32 !1942
	outb	a0
	li  	a0, 1049192 !1943
	lw  	a0, 4(a0) !1943
	addi	sp, sp, 184 !1943
	jal 	ra, print_int !1943
	addi	sp, sp, -184 !1943
	addi	a0, zero, 32 !1944
	outb	a0
	addi	a0, zero, 255 !1945
	addi	sp, sp, 184 !1945
	jal 	ra, print_int !1945
	addi	sp, sp, -184 !1945
	addi	a0, zero, 10 !1946
	outb	a0
	addi	a0, zero, 120 !2204
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 184(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 188 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -188 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 188(sp) !2191
	addi	sp, sp, 192 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -192 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 188(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 184(sp) !2204
	addi	sp, sp, 192 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -192 !2204
	li  	a1, 1049292 !2204
	sw  	a0, 16(a1) !2204
	li  	a0, 1049292 !2205
	lw  	a0, 16(a0) !2205
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 192(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 196 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -196 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 196(sp) !2191
	addi	sp, sp, 200 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -200 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 196(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 192(sp) !2197
	sw  	a1, 472(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 200 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -200 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 200(sp) !2191
	addi	sp, sp, 204 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -204 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 200(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 192(sp) !2197
	sw  	a1, 468(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 204 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -204 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 204(sp) !2191
	addi	sp, sp, 208 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -208 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 204(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 192(sp) !2197
	sw  	a1, 464(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 208 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -208 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 208(sp) !2191
	addi	sp, sp, 212 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -212 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 208(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 192(sp) !2197
	sw  	a1, 460(a0) !2197
	addi	a1, zero, 114 !2198
	addi	sp, sp, 212 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -212 !2198
	addi	a0, zero, 3 !2206
	addi	sp, sp, 212 !2206
	jal 	ra, create_dirvecs.2879 !2206
	addi	sp, sp, -212 !2206
	addi	a0, zero, 9 !2228
	addi	a1, zero, 0 !2228
	addi	a2, zero, 0 !2228
	sw  	a2, 212(sp) !2180
	sw  	a1, 216(sp) !2180
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa0, fa0, fa1 !2180
	addi	a0, zero, 4 !2181
	lw  	a1, 216(sp) !2181
	lw  	a2, 212(sp) !2181
	addi	sp, sp, 220 !2181
	jal 	ra, calc_dirvecs.2865 !2181
	addi	sp, sp, -220 !2181
	addi	a0, zero, 8 !2182
	addi	a1, zero, 2 !160
	addi	a2, zero, 4 !2182
	addi	sp, sp, 220 !2182
	jal 	ra, calc_dirvec_rows.2870 !2182
	addi	sp, sp, -220 !2182
	li  	a0, 1049292 !2221
	lw  	a0, 16(a0) !2221
	addi	a1, zero, 119 !2221
	addi	sp, sp, 220 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -220 !2221
	addi	a0, zero, 3 !2222
	addi	sp, sp, 220 !2222
	jal 	ra, init_vecset_constants.2884 !2222
	addi	sp, sp, -220 !2222
	li  	a0, 1048888 !188
	lw  	fa0, 0(a0) !188
	li  	a0, 1049312 !188
	sw  	fa0, 0(a0) !188
	li  	a0, 1048888 !189
	lw  	fa0, 4(a0) !189
	li  	a0, 1049312 !189
	sw  	fa0, 4(a0) !189
	li  	a0, 1048888 !190
	lw  	fa0, 8(a0) !190
	li  	a0, 1049312 !190
	sw  	fa0, 8(a0) !190
	li  	a0, 1048576 !1142
	lw  	a0, 0(a0) !1142
	addi	a0, a0, -1 !1142
	blt 	a0, zero, bge_else.26123 !1125
	li  	a1, 1048624 !1126
	slli	t0, a0, 2 !1126
	add 	t0, t0, a1 !1126
	lw  	a1, 0(t0) !1126
	lw  	a2, 4(a1) !260
	addi	t0, zero, 1 !1130
	bne 	a2, t0, beq_else.26125 !1130
	li  	a2, 1049312 !0
	sw  	a0, 220(sp) !1131
	addi	a0, a2, 0 !1131
	addi	sp, sp, 224 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -224 !1131
	li  	a1, 1049324 !1131
	lw  	a2, 220(sp) !1131
	slli	t0, a2, 2 !1131
	add 	t0, t0, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.26126 !1130
beq_else.26125: !1130
	addi	t0, zero, 2 !1132
	bne 	a2, t0, beq_else.26127 !1132
	li  	a2, 1049312 !0
	sw  	a0, 220(sp) !1133
	addi	a0, a2, 0 !1133
	addi	sp, sp, 224 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -224 !1133
	li  	a1, 1049324 !1133
	lw  	a2, 220(sp) !1133
	slli	t0, a2, 2 !1133
	add 	t0, t0, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.26128 !1132
beq_else.26127: !1132
	li  	a2, 1049312 !0
	sw  	a0, 220(sp) !1135
	addi	a0, a2, 0 !1135
	addi	sp, sp, 224 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -224 !1135
	li  	a1, 1049324 !1135
	lw  	a2, 220(sp) !1135
	slli	t0, a2, 2 !1135
	add 	t0, t0, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.26128: !1132
beq_cont.26126: !1130
	addi	a1, a2, -1 !1137
	li  	a0, 1049564 !0
	addi	sp, sp, 224 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -224 !1137
	jal 	zero, bge_cont.26124 !1125
bge_else.26123: !1125
bge_cont.26124: !1125
	li  	a0, 1048576 !2307
	lw  	a0, 0(a0) !2307
	addi	a0, a0, -1 !2307
	addi	sp, sp, 224 !2307
	jal 	ra, setup_reflections.2901 !2307
	addi	sp, sp, -224 !2307
	addi	a1, zero, 0 !2308
	addi	a2, zero, 0 !2308
	lw  	a0, 132(sp) !2308
	addi	sp, sp, 224 !2308
	jal 	ra, pretrace_line.2825 !2308
	addi	sp, sp, -224 !2308
	addi	a0, zero, 0 !2309
	addi	a4, zero, 2 !2309
	lw  	a1, 84(sp) !2309
	lw  	a2, 132(sp) !2309
	lw  	a3, 180(sp) !2309
	lw  	a5, 24(sp) !2309
	addi	sp, sp, 224 !2309
	jal 	ra, scan_line.2836 !2309
	addi	sp, sp, -224 !2309
	addi	sp, sp, -4
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_screen_settings.2545:
	sw  	ra, 0(sp)
	inw 	fa0
	li  	a0, 1048864 !570
	sw  	fa0, 0(a0) !570
	inw 	fa0
	li  	a0, 1048864 !571
	sw  	fa0, 4(a0) !571
	inw 	fa0
	li  	a0, 1048864 !572
	sw  	fa0, 8(a0) !572
	inw 	fa0
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	fsw 	fa0, 8(sp) !575
	addi	sp, sp, 16 !575
	jal 	ra, cos !575
	addi	sp, sp, -16 !575
	flw  	fa1, 8(sp) !576
	fsw 	fa0, 16(sp) !576
	fsgnj   fa0, fa1, fa1 !576
	addi	sp, sp, 24 !576
	jal 	ra, sin !576
	addi	sp, sp, -24 !576
	fsw 	fa0, 24(sp) !577
	inw 	fa0
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	fsw 	fa0, 32(sp) !578
	addi	sp, sp, 40 !578
	jal 	ra, cos !578
	addi	sp, sp, -40 !578
	flw  	fa1, 32(sp) !579
	fsw 	fa0, 40(sp) !579
	fsgnj   fa0, fa1, fa1 !579
	addi	sp, sp, 48 !579
	jal 	ra, sin !579
	addi	sp, sp, -48 !579
	flw  	fa1, 16(sp) !581
	fmul	fa2, fa1, fa0 !581
	li  	fa3, 200.000000 !581
	fmul	fa2, fa2, fa3 !581
	li  	a0, 1049260 !581
	sw  	fa2, 0(a0) !581
	li  	fa2, -200.000000 !582
	flw  	fa3, 24(sp) !582
	fmul	fa2, fa3, fa2 !582
	li  	a0, 1049260 !582
	sw  	fa2, 4(a0) !582
	flw  	fa2, 40(sp) !583
	fmul	fa4, fa1, fa2 !583
	li  	fa5, 200.000000 !583
	fmul	fa4, fa4, fa5 !583
	li  	a0, 1049260 !583
	sw  	fa4, 8(a0) !583
	li  	a0, 1049236 !585
	sw  	fa2, 0(a0) !585
	li  	fa4, 0.000000 !586
	li  	a0, 1049236 !586
	sw  	fa4, 4(a0) !586
	fsw 	fa0, 48(sp) !587
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049236 !587
	sw  	fa0, 8(a0) !587
	flw  	fa0, 24(sp) !589
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 48(sp) !589
	fmul	fa0, fa0, fa1 !589
	li  	a0, 1049248 !589
	sw  	fa0, 0(a0) !589
	flw  	fa0, 16(sp) !590
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049248 !590
	sw  	fa0, 4(a0) !590
	flw  	fa0, 24(sp) !591
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 40(sp) !591
	fmul	fa0, fa0, fa1 !591
	li  	a0, 1049248 !591
	sw  	fa0, 8(a0) !591
	li  	a0, 1048864 !593
	lw  	fa0, 0(a0) !593
	li  	a0, 1049260 !593
	lw  	fa1, 0(a0) !593
	fsub	fa0, fa0, fa1 !593
	li  	a0, 1048876 !593
	sw  	fa0, 0(a0) !593
	li  	a0, 1048864 !594
	lw  	fa0, 4(a0) !594
	li  	a0, 1049260 !594
	lw  	fa1, 4(a0) !594
	fsub	fa0, fa0, fa1 !594
	li  	a0, 1048876 !594
	sw  	fa0, 4(a0) !594
	li  	a0, 1048864 !595
	lw  	fa0, 8(a0) !595
	li  	a0, 1049260 !595
	lw  	fa1, 8(a0) !595
	fsub	fa0, fa0, fa1 !595
	li  	a0, 1048876 !595
	sw  	fa0, 8(a0) !595
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
rotate_quadratic_matrix.2549:
	sw  	ra, 0(sp)
	flw  	fa0, 0(a1) !624
	sw  	a0, 4(sp) !624
	sw  	a1, 8(sp) !624
	addi	sp, sp, 12 !624
	jal 	ra, cos !624
	addi	sp, sp, -12 !624
	lw  	a0, 8(sp) !625
	flw  	fa1, 0(a0) !625
	fsw 	fa0, 16(sp) !625
	fsgnj   fa0, fa1, fa1 !625
	addi	sp, sp, 24 !625
	jal 	ra, sin !625
	addi	sp, sp, -24 !625
	lw  	a0, 8(sp) !626
	flw  	fa1, 4(a0) !626
	fsw 	fa0, 24(sp) !626
	fsgnj   fa0, fa1, fa1 !626
	addi	sp, sp, 32 !626
	jal 	ra, cos !626
	addi	sp, sp, -32 !626
	lw  	a0, 8(sp) !627
	flw  	fa1, 4(a0) !627
	fsw 	fa0, 32(sp) !627
	fsgnj   fa0, fa1, fa1 !627
	addi	sp, sp, 40 !627
	jal 	ra, sin !627
	addi	sp, sp, -40 !627
	lw  	a0, 8(sp) !628
	flw  	fa1, 8(a0) !628
	fsw 	fa0, 40(sp) !628
	fsgnj   fa0, fa1, fa1 !628
	addi	sp, sp, 48 !628
	jal 	ra, cos !628
	addi	sp, sp, -48 !628
	lw  	a0, 8(sp) !629
	flw  	fa1, 8(a0) !629
	fsw 	fa0, 48(sp) !629
	fsgnj   fa0, fa1, fa1 !629
	addi	sp, sp, 56 !629
	jal 	ra, sin !629
	addi	sp, sp, -56 !629
	flw  	fa1, 48(sp) !631
	flw  	fa2, 32(sp) !631
	fmul	fa3, fa2, fa1 !631
	flw  	fa4, 40(sp) !632
	flw  	fa5, 24(sp) !632
	fmul	fa6, fa5, fa4 !632
	fmul	fa7, fa6, fa1 !632
	flw  	fs1, 16(sp) !632
	fmul	fs2, fs1, fa0 !632
	fsub	fa7, fa7, fs2 !632
	fmul	fs2, fs1, fa4 !633
	fmul	fs3, fs2, fa1 !633
	fmul	fs4, fa5, fa0 !633
	fadd	fs3, fs3, fs4 !633
	fmul	fs4, fa2, fa0 !635
	fmul	fa6, fa6, fa0 !636
	fmul	fs5, fs1, fa1 !636
	fadd	fa6, fa6, fs5 !636
	fmul	fs2, fs2, fa0 !637
	fmul	fa1, fa5, fa1 !637
	fsub	fs2, fs2, fa1 !637
	fsw 	fs2, 56(sp) !639
	fsw 	fs3, 64(sp) !639
	fsw 	fa6, 72(sp) !639
	fsw 	fa7, 80(sp) !639
	fsw 	fs4, 88(sp) !639
	fsw 	fa3, 96(sp) !639
	fsgnj   fa0, fa4, fa4 !639
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 32(sp) !640
	flw  	fa2, 24(sp) !640
	fmul	fa2, fa2, fa1 !640
	flw  	fa3, 16(sp) !641
	fmul	fa3, fa3, fa1 !641
	lw  	a0, 4(sp) !644
	flw  	fa1, 0(a0) !644
	flw  	fa4, 4(a0) !645
	flw  	fa5, 8(a0) !646
	flw  	fa6, 96(sp) !126
	fmul	fa7, fa6, fa6 !126
	fmul	fa7, fa1, fa7 !651
	flw  	fs1, 88(sp) !126
	fmul	fs2, fs1, fs1 !126
	fmul	fs2, fa4, fs2 !651
	fadd	fa7, fa7, fs2 !651
	fmul	fs2, fa0, fa0 !126
	fmul	fs2, fa5, fs2 !651
	fadd	fa7, fa7, fs2 !651
	fsw  	fa7, 0(a0) !651
	flw  	fa7, 80(sp) !126
	fmul	fs2, fa7, fa7 !126
	fmul	fs2, fa1, fs2 !652
	flw  	fs3, 72(sp) !126
	fmul	fs4, fs3, fs3 !126
	fmul	fs4, fa4, fs4 !652
	fadd	fs2, fs2, fs4 !652
	fmul	fs4, fa2, fa2 !126
	fmul	fs4, fa5, fs4 !652
	fadd	fs2, fs2, fs4 !652
	fsw  	fs2, 4(a0) !652
	flw  	fs2, 64(sp) !126
	fmul	fs4, fs2, fs2 !126
	fmul	fs4, fa1, fs4 !653
	flw  	fs5, 56(sp) !126
	fmul	fs6, fs5, fs5 !126
	fmul	fs6, fa4, fs6 !653
	fadd	fs4, fs4, fs6 !653
	fmul	fs6, fa3, fa3 !126
	fmul	fs6, fa5, fs6 !653
	fadd	fs4, fs4, fs6 !653
	fsw  	fs4, 8(a0) !653
	li  	fs4, 2.000000 !656
	fmul	fs6, fa1, fa7 !656
	fmul	fs6, fs6, fs2 !656
	fmul	fs7, fa4, fs3 !656
	fmul	fs7, fs7, fs5 !656
	fadd	fs6, fs6, fs7 !656
	fmul	fs7, fa5, fa2 !656
	fmul	fs7, fs7, fa3 !656
	fadd	fs6, fs6, fs7 !656
	fmul	fs4, fs4, fs6 !656
	lw  	a0, 8(sp) !656
	fsw  	fs4, 0(a0) !656
	li  	fs4, 2.000000 !657
	fmul	fa1, fa1, fa6 !657
	fmul	fs2, fa1, fs2 !657
	fmul	fa4, fa4, fs1 !657
	fmul	fs5, fa4, fs5 !657
	fadd	fs2, fs2, fs5 !657
	fmul	fa5, fa5, fa0 !657
	fmul	fa3, fa5, fa3 !657
	fadd	fs2, fs2, fa3 !657
	fmul	fs4, fs4, fs2 !657
	fsw  	fs4, 4(a0) !657
	li  	fa0, 2.000000 !658
	fmul	fa1, fa1, fa7 !658
	fmul	fa4, fa4, fs3 !658
	fadd	fa1, fa1, fa4 !658
	fmul	fa5, fa5, fa2 !658
	fadd	fa1, fa1, fa5 !658
	fmul	fa0, fa0, fa1 !658
	fsw  	fa0, 8(a0) !658
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_nth_object.2552:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !665
	inw 	a0
	addi	t0, zero, -1 !666
	bne 	a0, t0, beq_else.26133 !666
	addi	a0, zero, 0 !742
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26133: !666
	sw  	a0, 8(sp) !668
	inw 	a0
	sw  	a0, 12(sp) !669
	inw 	a0
	sw  	a0, 16(sp) !670
	inw 	a0
	addi	a1, zero, 3 !672
	li  	fa0, 0.000000 !672
	sw  	a0, 20(sp) !672
	addi	a0, a1, 0 !672
	addi	sp, sp, 24 !672
	jal 	ra, create_float_array !672
	addi	sp, sp, -24 !672
	sw  	a0, 24(sp) !673
	inw 	fa0
	lw  	a0, 24(sp) !673
	fsw  	fa0, 0(a0) !673
	inw 	fa0
	lw  	a0, 24(sp) !674
	fsw  	fa0, 4(a0) !674
	inw 	fa0
	lw  	a0, 24(sp) !675
	fsw  	fa0, 8(a0) !675
	addi	a1, zero, 3 !677
	li  	fa0, 0.000000 !677
	addi	a0, a1, 0 !677
	addi	sp, sp, 28 !677
	jal 	ra, create_float_array !677
	addi	sp, sp, -28 !677
	sw  	a0, 28(sp) !678
	inw 	fa0
	lw  	a0, 28(sp) !678
	fsw  	fa0, 0(a0) !678
	inw 	fa0
	lw  	a0, 28(sp) !679
	fsw  	fa0, 4(a0) !679
	inw 	fa0
	lw  	a0, 28(sp) !680
	fsw  	fa0, 8(a0) !680
	inw 	fa0
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26134 !123
	addi	a0, zero, 0 !123
	jal 	zero, bne_cont.26135 !123
bne_else.26134: !123
	addi	a0, zero, 1 !123
bne_cont.26135: !123
	addi	a1, zero, 2 !684
	li  	fa0, 0.000000 !684
	sw  	a0, 32(sp) !684
	addi	a0, a1, 0 !684
	addi	sp, sp, 36 !684
	jal 	ra, create_float_array !684
	addi	sp, sp, -36 !684
	sw  	a0, 36(sp) !685
	inw 	fa0
	lw  	a0, 36(sp) !685
	fsw  	fa0, 0(a0) !685
	inw 	fa0
	lw  	a0, 36(sp) !686
	fsw  	fa0, 4(a0) !686
	addi	a1, zero, 3 !688
	li  	fa0, 0.000000 !688
	addi	a0, a1, 0 !688
	addi	sp, sp, 40 !688
	jal 	ra, create_float_array !688
	addi	sp, sp, -40 !688
	sw  	a0, 40(sp) !689
	inw 	fa0
	lw  	a0, 40(sp) !689
	fsw  	fa0, 0(a0) !689
	inw 	fa0
	lw  	a0, 40(sp) !690
	fsw  	fa0, 4(a0) !690
	inw 	fa0
	lw  	a0, 40(sp) !691
	fsw  	fa0, 8(a0) !691
	addi	a1, zero, 3 !693
	li  	fa0, 0.000000 !693
	addi	a0, a1, 0 !693
	addi	sp, sp, 44 !693
	jal 	ra, create_float_array !693
	addi	sp, sp, -44 !693
	lw  	a1, 20(sp) !694
	bne 	a1, zero, beq_else.26136 !694
	jal 	zero, beq_cont.26137 !694
beq_else.26136: !694
	sw  	a0, 44(sp) !696
	inw 	fa0
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 44(sp) !696
	fsw  	fa0, 0(a0) !696
	inw 	fa0
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 44(sp) !697
	fsw  	fa0, 4(a0) !697
	inw 	fa0
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 44(sp) !698
	fsw  	fa0, 8(a0) !698
beq_cont.26137: !694
	lw  	a1, 12(sp) !705
	addi	t0, zero, 2 !705
	bne 	a1, t0, beq_else.26138 !705
	addi	a2, zero, 1 !705
	jal 	zero, beq_cont.26139 !705
beq_else.26138: !705
	lw  	a2, 32(sp) !705
beq_cont.26139: !705
	addi	a3, zero, 4 !706
	li  	fa0, 0.000000 !706
	sw  	a2, 48(sp) !706
	sw  	a0, 44(sp) !706
	addi	a0, a3, 0 !706
	addi	sp, sp, 52 !706
	jal 	ra, create_float_array !706
	addi	sp, sp, -52 !706
	addi	a1, gp, 0 !709
	addi	gp, gp, 44 !709
	sw  	a0, 40(a1) !709
	lw  	a0, 44(sp) !709
	sw  	a0, 36(a1) !709
	lw  	a2, 40(sp) !709
	sw  	a2, 32(a1) !709
	lw  	a2, 36(sp) !709
	sw  	a2, 28(a1) !709
	lw  	a2, 48(sp) !709
	sw  	a2, 24(a1) !709
	lw  	a2, 28(sp) !709
	sw  	a2, 20(a1) !709
	lw  	a2, 24(sp) !709
	sw  	a2, 16(a1) !709
	lw  	a3, 20(sp) !709
	sw  	a3, 12(a1) !709
	lw  	a4, 16(sp) !709
	sw  	a4, 8(a1) !709
	lw  	a4, 12(sp) !709
	sw  	a4, 4(a1) !709
	lw  	a5, 8(sp) !709
	sw  	a5, 0(a1) !709
	li  	a5, 1048624 !717
	lw  	a6, 4(sp) !717
	slli	t0, a6, 2 !717
	add 	t0, t0, a5 !717
	sw  	a1, 0(t0) !717
	addi	t0, zero, 3 !719
	bne 	a4, t0, beq_else.26140 !719
	flw  	fa0, 0(a2) !722
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26142 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26143 !124
bne_else.26142: !124
	addi	a1, zero, 0 !124
bne_cont.26143: !124
	bne 	a1, zero, beq_else.26144 !723
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26146 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26147 !124
bne_else.26146: !124
	addi	a1, zero, 0 !124
bne_cont.26147: !124
	bne 	a1, zero, beq_else.26148 !147
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26150 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26151 !122
bne_else.26150: !122
	addi	a1, zero, 1 !122
bne_cont.26151: !122
	bne 	a1, zero, beq_else.26152 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.26153 !148
beq_else.26152: !148
	li  	fa1, 1.000000 !148
beq_cont.26153: !148
	jal 	zero, beq_cont.26149 !147
beq_else.26148: !147
	li  	fa1, 0.000000 !147
beq_cont.26149: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa1, fa1, fa0 !723
	jal 	zero, beq_cont.26145 !723
beq_else.26144: !723
	li  	fa1, 0.000000 !723
beq_cont.26145: !723
	fsw  	fa1, 0(a2) !723
	flw  	fa0, 4(a2) !724
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26154 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26155 !124
bne_else.26154: !124
	addi	a1, zero, 0 !124
bne_cont.26155: !124
	bne 	a1, zero, beq_else.26156 !725
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26158 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26159 !124
bne_else.26158: !124
	addi	a1, zero, 0 !124
bne_cont.26159: !124
	bne 	a1, zero, beq_else.26160 !147
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26162 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26163 !122
bne_else.26162: !122
	addi	a1, zero, 1 !122
bne_cont.26163: !122
	bne 	a1, zero, beq_else.26164 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.26165 !148
beq_else.26164: !148
	li  	fa1, 1.000000 !148
beq_cont.26165: !148
	jal 	zero, beq_cont.26161 !147
beq_else.26160: !147
	li  	fa1, 0.000000 !147
beq_cont.26161: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa1, fa1, fa0 !725
	jal 	zero, beq_cont.26157 !725
beq_else.26156: !725
	li  	fa1, 0.000000 !725
beq_cont.26157: !725
	fsw  	fa1, 4(a2) !725
	flw  	fa0, 8(a2) !726
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26166 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26167 !124
bne_else.26166: !124
	addi	a1, zero, 0 !124
bne_cont.26167: !124
	bne 	a1, zero, beq_else.26168 !727
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26170 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26171 !124
bne_else.26170: !124
	addi	a1, zero, 0 !124
bne_cont.26171: !124
	bne 	a1, zero, beq_else.26172 !147
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26174 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26175 !122
bne_else.26174: !122
	addi	a1, zero, 1 !122
bne_cont.26175: !122
	bne 	a1, zero, beq_else.26176 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.26177 !148
beq_else.26176: !148
	li  	fa1, 1.000000 !148
beq_cont.26177: !148
	jal 	zero, beq_cont.26173 !147
beq_else.26172: !147
	li  	fa1, 0.000000 !147
beq_cont.26173: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa1, fa1, fa0 !727
	jal 	zero, beq_cont.26169 !727
beq_else.26168: !727
	li  	fa1, 0.000000 !727
beq_cont.26169: !727
	fsw  	fa1, 8(a2) !727
	jal 	zero, beq_cont.26141 !719
beq_else.26140: !719
	addi	t0, zero, 2 !729
	bne 	a4, t0, beq_else.26178 !729
	lw  	a1, 32(sp) !731
	bne 	a1, zero, beq_else.26180 !731
	addi	a1, zero, 1 !731
	jal 	zero, beq_cont.26181 !731
beq_else.26180: !731
	addi	a1, zero, 0 !731
beq_cont.26181: !731
	flw  	fa0, 0(a2) !199
	fmul	fa0, fa0, fa0 !126
	flw  	fa1, 4(a2) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	flw  	fa1, 8(a2) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	sw  	a1, 52(sp) !199
	fsqrt   fa0, fa0
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26182 !124
	addi	a0, zero, 1 !124
	jal 	zero, bne_cont.26183 !124
bne_else.26182: !124
	addi	a0, zero, 0 !124
bne_cont.26183: !124
	bne 	a0, zero, beq_else.26184 !200
	lw  	a0, 52(sp) !200
	bne 	a0, zero, beq_else.26186 !200
	li  	fa1, 1.000000 !200
	fdiv	fa1, fa1, fa0 !200
	jal 	zero, beq_cont.26187 !200
beq_else.26186: !200
	li  	fa1, -1.000000 !200
	fdiv	fa1, fa1, fa0 !200
beq_cont.26187: !200
	jal 	zero, beq_cont.26185 !200
beq_else.26184: !200
	li  	fa1, 1.000000 !200
beq_cont.26185: !200
	lw  	a0, 24(sp) !201
	flw  	fa0, 0(a0) !201
	fmul	fa0, fa0, fa1 !201
	fsw  	fa0, 0(a0) !201
	flw  	fa0, 4(a0) !202
	fmul	fa0, fa0, fa1 !202
	fsw  	fa0, 4(a0) !202
	flw  	fa0, 8(a0) !203
	fmul	fa0, fa0, fa1 !203
	fsw  	fa0, 8(a0) !203
	jal 	zero, beq_cont.26179 !729
beq_else.26178: !729
beq_cont.26179: !729
beq_cont.26141: !719
	lw  	a0, 20(sp) !735
	bne 	a0, zero, beq_else.26188 !735
	jal 	zero, beq_cont.26189 !735
beq_else.26188: !735
	lw  	a0, 24(sp) !736
	lw  	a1, 44(sp) !736
	addi	sp, sp, 56 !736
	jal 	ra, rotate_quadratic_matrix.2549 !736
	addi	sp, sp, -56 !736
beq_cont.26189: !735
	addi	a0, zero, 1 !739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_object.2554:
	sw  	ra, 0(sp)
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26190 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26190: !747
	sw  	a0, 4(sp) !748
	addi	sp, sp, 8 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -8 !748
	bne 	a0, zero, beq_else.26192 !748
	li  	a0, 1048576 !751
	lw  	a1, 4(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26192: !748
	lw  	a0, 4(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26194 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26194: !747
	sw  	a0, 8(sp) !748
	addi	sp, sp, 12 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -12 !748
	bne 	a0, zero, beq_else.26196 !748
	li  	a0, 1048576 !751
	lw  	a1, 8(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26196: !748
	lw  	a0, 8(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26198 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26198: !747
	sw  	a0, 12(sp) !748
	addi	sp, sp, 16 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -16 !748
	bne 	a0, zero, beq_else.26200 !748
	li  	a0, 1048576 !751
	lw  	a1, 12(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26200: !748
	lw  	a0, 12(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26202 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26202: !747
	sw  	a0, 16(sp) !748
	addi	sp, sp, 20 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -20 !748
	bne 	a0, zero, beq_else.26204 !748
	li  	a0, 1048576 !751
	lw  	a1, 16(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26204: !748
	lw  	a0, 16(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26206 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26206: !747
	sw  	a0, 20(sp) !748
	addi	sp, sp, 24 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -24 !748
	bne 	a0, zero, beq_else.26208 !748
	li  	a0, 1048576 !751
	lw  	a1, 20(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26208: !748
	lw  	a0, 20(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26210 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26210: !747
	sw  	a0, 24(sp) !748
	addi	sp, sp, 28 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -28 !748
	bne 	a0, zero, beq_else.26212 !748
	li  	a0, 1048576 !751
	lw  	a1, 24(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26212: !748
	lw  	a0, 24(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26214 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26214: !747
	sw  	a0, 28(sp) !748
	addi	sp, sp, 32 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -32 !748
	bne 	a0, zero, beq_else.26216 !748
	li  	a0, 1048576 !751
	lw  	a1, 28(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26216: !748
	lw  	a0, 28(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60 !747
	blt 	a0, t0, bge_else.26218 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26218: !747
	sw  	a0, 32(sp) !748
	addi	sp, sp, 36 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -36 !748
	bne 	a0, zero, beq_else.26220 !748
	li  	a0, 1048576 !751
	lw  	a1, 32(sp) !751
	sw  	a1, 0(a0) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26220: !748
	lw  	a0, 32(sp) !749
	addi	a0, a0, 1 !749
	lw  	ra, 0(sp)
	jal 	zero, read_object.2554 !749
read_net_item.2558:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26222 !764
	lw  	a0, 4(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	lw  	ra, 0(sp)
	jal 	zero, create_array !764
beq_else.26222: !764
	lw  	a1, 4(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 8(sp) !763
	sw  	a2, 12(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26223 !764
	lw  	a0, 12(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.26224 !764
beq_else.26223: !764
	lw  	a1, 12(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 16(sp) !763
	sw  	a2, 20(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26225 !764
	lw  	a0, 20(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.26226 !764
beq_else.26225: !764
	lw  	a1, 20(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 24(sp) !763
	sw  	a2, 28(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26227 !764
	lw  	a0, 28(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 32 !764
	jal 	ra, create_array !764
	addi	sp, sp, -32 !764
	jal 	zero, beq_cont.26228 !764
beq_else.26227: !764
	lw  	a1, 28(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 32(sp) !763
	sw  	a2, 36(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26229 !764
	lw  	a0, 36(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 40 !764
	jal 	ra, create_array !764
	addi	sp, sp, -40 !764
	jal 	zero, beq_cont.26230 !764
beq_else.26229: !764
	lw  	a1, 36(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 40(sp) !763
	sw  	a2, 44(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26231 !764
	lw  	a0, 44(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 48 !764
	jal 	ra, create_array !764
	addi	sp, sp, -48 !764
	jal 	zero, beq_cont.26232 !764
beq_else.26231: !764
	lw  	a1, 44(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 48(sp) !763
	sw  	a2, 52(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26233 !764
	lw  	a0, 52(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 56 !764
	jal 	ra, create_array !764
	addi	sp, sp, -56 !764
	jal 	zero, beq_cont.26234 !764
beq_else.26233: !764
	lw  	a1, 52(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 56(sp) !763
	sw  	a2, 60(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26235 !764
	lw  	a0, 60(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 64 !764
	jal 	ra, create_array !764
	addi	sp, sp, -64 !764
	jal 	zero, beq_cont.26236 !764
beq_else.26235: !764
	lw  	a1, 60(sp) !766
	addi	a2, a1, 1 !766
	sw  	a0, 64(sp) !766
	addi	a0, a2, 0 !766
	addi	sp, sp, 68 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -68 !766
	lw  	a1, 60(sp) !767
	lw  	a2, 64(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
beq_cont.26236: !764
	lw  	a1, 52(sp) !767
	lw  	a2, 56(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
beq_cont.26234: !764
	lw  	a1, 44(sp) !767
	lw  	a2, 48(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
beq_cont.26232: !764
	lw  	a1, 36(sp) !767
	lw  	a2, 40(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
beq_cont.26230: !764
	lw  	a1, 28(sp) !767
	lw  	a2, 32(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
beq_cont.26228: !764
	lw  	a1, 20(sp) !767
	lw  	a2, 24(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
beq_cont.26226: !764
	lw  	a1, 12(sp) !767
	lw  	a2, 16(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
beq_cont.26224: !764
	lw  	a1, 4(sp) !767
	lw  	a2, 8(sp) !767
	slli	t0, a1, 2 !767
	add 	t0, t0, a0 !767
	sw  	a2, 0(t0) !767
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_or_network.2560:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26237 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.26238 !764
beq_else.26237: !764
	sw  	a0, 8(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26239 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.26240 !764
beq_else.26239: !764
	sw  	a0, 12(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26241 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.26242 !764
beq_else.26241: !764
	sw  	a0, 16(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26243 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	jal 	zero, beq_cont.26244 !764
beq_else.26243: !764
	sw  	a0, 20(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26245 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.26246 !764
beq_else.26245: !764
	sw  	a0, 24(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26247 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 28 !764
	jal 	ra, create_array !764
	addi	sp, sp, -28 !764
	jal 	zero, beq_cont.26248 !764
beq_else.26247: !764
	sw  	a0, 28(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26249 !764
	addi	a0, zero, 7 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 32 !764
	jal 	ra, create_array !764
	addi	sp, sp, -32 !764
	jal 	zero, beq_cont.26250 !764
beq_else.26249: !764
	addi	a1, zero, 7 !766
	sw  	a0, 32(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 36 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -36 !766
	lw  	a1, 32(sp) !767
	sw  	a1, 24(a0) !767
beq_cont.26250: !764
	lw  	a1, 28(sp) !767
	sw  	a1, 20(a0) !767
beq_cont.26248: !764
	lw  	a1, 24(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26246: !764
	lw  	a1, 20(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26244: !764
	lw  	a1, 16(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26242: !764
	lw  	a1, 12(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26240: !764
	lw  	a1, 8(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.26238: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1 !772
	bne 	a0, t0, beq_else.26251 !772
	lw  	a0, 4(sp) !773
	addi	a0, a0, 1 !773
	lw  	ra, 0(sp)
	jal 	zero, create_array !773
beq_else.26251: !772
	lw  	a0, 4(sp) !775
	addi	a2, a0, 1 !775
	sw  	a1, 36(sp) !763
	sw  	a2, 40(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26252 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 44 !764
	jal 	ra, create_array !764
	addi	sp, sp, -44 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.26253 !764
beq_else.26252: !764
	sw  	a0, 44(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26254 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 48 !764
	jal 	ra, create_array !764
	addi	sp, sp, -48 !764
	jal 	zero, beq_cont.26255 !764
beq_else.26254: !764
	sw  	a0, 48(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26256 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 52 !764
	jal 	ra, create_array !764
	addi	sp, sp, -52 !764
	jal 	zero, beq_cont.26257 !764
beq_else.26256: !764
	sw  	a0, 52(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26258 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 56 !764
	jal 	ra, create_array !764
	addi	sp, sp, -56 !764
	jal 	zero, beq_cont.26259 !764
beq_else.26258: !764
	sw  	a0, 56(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26260 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 60 !764
	jal 	ra, create_array !764
	addi	sp, sp, -60 !764
	jal 	zero, beq_cont.26261 !764
beq_else.26260: !764
	sw  	a0, 60(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26262 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 64 !764
	jal 	ra, create_array !764
	addi	sp, sp, -64 !764
	jal 	zero, beq_cont.26263 !764
beq_else.26262: !764
	addi	a1, zero, 6 !766
	sw  	a0, 64(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 68 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -68 !766
	lw  	a1, 64(sp) !767
	sw  	a1, 20(a0) !767
beq_cont.26263: !764
	lw  	a1, 60(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26261: !764
	lw  	a1, 56(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26259: !764
	lw  	a1, 52(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26257: !764
	lw  	a1, 48(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26255: !764
	lw  	a1, 44(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.26253: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1 !772
	bne 	a0, t0, beq_else.26264 !772
	lw  	a0, 40(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 68 !773
	jal 	ra, create_array !773
	addi	sp, sp, -68 !773
	jal 	zero, beq_cont.26265 !772
beq_else.26264: !772
	lw  	a0, 40(sp) !775
	addi	a2, a0, 1 !775
	sw  	a1, 68(sp) !763
	sw  	a2, 72(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26266 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 76 !764
	jal 	ra, create_array !764
	addi	sp, sp, -76 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.26267 !764
beq_else.26266: !764
	sw  	a0, 76(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26268 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 80 !764
	jal 	ra, create_array !764
	addi	sp, sp, -80 !764
	jal 	zero, beq_cont.26269 !764
beq_else.26268: !764
	sw  	a0, 80(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26270 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 84 !764
	jal 	ra, create_array !764
	addi	sp, sp, -84 !764
	jal 	zero, beq_cont.26271 !764
beq_else.26270: !764
	sw  	a0, 84(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26272 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 88 !764
	jal 	ra, create_array !764
	addi	sp, sp, -88 !764
	jal 	zero, beq_cont.26273 !764
beq_else.26272: !764
	sw  	a0, 88(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26274 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 92 !764
	jal 	ra, create_array !764
	addi	sp, sp, -92 !764
	jal 	zero, beq_cont.26275 !764
beq_else.26274: !764
	addi	a1, zero, 5 !766
	sw  	a0, 92(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 96 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -96 !766
	lw  	a1, 92(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26275: !764
	lw  	a1, 88(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26273: !764
	lw  	a1, 84(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26271: !764
	lw  	a1, 80(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26269: !764
	lw  	a1, 76(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.26267: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1 !772
	bne 	a0, t0, beq_else.26276 !772
	lw  	a0, 72(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 96 !773
	jal 	ra, create_array !773
	addi	sp, sp, -96 !773
	jal 	zero, beq_cont.26277 !772
beq_else.26276: !772
	lw  	a0, 72(sp) !775
	addi	a2, a0, 1 !775
	sw  	a1, 96(sp) !763
	sw  	a2, 100(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26278 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 104 !764
	jal 	ra, create_array !764
	addi	sp, sp, -104 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.26279 !764
beq_else.26278: !764
	sw  	a0, 104(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26280 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 108 !764
	jal 	ra, create_array !764
	addi	sp, sp, -108 !764
	jal 	zero, beq_cont.26281 !764
beq_else.26280: !764
	sw  	a0, 108(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26282 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 112 !764
	jal 	ra, create_array !764
	addi	sp, sp, -112 !764
	jal 	zero, beq_cont.26283 !764
beq_else.26282: !764
	sw  	a0, 112(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26284 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 116 !764
	jal 	ra, create_array !764
	addi	sp, sp, -116 !764
	jal 	zero, beq_cont.26285 !764
beq_else.26284: !764
	addi	a1, zero, 4 !766
	sw  	a0, 116(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 120 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -120 !766
	lw  	a1, 116(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26285: !764
	lw  	a1, 112(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26283: !764
	lw  	a1, 108(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26281: !764
	lw  	a1, 104(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.26279: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1 !772
	bne 	a0, t0, beq_else.26286 !772
	lw  	a0, 100(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 120 !773
	jal 	ra, create_array !773
	addi	sp, sp, -120 !773
	jal 	zero, beq_cont.26287 !772
beq_else.26286: !772
	lw  	a0, 100(sp) !775
	addi	a2, a0, 1 !775
	sw  	a1, 120(sp) !775
	addi	a0, a2, 0 !775
	addi	sp, sp, 124 !775
	jal 	ra, read_or_network.2560 !775
	addi	sp, sp, -124 !775
	lw  	a1, 100(sp) !776
	lw  	a2, 120(sp) !776
	slli	t0, a1, 2 !776
	add 	t0, t0, a0 !776
	sw  	a2, 0(t0) !776
beq_cont.26287: !772
	lw  	a1, 72(sp) !776
	lw  	a2, 96(sp) !776
	slli	t0, a1, 2 !776
	add 	t0, t0, a0 !776
	sw  	a2, 0(t0) !776
beq_cont.26277: !772
	lw  	a1, 40(sp) !776
	lw  	a2, 68(sp) !776
	slli	t0, a1, 2 !776
	add 	t0, t0, a0 !776
	sw  	a2, 0(t0) !776
beq_cont.26265: !772
	lw  	a1, 4(sp) !776
	lw  	a2, 36(sp) !776
	slli	t0, a1, 2 !776
	add 	t0, t0, a0 !776
	sw  	a2, 0(t0) !776
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_and_network.2562:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26288 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.26289 !764
beq_else.26288: !764
	sw  	a0, 8(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26290 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.26291 !764
beq_else.26290: !764
	sw  	a0, 12(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26292 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.26293 !764
beq_else.26292: !764
	sw  	a0, 16(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26294 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	jal 	zero, beq_cont.26295 !764
beq_else.26294: !764
	sw  	a0, 20(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26296 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.26297 !764
beq_else.26296: !764
	sw  	a0, 24(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26298 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 28 !764
	jal 	ra, create_array !764
	addi	sp, sp, -28 !764
	jal 	zero, beq_cont.26299 !764
beq_else.26298: !764
	sw  	a0, 28(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26300 !764
	addi	a0, zero, 7 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 32 !764
	jal 	ra, create_array !764
	addi	sp, sp, -32 !764
	jal 	zero, beq_cont.26301 !764
beq_else.26300: !764
	addi	a1, zero, 7 !766
	sw  	a0, 32(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 36 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -36 !766
	lw  	a1, 32(sp) !767
	sw  	a1, 24(a0) !767
beq_cont.26301: !764
	lw  	a1, 28(sp) !767
	sw  	a1, 20(a0) !767
beq_cont.26299: !764
	lw  	a1, 24(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26297: !764
	lw  	a1, 20(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26295: !764
	lw  	a1, 16(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26293: !764
	lw  	a1, 12(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26291: !764
	lw  	a1, 8(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.26289: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1 !781
	bne 	a1, t0, beq_else.26302 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26302: !781
	li  	a1, 1048908 !783
	lw  	a2, 4(sp) !783
	slli	t0, a2, 2 !783
	add 	t0, t0, a1 !783
	sw  	a0, 0(t0) !783
	addi	a2, a2, 1 !784
	sw  	a2, 36(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26304 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 40 !764
	jal 	ra, create_array !764
	addi	sp, sp, -40 !764
	jal 	zero, beq_cont.26305 !764
beq_else.26304: !764
	sw  	a0, 40(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26306 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 44 !764
	jal 	ra, create_array !764
	addi	sp, sp, -44 !764
	jal 	zero, beq_cont.26307 !764
beq_else.26306: !764
	sw  	a0, 44(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26308 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 48 !764
	jal 	ra, create_array !764
	addi	sp, sp, -48 !764
	jal 	zero, beq_cont.26309 !764
beq_else.26308: !764
	sw  	a0, 48(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26310 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 52 !764
	jal 	ra, create_array !764
	addi	sp, sp, -52 !764
	jal 	zero, beq_cont.26311 !764
beq_else.26310: !764
	sw  	a0, 52(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26312 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 56 !764
	jal 	ra, create_array !764
	addi	sp, sp, -56 !764
	jal 	zero, beq_cont.26313 !764
beq_else.26312: !764
	sw  	a0, 56(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26314 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 60 !764
	jal 	ra, create_array !764
	addi	sp, sp, -60 !764
	jal 	zero, beq_cont.26315 !764
beq_else.26314: !764
	addi	a1, zero, 6 !766
	sw  	a0, 60(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 64 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -64 !766
	lw  	a1, 60(sp) !767
	sw  	a1, 20(a0) !767
beq_cont.26315: !764
	lw  	a1, 56(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26313: !764
	lw  	a1, 52(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26311: !764
	lw  	a1, 48(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26309: !764
	lw  	a1, 44(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26307: !764
	lw  	a1, 40(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.26305: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1 !781
	bne 	a1, t0, beq_else.26316 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26316: !781
	li  	a1, 1048908 !783
	lw  	a2, 36(sp) !783
	slli	t0, a2, 2 !783
	add 	t0, t0, a1 !783
	sw  	a0, 0(t0) !783
	addi	a2, a2, 1 !784
	sw  	a2, 64(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26318 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 68 !764
	jal 	ra, create_array !764
	addi	sp, sp, -68 !764
	jal 	zero, beq_cont.26319 !764
beq_else.26318: !764
	sw  	a0, 68(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26320 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 72 !764
	jal 	ra, create_array !764
	addi	sp, sp, -72 !764
	jal 	zero, beq_cont.26321 !764
beq_else.26320: !764
	sw  	a0, 72(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26322 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 76 !764
	jal 	ra, create_array !764
	addi	sp, sp, -76 !764
	jal 	zero, beq_cont.26323 !764
beq_else.26322: !764
	sw  	a0, 76(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26324 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 80 !764
	jal 	ra, create_array !764
	addi	sp, sp, -80 !764
	jal 	zero, beq_cont.26325 !764
beq_else.26324: !764
	sw  	a0, 80(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26326 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 84 !764
	jal 	ra, create_array !764
	addi	sp, sp, -84 !764
	jal 	zero, beq_cont.26327 !764
beq_else.26326: !764
	addi	a1, zero, 5 !766
	sw  	a0, 84(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 88 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -88 !766
	lw  	a1, 84(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26327: !764
	lw  	a1, 80(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26325: !764
	lw  	a1, 76(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26323: !764
	lw  	a1, 72(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26321: !764
	lw  	a1, 68(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.26319: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1 !781
	bne 	a1, t0, beq_else.26328 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26328: !781
	li  	a1, 1048908 !783
	lw  	a2, 64(sp) !783
	slli	t0, a2, 2 !783
	add 	t0, t0, a1 !783
	sw  	a0, 0(t0) !783
	addi	a2, a2, 1 !784
	sw  	a2, 88(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26330 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 92 !764
	jal 	ra, create_array !764
	addi	sp, sp, -92 !764
	jal 	zero, beq_cont.26331 !764
beq_else.26330: !764
	sw  	a0, 92(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26332 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 96 !764
	jal 	ra, create_array !764
	addi	sp, sp, -96 !764
	jal 	zero, beq_cont.26333 !764
beq_else.26332: !764
	sw  	a0, 96(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26334 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 100 !764
	jal 	ra, create_array !764
	addi	sp, sp, -100 !764
	jal 	zero, beq_cont.26335 !764
beq_else.26334: !764
	sw  	a0, 100(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26336 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 104 !764
	jal 	ra, create_array !764
	addi	sp, sp, -104 !764
	jal 	zero, beq_cont.26337 !764
beq_else.26336: !764
	addi	a1, zero, 4 !766
	sw  	a0, 104(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 108 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -108 !766
	lw  	a1, 104(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26337: !764
	lw  	a1, 100(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26335: !764
	lw  	a1, 96(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26333: !764
	lw  	a1, 92(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.26331: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1 !781
	bne 	a1, t0, beq_else.26338 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26338: !781
	li  	a1, 1048908 !783
	lw  	a2, 88(sp) !783
	slli	t0, a2, 2 !783
	add 	t0, t0, a1 !783
	sw  	a0, 0(t0) !783
	addi	a0, a2, 1 !784
	lw  	ra, 0(sp)
	jal 	zero, read_and_network.2562 !784
read_parameter.2564:
	sw  	ra, 0(sp)
	addi	sp, sp, 4 !790
	jal 	ra, read_screen_settings.2545 !790
	addi	sp, sp, -4 !790
	inw 	a0
	inw 	fa0
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	fsw 	fa0, 8(sp) !606
	addi	sp, sp, 16 !606
	jal 	ra, sin !606
	addi	sp, sp, -16 !606
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1048888 !607
	sw  	fa0, 4(a0) !607
	inw 	fa0
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	flw  	fa1, 8(sp) !609
	fsw 	fa0, 16(sp) !609
	fsgnj   fa0, fa1, fa1 !609
	addi	sp, sp, 24 !609
	jal 	ra, cos !609
	addi	sp, sp, -24 !609
	flw  	fa1, 16(sp) !610
	fsw 	fa0, 24(sp) !610
	fsgnj   fa0, fa1, fa1 !610
	addi	sp, sp, 32 !610
	jal 	ra, sin !610
	addi	sp, sp, -32 !610
	flw  	fa1, 24(sp) !611
	fmul	fa0, fa1, fa0 !611
	li  	a0, 1048888 !611
	sw  	fa0, 0(a0) !611
	flw  	fa0, 16(sp) !612
	addi	sp, sp, 32 !612
	jal 	ra, cos !612
	addi	sp, sp, -32 !612
	flw  	fa1, 24(sp) !613
	fmul	fa1, fa1, fa0 !613
	li  	a0, 1048888 !613
	sw  	fa1, 8(a0) !613
	inw 	fa0
	li  	a0, 1048900 !614
	sw  	fa0, 0(a0) !614
	addi	a0, zero, 0 !756
	sw  	a0, 32(sp) !748
	addi	sp, sp, 36 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -36 !748
	bne 	a0, zero, beq_else.26341 !748
	li  	a0, 1048576 !751
	lw  	a1, 32(sp) !751
	sw  	a1, 0(a0) !751
	jal 	zero, beq_cont.26342 !748
beq_else.26341: !748
	addi	a0, zero, 1 !749
	sw  	a0, 36(sp) !748
	addi	sp, sp, 40 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -40 !748
	bne 	a0, zero, beq_else.26343 !748
	li  	a0, 1048576 !751
	lw  	a1, 36(sp) !751
	sw  	a1, 0(a0) !751
	jal 	zero, beq_cont.26344 !748
beq_else.26343: !748
	addi	a0, zero, 2 !749
	sw  	a0, 40(sp) !748
	addi	sp, sp, 44 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -44 !748
	bne 	a0, zero, beq_else.26345 !748
	li  	a0, 1048576 !751
	lw  	a1, 40(sp) !751
	sw  	a1, 0(a0) !751
	jal 	zero, beq_cont.26346 !748
beq_else.26345: !748
	addi	a0, zero, 3 !749
	sw  	a0, 44(sp) !748
	addi	sp, sp, 48 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -48 !748
	bne 	a0, zero, beq_else.26347 !748
	li  	a0, 1048576 !751
	lw  	a1, 44(sp) !751
	sw  	a1, 0(a0) !751
	jal 	zero, beq_cont.26348 !748
beq_else.26347: !748
	addi	a0, zero, 4 !749
	sw  	a0, 48(sp) !748
	addi	sp, sp, 52 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -52 !748
	bne 	a0, zero, beq_else.26349 !748
	li  	a0, 1048576 !751
	lw  	a1, 48(sp) !751
	sw  	a1, 0(a0) !751
	jal 	zero, beq_cont.26350 !748
beq_else.26349: !748
	addi	a0, zero, 5 !749
	sw  	a0, 52(sp) !748
	addi	sp, sp, 56 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -56 !748
	bne 	a0, zero, beq_else.26351 !748
	li  	a0, 1048576 !751
	lw  	a1, 52(sp) !751
	sw  	a1, 0(a0) !751
	jal 	zero, beq_cont.26352 !748
beq_else.26351: !748
	addi	a0, zero, 6 !749
	addi	sp, sp, 56 !749
	jal 	ra, read_object.2554 !749
	addi	sp, sp, -56 !749
beq_cont.26352: !748
beq_cont.26350: !748
beq_cont.26348: !748
beq_cont.26346: !748
beq_cont.26344: !748
beq_cont.26342: !748
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26353 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 56 !764
	jal 	ra, create_array !764
	addi	sp, sp, -56 !764
	jal 	zero, beq_cont.26354 !764
beq_else.26353: !764
	sw  	a0, 56(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26355 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 60 !764
	jal 	ra, create_array !764
	addi	sp, sp, -60 !764
	jal 	zero, beq_cont.26356 !764
beq_else.26355: !764
	sw  	a0, 60(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26357 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 64 !764
	jal 	ra, create_array !764
	addi	sp, sp, -64 !764
	jal 	zero, beq_cont.26358 !764
beq_else.26357: !764
	sw  	a0, 64(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26359 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 68 !764
	jal 	ra, create_array !764
	addi	sp, sp, -68 !764
	jal 	zero, beq_cont.26360 !764
beq_else.26359: !764
	sw  	a0, 68(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26361 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 72 !764
	jal 	ra, create_array !764
	addi	sp, sp, -72 !764
	jal 	zero, beq_cont.26362 !764
beq_else.26361: !764
	sw  	a0, 72(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26363 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 76 !764
	jal 	ra, create_array !764
	addi	sp, sp, -76 !764
	jal 	zero, beq_cont.26364 !764
beq_else.26363: !764
	addi	a1, zero, 6 !766
	sw  	a0, 76(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 80 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -80 !766
	lw  	a1, 76(sp) !767
	sw  	a1, 20(a0) !767
beq_cont.26364: !764
	lw  	a1, 72(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26362: !764
	lw  	a1, 68(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26360: !764
	lw  	a1, 64(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26358: !764
	lw  	a1, 60(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26356: !764
	lw  	a1, 56(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.26354: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1 !781
	bne 	a1, t0, beq_else.26365 !781
	jal 	zero, beq_cont.26366 !781
beq_else.26365: !781
	li  	a1, 1048908 !783
	sw  	a0, 0(a1) !783
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26367 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 80 !764
	jal 	ra, create_array !764
	addi	sp, sp, -80 !764
	jal 	zero, beq_cont.26368 !764
beq_else.26367: !764
	sw  	a0, 80(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26369 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 84 !764
	jal 	ra, create_array !764
	addi	sp, sp, -84 !764
	jal 	zero, beq_cont.26370 !764
beq_else.26369: !764
	sw  	a0, 84(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26371 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 88 !764
	jal 	ra, create_array !764
	addi	sp, sp, -88 !764
	jal 	zero, beq_cont.26372 !764
beq_else.26371: !764
	sw  	a0, 88(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26373 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 92 !764
	jal 	ra, create_array !764
	addi	sp, sp, -92 !764
	jal 	zero, beq_cont.26374 !764
beq_else.26373: !764
	sw  	a0, 92(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26375 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 96 !764
	jal 	ra, create_array !764
	addi	sp, sp, -96 !764
	jal 	zero, beq_cont.26376 !764
beq_else.26375: !764
	addi	a1, zero, 5 !766
	sw  	a0, 96(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 100 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -100 !766
	lw  	a1, 96(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26376: !764
	lw  	a1, 92(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26374: !764
	lw  	a1, 88(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26372: !764
	lw  	a1, 84(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26370: !764
	lw  	a1, 80(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.26368: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1 !781
	bne 	a1, t0, beq_else.26377 !781
	jal 	zero, beq_cont.26378 !781
beq_else.26377: !781
	li  	a1, 1048908 !783
	sw  	a0, 4(a1) !783
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26379 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 100 !764
	jal 	ra, create_array !764
	addi	sp, sp, -100 !764
	jal 	zero, beq_cont.26380 !764
beq_else.26379: !764
	sw  	a0, 100(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26381 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 104 !764
	jal 	ra, create_array !764
	addi	sp, sp, -104 !764
	jal 	zero, beq_cont.26382 !764
beq_else.26381: !764
	sw  	a0, 104(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26383 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 108 !764
	jal 	ra, create_array !764
	addi	sp, sp, -108 !764
	jal 	zero, beq_cont.26384 !764
beq_else.26383: !764
	sw  	a0, 108(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26385 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 112 !764
	jal 	ra, create_array !764
	addi	sp, sp, -112 !764
	jal 	zero, beq_cont.26386 !764
beq_else.26385: !764
	addi	a1, zero, 4 !766
	sw  	a0, 112(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 116 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -116 !766
	lw  	a1, 112(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26386: !764
	lw  	a1, 108(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26384: !764
	lw  	a1, 104(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26382: !764
	lw  	a1, 100(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.26380: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1 !781
	bne 	a1, t0, beq_else.26387 !781
	jal 	zero, beq_cont.26388 !781
beq_else.26387: !781
	li  	a1, 1048908 !783
	sw  	a0, 8(a1) !783
	addi	a0, zero, 3 !784
	addi	sp, sp, 116 !784
	jal 	ra, read_and_network.2562 !784
	addi	sp, sp, -116 !784
beq_cont.26388: !781
beq_cont.26378: !781
beq_cont.26366: !781
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26389 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 116 !764
	jal 	ra, create_array !764
	addi	sp, sp, -116 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.26390 !764
beq_else.26389: !764
	sw  	a0, 116(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26391 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 120 !764
	jal 	ra, create_array !764
	addi	sp, sp, -120 !764
	jal 	zero, beq_cont.26392 !764
beq_else.26391: !764
	sw  	a0, 120(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26393 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 124 !764
	jal 	ra, create_array !764
	addi	sp, sp, -124 !764
	jal 	zero, beq_cont.26394 !764
beq_else.26393: !764
	sw  	a0, 124(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26395 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 128 !764
	jal 	ra, create_array !764
	addi	sp, sp, -128 !764
	jal 	zero, beq_cont.26396 !764
beq_else.26395: !764
	sw  	a0, 128(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26397 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 132 !764
	jal 	ra, create_array !764
	addi	sp, sp, -132 !764
	jal 	zero, beq_cont.26398 !764
beq_else.26397: !764
	sw  	a0, 132(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26399 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 136 !764
	jal 	ra, create_array !764
	addi	sp, sp, -136 !764
	jal 	zero, beq_cont.26400 !764
beq_else.26399: !764
	addi	a1, zero, 6 !766
	sw  	a0, 136(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 140 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -140 !766
	lw  	a1, 136(sp) !767
	sw  	a1, 20(a0) !767
beq_cont.26400: !764
	lw  	a1, 132(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26398: !764
	lw  	a1, 128(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26396: !764
	lw  	a1, 124(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26394: !764
	lw  	a1, 120(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26392: !764
	lw  	a1, 116(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.26390: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1 !772
	bne 	a0, t0, beq_else.26401 !772
	addi	a0, zero, 1 !773
	addi	sp, sp, 140 !773
	jal 	ra, create_array !773
	addi	sp, sp, -140 !773
	jal 	zero, beq_cont.26402 !772
beq_else.26401: !772
	sw  	a1, 140(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26403 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 144 !764
	jal 	ra, create_array !764
	addi	sp, sp, -144 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.26404 !764
beq_else.26403: !764
	sw  	a0, 144(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26405 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 148 !764
	jal 	ra, create_array !764
	addi	sp, sp, -148 !764
	jal 	zero, beq_cont.26406 !764
beq_else.26405: !764
	sw  	a0, 148(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26407 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 152 !764
	jal 	ra, create_array !764
	addi	sp, sp, -152 !764
	jal 	zero, beq_cont.26408 !764
beq_else.26407: !764
	sw  	a0, 152(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26409 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 156 !764
	jal 	ra, create_array !764
	addi	sp, sp, -156 !764
	jal 	zero, beq_cont.26410 !764
beq_else.26409: !764
	sw  	a0, 156(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26411 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 160 !764
	jal 	ra, create_array !764
	addi	sp, sp, -160 !764
	jal 	zero, beq_cont.26412 !764
beq_else.26411: !764
	addi	a1, zero, 5 !766
	sw  	a0, 160(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 164 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -164 !766
	lw  	a1, 160(sp) !767
	sw  	a1, 16(a0) !767
beq_cont.26412: !764
	lw  	a1, 156(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26410: !764
	lw  	a1, 152(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26408: !764
	lw  	a1, 148(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26406: !764
	lw  	a1, 144(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.26404: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1 !772
	bne 	a0, t0, beq_else.26413 !772
	addi	a0, zero, 2 !773
	addi	sp, sp, 164 !773
	jal 	ra, create_array !773
	addi	sp, sp, -164 !773
	jal 	zero, beq_cont.26414 !772
beq_else.26413: !772
	sw  	a1, 164(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26415 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 168 !764
	jal 	ra, create_array !764
	addi	sp, sp, -168 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.26416 !764
beq_else.26415: !764
	sw  	a0, 168(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26417 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 172 !764
	jal 	ra, create_array !764
	addi	sp, sp, -172 !764
	jal 	zero, beq_cont.26418 !764
beq_else.26417: !764
	sw  	a0, 172(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26419 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 176 !764
	jal 	ra, create_array !764
	addi	sp, sp, -176 !764
	jal 	zero, beq_cont.26420 !764
beq_else.26419: !764
	sw  	a0, 176(sp) !763
	inw 	a0
	addi	t0, zero, -1 !764
	bne 	a0, t0, beq_else.26421 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 180 !764
	jal 	ra, create_array !764
	addi	sp, sp, -180 !764
	jal 	zero, beq_cont.26422 !764
beq_else.26421: !764
	addi	a1, zero, 4 !766
	sw  	a0, 180(sp) !766
	addi	a0, a1, 0 !766
	addi	sp, sp, 184 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -184 !766
	lw  	a1, 180(sp) !767
	sw  	a1, 12(a0) !767
beq_cont.26422: !764
	lw  	a1, 176(sp) !767
	sw  	a1, 8(a0) !767
beq_cont.26420: !764
	lw  	a1, 172(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.26418: !764
	lw  	a1, 168(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.26416: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1 !772
	bne 	a0, t0, beq_else.26423 !772
	addi	a0, zero, 3 !773
	addi	sp, sp, 184 !773
	jal 	ra, create_array !773
	addi	sp, sp, -184 !773
	jal 	zero, beq_cont.26424 !772
beq_else.26423: !772
	addi	a0, zero, 3 !775
	sw  	a1, 184(sp) !775
	addi	sp, sp, 188 !775
	jal 	ra, read_or_network.2560 !775
	addi	sp, sp, -188 !775
	lw  	a1, 184(sp) !776
	sw  	a1, 8(a0) !776
beq_cont.26424: !772
	lw  	a1, 164(sp) !776
	sw  	a1, 4(a0) !776
beq_cont.26414: !772
	lw  	a1, 140(sp) !776
	sw  	a1, 0(a0) !776
beq_cont.26402: !772
	li  	a1, 1049112 !794
	sw  	a0, 0(a1) !794
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_rect.2575:
	sw  	ra, 0(sp)
	flw  	fa3, 0(a1) !805
	li  	fa4, 0.000000 !124
	feq	t0, fa3, fa4 !124
	beq 	zero, t0, bne_else.26426 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26427 !124
bne_else.26426: !124
	addi	a2, zero, 0 !124
bne_cont.26427: !124
	fsw 	fa0, 8(sp) !805
	fsw 	fa2, 16(sp) !805
	fsw 	fa1, 24(sp) !805
	sw  	a0, 32(sp) !805
	sw  	a1, 36(sp) !805
	bne 	a2, zero, beq_else.26429 !805
	lw  	a2, 16(a0) !328
	lw  	a3, 24(a0) !280
	flw  	fa3, 0(a1) !807
	li  	fa4, 0.000000 !123
	fle 	t0, fa4, fa3 !123
	beq 	zero, t0, bne_else.26431 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.26432 !123
bne_else.26431: !123
	addi	a4, zero, 1 !123
bne_cont.26432: !123
	bne 	a3, zero, beq_else.26433 !141
	jal 	zero, beq_cont.26434 !141
beq_else.26433: !141
	bne 	a4, zero, beq_else.26435 !141
	addi	a4, zero, 1 !141
	jal 	zero, beq_cont.26436 !141
beq_else.26435: !141
	addi	a4, zero, 0 !141
beq_cont.26436: !141
beq_cont.26434: !141
	flw  	fa3, 0(a2) !807
	sw  	a2, 40(sp) !154
	bne 	a4, zero, beq_else.26437 !154
	fsgnj   fa0, fa3, fa3 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26438 !154
beq_else.26437: !154
	fsgnj   fa0, fa3, fa3 !154
beq_cont.26438: !154
	flw  	fa1, 8(sp) !809
	fsub	fa0, fa0, fa1 !809
	lw  	a0, 36(sp) !809
	flw  	fa2, 0(a0) !809
	fdiv	fa0, fa0, fa2 !809
	flw  	fa2, 4(a0) !810
	fmul	fa2, fa0, fa2 !810
	flw  	fa3, 24(sp) !810
	fadd	fa2, fa2, fa3 !810
	fsw 	fa0, 48(sp) !810
	fsgnj   fa0, fa2, fa2 !810
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 40(sp) !810
	flw  	fa1, 4(a0) !810
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26440 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26441 !121
bne_else.26440: !121
	addi	a1, zero, 1 !121
bne_cont.26441: !121
	bne 	a1, zero, beq_else.26442 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.26443 !810
beq_else.26442: !810
	lw  	a1, 36(sp) !811
	flw  	fa0, 8(a1) !811
	flw  	fa1, 48(sp) !811
	fmul	fa0, fa1, fa0 !811
	flw  	fa2, 16(sp) !811
	fadd	fa0, fa0, fa2 !811
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 40(sp) !811
	flw  	fa1, 8(a0) !811
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26444 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26445 !121
bne_else.26444: !121
	addi	a0, zero, 1 !121
bne_cont.26445: !121
	bne 	a0, zero, beq_else.26446 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.26447 !811
beq_else.26446: !811
	li  	a0, 1049116 !812
	lw  	a1, 48(sp) !812
	sw  	a1, 0(a0) !812
	addi	a0, zero, 1 !812
beq_cont.26447: !811
beq_cont.26443: !810
	jal 	zero, beq_cont.26430 !805
beq_else.26429: !805
	addi	a0, zero, 0 !805
beq_cont.26430: !805
	bne 	a0, zero, beq_else.26448 !820
	lw  	a0, 36(sp) !805
	flw  	fa0, 4(a0) !805
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26449 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26450 !124
bne_else.26449: !124
	addi	a1, zero, 0 !124
bne_cont.26450: !124
	bne 	a1, zero, beq_else.26451 !805
	lw  	a1, 32(sp) !328
	lw  	a2, 16(a1) !328
	lw  	a3, 24(a1) !280
	flw  	fa0, 4(a0) !807
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26453 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.26454 !123
bne_else.26453: !123
	addi	a4, zero, 1 !123
bne_cont.26454: !123
	bne 	a3, zero, beq_else.26455 !141
	jal 	zero, beq_cont.26456 !141
beq_else.26455: !141
	bne 	a4, zero, beq_else.26457 !141
	addi	a4, zero, 1 !141
	jal 	zero, beq_cont.26458 !141
beq_else.26457: !141
	addi	a4, zero, 0 !141
beq_cont.26458: !141
beq_cont.26456: !141
	flw  	fa0, 4(a2) !807
	sw  	a2, 56(sp) !154
	bne 	a4, zero, beq_else.26459 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26460 !154
beq_else.26459: !154
beq_cont.26460: !154
	flw  	fa1, 24(sp) !809
	fsub	fa0, fa0, fa1 !809
	lw  	a0, 36(sp) !809
	flw  	fa2, 4(a0) !809
	fdiv	fa0, fa0, fa2 !809
	flw  	fa2, 8(a0) !810
	fmul	fa2, fa0, fa2 !810
	flw  	fa3, 16(sp) !810
	fadd	fa2, fa2, fa3 !810
	fsw 	fa0, 64(sp) !810
	fsgnj   fa0, fa2, fa2 !810
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 56(sp) !810
	flw  	fa1, 8(a0) !810
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26462 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26463 !121
bne_else.26462: !121
	addi	a1, zero, 1 !121
bne_cont.26463: !121
	bne 	a1, zero, beq_else.26464 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.26465 !810
beq_else.26464: !810
	lw  	a1, 36(sp) !811
	flw  	fa0, 0(a1) !811
	flw  	fa1, 64(sp) !811
	fmul	fa0, fa1, fa0 !811
	flw  	fa2, 8(sp) !811
	fadd	fa0, fa0, fa2 !811
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 56(sp) !811
	flw  	fa1, 0(a0) !811
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26466 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26467 !121
bne_else.26466: !121
	addi	a0, zero, 1 !121
bne_cont.26467: !121
	bne 	a0, zero, beq_else.26468 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.26469 !811
beq_else.26468: !811
	li  	a0, 1049116 !812
	lw  	a1, 64(sp) !812
	sw  	a1, 0(a0) !812
	addi	a0, zero, 1 !812
beq_cont.26469: !811
beq_cont.26465: !810
	jal 	zero, beq_cont.26452 !805
beq_else.26451: !805
	addi	a0, zero, 0 !805
beq_cont.26452: !805
	bne 	a0, zero, beq_else.26470 !821
	lw  	a0, 36(sp) !805
	flw  	fa0, 8(a0) !805
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26471 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26472 !124
bne_else.26471: !124
	addi	a1, zero, 0 !124
bne_cont.26472: !124
	bne 	a1, zero, beq_else.26473 !805
	lw  	a1, 32(sp) !328
	lw  	a2, 16(a1) !328
	lw  	a1, 24(a1) !280
	flw  	fa0, 8(a0) !807
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26475 !123
	addi	a3, zero, 0 !123
	jal 	zero, bne_cont.26476 !123
bne_else.26475: !123
	addi	a3, zero, 1 !123
bne_cont.26476: !123
	bne 	a1, zero, beq_else.26477 !141
	jal 	zero, beq_cont.26478 !141
beq_else.26477: !141
	bne 	a3, zero, beq_else.26479 !141
	addi	a3, zero, 1 !141
	jal 	zero, beq_cont.26480 !141
beq_else.26479: !141
	addi	a3, zero, 0 !141
beq_cont.26480: !141
beq_cont.26478: !141
	flw  	fa0, 8(a2) !807
	sw  	a2, 72(sp) !154
	bne 	a3, zero, beq_else.26481 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26482 !154
beq_else.26481: !154
beq_cont.26482: !154
	flw  	fa1, 16(sp) !809
	fsub	fa0, fa0, fa1 !809
	lw  	a0, 36(sp) !809
	flw  	fa1, 8(a0) !809
	fdiv	fa0, fa0, fa1 !809
	flw  	fa1, 0(a0) !810
	fmul	fa1, fa0, fa1 !810
	flw  	fa2, 8(sp) !810
	fadd	fa1, fa1, fa2 !810
	fsw 	fa0, 80(sp) !810
	fsgnj   fa0, fa1, fa1 !810
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 72(sp) !810
	flw  	fa1, 0(a0) !810
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26484 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26485 !121
bne_else.26484: !121
	addi	a1, zero, 1 !121
bne_cont.26485: !121
	bne 	a1, zero, beq_else.26486 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.26487 !810
beq_else.26486: !810
	lw  	a1, 36(sp) !811
	flw  	fa0, 4(a1) !811
	flw  	fa1, 80(sp) !811
	fmul	fa0, fa1, fa0 !811
	flw  	fa2, 24(sp) !811
	fadd	fa0, fa0, fa2 !811
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 72(sp) !811
	flw  	fa1, 4(a0) !811
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26488 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26489 !121
bne_else.26488: !121
	addi	a0, zero, 1 !121
bne_cont.26489: !121
	bne 	a0, zero, beq_else.26490 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.26491 !811
beq_else.26490: !811
	li  	a0, 1049116 !812
	lw  	a1, 80(sp) !812
	sw  	a1, 0(a0) !812
	addi	a0, zero, 1 !812
beq_cont.26491: !811
beq_cont.26487: !810
	jal 	zero, beq_cont.26474 !805
beq_else.26473: !805
	addi	a0, zero, 0 !805
beq_cont.26474: !805
	bne 	a0, zero, beq_else.26492 !822
	addi	a0, zero, 0 !823
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26492: !822
	addi	a0, zero, 3 !822
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26470: !821
	addi	a0, zero, 2 !821
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26448: !820
	addi	a0, zero, 1 !820
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second.2600:
	sw  	ra, 0(sp)
	flw  	fa3, 0(a1) !879
	flw  	fa4, 4(a1) !879
	flw  	fa5, 8(a1) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 16(a0) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a0) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 16(a0) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.26493 !846
	jal 	zero, beq_cont.26494 !846
beq_else.26493: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 36(a0) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 36(a0) !428
	flw  	fa7, 4(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa6, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 36(a0) !438
	flw  	fa4, 8(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa6, fa6, fa3 !852
beq_cont.26494: !846
	li  	fa3, 0.000000 !124
	feq	t0, fa6, fa3 !124
	beq 	zero, t0, bne_else.26495 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26496 !124
bne_else.26495: !124
	addi	a2, zero, 0 !124
bne_cont.26496: !124
	bne 	a2, zero, beq_else.26497 !881
	flw  	fa3, 0(a1) !886
	flw  	fa4, 4(a1) !886
	flw  	fa5, 8(a1) !886
	fmul	fa7, fa3, fa0 !858
	lw  	a1, 16(a0) !298
	flw  	fs1, 0(a1) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa4, fa1 !859
	lw  	a1, 16(a0) !308
	flw  	fs2, 4(a1) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa5, fa2 !860
	lw  	a1, 16(a0) !318
	flw  	fs2, 8(a1) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a1, 12(a0) !289
	bne 	a1, zero, beq_else.26498 !862
	jal 	zero, beq_cont.26499 !862
beq_else.26498: !862
	fmul	fs1, fa5, fa1 !866
	fmul	fs2, fa4, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a1, 36(a0) !418
	flw  	fs2, 0(a1) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa3, fa2 !867
	fmul	fa5, fa5, fa0 !867
	fadd	fs2, fs2, fa5 !867
	lw  	a1, 36(a0) !428
	flw  	fa5, 4(a1) !433
	fmul	fs2, fs2, fa5 !867
	fadd	fs1, fs1, fs2 !867
	fmul	fa3, fa3, fa1 !868
	fmul	fa4, fa4, fa0 !868
	fadd	fa3, fa3, fa4 !868
	lw  	a1, 36(a0) !438
	flw  	fa4, 8(a1) !443
	fmul	fa3, fa3, fa4 !868
	fadd	fs1, fs1, fa3 !868
	li  	fa3, 2.000000 !125
	fdiv	fs1, fs1, fa3 !125
	fadd	fa7, fa7, fs1 !865
beq_cont.26499: !862
	fmul	fa3, fa0, fa0 !126
	lw  	a1, 16(a0) !298
	flw  	fa4, 0(a1) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a1, 16(a0) !308
	flw  	fa5, 4(a1) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a1, 16(a0) !318
	flw  	fa5, 8(a1) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a1, 12(a0) !289
	bne 	a1, zero, beq_else.26500 !846
	jal 	zero, beq_cont.26501 !846
beq_else.26500: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a1, 36(a0) !418
	flw  	fa5, 0(a1) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a1, 36(a0) !428
	flw  	fa4, 4(a1) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa3, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a1, 36(a0) !438
	flw  	fa1, 8(a1) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa3, fa3, fa0 !852
beq_cont.26501: !846
	lw  	a1, 4(a0) !260
	addi	t0, zero, 3 !889
	bne 	a1, t0, beq_else.26502 !889
	li  	fa0, 1.000000 !889
	fsub	fa3, fa3, fa0 !889
	jal 	zero, beq_cont.26503 !889
beq_else.26502: !889
beq_cont.26503: !889
	fmul	fa0, fa7, fa7 !126
	fmul	fa3, fa6, fa3 !891
	fsub	fa0, fa0, fa3 !891
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26504 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26505 !122
bne_else.26504: !122
	addi	a1, zero, 1 !122
bne_cont.26505: !122
	bne 	a1, zero, beq_else.26506 !893
	addi	a0, zero, 0 !899
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26506: !893
	fsw 	fa6, 8(sp) !894
	fsw 	fa7, 16(sp) !894
	sw  	a0, 24(sp) !894
	fsqrt   fa0, fa0
	lw  	a0, 24(sp) !280
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26508 !895
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26509 !895
beq_else.26508: !895
beq_cont.26509: !895
	flw  	fa1, 16(sp) !896
	fsub	fa0, fa0, fa1 !896
	flw  	fa1, 8(sp) !896
	fdiv	fa0, fa0, fa1 !896
	li  	a0, 1049116 !896
	sw  	fa0, 0(a0) !896
	addi	a0, zero, 1 !896
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26497: !881
	addi	a0, zero, 0 !882
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver.2606:
	sw  	ra, 0(sp)
	li  	a3, 1048624 !905
	slli	t0, a0, 2 !905
	add 	t0, t0, a3 !905
	lw  	a0, 0(t0) !905
	flw  	fa0, 0(a2) !907
	lw  	a3, 20(a0) !338
	flw  	fa1, 0(a3) !343
	fsub	fa0, fa0, fa1 !907
	flw  	fa1, 4(a2) !908
	lw  	a3, 20(a0) !348
	flw  	fa2, 4(a3) !353
	fsub	fa1, fa1, fa2 !908
	flw  	fa2, 8(a2) !909
	lw  	a2, 20(a0) !358
	flw  	fa3, 8(a2) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a2, 4(a0) !260
	addi	t0, zero, 1 !912
	bne 	a2, t0, beq_else.26510 !912
	flw  	fa3, 0(a1) !805
	li  	fa4, 0.000000 !124
	feq	t0, fa3, fa4 !124
	beq 	zero, t0, bne_else.26511 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26512 !124
bne_else.26511: !124
	addi	a2, zero, 0 !124
bne_cont.26512: !124
	fsw 	fa0, 8(sp) !805
	fsw 	fa2, 16(sp) !805
	fsw 	fa1, 24(sp) !805
	sw  	a0, 32(sp) !805
	sw  	a1, 36(sp) !805
	bne 	a2, zero, beq_else.26514 !805
	lw  	a2, 16(a0) !328
	lw  	a3, 24(a0) !280
	flw  	fa3, 0(a1) !807
	li  	fa4, 0.000000 !123
	fle 	t0, fa4, fa3 !123
	beq 	zero, t0, bne_else.26516 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.26517 !123
bne_else.26516: !123
	addi	a4, zero, 1 !123
bne_cont.26517: !123
	bne 	a3, zero, beq_else.26518 !141
	jal 	zero, beq_cont.26519 !141
beq_else.26518: !141
	bne 	a4, zero, beq_else.26520 !141
	addi	a4, zero, 1 !141
	jal 	zero, beq_cont.26521 !141
beq_else.26520: !141
	addi	a4, zero, 0 !141
beq_cont.26521: !141
beq_cont.26519: !141
	flw  	fa3, 0(a2) !807
	sw  	a2, 40(sp) !154
	bne 	a4, zero, beq_else.26522 !154
	fsgnj   fa0, fa3, fa3 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26523 !154
beq_else.26522: !154
	fsgnj   fa0, fa3, fa3 !154
beq_cont.26523: !154
	flw  	fa1, 8(sp) !809
	fsub	fa0, fa0, fa1 !809
	lw  	a0, 36(sp) !809
	flw  	fa2, 0(a0) !809
	fdiv	fa0, fa0, fa2 !809
	flw  	fa2, 4(a0) !810
	fmul	fa2, fa0, fa2 !810
	flw  	fa3, 24(sp) !810
	fadd	fa2, fa2, fa3 !810
	fsw 	fa0, 48(sp) !810
	fsgnj   fa0, fa2, fa2 !810
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 40(sp) !810
	flw  	fa1, 4(a0) !810
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26525 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26526 !121
bne_else.26525: !121
	addi	a1, zero, 1 !121
bne_cont.26526: !121
	bne 	a1, zero, beq_else.26527 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.26528 !810
beq_else.26527: !810
	lw  	a1, 36(sp) !811
	flw  	fa0, 8(a1) !811
	flw  	fa1, 48(sp) !811
	fmul	fa0, fa1, fa0 !811
	flw  	fa2, 16(sp) !811
	fadd	fa0, fa0, fa2 !811
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 40(sp) !811
	flw  	fa1, 8(a0) !811
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26529 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26530 !121
bne_else.26529: !121
	addi	a0, zero, 1 !121
bne_cont.26530: !121
	bne 	a0, zero, beq_else.26531 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.26532 !811
beq_else.26531: !811
	li  	a0, 1049116 !812
	lw  	a1, 48(sp) !812
	sw  	a1, 0(a0) !812
	addi	a0, zero, 1 !812
beq_cont.26532: !811
beq_cont.26528: !810
	jal 	zero, beq_cont.26515 !805
beq_else.26514: !805
	addi	a0, zero, 0 !805
beq_cont.26515: !805
	bne 	a0, zero, beq_else.26533 !820
	lw  	a0, 36(sp) !805
	flw  	fa0, 4(a0) !805
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26534 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26535 !124
bne_else.26534: !124
	addi	a1, zero, 0 !124
bne_cont.26535: !124
	bne 	a1, zero, beq_else.26536 !805
	lw  	a1, 32(sp) !328
	lw  	a2, 16(a1) !328
	lw  	a3, 24(a1) !280
	flw  	fa0, 4(a0) !807
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26538 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.26539 !123
bne_else.26538: !123
	addi	a4, zero, 1 !123
bne_cont.26539: !123
	bne 	a3, zero, beq_else.26540 !141
	jal 	zero, beq_cont.26541 !141
beq_else.26540: !141
	bne 	a4, zero, beq_else.26542 !141
	addi	a4, zero, 1 !141
	jal 	zero, beq_cont.26543 !141
beq_else.26542: !141
	addi	a4, zero, 0 !141
beq_cont.26543: !141
beq_cont.26541: !141
	flw  	fa0, 4(a2) !807
	sw  	a2, 56(sp) !154
	bne 	a4, zero, beq_else.26544 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26545 !154
beq_else.26544: !154
beq_cont.26545: !154
	flw  	fa1, 24(sp) !809
	fsub	fa0, fa0, fa1 !809
	lw  	a0, 36(sp) !809
	flw  	fa2, 4(a0) !809
	fdiv	fa0, fa0, fa2 !809
	flw  	fa2, 8(a0) !810
	fmul	fa2, fa0, fa2 !810
	flw  	fa3, 16(sp) !810
	fadd	fa2, fa2, fa3 !810
	fsw 	fa0, 64(sp) !810
	fsgnj   fa0, fa2, fa2 !810
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 56(sp) !810
	flw  	fa1, 8(a0) !810
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26547 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26548 !121
bne_else.26547: !121
	addi	a1, zero, 1 !121
bne_cont.26548: !121
	bne 	a1, zero, beq_else.26549 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.26550 !810
beq_else.26549: !810
	lw  	a1, 36(sp) !811
	flw  	fa0, 0(a1) !811
	flw  	fa1, 64(sp) !811
	fmul	fa0, fa1, fa0 !811
	flw  	fa2, 8(sp) !811
	fadd	fa0, fa0, fa2 !811
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 56(sp) !811
	flw  	fa1, 0(a0) !811
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26551 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26552 !121
bne_else.26551: !121
	addi	a0, zero, 1 !121
bne_cont.26552: !121
	bne 	a0, zero, beq_else.26553 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.26554 !811
beq_else.26553: !811
	li  	a0, 1049116 !812
	lw  	a1, 64(sp) !812
	sw  	a1, 0(a0) !812
	addi	a0, zero, 1 !812
beq_cont.26554: !811
beq_cont.26550: !810
	jal 	zero, beq_cont.26537 !805
beq_else.26536: !805
	addi	a0, zero, 0 !805
beq_cont.26537: !805
	bne 	a0, zero, beq_else.26555 !821
	lw  	a0, 36(sp) !805
	flw  	fa0, 8(a0) !805
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26556 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26557 !124
bne_else.26556: !124
	addi	a1, zero, 0 !124
bne_cont.26557: !124
	bne 	a1, zero, beq_else.26558 !805
	lw  	a1, 32(sp) !328
	lw  	a2, 16(a1) !328
	lw  	a1, 24(a1) !280
	flw  	fa0, 8(a0) !807
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26560 !123
	addi	a3, zero, 0 !123
	jal 	zero, bne_cont.26561 !123
bne_else.26560: !123
	addi	a3, zero, 1 !123
bne_cont.26561: !123
	bne 	a1, zero, beq_else.26562 !141
	jal 	zero, beq_cont.26563 !141
beq_else.26562: !141
	bne 	a3, zero, beq_else.26564 !141
	addi	a3, zero, 1 !141
	jal 	zero, beq_cont.26565 !141
beq_else.26564: !141
	addi	a3, zero, 0 !141
beq_cont.26565: !141
beq_cont.26563: !141
	flw  	fa0, 8(a2) !807
	sw  	a2, 72(sp) !154
	bne 	a3, zero, beq_else.26566 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26567 !154
beq_else.26566: !154
beq_cont.26567: !154
	flw  	fa1, 16(sp) !809
	fsub	fa0, fa0, fa1 !809
	lw  	a0, 36(sp) !809
	flw  	fa1, 8(a0) !809
	fdiv	fa0, fa0, fa1 !809
	flw  	fa1, 0(a0) !810
	fmul	fa1, fa0, fa1 !810
	flw  	fa2, 8(sp) !810
	fadd	fa1, fa1, fa2 !810
	fsw 	fa0, 80(sp) !810
	fsgnj   fa0, fa1, fa1 !810
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 72(sp) !810
	flw  	fa1, 0(a0) !810
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26569 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26570 !121
bne_else.26569: !121
	addi	a1, zero, 1 !121
bne_cont.26570: !121
	bne 	a1, zero, beq_else.26571 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.26572 !810
beq_else.26571: !810
	lw  	a1, 36(sp) !811
	flw  	fa0, 4(a1) !811
	flw  	fa1, 80(sp) !811
	fmul	fa0, fa1, fa0 !811
	flw  	fa2, 24(sp) !811
	fadd	fa0, fa0, fa2 !811
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 72(sp) !811
	flw  	fa1, 4(a0) !811
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26573 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26574 !121
bne_else.26573: !121
	addi	a0, zero, 1 !121
bne_cont.26574: !121
	bne 	a0, zero, beq_else.26575 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.26576 !811
beq_else.26575: !811
	li  	a0, 1049116 !812
	lw  	a1, 80(sp) !812
	sw  	a1, 0(a0) !812
	addi	a0, zero, 1 !812
beq_cont.26576: !811
beq_cont.26572: !810
	jal 	zero, beq_cont.26559 !805
beq_else.26558: !805
	addi	a0, zero, 0 !805
beq_cont.26559: !805
	bne 	a0, zero, beq_else.26577 !822
	addi	a0, zero, 0 !823
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26577: !822
	addi	a0, zero, 3 !822
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26555: !821
	addi	a0, zero, 2 !821
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26533: !820
	addi	a0, zero, 1 !820
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26510: !912
	addi	t0, zero, 2 !913
	bne 	a2, t0, beq_else.26578 !913
	lw  	a0, 16(a0) !328
	flw  	fa3, 0(a1) !208
	flw  	fa4, 0(a0) !208
	fmul	fa3, fa3, fa4 !208
	flw  	fa4, 4(a1) !208
	flw  	fa5, 4(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flw  	fa4, 8(a1) !208
	flw  	fa5, 8(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	li  	fa4, 0.000000 !122
	fle 	t0, fa3, fa4 !122
	beq 	zero, t0, bne_else.26579 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26580 !122
bne_else.26579: !122
	addi	a1, zero, 1 !122
bne_cont.26580: !122
	bne 	a1, zero, beq_else.26581 !833
	addi	a0, zero, 0 !836
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26581: !833
	flw  	fa4, 0(a0) !213
	fmul	fa4, fa4, fa0 !213
	flw  	fa0, 4(a0) !213
	fmul	fa0, fa0, fa1 !213
	fadd	fa4, fa4, fa0 !213
	flw  	fa0, 8(a0) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa0, fa4, fa0 !213
	fsw 	fa3, 88(sp) !834
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 88(sp) !834
	fdiv	fa0, fa0, fa1 !834
	li  	a0, 1049116 !834
	sw  	fa0, 0(a0) !834
	addi	a0, zero, 1 !835
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26578: !913
	flw  	fa3, 0(a1) !879
	flw  	fa4, 4(a1) !879
	flw  	fa5, 8(a1) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 16(a0) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a0) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 16(a0) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.26582 !846
	jal 	zero, beq_cont.26583 !846
beq_else.26582: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 36(a0) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 36(a0) !428
	flw  	fa7, 4(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa6, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 36(a0) !438
	flw  	fa4, 8(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa6, fa6, fa3 !852
beq_cont.26583: !846
	li  	fa3, 0.000000 !124
	feq	t0, fa6, fa3 !124
	beq 	zero, t0, bne_else.26584 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26585 !124
bne_else.26584: !124
	addi	a2, zero, 0 !124
bne_cont.26585: !124
	bne 	a2, zero, beq_else.26586 !881
	flw  	fa3, 0(a1) !886
	flw  	fa4, 4(a1) !886
	flw  	fa5, 8(a1) !886
	fmul	fa7, fa3, fa0 !858
	lw  	a1, 16(a0) !298
	flw  	fs1, 0(a1) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa4, fa1 !859
	lw  	a1, 16(a0) !308
	flw  	fs2, 4(a1) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa5, fa2 !860
	lw  	a1, 16(a0) !318
	flw  	fs2, 8(a1) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a1, 12(a0) !289
	bne 	a1, zero, beq_else.26587 !862
	jal 	zero, beq_cont.26588 !862
beq_else.26587: !862
	fmul	fs1, fa5, fa1 !866
	fmul	fs2, fa4, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a1, 36(a0) !418
	flw  	fs2, 0(a1) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa3, fa2 !867
	fmul	fa5, fa5, fa0 !867
	fadd	fs2, fs2, fa5 !867
	lw  	a1, 36(a0) !428
	flw  	fa5, 4(a1) !433
	fmul	fs2, fs2, fa5 !867
	fadd	fs1, fs1, fs2 !867
	fmul	fa3, fa3, fa1 !868
	fmul	fa4, fa4, fa0 !868
	fadd	fa3, fa3, fa4 !868
	lw  	a1, 36(a0) !438
	flw  	fa4, 8(a1) !443
	fmul	fa3, fa3, fa4 !868
	fadd	fs1, fs1, fa3 !868
	li  	fa3, 2.000000 !125
	fdiv	fs1, fs1, fa3 !125
	fadd	fa7, fa7, fs1 !865
beq_cont.26588: !862
	fmul	fa3, fa0, fa0 !126
	lw  	a1, 16(a0) !298
	flw  	fa4, 0(a1) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a1, 16(a0) !308
	flw  	fa5, 4(a1) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a1, 16(a0) !318
	flw  	fa5, 8(a1) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a1, 12(a0) !289
	bne 	a1, zero, beq_else.26589 !846
	jal 	zero, beq_cont.26590 !846
beq_else.26589: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a1, 36(a0) !418
	flw  	fa5, 0(a1) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a1, 36(a0) !428
	flw  	fa4, 4(a1) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa3, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a1, 36(a0) !438
	flw  	fa1, 8(a1) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa3, fa3, fa0 !852
beq_cont.26590: !846
	lw  	a1, 4(a0) !260
	addi	t0, zero, 3 !889
	bne 	a1, t0, beq_else.26591 !889
	li  	fa0, 1.000000 !889
	fsub	fa3, fa3, fa0 !889
	jal 	zero, beq_cont.26592 !889
beq_else.26591: !889
beq_cont.26592: !889
	fmul	fa0, fa7, fa7 !126
	fmul	fa3, fa6, fa3 !891
	fsub	fa0, fa0, fa3 !891
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26593 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26594 !122
bne_else.26593: !122
	addi	a1, zero, 1 !122
bne_cont.26594: !122
	bne 	a1, zero, beq_else.26595 !893
	addi	a0, zero, 0 !899
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26595: !893
	fsw 	fa6, 96(sp) !894
	fsw 	fa7, 104(sp) !894
	sw  	a0, 32(sp) !894
	fsqrt   fa0, fa0
	lw  	a0, 32(sp) !280
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26596 !895
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26597 !895
beq_else.26596: !895
beq_cont.26597: !895
	flw  	fa1, 104(sp) !896
	fsub	fa0, fa0, fa1 !896
	flw  	fa1, 96(sp) !896
	fdiv	fa0, fa0, fa1 !896
	li  	a0, 1049116 !896
	sw  	fa0, 0(a0) !896
	addi	a0, zero, 1 !896
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26586: !881
	addi	a0, zero, 0 !882
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_rect_fast.2610:
	sw  	ra, 0(sp)
	flw  	fa3, 0(a2) !922
	fsub	fa3, fa3, fa0 !922
	flw  	fa4, 4(a2) !922
	fmul	fa3, fa3, fa4 !922
	flw  	fa4, 4(a1) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsw 	fa0, 8(sp) !924
	fsw 	fa1, 16(sp) !924
	sw  	a2, 24(sp) !924
	fsw 	fa2, 32(sp) !924
	fsw 	fa3, 40(sp) !924
	sw  	a1, 48(sp) !924
	sw  	a0, 52(sp) !924
	fsgnj   fa0, fa4, fa4 !924
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26600 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26601 !121
bne_else.26600: !121
	addi	a1, zero, 1 !121
bne_cont.26601: !121
	bne 	a1, zero, beq_else.26602 !924
	addi	a1, zero, 0 !928
	jal 	zero, beq_cont.26603 !924
beq_else.26602: !924
	lw  	a1, 48(sp) !925
	flw  	fa0, 8(a1) !925
	flw  	fa1, 40(sp) !925
	fmul	fa0, fa1, fa0 !925
	flw  	fa2, 32(sp) !925
	fadd	fa0, fa0, fa2 !925
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26604 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26605 !121
bne_else.26604: !121
	addi	a1, zero, 1 !121
bne_cont.26605: !121
	bne 	a1, zero, beq_else.26606 !925
	addi	a1, zero, 0 !927
	jal 	zero, beq_cont.26607 !925
beq_else.26606: !925
	lw  	a1, 24(sp) !926
	flw  	fa0, 4(a1) !926
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26608 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26609 !124
bne_else.26608: !124
	addi	a2, zero, 0 !124
bne_cont.26609: !124
	bne 	a2, zero, beq_else.26610 !926
	addi	a1, zero, 1 !926
	jal 	zero, beq_cont.26611 !926
beq_else.26610: !926
	addi	a1, zero, 0 !926
beq_cont.26611: !926
beq_cont.26607: !925
beq_cont.26603: !924
	bne 	a1, zero, beq_else.26612 !923
	lw  	a1, 24(sp) !931
	flw  	fa0, 8(a1) !931
	flw  	fa1, 16(sp) !931
	fsub	fa0, fa0, fa1 !931
	flw  	fa2, 12(a1) !931
	fmul	fa0, fa0, fa2 !931
	lw  	a2, 48(sp) !933
	flw  	fa2, 0(a2) !933
	fmul	fa2, fa0, fa2 !933
	flw  	fa3, 8(sp) !933
	fadd	fa2, fa2, fa3 !933
	fsw 	fa0, 56(sp) !933
	fsgnj   fa0, fa2, fa2 !933
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26613 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26614 !121
bne_else.26613: !121
	addi	a1, zero, 1 !121
bne_cont.26614: !121
	bne 	a1, zero, beq_else.26615 !933
	addi	a1, zero, 0 !937
	jal 	zero, beq_cont.26616 !933
beq_else.26615: !933
	lw  	a1, 48(sp) !934
	flw  	fa0, 8(a1) !934
	flw  	fa1, 56(sp) !934
	fmul	fa0, fa1, fa0 !934
	flw  	fa2, 32(sp) !934
	fadd	fa0, fa0, fa2 !934
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26617 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26618 !121
bne_else.26617: !121
	addi	a1, zero, 1 !121
bne_cont.26618: !121
	bne 	a1, zero, beq_else.26619 !934
	addi	a1, zero, 0 !936
	jal 	zero, beq_cont.26620 !934
beq_else.26619: !934
	lw  	a1, 24(sp) !935
	flw  	fa0, 12(a1) !935
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26621 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26622 !124
bne_else.26621: !124
	addi	a2, zero, 0 !124
bne_cont.26622: !124
	bne 	a2, zero, beq_else.26623 !935
	addi	a1, zero, 1 !935
	jal 	zero, beq_cont.26624 !935
beq_else.26623: !935
	addi	a1, zero, 0 !935
beq_cont.26624: !935
beq_cont.26620: !934
beq_cont.26616: !933
	bne 	a1, zero, beq_else.26625 !932
	lw  	a1, 24(sp) !940
	flw  	fa0, 16(a1) !940
	flw  	fa1, 32(sp) !940
	fsub	fa0, fa0, fa1 !940
	flw  	fa1, 20(a1) !940
	fmul	fa0, fa0, fa1 !940
	lw  	a2, 48(sp) !942
	flw  	fa1, 0(a2) !942
	fmul	fa1, fa0, fa1 !942
	flw  	fa2, 8(sp) !942
	fadd	fa1, fa1, fa2 !942
	fsw 	fa0, 64(sp) !942
	fsgnj   fa0, fa1, fa1 !942
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26626 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26627 !121
bne_else.26626: !121
	addi	a1, zero, 1 !121
bne_cont.26627: !121
	bne 	a1, zero, beq_else.26628 !942
	addi	a0, zero, 0 !946
	jal 	zero, beq_cont.26629 !942
beq_else.26628: !942
	lw  	a1, 48(sp) !943
	flw  	fa0, 4(a1) !943
	flw  	fa1, 64(sp) !943
	fmul	fa0, fa1, fa0 !943
	flw  	fa2, 16(sp) !943
	fadd	fa0, fa0, fa2 !943
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !308
	lw  	a0, 16(a0) !308
	flw  	fa1, 4(a0) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26630 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26631 !121
bne_else.26630: !121
	addi	a0, zero, 1 !121
bne_cont.26631: !121
	bne 	a0, zero, beq_else.26632 !943
	addi	a0, zero, 0 !945
	jal 	zero, beq_cont.26633 !943
beq_else.26632: !943
	lw  	a0, 24(sp) !944
	flw  	fa0, 20(a0) !944
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26634 !124
	addi	a0, zero, 1 !124
	jal 	zero, bne_cont.26635 !124
bne_else.26634: !124
	addi	a0, zero, 0 !124
bne_cont.26635: !124
	bne 	a0, zero, beq_else.26636 !944
	addi	a0, zero, 1 !944
	jal 	zero, beq_cont.26637 !944
beq_else.26636: !944
	addi	a0, zero, 0 !944
beq_cont.26637: !944
beq_cont.26633: !943
beq_cont.26629: !942
	bne 	a0, zero, beq_else.26638 !941
	addi	a0, zero, 0 !950
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26638: !941
	li  	a0, 1049116 !948
	lw  	a1, 64(sp) !948
	sw  	a1, 0(a0) !948
	addi	a0, zero, 3 !948
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26625: !932
	li  	a0, 1049116 !939
	lw  	a1, 56(sp) !939
	sw  	a1, 0(a0) !939
	addi	a0, zero, 2 !939
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26612: !923
	li  	a0, 1049116 !930
	lw  	a1, 40(sp) !930
	sw  	a1, 0(a0) !930
	addi	a0, zero, 1 !930
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second_fast.2623:
	sw  	ra, 0(sp)
	flw  	fa3, 0(a1) !965
	li  	fa4, 0.000000 !124
	feq	t0, fa3, fa4 !124
	beq 	zero, t0, bne_else.26639 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26640 !124
bne_else.26639: !124
	addi	a2, zero, 0 !124
bne_cont.26640: !124
	bne 	a2, zero, beq_else.26641 !966
	flw  	fa4, 4(a1) !969
	fmul	fa4, fa4, fa0 !969
	flw  	fa5, 8(a1) !969
	fmul	fa5, fa5, fa1 !969
	fadd	fa4, fa4, fa5 !969
	flw  	fa5, 12(a1) !969
	fmul	fa5, fa5, fa2 !969
	fadd	fa4, fa4, fa5 !969
	fmul	fa5, fa0, fa0 !126
	lw  	a2, 16(a0) !298
	flw  	fa6, 0(a2) !303
	fmul	fa5, fa5, fa6 !844
	fmul	fa6, fa1, fa1 !126
	lw  	a2, 16(a0) !308
	flw  	fa7, 4(a2) !313
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	fmul	fa6, fa2, fa2 !126
	lw  	a2, 16(a0) !318
	flw  	fa7, 8(a2) !323
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.26642 !846
	jal 	zero, beq_cont.26643 !846
beq_else.26642: !846
	fmul	fa6, fa1, fa2 !850
	lw  	a2, 36(a0) !418
	flw  	fa7, 0(a2) !423
	fmul	fa6, fa6, fa7 !850
	fadd	fa5, fa5, fa6 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a2, 36(a0) !428
	flw  	fa6, 4(a2) !433
	fmul	fa2, fa2, fa6 !851
	fadd	fa5, fa5, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a2, 36(a0) !438
	flw  	fa1, 8(a2) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa5, fa5, fa0 !852
beq_cont.26643: !846
	lw  	a2, 4(a0) !260
	addi	t0, zero, 3 !971
	bne 	a2, t0, beq_else.26644 !971
	li  	fa0, 1.000000 !971
	fsub	fa5, fa5, fa0 !971
	jal 	zero, beq_cont.26645 !971
beq_else.26644: !971
beq_cont.26645: !971
	fmul	fa0, fa4, fa4 !126
	fmul	fa3, fa3, fa5 !972
	fsub	fa0, fa0, fa3 !972
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26646 !122
	addi	a2, zero, 0 !122
	jal 	zero, bne_cont.26647 !122
bne_else.26646: !122
	addi	a2, zero, 1 !122
bne_cont.26647: !122
	bne 	a2, zero, beq_else.26648 !973
	addi	a0, zero, 0 !979
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26648: !973
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26649 !974
	sw  	a1, 4(sp) !977
	fsw 	fa4, 8(sp) !977
	fsqrt   fa0, fa0
	flw  	fa1, 8(sp) !977
	fsub	fa1, fa1, fa0 !977
	lw  	a0, 4(sp) !977
	flw  	fa0, 16(a0) !977
	fmul	fa1, fa1, fa0 !977
	li  	a0, 1049116 !977
	sw  	fa1, 0(a0) !977
	jal 	zero, beq_cont.26650 !974
beq_else.26649: !974
	sw  	a1, 4(sp) !975
	fsw 	fa4, 8(sp) !975
	fsqrt   fa0, fa0
	flw  	fa1, 8(sp) !975
	fadd	fa1, fa1, fa0 !975
	lw  	a0, 4(sp) !975
	flw  	fa0, 16(a0) !975
	fmul	fa1, fa1, fa0 !975
	li  	a0, 1049116 !975
	sw  	fa1, 0(a0) !975
beq_cont.26650: !974
	addi	a0, zero, 1 !978
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26641: !966
	addi	a0, zero, 0 !967
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_fast.2629:
	sw  	ra, 0(sp)
	li  	a3, 1048624 !984
	slli	t0, a0, 2 !984
	add 	t0, t0, a3 !984
	lw  	a3, 0(t0) !984
	flw  	fa0, 0(a2) !985
	lw  	a4, 20(a3) !338
	flw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !985
	flw  	fa1, 4(a2) !986
	lw  	a4, 20(a3) !348
	flw  	fa2, 4(a4) !353
	fsub	fa1, fa1, fa2 !986
	flw  	fa2, 8(a2) !987
	lw  	a2, 20(a3) !358
	flw  	fa3, 8(a2) !363
	fsub	fa2, fa2, fa3 !987
	lw  	a2, 4(a1) !535
	slli	t0, a0, 2 !989
	add 	t0, t0, a2 !989
	lw  	a2, 0(t0) !989
	lw  	a0, 4(a3) !260
	addi	t0, zero, 1 !991
	bne 	a0, t0, beq_else.26651 !991
	lw  	a1, 0(a1) !529
	addi	a0, a3, 0 !992
	lw  	ra, 0(sp)
	jal 	zero, solver_rect_fast.2610 !992
beq_else.26651: !991
	addi	t0, zero, 2 !993
	bne 	a0, t0, beq_else.26652 !993
	flw  	fa3, 0(a2) !955
	li  	fa4, 0.000000 !123
	fle 	t0, fa4, fa3 !123
	beq 	zero, t0, bne_else.26653 !123
	addi	a0, zero, 0 !123
	jal 	zero, bne_cont.26654 !123
bne_else.26653: !123
	addi	a0, zero, 1 !123
bne_cont.26654: !123
	bne 	a0, zero, beq_else.26655 !955
	addi	a0, zero, 0 !959
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26655: !955
	flw  	fa3, 4(a2) !957
	fmul	fa3, fa3, fa0 !957
	flw  	fa0, 8(a2) !957
	fmul	fa0, fa0, fa1 !957
	fadd	fa3, fa3, fa0 !957
	flw  	fa0, 12(a2) !957
	fmul	fa0, fa0, fa2 !957
	fadd	fa3, fa3, fa0 !957
	li  	a0, 1049116 !956
	sw  	fa3, 0(a0) !956
	addi	a0, zero, 1 !958
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26652: !993
	flw  	fa3, 0(a2) !965
	li  	fa4, 0.000000 !124
	feq	t0, fa3, fa4 !124
	beq 	zero, t0, bne_else.26656 !124
	addi	a0, zero, 1 !124
	jal 	zero, bne_cont.26657 !124
bne_else.26656: !124
	addi	a0, zero, 0 !124
bne_cont.26657: !124
	bne 	a0, zero, beq_else.26658 !966
	flw  	fa4, 4(a2) !969
	fmul	fa4, fa4, fa0 !969
	flw  	fa5, 8(a2) !969
	fmul	fa5, fa5, fa1 !969
	fadd	fa4, fa4, fa5 !969
	flw  	fa5, 12(a2) !969
	fmul	fa5, fa5, fa2 !969
	fadd	fa4, fa4, fa5 !969
	fmul	fa5, fa0, fa0 !126
	lw  	a0, 16(a3) !298
	flw  	fa6, 0(a0) !303
	fmul	fa5, fa5, fa6 !844
	fmul	fa6, fa1, fa1 !126
	lw  	a0, 16(a3) !308
	flw  	fa7, 4(a0) !313
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	fmul	fa6, fa2, fa2 !126
	lw  	a0, 16(a3) !318
	flw  	fa7, 8(a0) !323
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	lw  	a0, 12(a3) !289
	bne 	a0, zero, beq_else.26659 !846
	jal 	zero, beq_cont.26660 !846
beq_else.26659: !846
	fmul	fa6, fa1, fa2 !850
	lw  	a0, 36(a3) !418
	flw  	fa7, 0(a0) !423
	fmul	fa6, fa6, fa7 !850
	fadd	fa5, fa5, fa6 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a0, 36(a3) !428
	flw  	fa6, 4(a0) !433
	fmul	fa2, fa2, fa6 !851
	fadd	fa5, fa5, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a0, 36(a3) !438
	flw  	fa1, 8(a0) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa5, fa5, fa0 !852
beq_cont.26660: !846
	lw  	a0, 4(a3) !260
	addi	t0, zero, 3 !971
	bne 	a0, t0, beq_else.26661 !971
	li  	fa0, 1.000000 !971
	fsub	fa5, fa5, fa0 !971
	jal 	zero, beq_cont.26662 !971
beq_else.26661: !971
beq_cont.26662: !971
	fmul	fa0, fa4, fa4 !126
	fmul	fa3, fa3, fa5 !972
	fsub	fa0, fa0, fa3 !972
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26663 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.26664 !122
bne_else.26663: !122
	addi	a0, zero, 1 !122
bne_cont.26664: !122
	bne 	a0, zero, beq_else.26665 !973
	addi	a0, zero, 0 !979
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26665: !973
	lw  	a0, 24(a3) !280
	bne 	a0, zero, beq_else.26666 !974
	sw  	a2, 4(sp) !977
	fsw 	fa4, 8(sp) !977
	fsqrt   fa0, fa0
	flw  	fa1, 8(sp) !977
	fsub	fa1, fa1, fa0 !977
	lw  	a0, 4(sp) !977
	flw  	fa0, 16(a0) !977
	fmul	fa1, fa1, fa0 !977
	li  	a0, 1049116 !977
	sw  	fa1, 0(a0) !977
	jal 	zero, beq_cont.26667 !974
beq_else.26666: !974
	sw  	a2, 4(sp) !975
	fsw 	fa4, 8(sp) !975
	fsqrt   fa0, fa0
	flw  	fa1, 8(sp) !975
	fadd	fa1, fa1, fa0 !975
	lw  	a0, 4(sp) !975
	flw  	fa0, 16(a0) !975
	fmul	fa1, fa1, fa0 !975
	li  	a0, 1049116 !975
	sw  	fa1, 0(a0) !975
beq_cont.26667: !974
	addi	a0, zero, 1 !978
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26658: !966
	addi	a0, zero, 0 !967
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_fast2.2647:
	sw  	ra, 0(sp)
	li  	a2, 1048624 !1031
	slli	t0, a0, 2 !1031
	add 	t0, t0, a2 !1031
	lw  	a2, 0(t0) !1031
	lw  	a3, 40(a2) !449
	flw  	fa0, 0(a3) !1033
	flw  	fa1, 4(a3) !1034
	flw  	fa2, 8(a3) !1035
	lw  	a4, 4(a1) !535
	slli	t0, a0, 2 !1037
	add 	t0, t0, a4 !1037
	lw  	a0, 0(t0) !1037
	lw  	a4, 4(a2) !260
	addi	t0, zero, 1 !1039
	bne 	a4, t0, beq_else.26668 !1039
	lw  	a1, 0(a1) !529
	addi	t0, a2, 0 !1040
	addi	a2, a0, 0 !1040
	addi	a0, t0, 0 !1040
	lw  	ra, 0(sp)
	jal 	zero, solver_rect_fast.2610 !1040
beq_else.26668: !1039
	addi	t0, zero, 2 !1041
	bne 	a4, t0, beq_else.26669 !1041
	flw  	fa0, 0(a0) !1004
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26670 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.26671 !123
bne_else.26670: !123
	addi	a1, zero, 1 !123
bne_cont.26671: !123
	bne 	a1, zero, beq_else.26672 !1004
	addi	a0, zero, 0 !1007
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26672: !1004
	flw  	fa0, 0(a0) !1005
	flw  	fa1, 12(a3) !1005
	fmul	fa0, fa0, fa1 !1005
	li  	a0, 1049116 !1005
	sw  	fa0, 0(a0) !1005
	addi	a0, zero, 1 !1006
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26669: !1041
	flw  	fa3, 0(a0) !1013
	li  	fa4, 0.000000 !124
	feq	t0, fa3, fa4 !124
	beq 	zero, t0, bne_else.26673 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26674 !124
bne_else.26673: !124
	addi	a1, zero, 0 !124
bne_cont.26674: !124
	bne 	a1, zero, beq_else.26675 !1014
	flw  	fa4, 4(a0) !1017
	fmul	fa4, fa4, fa0 !1017
	flw  	fa0, 8(a0) !1017
	fmul	fa0, fa0, fa1 !1017
	fadd	fa4, fa4, fa0 !1017
	flw  	fa0, 12(a0) !1017
	fmul	fa0, fa0, fa2 !1017
	fadd	fa4, fa4, fa0 !1017
	flw  	fa0, 12(a3) !1018
	fmul	fa1, fa4, fa4 !126
	fmul	fa3, fa3, fa0 !1019
	fsub	fa0, fa1, fa3 !1019
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26676 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26677 !122
bne_else.26676: !122
	addi	a1, zero, 1 !122
bne_cont.26677: !122
	bne 	a1, zero, beq_else.26678 !1020
	addi	a0, zero, 0 !1026
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26678: !1020
	lw  	a1, 24(a2) !280
	bne 	a1, zero, beq_else.26679 !1021
	sw  	a0, 4(sp) !1024
	fsw 	fa4, 8(sp) !1024
	fsqrt   fa0, fa0
	flw  	fa1, 8(sp) !1024
	fsub	fa1, fa1, fa0 !1024
	lw  	a0, 4(sp) !1024
	flw  	fa0, 16(a0) !1024
	fmul	fa1, fa1, fa0 !1024
	li  	a0, 1049116 !1024
	sw  	fa1, 0(a0) !1024
	jal 	zero, beq_cont.26680 !1021
beq_else.26679: !1021
	sw  	a0, 4(sp) !1022
	fsw 	fa4, 8(sp) !1022
	fsqrt   fa0, fa0
	flw  	fa1, 8(sp) !1022
	fadd	fa1, fa1, fa0 !1022
	lw  	a0, 4(sp) !1022
	flw  	fa0, 16(a0) !1022
	fmul	fa1, fa1, fa0 !1022
	li  	a0, 1049116 !1022
	sw  	fa1, 0(a0) !1022
beq_cont.26680: !1021
	addi	a0, zero, 1 !1025
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26675: !1014
	addi	a0, zero, 0 !1015
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_rect_table.2650:
	sw  	ra, 0(sp)
	addi	a2, zero, 6 !1051
	li  	fa0, 0.000000 !1051
	sw  	a1, 4(sp) !1051
	sw  	a0, 8(sp) !1051
	addi	a0, a2, 0 !1051
	addi	sp, sp, 12 !1051
	jal 	ra, create_float_array !1051
	addi	sp, sp, -12 !1051
	lw  	a1, 8(sp) !1053
	flw  	fa0, 0(a1) !1053
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26681 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26682 !124
bne_else.26681: !124
	addi	a2, zero, 0 !124
bne_cont.26682: !124
	bne 	a2, zero, beq_else.26683 !1053
	lw  	a2, 4(sp) !280
	lw  	a3, 24(a2) !280
	flw  	fa0, 0(a1) !1057
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26685 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.26686 !123
bne_else.26685: !123
	addi	a4, zero, 1 !123
bne_cont.26686: !123
	bne 	a3, zero, beq_else.26687 !141
	jal 	zero, beq_cont.26688 !141
beq_else.26687: !141
	bne 	a4, zero, beq_else.26689 !141
	addi	a4, zero, 1 !141
	jal 	zero, beq_cont.26690 !141
beq_else.26689: !141
	addi	a4, zero, 0 !141
beq_cont.26690: !141
beq_cont.26688: !141
	lw  	a3, 16(a2) !298
	flw  	fa0, 0(a3) !303
	sw  	a0, 12(sp) !154
	bne 	a4, zero, beq_else.26691 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26692 !154
beq_else.26691: !154
beq_cont.26692: !154
	lw  	a0, 12(sp) !1057
	fsw  	fa0, 0(a0) !1057
	li  	fa0, 1.000000 !1059
	lw  	a1, 8(sp) !1059
	flw  	fa1, 0(a1) !1059
	fdiv	fa0, fa0, fa1 !1059
	fsw  	fa0, 4(a0) !1059
	jal 	zero, beq_cont.26684 !1053
beq_else.26683: !1053
	li  	fa0, 0.000000 !1054
	fsw  	fa0, 4(a0) !1054
beq_cont.26684: !1053
	flw  	fa0, 4(a1) !1061
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26693 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26694 !124
bne_else.26693: !124
	addi	a2, zero, 0 !124
bne_cont.26694: !124
	bne 	a2, zero, beq_else.26695 !1061
	lw  	a2, 4(sp) !280
	lw  	a3, 24(a2) !280
	flw  	fa0, 4(a1) !1064
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26697 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.26698 !123
bne_else.26697: !123
	addi	a4, zero, 1 !123
bne_cont.26698: !123
	bne 	a3, zero, beq_else.26699 !141
	jal 	zero, beq_cont.26700 !141
beq_else.26699: !141
	bne 	a4, zero, beq_else.26701 !141
	addi	a4, zero, 1 !141
	jal 	zero, beq_cont.26702 !141
beq_else.26701: !141
	addi	a4, zero, 0 !141
beq_cont.26702: !141
beq_cont.26700: !141
	lw  	a3, 16(a2) !308
	flw  	fa0, 4(a3) !313
	sw  	a0, 12(sp) !154
	bne 	a4, zero, beq_else.26703 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26704 !154
beq_else.26703: !154
beq_cont.26704: !154
	lw  	a0, 12(sp) !1064
	fsw  	fa0, 8(a0) !1064
	li  	fa0, 1.000000 !1065
	lw  	a1, 8(sp) !1065
	flw  	fa1, 4(a1) !1065
	fdiv	fa0, fa0, fa1 !1065
	fsw  	fa0, 12(a0) !1065
	jal 	zero, beq_cont.26696 !1061
beq_else.26695: !1061
	li  	fa0, 0.000000 !1062
	fsw  	fa0, 12(a0) !1062
beq_cont.26696: !1061
	flw  	fa0, 8(a1) !1067
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.26705 !124
	addi	a2, zero, 1 !124
	jal 	zero, bne_cont.26706 !124
bne_else.26705: !124
	addi	a2, zero, 0 !124
bne_cont.26706: !124
	bne 	a2, zero, beq_else.26707 !1067
	lw  	a2, 4(sp) !280
	lw  	a3, 24(a2) !280
	flw  	fa0, 8(a1) !1070
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.26709 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.26710 !123
bne_else.26709: !123
	addi	a4, zero, 1 !123
bne_cont.26710: !123
	bne 	a3, zero, beq_else.26711 !141
	jal 	zero, beq_cont.26712 !141
beq_else.26711: !141
	bne 	a4, zero, beq_else.26713 !141
	addi	a4, zero, 1 !141
	jal 	zero, beq_cont.26714 !141
beq_else.26713: !141
	addi	a4, zero, 0 !141
beq_cont.26714: !141
beq_cont.26712: !141
	lw  	a2, 16(a2) !318
	flw  	fa0, 8(a2) !323
	sw  	a0, 12(sp) !154
	bne 	a4, zero, beq_else.26715 !154
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.26716 !154
beq_else.26715: !154
beq_cont.26716: !154
	lw  	a0, 12(sp) !1070
	fsw  	fa0, 16(a0) !1070
	li  	fa0, 1.000000 !1071
	lw  	a1, 8(sp) !1071
	flw  	fa1, 8(a1) !1071
	fdiv	fa0, fa0, fa1 !1071
	fsw  	fa0, 20(a0) !1071
	jal 	zero, beq_cont.26708 !1067
beq_else.26707: !1067
	li  	fa0, 0.000000 !1068
	fsw  	fa0, 20(a0) !1068
beq_cont.26708: !1067
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_surface_table.2653:
	sw  	ra, 0(sp)
	addi	a2, zero, 4 !1078
	li  	fa0, 0.000000 !1078
	sw  	a1, 4(sp) !1078
	sw  	a0, 8(sp) !1078
	addi	a0, a2, 0 !1078
	addi	sp, sp, 12 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -12 !1078
	lw  	a1, 8(sp) !1080
	flw  	fa0, 0(a1) !1080
	lw  	a2, 4(sp) !298
	lw  	a3, 16(a2) !298
	flw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	flw  	fa1, 4(a1) !1080
	lw  	a3, 16(a2) !308
	flw  	fa2, 4(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flw  	fa1, 8(a1) !1080
	lw  	a1, 16(a2) !318
	flw  	fa2, 8(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26717 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26718 !122
bne_else.26717: !122
	addi	a1, zero, 1 !122
bne_cont.26718: !122
	bne 	a1, zero, beq_else.26719 !1082
	li  	fa0, 0.000000 !1090
	fsw  	fa0, 0(a0) !1090
	jal 	zero, beq_cont.26720 !1082
beq_else.26719: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	fsw  	fa1, 0(a0) !1084
	lw  	a1, 16(a2) !298
	flw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsw 	fa0, 16(sp) !1086
	sw  	a0, 24(sp) !1086
	fsgnj   fa0, fa1, fa1 !1086
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 24(sp) !1086
	fsw  	fa0, 4(a0) !1086
	lw  	a1, 4(sp) !308
	lw  	a2, 16(a1) !308
	flw  	fa0, 4(a2) !313
	flw  	fa1, 16(sp) !1087
	fdiv	fa0, fa0, fa1 !1087
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 24(sp) !1087
	fsw  	fa0, 8(a0) !1087
	lw  	a1, 4(sp) !318
	lw  	a1, 16(a1) !318
	flw  	fa0, 8(a1) !323
	flw  	fa1, 16(sp) !1088
	fdiv	fa0, fa0, fa1 !1088
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 24(sp) !1088
	fsw  	fa0, 12(a0) !1088
beq_cont.26720: !1082
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_second_table.2656:
	sw  	ra, 0(sp)
	addi	a2, zero, 5 !1097
	li  	fa0, 0.000000 !1097
	sw  	a1, 4(sp) !1097
	sw  	a0, 8(sp) !1097
	addi	a0, a2, 0 !1097
	addi	sp, sp, 12 !1097
	jal 	ra, create_float_array !1097
	addi	sp, sp, -12 !1097
	lw  	a1, 8(sp) !1099
	flw  	fa0, 0(a1) !1099
	flw  	fa1, 4(a1) !1099
	flw  	fa2, 8(a1) !1099
	fmul	fa3, fa0, fa0 !126
	lw  	a2, 4(sp) !298
	lw  	a3, 16(a2) !298
	flw  	fa4, 0(a3) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a3, 16(a2) !308
	flw  	fa5, 4(a3) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a3, 16(a2) !318
	flw  	fa5, 8(a3) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a3, 12(a2) !289
	bne 	a3, zero, beq_else.26722 !846
	jal 	zero, beq_cont.26723 !846
beq_else.26722: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a3, 36(a2) !418
	flw  	fa5, 0(a3) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a3, 36(a2) !428
	flw  	fa4, 4(a3) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa3, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a3, 36(a2) !438
	flw  	fa1, 8(a3) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa3, fa3, fa0 !852
beq_cont.26723: !846
	flw  	fa0, 0(a1) !1100
	lw  	a3, 16(a2) !298
	flw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1100
	sw  	a0, 12(sp) !1100
	fsw 	fa3, 16(sp) !1100
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !1101
	flw  	fa1, 4(a0) !1101
	lw  	a1, 4(sp) !308
	lw  	a2, 16(a1) !308
	flw  	fa2, 4(a2) !313
	fmul	fa1, fa1, fa2 !1101
	fsw 	fa0, 24(sp) !1101
	fsgnj   fa0, fa1, fa1 !1101
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !1102
	flw  	fa1, 8(a0) !1102
	lw  	a1, 4(sp) !318
	lw  	a2, 16(a1) !318
	flw  	fa2, 8(a2) !323
	fmul	fa1, fa1, fa2 !1102
	fsw 	fa0, 32(sp) !1102
	fsgnj   fa0, fa1, fa1 !1102
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 12(sp) !1104
	flw  	fa1, 16(sp) !1104
	fsw  	fa1, 0(a0) !1104
	lw  	a1, 4(sp) !289
	lw  	a2, 12(a1) !289
	bne 	a2, zero, beq_else.26724 !1107
	flw  	fa2, 24(sp) !1112
	fsw  	fa2, 4(a0) !1112
	flw  	fa2, 32(sp) !1113
	fsw  	fa2, 8(a0) !1113
	fsw  	fa0, 12(a0) !1114
	jal 	zero, beq_cont.26725 !1107
beq_else.26724: !1107
	lw  	a2, 8(sp) !1108
	flw  	fa2, 8(a2) !1108
	lw  	a3, 36(a1) !428
	flw  	fa3, 4(a3) !433
	fmul	fa2, fa2, fa3 !1108
	flw  	fa3, 4(a2) !1108
	lw  	a3, 36(a1) !438
	flw  	fa4, 8(a3) !443
	fmul	fa3, fa3, fa4 !1108
	fadd	fa2, fa2, fa3 !1108
	li  	fa3, 2.000000 !125
	fdiv	fa2, fa2, fa3 !125
	flw  	fa3, 24(sp) !1108
	fsub	fa3, fa3, fa2 !1108
	fsw  	fa3, 4(a0) !1108
	flw  	fa2, 8(a2) !1109
	lw  	a3, 36(a1) !418
	flw  	fa3, 0(a3) !423
	fmul	fa2, fa2, fa3 !1109
	flw  	fa3, 0(a2) !1109
	lw  	a3, 36(a1) !438
	flw  	fa4, 8(a3) !443
	fmul	fa3, fa3, fa4 !1109
	fadd	fa2, fa2, fa3 !1109
	li  	fa3, 2.000000 !125
	fdiv	fa2, fa2, fa3 !125
	flw  	fa3, 32(sp) !1109
	fsub	fa3, fa3, fa2 !1109
	fsw  	fa3, 8(a0) !1109
	flw  	fa2, 4(a2) !1110
	lw  	a3, 36(a1) !418
	flw  	fa3, 0(a3) !423
	fmul	fa2, fa2, fa3 !1110
	flw  	fa3, 0(a2) !1110
	lw  	a1, 36(a1) !428
	flw  	fa4, 4(a1) !433
	fmul	fa3, fa3, fa4 !1110
	fadd	fa2, fa2, fa3 !1110
	li  	fa3, 2.000000 !125
	fdiv	fa2, fa2, fa3 !125
	fsub	fa0, fa0, fa2 !1110
	fsw  	fa0, 12(a0) !1110
beq_cont.26725: !1107
	li  	fa0, 0.000000 !124
	feq	t0, fa1, fa0 !124
	beq 	zero, t0, bne_else.26726 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.26727 !124
bne_else.26726: !124
	addi	a1, zero, 0 !124
bne_cont.26727: !124
	bne 	a1, zero, beq_else.26728 !1116
	li  	fa0, 1.000000 !1117
	fdiv	fa0, fa0, fa1 !1117
	fsw  	fa0, 16(a0) !1117
	jal 	zero, beq_cont.26729 !1116
beq_else.26728: !1116
beq_cont.26729: !1116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_setup_dirvec_constants.2659:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.26730 !1125
	li  	a2, 1048624 !1126
	slli	t0, a1, 2 !1126
	add 	t0, t0, a2 !1126
	lw  	a2, 0(t0) !1126
	lw  	a3, 4(a0) !535
	lw  	a4, 0(a0) !529
	lw  	a5, 4(a2) !260
	sw  	a0, 4(sp) !1130
	addi	t0, zero, 1 !1130
	bne 	a5, t0, beq_else.26731 !1130
	sw  	a1, 8(sp) !1131
	sw  	a3, 12(sp) !1131
	addi	a1, a2, 0 !1131
	addi	a0, a4, 0 !1131
	addi	sp, sp, 16 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -16 !1131
	lw  	a1, 8(sp) !1131
	lw  	a2, 12(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.26732 !1130
beq_else.26731: !1130
	addi	t0, zero, 2 !1132
	bne 	a5, t0, beq_else.26733 !1132
	addi	a5, zero, 4 !1078
	li  	fa0, 0.000000 !1078
	sw  	a1, 8(sp) !1078
	sw  	a3, 12(sp) !1078
	sw  	a2, 16(sp) !1078
	sw  	a4, 20(sp) !1078
	addi	a0, a5, 0 !1078
	addi	sp, sp, 24 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -24 !1078
	lw  	a1, 20(sp) !1080
	flw  	fa0, 0(a1) !1080
	lw  	a2, 16(sp) !298
	lw  	a3, 16(a2) !298
	flw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	flw  	fa1, 4(a1) !1080
	lw  	a3, 16(a2) !308
	flw  	fa2, 4(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flw  	fa1, 8(a1) !1080
	lw  	a1, 16(a2) !318
	flw  	fa2, 8(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.26735 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.26736 !122
bne_else.26735: !122
	addi	a1, zero, 1 !122
bne_cont.26736: !122
	bne 	a1, zero, beq_else.26737 !1082
	li  	fa0, 0.000000 !1090
	fsw  	fa0, 0(a0) !1090
	jal 	zero, beq_cont.26738 !1082
beq_else.26737: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	fsw  	fa1, 0(a0) !1084
	lw  	a1, 16(a2) !298
	flw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsw 	fa0, 24(sp) !1086
	sw  	a0, 32(sp) !1086
	fsgnj   fa0, fa1, fa1 !1086
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 32(sp) !1086
	fsw  	fa0, 4(a0) !1086
	lw  	a1, 16(sp) !308
	lw  	a2, 16(a1) !308
	flw  	fa0, 4(a2) !313
	flw  	fa1, 24(sp) !1087
	fdiv	fa0, fa0, fa1 !1087
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 32(sp) !1087
	fsw  	fa0, 8(a0) !1087
	lw  	a1, 16(sp) !318
	lw  	a1, 16(a1) !318
	flw  	fa0, 8(a1) !323
	flw  	fa1, 24(sp) !1088
	fdiv	fa0, fa0, fa1 !1088
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 32(sp) !1088
	fsw  	fa0, 12(a0) !1088
beq_cont.26738: !1082
	lw  	a1, 8(sp) !1133
	lw  	a2, 12(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.26734 !1132
beq_else.26733: !1132
	sw  	a1, 8(sp) !1135
	sw  	a3, 12(sp) !1135
	addi	a1, a2, 0 !1135
	addi	a0, a4, 0 !1135
	addi	sp, sp, 36 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -36 !1135
	lw  	a1, 8(sp) !1135
	lw  	a2, 12(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.26734: !1132
beq_cont.26732: !1130
	addi	a1, a1, -1 !1137
	blt 	a1, zero, bge_else.26739 !1125
	li  	a0, 1048624 !1126
	slli	t0, a1, 2 !1126
	add 	t0, t0, a0 !1126
	lw  	a0, 0(t0) !1126
	lw  	a2, 4(sp) !535
	lw  	a3, 4(a2) !535
	lw  	a4, 0(a2) !529
	lw  	a5, 4(a0) !260
	addi	t0, zero, 1 !1130
	bne 	a5, t0, beq_else.26740 !1130
	sw  	a1, 36(sp) !1131
	sw  	a3, 40(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a4, 0 !1131
	addi	sp, sp, 44 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -44 !1131
	lw  	a1, 36(sp) !1131
	lw  	a2, 40(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.26741 !1130
beq_else.26740: !1130
	addi	t0, zero, 2 !1132
	bne 	a5, t0, beq_else.26742 !1132
	sw  	a1, 36(sp) !1133
	sw  	a3, 40(sp) !1133
	addi	a1, a0, 0 !1133
	addi	a0, a4, 0 !1133
	addi	sp, sp, 44 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -44 !1133
	lw  	a1, 36(sp) !1133
	lw  	a2, 40(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.26743 !1132
beq_else.26742: !1132
	sw  	a1, 36(sp) !1135
	sw  	a3, 40(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a4, 0 !1135
	addi	sp, sp, 44 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -44 !1135
	lw  	a1, 36(sp) !1135
	lw  	a2, 40(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.26743: !1132
beq_cont.26741: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 4(sp) !1137
	lw  	ra, 0(sp)
	jal 	zero, iter_setup_dirvec_constants.2659 !1137
bge_else.26739: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.26730: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp_constants.2664:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.26746 !1148
	li  	a2, 1048624 !1149
	slli	t0, a1, 2 !1149
	add 	t0, t0, a2 !1149
	lw  	a2, 0(t0) !1149
	lw  	a3, 40(a2) !449
	lw  	a4, 4(a2) !260
	flw  	fa0, 0(a0) !1152
	lw  	a5, 20(a2) !338
	flw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	fsw  	fa0, 0(a3) !1152
	flw  	fa0, 4(a0) !1153
	lw  	a5, 20(a2) !348
	flw  	fa1, 4(a5) !353
	fsub	fa0, fa0, fa1 !1153
	fsw  	fa0, 4(a3) !1153
	flw  	fa0, 8(a0) !1154
	lw  	a5, 20(a2) !358
	flw  	fa1, 8(a5) !363
	fsub	fa0, fa0, fa1 !1154
	fsw  	fa0, 8(a3) !1154
	addi	t0, zero, 2 !1155
	bne 	a4, t0, beq_else.26747 !1155
	lw  	a2, 16(a2) !328
	flw  	fa0, 0(a3) !1157
	flw  	fa1, 4(a3) !1157
	flw  	fa2, 8(a3) !1157
	flw  	fa3, 0(a2) !213
	fmul	fa3, fa3, fa0 !213
	flw  	fa0, 4(a2) !213
	fmul	fa0, fa0, fa1 !213
	fadd	fa3, fa3, fa0 !213
	flw  	fa0, 8(a2) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa3, fa3, fa0 !213
	fsw  	fa3, 12(a3) !1156
	jal 	zero, beq_cont.26748 !1155
beq_else.26747: !1155
	addi	t0, zero, 2 !1158
	blt 	t0, a4, bge_else.26749 !1158
	jal 	zero, bge_cont.26750 !1158
bge_else.26749: !1158
	flw  	fa0, 0(a3) !1159
	flw  	fa1, 4(a3) !1159
	flw  	fa2, 8(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 16(a2) !298
	flw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 16(a2) !308
	flw  	fa5, 4(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 16(a2) !318
	flw  	fa5, 8(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 12(a2) !289
	bne 	a5, zero, beq_else.26751 !846
	jal 	zero, beq_cont.26752 !846
beq_else.26751: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 36(a2) !418
	flw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 36(a2) !428
	flw  	fa4, 4(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa3, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a2, 36(a2) !438
	flw  	fa1, 8(a2) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa3, fa3, fa0 !852
beq_cont.26752: !846
	addi	t0, zero, 3 !1160
	bne 	a4, t0, beq_else.26753 !1160
	li  	fa0, 1.000000 !1160
	fsub	fa3, fa3, fa0 !1160
	jal 	zero, beq_cont.26754 !1160
beq_else.26753: !1160
beq_cont.26754: !1160
	fsw  	fa3, 12(a3) !1160
bge_cont.26750: !1158
beq_cont.26748: !1155
	addi	a1, a1, -1 !1162
	lw  	ra, 0(sp)
	jal 	zero, setup_startp_constants.2664 !1162
bge_else.26746: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
is_outside.2684:
	sw  	ra, 0(sp)
	lw  	a1, 20(a0) !338
	flw  	fa3, 0(a1) !343
	fsub	fa0, fa0, fa3 !1201
	lw  	a1, 20(a0) !348
	flw  	fa3, 4(a1) !353
	fsub	fa1, fa1, fa3 !1202
	lw  	a1, 20(a0) !358
	flw  	fa3, 8(a1) !363
	fsub	fa2, fa2, fa3 !1203
	lw  	a1, 4(a0) !260
	addi	t0, zero, 1 !1205
	bne 	a1, t0, beq_else.26756 !1205
	fsw 	fa2, 8(sp) !1178
	fsw 	fa1, 16(sp) !1178
	sw  	a0, 24(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 24(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26758 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26759 !121
bne_else.26758: !121
	addi	a1, zero, 1 !121
bne_cont.26759: !121
	bne 	a1, zero, beq_else.26760 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.26761 !1178
beq_else.26760: !1178
	flw  	fa0, 16(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 24(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26762 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26763 !121
bne_else.26762: !121
	addi	a1, zero, 1 !121
bne_cont.26763: !121
	bne 	a1, zero, beq_else.26764 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.26765 !1179
beq_else.26764: !1179
	flw  	fa0, 8(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 24(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26766 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26767 !121
bne_else.26766: !121
	addi	a1, zero, 1 !121
bne_cont.26767: !121
beq_cont.26765: !1179
beq_cont.26761: !1178
	bne 	a1, zero, beq_else.26768 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26769 !1183
	addi	a0, zero, 1 !1183
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26769: !1183
	addi	a0, zero, 0 !1183
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26768: !1177
	lw  	a0, 24(a0) !280
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26756: !1205
	addi	t0, zero, 2 !1207
	bne 	a1, t0, beq_else.26770 !1207
	lw  	a1, 16(a0) !328
	flw  	fa3, 0(a1) !213
	fmul	fa3, fa3, fa0 !213
	flw  	fa0, 4(a1) !213
	fmul	fa0, fa0, fa1 !213
	fadd	fa3, fa3, fa0 !213
	flw  	fa0, 8(a1) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa3, fa3, fa0 !213
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa3 !123
	beq 	zero, t0, bne_else.26771 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.26772 !123
bne_else.26771: !123
	addi	a1, zero, 1 !123
bne_cont.26772: !123
	bne 	a0, zero, beq_else.26773 !141
	jal 	zero, beq_cont.26774 !141
beq_else.26773: !141
	bne 	a1, zero, beq_else.26775 !141
	addi	a1, zero, 1 !141
	jal 	zero, beq_cont.26776 !141
beq_else.26775: !141
	addi	a1, zero, 0 !141
beq_cont.26776: !141
beq_cont.26774: !141
	bne 	a1, zero, beq_else.26777 !1189
	addi	a0, zero, 1 !1189
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26777: !1189
	addi	a0, zero, 0 !1189
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26770: !1207
	fmul	fa3, fa0, fa0 !126
	lw  	a1, 16(a0) !298
	flw  	fa4, 0(a1) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a1, 16(a0) !308
	flw  	fa5, 4(a1) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a1, 16(a0) !318
	flw  	fa5, 8(a1) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a1, 12(a0) !289
	bne 	a1, zero, beq_else.26778 !846
	jal 	zero, beq_cont.26779 !846
beq_else.26778: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a1, 36(a0) !418
	flw  	fa5, 0(a1) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a1, 36(a0) !428
	flw  	fa4, 4(a1) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa3, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a1, 36(a0) !438
	flw  	fa1, 8(a1) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa3, fa3, fa0 !852
beq_cont.26779: !846
	lw  	a1, 4(a0) !260
	addi	t0, zero, 3 !1195
	bne 	a1, t0, beq_else.26780 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa3, fa3, fa0 !1195
	jal 	zero, beq_cont.26781 !1195
beq_else.26780: !1195
beq_cont.26781: !1195
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa3 !123
	beq 	zero, t0, bne_else.26782 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.26783 !123
bne_else.26782: !123
	addi	a1, zero, 1 !123
bne_cont.26783: !123
	bne 	a0, zero, beq_else.26784 !141
	jal 	zero, beq_cont.26785 !141
beq_else.26784: !141
	bne 	a1, zero, beq_else.26786 !141
	addi	a1, zero, 1 !141
	jal 	zero, beq_cont.26787 !141
beq_else.26786: !141
	addi	a1, zero, 0 !141
beq_cont.26787: !141
beq_cont.26785: !141
	bne 	a1, zero, beq_else.26788 !1196
	addi	a0, zero, 1 !1196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26788: !1196
	addi	a0, zero, 0 !1196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
check_all_inside.2689:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1215
	add 	t0, t0, a1 !1215
	lw  	a2, 0(t0) !1215
	addi	t0, zero, -1 !1216
	bne 	a2, t0, beq_else.26789 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26789: !1216
	li  	a3, 1048624 !1219
	slli	t0, a2, 2 !1219
	add 	t0, t0, a3 !1219
	lw  	a2, 0(t0) !1219
	lw  	a3, 20(a2) !338
	flw  	fa3, 0(a3) !343
	fsub	fa3, fa0, fa3 !1201
	lw  	a3, 20(a2) !348
	flw  	fa4, 4(a3) !353
	fsub	fa4, fa1, fa4 !1202
	lw  	a3, 20(a2) !358
	flw  	fa5, 8(a3) !363
	fsub	fa5, fa2, fa5 !1203
	lw  	a3, 4(a2) !260
	fsw 	fa2, 8(sp) !1205
	fsw 	fa1, 16(sp) !1205
	fsw 	fa0, 24(sp) !1205
	sw  	a1, 32(sp) !1205
	sw  	a0, 36(sp) !1205
	addi	t0, zero, 1 !1205
	bne 	a3, t0, beq_else.26791 !1205
	fsw 	fa5, 40(sp) !1178
	fsw 	fa4, 48(sp) !1178
	sw  	a2, 56(sp) !1178
	fsgnj   fa0, fa3, fa3 !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 56(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26793 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26794 !121
bne_else.26793: !121
	addi	a1, zero, 1 !121
bne_cont.26794: !121
	bne 	a1, zero, beq_else.26795 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.26796 !1178
beq_else.26795: !1178
	flw  	fa0, 48(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 56(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26797 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26798 !121
bne_else.26797: !121
	addi	a1, zero, 1 !121
bne_cont.26798: !121
	bne 	a1, zero, beq_else.26799 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.26800 !1179
beq_else.26799: !1179
	flw  	fa0, 40(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 56(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26801 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26802 !121
bne_else.26801: !121
	addi	a1, zero, 1 !121
bne_cont.26802: !121
beq_cont.26800: !1179
beq_cont.26796: !1178
	bne 	a1, zero, beq_else.26803 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26805 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.26806 !1183
beq_else.26805: !1183
	addi	a0, zero, 0 !1183
beq_cont.26806: !1183
	jal 	zero, beq_cont.26804 !1177
beq_else.26803: !1177
	lw  	a0, 24(a0) !280
beq_cont.26804: !1177
	jal 	zero, beq_cont.26792 !1205
beq_else.26791: !1205
	addi	t0, zero, 2 !1207
	bne 	a3, t0, beq_else.26807 !1207
	lw  	a3, 16(a2) !328
	flw  	fa6, 0(a3) !213
	fmul	fa6, fa6, fa3 !213
	flw  	fa3, 4(a3) !213
	fmul	fa3, fa3, fa4 !213
	fadd	fa6, fa6, fa3 !213
	flw  	fa3, 8(a3) !213
	fmul	fa3, fa3, fa5 !213
	fadd	fa6, fa6, fa3 !213
	lw  	a2, 24(a2) !280
	li  	fa3, 0.000000 !123
	fle 	t0, fa3, fa6 !123
	beq 	zero, t0, bne_else.26809 !123
	addi	a3, zero, 0 !123
	jal 	zero, bne_cont.26810 !123
bne_else.26809: !123
	addi	a3, zero, 1 !123
bne_cont.26810: !123
	bne 	a2, zero, beq_else.26811 !141
	jal 	zero, beq_cont.26812 !141
beq_else.26811: !141
	bne 	a3, zero, beq_else.26813 !141
	addi	a3, zero, 1 !141
	jal 	zero, beq_cont.26814 !141
beq_else.26813: !141
	addi	a3, zero, 0 !141
beq_cont.26814: !141
beq_cont.26812: !141
	bne 	a3, zero, beq_else.26815 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.26816 !1189
beq_else.26815: !1189
	addi	a0, zero, 0 !1189
beq_cont.26816: !1189
	jal 	zero, beq_cont.26808 !1207
beq_else.26807: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a3, 16(a2) !298
	flw  	fa7, 0(a3) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 16(a2) !308
	flw  	fs1, 4(a3) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a3, 16(a2) !318
	flw  	fs1, 8(a3) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a3, 12(a2) !289
	bne 	a3, zero, beq_else.26817 !846
	jal 	zero, beq_cont.26818 !846
beq_else.26817: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a3, 36(a2) !418
	flw  	fs1, 0(a3) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a3, 36(a2) !428
	flw  	fa7, 4(a3) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa6, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a3, 36(a2) !438
	flw  	fa4, 8(a3) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa6, fa6, fa3 !852
beq_cont.26818: !846
	lw  	a3, 4(a2) !260
	addi	t0, zero, 3 !1195
	bne 	a3, t0, beq_else.26819 !1195
	li  	fa3, 1.000000 !1195
	fsub	fa6, fa6, fa3 !1195
	jal 	zero, beq_cont.26820 !1195
beq_else.26819: !1195
beq_cont.26820: !1195
	lw  	a2, 24(a2) !280
	li  	fa3, 0.000000 !123
	fle 	t0, fa3, fa6 !123
	beq 	zero, t0, bne_else.26821 !123
	addi	a3, zero, 0 !123
	jal 	zero, bne_cont.26822 !123
bne_else.26821: !123
	addi	a3, zero, 1 !123
bne_cont.26822: !123
	bne 	a2, zero, beq_else.26823 !141
	jal 	zero, beq_cont.26824 !141
beq_else.26823: !141
	bne 	a3, zero, beq_else.26825 !141
	addi	a3, zero, 1 !141
	jal 	zero, beq_cont.26826 !141
beq_else.26825: !141
	addi	a3, zero, 0 !141
beq_cont.26826: !141
beq_cont.26824: !141
	bne 	a3, zero, beq_else.26827 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.26828 !1196
beq_else.26827: !1196
	addi	a0, zero, 0 !1196
beq_cont.26828: !1196
beq_cont.26808: !1207
beq_cont.26792: !1205
	bne 	a0, zero, beq_else.26829 !1219
	lw  	a0, 36(sp) !1222
	addi	a0, a0, 1 !1222
	lw  	a1, 32(sp) !1215
	slli	t0, a0, 2 !1215
	add 	t0, t0, a1 !1215
	lw  	a2, 0(t0) !1215
	addi	t0, zero, -1 !1216
	bne 	a2, t0, beq_else.26830 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26830: !1216
	li  	a3, 1048624 !1219
	slli	t0, a2, 2 !1219
	add 	t0, t0, a3 !1219
	lw  	a2, 0(t0) !1219
	flw  	fa0, 24(sp) !1219
	flw  	fa1, 16(sp) !1219
	flw  	fa2, 8(sp) !1219
	sw  	a0, 60(sp) !1219
	addi	a0, a2, 0 !1219
	addi	sp, sp, 64 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -64 !1219
	bne 	a0, zero, beq_else.26831 !1219
	lw  	a0, 60(sp) !1222
	addi	a0, a0, 1 !1222
	lw  	a1, 32(sp) !1215
	slli	t0, a0, 2 !1215
	add 	t0, t0, a1 !1215
	lw  	a2, 0(t0) !1215
	addi	t0, zero, -1 !1216
	bne 	a2, t0, beq_else.26832 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26832: !1216
	li  	a3, 1048624 !1219
	slli	t0, a2, 2 !1219
	add 	t0, t0, a3 !1219
	lw  	a2, 0(t0) !1219
	lw  	a3, 20(a2) !338
	flw  	fa0, 0(a3) !343
	flw  	fa1, 24(sp) !1201
	fsub	fa0, fa1, fa0 !1201
	lw  	a3, 20(a2) !348
	flw  	fa2, 4(a3) !353
	flw  	fa3, 16(sp) !1202
	fsub	fa2, fa3, fa2 !1202
	lw  	a3, 20(a2) !358
	flw  	fa4, 8(a3) !363
	flw  	fa5, 8(sp) !1203
	fsub	fa4, fa5, fa4 !1203
	lw  	a3, 4(a2) !260
	sw  	a0, 64(sp) !1205
	addi	t0, zero, 1 !1205
	bne 	a3, t0, beq_else.26833 !1205
	fsw 	fa4, 72(sp) !1178
	fsw 	fa2, 80(sp) !1178
	sw  	a2, 88(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 88(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26836 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26837 !121
bne_else.26836: !121
	addi	a1, zero, 1 !121
bne_cont.26837: !121
	bne 	a1, zero, beq_else.26838 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.26839 !1178
beq_else.26838: !1178
	flw  	fa0, 80(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 88(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26840 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26841 !121
bne_else.26840: !121
	addi	a1, zero, 1 !121
bne_cont.26841: !121
	bne 	a1, zero, beq_else.26842 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.26843 !1179
beq_else.26842: !1179
	flw  	fa0, 72(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 88(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26844 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26845 !121
bne_else.26844: !121
	addi	a1, zero, 1 !121
bne_cont.26845: !121
beq_cont.26843: !1179
beq_cont.26839: !1178
	bne 	a1, zero, beq_else.26846 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26848 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.26849 !1183
beq_else.26848: !1183
	addi	a0, zero, 0 !1183
beq_cont.26849: !1183
	jal 	zero, beq_cont.26847 !1177
beq_else.26846: !1177
	lw  	a0, 24(a0) !280
beq_cont.26847: !1177
	jal 	zero, beq_cont.26834 !1205
beq_else.26833: !1205
	addi	t0, zero, 2 !1207
	bne 	a3, t0, beq_else.26850 !1207
	lw  	a3, 16(a2) !328
	flw  	fa6, 0(a3) !213
	fmul	fa6, fa6, fa0 !213
	flw  	fa0, 4(a3) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa6, fa6, fa0 !213
	flw  	fa0, 8(a3) !213
	fmul	fa0, fa0, fa4 !213
	fadd	fa6, fa6, fa0 !213
	lw  	a2, 24(a2) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.26852 !123
	addi	a3, zero, 0 !123
	jal 	zero, bne_cont.26853 !123
bne_else.26852: !123
	addi	a3, zero, 1 !123
bne_cont.26853: !123
	bne 	a2, zero, beq_else.26854 !141
	jal 	zero, beq_cont.26855 !141
beq_else.26854: !141
	bne 	a3, zero, beq_else.26856 !141
	addi	a3, zero, 1 !141
	jal 	zero, beq_cont.26857 !141
beq_else.26856: !141
	addi	a3, zero, 0 !141
beq_cont.26857: !141
beq_cont.26855: !141
	bne 	a3, zero, beq_else.26858 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.26859 !1189
beq_else.26858: !1189
	addi	a0, zero, 0 !1189
beq_cont.26859: !1189
	jal 	zero, beq_cont.26851 !1207
beq_else.26850: !1207
	fmul	fa6, fa0, fa0 !126
	lw  	a3, 16(a2) !298
	flw  	fa7, 0(a3) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa2, fa2 !126
	lw  	a3, 16(a2) !308
	flw  	fs1, 4(a3) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 16(a2) !318
	flw  	fs1, 8(a3) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a3, 12(a2) !289
	bne 	a3, zero, beq_else.26860 !846
	jal 	zero, beq_cont.26861 !846
beq_else.26860: !846
	fmul	fa7, fa2, fa4 !850
	lw  	a3, 36(a2) !418
	flw  	fs1, 0(a3) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa4, fa4, fa0 !851
	lw  	a3, 36(a2) !428
	flw  	fa7, 4(a3) !433
	fmul	fa4, fa4, fa7 !851
	fadd	fa6, fa6, fa4 !851
	fmul	fa0, fa0, fa2 !852
	lw  	a3, 36(a2) !438
	flw  	fa2, 8(a3) !443
	fmul	fa0, fa0, fa2 !852
	fadd	fa6, fa6, fa0 !852
beq_cont.26861: !846
	lw  	a3, 4(a2) !260
	addi	t0, zero, 3 !1195
	bne 	a3, t0, beq_else.26862 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa6, fa6, fa0 !1195
	jal 	zero, beq_cont.26863 !1195
beq_else.26862: !1195
beq_cont.26863: !1195
	lw  	a2, 24(a2) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.26864 !123
	addi	a3, zero, 0 !123
	jal 	zero, bne_cont.26865 !123
bne_else.26864: !123
	addi	a3, zero, 1 !123
bne_cont.26865: !123
	bne 	a2, zero, beq_else.26866 !141
	jal 	zero, beq_cont.26867 !141
beq_else.26866: !141
	bne 	a3, zero, beq_else.26868 !141
	addi	a3, zero, 1 !141
	jal 	zero, beq_cont.26869 !141
beq_else.26868: !141
	addi	a3, zero, 0 !141
beq_cont.26869: !141
beq_cont.26867: !141
	bne 	a3, zero, beq_else.26870 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.26871 !1196
beq_else.26870: !1196
	addi	a0, zero, 0 !1196
beq_cont.26871: !1196
beq_cont.26851: !1207
beq_cont.26834: !1205
	bne 	a0, zero, beq_else.26872 !1219
	lw  	a0, 64(sp) !1222
	addi	a0, a0, 1 !1222
	lw  	a1, 32(sp) !1215
	slli	t0, a0, 2 !1215
	add 	t0, t0, a1 !1215
	lw  	a2, 0(t0) !1215
	addi	t0, zero, -1 !1216
	bne 	a2, t0, beq_else.26873 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26873: !1216
	li  	a3, 1048624 !1219
	slli	t0, a2, 2 !1219
	add 	t0, t0, a3 !1219
	lw  	a2, 0(t0) !1219
	flw  	fa0, 24(sp) !1219
	flw  	fa1, 16(sp) !1219
	flw  	fa2, 8(sp) !1219
	sw  	a0, 92(sp) !1219
	addi	a0, a2, 0 !1219
	addi	sp, sp, 96 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -96 !1219
	bne 	a0, zero, beq_else.26874 !1219
	lw  	a0, 92(sp) !1222
	addi	a0, a0, 1 !1222
	flw  	fa0, 24(sp) !1222
	flw  	fa1, 16(sp) !1222
	flw  	fa2, 8(sp) !1222
	lw  	a1, 32(sp) !1222
	lw  	ra, 0(sp)
	jal 	zero, check_all_inside.2689 !1222
beq_else.26874: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26872: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26831: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26829: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_and_group.2695:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1233
	add 	t0, t0, a1 !1233
	lw  	a2, 0(t0) !1233
	addi	t0, zero, -1 !1233
	bne 	a2, t0, beq_else.26875 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26875: !1233
	slli	t0, a0, 2 !1236
	add 	t0, t0, a1 !1236
	lw  	a2, 0(t0) !1236
	li  	a3, 1048624 !984
	slli	t0, a2, 2 !984
	add 	t0, t0, a3 !984
	lw  	a3, 0(t0) !984
	li  	a4, 1049128 !985
	lw  	fa0, 0(a4) !985
	lw  	a4, 20(a3) !338
	flw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !985
	li  	a4, 1049128 !986
	lw  	fa1, 4(a4) !986
	lw  	a4, 20(a3) !348
	flw  	fa2, 4(a4) !353
	fsub	fa1, fa1, fa2 !986
	li  	a4, 1049128 !987
	lw  	fa2, 8(a4) !987
	lw  	a4, 20(a3) !358
	flw  	fa3, 8(a4) !363
	fsub	fa2, fa2, fa3 !987
	li  	a4, 1049324 !989
	slli	t0, a2, 2 !989
	add 	t0, t0, a4 !989
	lw  	a4, 0(t0) !989
	lw  	a5, 4(a3) !260
	sw  	a1, 4(sp) !991
	sw  	a0, 8(sp) !991
	sw  	a2, 12(sp) !991
	addi	t0, zero, 1 !991
	bne 	a5, t0, beq_else.26876 !991
	li  	a5, 1049312 !0
	addi	a2, a4, 0 !992
	addi	a1, a5, 0 !992
	addi	a0, a3, 0 !992
	addi	sp, sp, 16 !992
	jal 	ra, solver_rect_fast.2610 !992
	addi	sp, sp, -16 !992
	jal 	zero, beq_cont.26877 !991
beq_else.26876: !991
	addi	t0, zero, 2 !993
	bne 	a5, t0, beq_else.26878 !993
	flw  	fa3, 0(a4) !955
	li  	fa4, 0.000000 !123
	fle 	t0, fa4, fa3 !123
	beq 	zero, t0, bne_else.26880 !123
	addi	a3, zero, 0 !123
	jal 	zero, bne_cont.26881 !123
bne_else.26880: !123
	addi	a3, zero, 1 !123
bne_cont.26881: !123
	bne 	a3, zero, beq_else.26882 !955
	addi	a0, zero, 0 !959
	jal 	zero, beq_cont.26883 !955
beq_else.26882: !955
	flw  	fa3, 4(a4) !957
	fmul	fa3, fa3, fa0 !957
	flw  	fa0, 8(a4) !957
	fmul	fa0, fa0, fa1 !957
	fadd	fa3, fa3, fa0 !957
	flw  	fa0, 12(a4) !957
	fmul	fa0, fa0, fa2 !957
	fadd	fa3, fa3, fa0 !957
	li  	a3, 1049116 !956
	sw  	fa3, 0(a3) !956
	addi	a0, zero, 1 !958
beq_cont.26883: !955
	jal 	zero, beq_cont.26879 !993
beq_else.26878: !993
	addi	a1, a4, 0 !996
	addi	a0, a3, 0 !996
	addi	sp, sp, 16 !996
	jal 	ra, solver_second_fast.2623 !996
	addi	sp, sp, -16 !996
beq_cont.26879: !993
beq_cont.26877: !991
	li  	a1, 1049116 !1238
	lw  	fa0, 0(a1) !1238
	bne 	a0, zero, beq_else.26884 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.26885 !1239
beq_else.26884: !1239
	li  	fa1, -0.200000 !1239
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26886 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26887 !121
bne_else.26886: !121
	addi	a0, zero, 1 !121
bne_cont.26887: !121
beq_cont.26885: !1239
	bne 	a0, zero, beq_else.26888 !1239
	li  	a0, 1048624 !1255
	lw  	a1, 12(sp) !1255
	slli	t0, a1, 2 !1255
	add 	t0, t0, a0 !1255
	lw  	a0, 0(t0) !1255
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26889 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26889: !1255
	lw  	a0, 8(sp) !1256
	addi	a0, a0, 1 !1256
	lw  	a1, 4(sp) !1233
	slli	t0, a0, 2 !1233
	add 	t0, t0, a1 !1233
	lw  	a2, 0(t0) !1233
	addi	t0, zero, -1 !1233
	bne 	a2, t0, beq_else.26890 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26890: !1233
	slli	t0, a0, 2 !1236
	add 	t0, t0, a1 !1236
	lw  	a2, 0(t0) !1236
	li  	a3, 1049128 !0
	li  	a4, 1049564 !0
	sw  	a0, 16(sp) !1237
	sw  	a2, 20(sp) !1237
	addi	a1, a4, 0 !1237
	addi	a0, a2, 0 !1237
	addi	a2, a3, 0 !1237
	addi	sp, sp, 24 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -24 !1237
	li  	a1, 1049116 !1238
	lw  	fa0, 0(a1) !1238
	bne 	a0, zero, beq_else.26891 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.26892 !1239
beq_else.26891: !1239
	li  	fa1, -0.200000 !1239
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26893 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.26894 !121
bne_else.26893: !121
	addi	a0, zero, 1 !121
bne_cont.26894: !121
beq_cont.26892: !1239
	bne 	a0, zero, beq_else.26895 !1239
	li  	a0, 1048624 !1255
	lw  	a1, 20(sp) !1255
	slli	t0, a1, 2 !1255
	add 	t0, t0, a0 !1255
	lw  	a0, 0(t0) !1255
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26896 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26896: !1255
	lw  	a0, 16(sp) !1256
	addi	a0, a0, 1 !1256
	lw  	a1, 4(sp) !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.26895: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	li  	a0, 1048888 !1243
	lw  	fa1, 0(a0) !1243
	fmul	fa1, fa1, fa0 !1243
	li  	a0, 1049128 !1243
	lw  	fa2, 0(a0) !1243
	fadd	fa1, fa1, fa2 !1243
	li  	a0, 1048888 !1244
	lw  	fa2, 4(a0) !1244
	fmul	fa2, fa2, fa0 !1244
	li  	a0, 1049128 !1244
	lw  	fa3, 4(a0) !1244
	fadd	fa2, fa2, fa3 !1244
	li  	a0, 1048888 !1245
	lw  	fa3, 8(a0) !1245
	fmul	fa3, fa3, fa0 !1245
	li  	a0, 1049128 !1245
	lw  	fa0, 8(a0) !1245
	fadd	fa3, fa3, fa0 !1245
	lw  	a1, 4(sp) !1215
	lw  	a0, 0(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.26897 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.26898 !1216
beq_else.26897: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	lw  	a2, 20(a0) !338
	flw  	fa0, 0(a2) !343
	fsub	fa0, fa1, fa0 !1201
	lw  	a2, 20(a0) !348
	flw  	fa4, 4(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 20(a0) !358
	flw  	fa5, 8(a2) !363
	fsub	fa5, fa3, fa5 !1203
	lw  	a2, 4(a0) !260
	fsw 	fa3, 24(sp) !1205
	fsw 	fa2, 32(sp) !1205
	fsw 	fa1, 40(sp) !1205
	addi	t0, zero, 1 !1205
	bne 	a2, t0, beq_else.26899 !1205
	fsw 	fa5, 48(sp) !1178
	fsw 	fa4, 56(sp) !1178
	sw  	a0, 64(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 64(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26901 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26902 !121
bne_else.26901: !121
	addi	a1, zero, 1 !121
bne_cont.26902: !121
	bne 	a1, zero, beq_else.26903 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.26904 !1178
beq_else.26903: !1178
	flw  	fa0, 56(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 64(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26905 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26906 !121
bne_else.26905: !121
	addi	a1, zero, 1 !121
bne_cont.26906: !121
	bne 	a1, zero, beq_else.26907 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.26908 !1179
beq_else.26907: !1179
	flw  	fa0, 48(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 64(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26909 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26910 !121
bne_else.26909: !121
	addi	a1, zero, 1 !121
bne_cont.26910: !121
beq_cont.26908: !1179
beq_cont.26904: !1178
	bne 	a1, zero, beq_else.26911 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26913 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.26914 !1183
beq_else.26913: !1183
	addi	a0, zero, 0 !1183
beq_cont.26914: !1183
	jal 	zero, beq_cont.26912 !1177
beq_else.26911: !1177
	lw  	a0, 24(a0) !280
beq_cont.26912: !1177
	jal 	zero, beq_cont.26900 !1205
beq_else.26899: !1205
	addi	t0, zero, 2 !1207
	bne 	a2, t0, beq_else.26915 !1207
	lw  	a2, 16(a0) !328
	flw  	fa6, 0(a2) !213
	fmul	fa6, fa6, fa0 !213
	flw  	fa0, 4(a2) !213
	fmul	fa0, fa0, fa4 !213
	fadd	fa6, fa6, fa0 !213
	flw  	fa0, 8(a2) !213
	fmul	fa0, fa0, fa5 !213
	fadd	fa6, fa6, fa0 !213
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.26917 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.26918 !123
bne_else.26917: !123
	addi	a2, zero, 1 !123
bne_cont.26918: !123
	bne 	a0, zero, beq_else.26919 !141
	jal 	zero, beq_cont.26920 !141
beq_else.26919: !141
	bne 	a2, zero, beq_else.26921 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.26922 !141
beq_else.26921: !141
	addi	a2, zero, 0 !141
beq_cont.26922: !141
beq_cont.26920: !141
	bne 	a2, zero, beq_else.26923 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.26924 !1189
beq_else.26923: !1189
	addi	a0, zero, 0 !1189
beq_cont.26924: !1189
	jal 	zero, beq_cont.26916 !1207
beq_else.26915: !1207
	fmul	fa6, fa0, fa0 !126
	lw  	a2, 16(a0) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a0) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 16(a0) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.26925 !846
	jal 	zero, beq_cont.26926 !846
beq_else.26925: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 36(a0) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa0 !851
	lw  	a2, 36(a0) !428
	flw  	fa7, 4(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa6, fa6, fa5 !851
	fmul	fa0, fa0, fa4 !852
	lw  	a2, 36(a0) !438
	flw  	fa4, 8(a2) !443
	fmul	fa0, fa0, fa4 !852
	fadd	fa6, fa6, fa0 !852
beq_cont.26926: !846
	lw  	a2, 4(a0) !260
	addi	t0, zero, 3 !1195
	bne 	a2, t0, beq_else.26927 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa6, fa6, fa0 !1195
	jal 	zero, beq_cont.26928 !1195
beq_else.26927: !1195
beq_cont.26928: !1195
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.26929 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.26930 !123
bne_else.26929: !123
	addi	a2, zero, 1 !123
bne_cont.26930: !123
	bne 	a0, zero, beq_else.26931 !141
	jal 	zero, beq_cont.26932 !141
beq_else.26931: !141
	bne 	a2, zero, beq_else.26933 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.26934 !141
beq_else.26933: !141
	addi	a2, zero, 0 !141
beq_cont.26934: !141
beq_cont.26932: !141
	bne 	a2, zero, beq_else.26935 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.26936 !1196
beq_else.26935: !1196
	addi	a0, zero, 0 !1196
beq_cont.26936: !1196
beq_cont.26916: !1207
beq_cont.26900: !1205
	bne 	a0, zero, beq_else.26937 !1219
	lw  	a1, 4(sp) !1215
	lw  	a0, 4(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.26939 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.26940 !1216
beq_else.26939: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	flw  	fa0, 40(sp) !1219
	flw  	fa1, 32(sp) !1219
	flw  	fa2, 24(sp) !1219
	addi	sp, sp, 68 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -68 !1219
	bne 	a0, zero, beq_else.26941 !1219
	addi	a0, zero, 2 !1222
	flw  	fa0, 40(sp) !1222
	flw  	fa1, 32(sp) !1222
	flw  	fa2, 24(sp) !1222
	lw  	a1, 4(sp) !1222
	addi	sp, sp, 68 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -68 !1222
	jal 	zero, beq_cont.26942 !1219
beq_else.26941: !1219
	addi	a0, zero, 0 !1220
beq_cont.26942: !1219
beq_cont.26940: !1216
	jal 	zero, beq_cont.26938 !1219
beq_else.26937: !1219
	addi	a0, zero, 0 !1220
beq_cont.26938: !1219
beq_cont.26898: !1216
	bne 	a0, zero, beq_else.26943 !1246
	lw  	a0, 16(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 4(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.26943: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26888: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	li  	a0, 1048888 !1243
	lw  	fa1, 0(a0) !1243
	fmul	fa1, fa1, fa0 !1243
	li  	a0, 1049128 !1243
	lw  	fa2, 0(a0) !1243
	fadd	fa1, fa1, fa2 !1243
	li  	a0, 1048888 !1244
	lw  	fa2, 4(a0) !1244
	fmul	fa2, fa2, fa0 !1244
	li  	a0, 1049128 !1244
	lw  	fa3, 4(a0) !1244
	fadd	fa2, fa2, fa3 !1244
	li  	a0, 1048888 !1245
	lw  	fa3, 8(a0) !1245
	fmul	fa3, fa3, fa0 !1245
	li  	a0, 1049128 !1245
	lw  	fa0, 8(a0) !1245
	fadd	fa3, fa3, fa0 !1245
	lw  	a0, 4(sp) !1215
	lw  	a1, 0(a0) !1215
	addi	t0, zero, -1 !1216
	bne 	a1, t0, beq_else.26944 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.26945 !1216
beq_else.26944: !1216
	li  	a2, 1048624 !1219
	slli	t0, a1, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a1, 0(t0) !1219
	fsw 	fa3, 72(sp) !1219
	fsw 	fa2, 80(sp) !1219
	fsw 	fa1, 88(sp) !1219
	addi	a0, a1, 0 !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 96 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -96 !1219
	bne 	a0, zero, beq_else.26947 !1219
	lw  	a0, 4(sp) !1215
	lw  	a1, 4(a0) !1215
	addi	t0, zero, -1 !1216
	bne 	a1, t0, beq_else.26949 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.26950 !1216
beq_else.26949: !1216
	li  	a2, 1048624 !1219
	slli	t0, a1, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a1, 0(t0) !1219
	lw  	a2, 20(a1) !338
	flw  	fa0, 0(a2) !343
	flw  	fa1, 88(sp) !1201
	fsub	fa0, fa1, fa0 !1201
	lw  	a2, 20(a1) !348
	flw  	fa2, 4(a2) !353
	flw  	fa3, 80(sp) !1202
	fsub	fa2, fa3, fa2 !1202
	lw  	a2, 20(a1) !358
	flw  	fa4, 8(a2) !363
	flw  	fa5, 72(sp) !1203
	fsub	fa4, fa5, fa4 !1203
	lw  	a2, 4(a1) !260
	addi	t0, zero, 1 !1205
	bne 	a2, t0, beq_else.26951 !1205
	fsw 	fa4, 96(sp) !1178
	fsw 	fa2, 104(sp) !1178
	sw  	a1, 112(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 112(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26953 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26954 !121
bne_else.26953: !121
	addi	a1, zero, 1 !121
bne_cont.26954: !121
	bne 	a1, zero, beq_else.26955 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.26956 !1178
beq_else.26955: !1178
	flw  	fa0, 104(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 112(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26957 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26958 !121
bne_else.26957: !121
	addi	a1, zero, 1 !121
bne_cont.26958: !121
	bne 	a1, zero, beq_else.26959 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.26960 !1179
beq_else.26959: !1179
	flw  	fa0, 96(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 112(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26961 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.26962 !121
bne_else.26961: !121
	addi	a1, zero, 1 !121
bne_cont.26962: !121
beq_cont.26960: !1179
beq_cont.26956: !1178
	bne 	a1, zero, beq_else.26963 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.26965 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.26966 !1183
beq_else.26965: !1183
	addi	a0, zero, 0 !1183
beq_cont.26966: !1183
	jal 	zero, beq_cont.26964 !1177
beq_else.26963: !1177
	lw  	a0, 24(a0) !280
beq_cont.26964: !1177
	jal 	zero, beq_cont.26952 !1205
beq_else.26951: !1205
	addi	t0, zero, 2 !1207
	bne 	a2, t0, beq_else.26967 !1207
	lw  	a2, 16(a1) !328
	flw  	fa6, 0(a2) !213
	fmul	fa6, fa6, fa0 !213
	flw  	fa0, 4(a2) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa6, fa6, fa0 !213
	flw  	fa0, 8(a2) !213
	fmul	fa0, fa0, fa4 !213
	fadd	fa6, fa6, fa0 !213
	lw  	a1, 24(a1) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.26969 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.26970 !123
bne_else.26969: !123
	addi	a2, zero, 1 !123
bne_cont.26970: !123
	bne 	a1, zero, beq_else.26971 !141
	jal 	zero, beq_cont.26972 !141
beq_else.26971: !141
	bne 	a2, zero, beq_else.26973 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.26974 !141
beq_else.26973: !141
	addi	a2, zero, 0 !141
beq_cont.26974: !141
beq_cont.26972: !141
	bne 	a2, zero, beq_else.26975 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.26976 !1189
beq_else.26975: !1189
	addi	a0, zero, 0 !1189
beq_cont.26976: !1189
	jal 	zero, beq_cont.26968 !1207
beq_else.26967: !1207
	fmul	fa6, fa0, fa0 !126
	lw  	a2, 16(a1) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa2, fa2 !126
	lw  	a2, 16(a1) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a1) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a1) !289
	bne 	a2, zero, beq_else.26977 !846
	jal 	zero, beq_cont.26978 !846
beq_else.26977: !846
	fmul	fa7, fa2, fa4 !850
	lw  	a2, 36(a1) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa4, fa4, fa0 !851
	lw  	a2, 36(a1) !428
	flw  	fa7, 4(a2) !433
	fmul	fa4, fa4, fa7 !851
	fadd	fa6, fa6, fa4 !851
	fmul	fa0, fa0, fa2 !852
	lw  	a2, 36(a1) !438
	flw  	fa2, 8(a2) !443
	fmul	fa0, fa0, fa2 !852
	fadd	fa6, fa6, fa0 !852
beq_cont.26978: !846
	lw  	a2, 4(a1) !260
	addi	t0, zero, 3 !1195
	bne 	a2, t0, beq_else.26979 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa6, fa6, fa0 !1195
	jal 	zero, beq_cont.26980 !1195
beq_else.26979: !1195
beq_cont.26980: !1195
	lw  	a1, 24(a1) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.26981 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.26982 !123
bne_else.26981: !123
	addi	a2, zero, 1 !123
bne_cont.26982: !123
	bne 	a1, zero, beq_else.26983 !141
	jal 	zero, beq_cont.26984 !141
beq_else.26983: !141
	bne 	a2, zero, beq_else.26985 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.26986 !141
beq_else.26985: !141
	addi	a2, zero, 0 !141
beq_cont.26986: !141
beq_cont.26984: !141
	bne 	a2, zero, beq_else.26987 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.26988 !1196
beq_else.26987: !1196
	addi	a0, zero, 0 !1196
beq_cont.26988: !1196
beq_cont.26968: !1207
beq_cont.26952: !1205
	bne 	a0, zero, beq_else.26989 !1219
	lw  	a0, 4(sp) !1215
	lw  	a1, 8(a0) !1215
	addi	t0, zero, -1 !1216
	bne 	a1, t0, beq_else.26991 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.26992 !1216
beq_else.26991: !1216
	li  	a2, 1048624 !1219
	slli	t0, a1, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a1, 0(t0) !1219
	flw  	fa0, 88(sp) !1219
	flw  	fa1, 80(sp) !1219
	flw  	fa2, 72(sp) !1219
	addi	a0, a1, 0 !1219
	addi	sp, sp, 116 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -116 !1219
	bne 	a0, zero, beq_else.26993 !1219
	addi	a0, zero, 3 !1222
	flw  	fa0, 88(sp) !1222
	flw  	fa1, 80(sp) !1222
	flw  	fa2, 72(sp) !1222
	lw  	a1, 4(sp) !1222
	addi	sp, sp, 116 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -116 !1222
	jal 	zero, beq_cont.26994 !1219
beq_else.26993: !1219
	addi	a0, zero, 0 !1220
beq_cont.26994: !1219
beq_cont.26992: !1216
	jal 	zero, beq_cont.26990 !1219
beq_else.26989: !1219
	addi	a0, zero, 0 !1220
beq_cont.26990: !1219
beq_cont.26950: !1216
	jal 	zero, beq_cont.26948 !1219
beq_else.26947: !1219
	addi	a0, zero, 0 !1220
beq_cont.26948: !1219
beq_cont.26945: !1216
	bne 	a0, zero, beq_else.26995 !1246
	lw  	a0, 8(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 4(sp) !1233
	slli	t0, a0, 2 !1233
	add 	t0, t0, a1 !1233
	lw  	a2, 0(t0) !1233
	addi	t0, zero, -1 !1233
	bne 	a2, t0, beq_else.26996 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26996: !1233
	slli	t0, a0, 2 !1236
	add 	t0, t0, a1 !1236
	lw  	a2, 0(t0) !1236
	li  	a3, 1049128 !0
	li  	a4, 1049564 !0
	sw  	a0, 116(sp) !1237
	sw  	a2, 120(sp) !1237
	addi	a1, a4, 0 !1237
	addi	a0, a2, 0 !1237
	addi	a2, a3, 0 !1237
	addi	sp, sp, 124 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -124 !1237
	li  	a1, 1049116 !1238
	lw  	fa0, 0(a1) !1238
	bne 	a0, zero, beq_else.26997 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.26998 !1239
beq_else.26997: !1239
	li  	fa1, -0.200000 !1239
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.26999 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27000 !121
bne_else.26999: !121
	addi	a0, zero, 1 !121
bne_cont.27000: !121
beq_cont.26998: !1239
	bne 	a0, zero, beq_else.27001 !1239
	li  	a0, 1048624 !1255
	lw  	a1, 120(sp) !1255
	slli	t0, a1, 2 !1255
	add 	t0, t0, a0 !1255
	lw  	a0, 0(t0) !1255
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27002 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27002: !1255
	lw  	a0, 116(sp) !1256
	addi	a0, a0, 1 !1256
	lw  	a1, 4(sp) !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.27001: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	li  	a0, 1048888 !1243
	lw  	fa1, 0(a0) !1243
	fmul	fa1, fa1, fa0 !1243
	li  	a0, 1049128 !1243
	lw  	fa2, 0(a0) !1243
	fadd	fa1, fa1, fa2 !1243
	li  	a0, 1048888 !1244
	lw  	fa2, 4(a0) !1244
	fmul	fa2, fa2, fa0 !1244
	li  	a0, 1049128 !1244
	lw  	fa3, 4(a0) !1244
	fadd	fa2, fa2, fa3 !1244
	li  	a0, 1048888 !1245
	lw  	fa3, 8(a0) !1245
	fmul	fa3, fa3, fa0 !1245
	li  	a0, 1049128 !1245
	lw  	fa0, 8(a0) !1245
	fadd	fa3, fa3, fa0 !1245
	lw  	a1, 4(sp) !1215
	lw  	a0, 0(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27003 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27004 !1216
beq_else.27003: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	lw  	a2, 20(a0) !338
	flw  	fa0, 0(a2) !343
	fsub	fa0, fa1, fa0 !1201
	lw  	a2, 20(a0) !348
	flw  	fa4, 4(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 20(a0) !358
	flw  	fa5, 8(a2) !363
	fsub	fa5, fa3, fa5 !1203
	lw  	a2, 4(a0) !260
	fsw 	fa3, 128(sp) !1205
	fsw 	fa2, 136(sp) !1205
	fsw 	fa1, 144(sp) !1205
	addi	t0, zero, 1 !1205
	bne 	a2, t0, beq_else.27006 !1205
	fsw 	fa5, 152(sp) !1178
	fsw 	fa4, 160(sp) !1178
	sw  	a0, 168(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 168(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27008 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27009 !121
bne_else.27008: !121
	addi	a1, zero, 1 !121
bne_cont.27009: !121
	bne 	a1, zero, beq_else.27010 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.27011 !1178
beq_else.27010: !1178
	flw  	fa0, 160(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 168(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27012 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27013 !121
bne_else.27012: !121
	addi	a1, zero, 1 !121
bne_cont.27013: !121
	bne 	a1, zero, beq_else.27014 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.27015 !1179
beq_else.27014: !1179
	flw  	fa0, 152(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 168(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27016 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27017 !121
bne_else.27016: !121
	addi	a1, zero, 1 !121
bne_cont.27017: !121
beq_cont.27015: !1179
beq_cont.27011: !1178
	bne 	a1, zero, beq_else.27018 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27020 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.27021 !1183
beq_else.27020: !1183
	addi	a0, zero, 0 !1183
beq_cont.27021: !1183
	jal 	zero, beq_cont.27019 !1177
beq_else.27018: !1177
	lw  	a0, 24(a0) !280
beq_cont.27019: !1177
	jal 	zero, beq_cont.27007 !1205
beq_else.27006: !1205
	addi	t0, zero, 2 !1207
	bne 	a2, t0, beq_else.27022 !1207
	lw  	a2, 16(a0) !328
	flw  	fa6, 0(a2) !213
	fmul	fa6, fa6, fa0 !213
	flw  	fa0, 4(a2) !213
	fmul	fa0, fa0, fa4 !213
	fadd	fa6, fa6, fa0 !213
	flw  	fa0, 8(a2) !213
	fmul	fa0, fa0, fa5 !213
	fadd	fa6, fa6, fa0 !213
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27024 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27025 !123
bne_else.27024: !123
	addi	a2, zero, 1 !123
bne_cont.27025: !123
	bne 	a0, zero, beq_else.27026 !141
	jal 	zero, beq_cont.27027 !141
beq_else.27026: !141
	bne 	a2, zero, beq_else.27028 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27029 !141
beq_else.27028: !141
	addi	a2, zero, 0 !141
beq_cont.27029: !141
beq_cont.27027: !141
	bne 	a2, zero, beq_else.27030 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.27031 !1189
beq_else.27030: !1189
	addi	a0, zero, 0 !1189
beq_cont.27031: !1189
	jal 	zero, beq_cont.27023 !1207
beq_else.27022: !1207
	fmul	fa6, fa0, fa0 !126
	lw  	a2, 16(a0) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a0) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 16(a0) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.27032 !846
	jal 	zero, beq_cont.27033 !846
beq_else.27032: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 36(a0) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa0 !851
	lw  	a2, 36(a0) !428
	flw  	fa7, 4(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa6, fa6, fa5 !851
	fmul	fa0, fa0, fa4 !852
	lw  	a2, 36(a0) !438
	flw  	fa4, 8(a2) !443
	fmul	fa0, fa0, fa4 !852
	fadd	fa6, fa6, fa0 !852
beq_cont.27033: !846
	lw  	a2, 4(a0) !260
	addi	t0, zero, 3 !1195
	bne 	a2, t0, beq_else.27034 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa6, fa6, fa0 !1195
	jal 	zero, beq_cont.27035 !1195
beq_else.27034: !1195
beq_cont.27035: !1195
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27036 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27037 !123
bne_else.27036: !123
	addi	a2, zero, 1 !123
bne_cont.27037: !123
	bne 	a0, zero, beq_else.27038 !141
	jal 	zero, beq_cont.27039 !141
beq_else.27038: !141
	bne 	a2, zero, beq_else.27040 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27041 !141
beq_else.27040: !141
	addi	a2, zero, 0 !141
beq_cont.27041: !141
beq_cont.27039: !141
	bne 	a2, zero, beq_else.27042 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.27043 !1196
beq_else.27042: !1196
	addi	a0, zero, 0 !1196
beq_cont.27043: !1196
beq_cont.27023: !1207
beq_cont.27007: !1205
	bne 	a0, zero, beq_else.27044 !1219
	lw  	a1, 4(sp) !1215
	lw  	a0, 4(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27046 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27047 !1216
beq_else.27046: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	flw  	fa0, 144(sp) !1219
	flw  	fa1, 136(sp) !1219
	flw  	fa2, 128(sp) !1219
	addi	sp, sp, 172 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -172 !1219
	bne 	a0, zero, beq_else.27048 !1219
	addi	a0, zero, 2 !1222
	flw  	fa0, 144(sp) !1222
	flw  	fa1, 136(sp) !1222
	flw  	fa2, 128(sp) !1222
	lw  	a1, 4(sp) !1222
	addi	sp, sp, 172 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -172 !1222
	jal 	zero, beq_cont.27049 !1219
beq_else.27048: !1219
	addi	a0, zero, 0 !1220
beq_cont.27049: !1219
beq_cont.27047: !1216
	jal 	zero, beq_cont.27045 !1219
beq_else.27044: !1219
	addi	a0, zero, 0 !1220
beq_cont.27045: !1219
beq_cont.27004: !1216
	bne 	a0, zero, beq_else.27050 !1246
	lw  	a0, 116(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 4(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.27050: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.26995: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_group.2698:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1263
	add 	t0, t0, a1 !1263
	lw  	a2, 0(t0) !1263
	addi	t0, zero, -1 !1264
	bne 	a2, t0, beq_else.27051 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27051: !1264
	li  	a3, 1048908 !1267
	slli	t0, a2, 2 !1267
	add 	t0, t0, a3 !1267
	lw  	a2, 0(t0) !1267
	lw  	a3, 0(a2) !1233
	sw  	a1, 4(sp) !1233
	sw  	a0, 8(sp) !1233
	addi	t0, zero, -1 !1233
	bne 	a3, t0, beq_else.27052 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.27053 !1233
beq_else.27052: !1233
	lw  	a3, 0(a2) !1236
	li  	a4, 1049128 !0
	li  	a5, 1049564 !0
	sw  	a2, 12(sp) !1237
	sw  	a3, 16(sp) !1237
	addi	a2, a4, 0 !1237
	addi	a1, a5, 0 !1237
	addi	a0, a3, 0 !1237
	addi	sp, sp, 20 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -20 !1237
	li  	a1, 1049116 !1238
	lw  	fa0, 0(a1) !1238
	bne 	a0, zero, beq_else.27054 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.27055 !1239
beq_else.27054: !1239
	li  	fa1, -0.200000 !1239
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27056 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27057 !121
bne_else.27056: !121
	addi	a0, zero, 1 !121
bne_cont.27057: !121
beq_cont.27055: !1239
	bne 	a0, zero, beq_else.27058 !1239
	li  	a0, 1048624 !1255
	lw  	a1, 16(sp) !1255
	slli	t0, a1, 2 !1255
	add 	t0, t0, a0 !1255
	lw  	a0, 0(t0) !1255
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27060 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.27061 !1255
beq_else.27060: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 12(sp) !1256
	addi	sp, sp, 20 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -20 !1256
beq_cont.27061: !1255
	jal 	zero, beq_cont.27059 !1239
beq_else.27058: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	li  	a0, 1048888 !1243
	lw  	fa1, 0(a0) !1243
	fmul	fa1, fa1, fa0 !1243
	li  	a0, 1049128 !1243
	lw  	fa2, 0(a0) !1243
	fadd	fa1, fa1, fa2 !1243
	li  	a0, 1048888 !1244
	lw  	fa2, 4(a0) !1244
	fmul	fa2, fa2, fa0 !1244
	li  	a0, 1049128 !1244
	lw  	fa3, 4(a0) !1244
	fadd	fa2, fa2, fa3 !1244
	li  	a0, 1048888 !1245
	lw  	fa3, 8(a0) !1245
	fmul	fa3, fa3, fa0 !1245
	li  	a0, 1049128 !1245
	lw  	fa0, 8(a0) !1245
	fadd	fa3, fa3, fa0 !1245
	lw  	a1, 12(sp) !1215
	lw  	a0, 0(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27062 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27063 !1216
beq_else.27062: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	lw  	a2, 20(a0) !338
	flw  	fa0, 0(a2) !343
	fsub	fa0, fa1, fa0 !1201
	lw  	a2, 20(a0) !348
	flw  	fa4, 4(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 20(a0) !358
	flw  	fa5, 8(a2) !363
	fsub	fa5, fa3, fa5 !1203
	lw  	a2, 4(a0) !260
	fsw 	fa3, 24(sp) !1205
	fsw 	fa2, 32(sp) !1205
	fsw 	fa1, 40(sp) !1205
	addi	t0, zero, 1 !1205
	bne 	a2, t0, beq_else.27065 !1205
	fsw 	fa5, 48(sp) !1178
	fsw 	fa4, 56(sp) !1178
	sw  	a0, 64(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 64(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27067 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27068 !121
bne_else.27067: !121
	addi	a1, zero, 1 !121
bne_cont.27068: !121
	bne 	a1, zero, beq_else.27069 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.27070 !1178
beq_else.27069: !1178
	flw  	fa0, 56(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 64(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27071 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27072 !121
bne_else.27071: !121
	addi	a1, zero, 1 !121
bne_cont.27072: !121
	bne 	a1, zero, beq_else.27073 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.27074 !1179
beq_else.27073: !1179
	flw  	fa0, 48(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 64(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27075 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27076 !121
bne_else.27075: !121
	addi	a1, zero, 1 !121
bne_cont.27076: !121
beq_cont.27074: !1179
beq_cont.27070: !1178
	bne 	a1, zero, beq_else.27077 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27079 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.27080 !1183
beq_else.27079: !1183
	addi	a0, zero, 0 !1183
beq_cont.27080: !1183
	jal 	zero, beq_cont.27078 !1177
beq_else.27077: !1177
	lw  	a0, 24(a0) !280
beq_cont.27078: !1177
	jal 	zero, beq_cont.27066 !1205
beq_else.27065: !1205
	addi	t0, zero, 2 !1207
	bne 	a2, t0, beq_else.27081 !1207
	lw  	a2, 16(a0) !328
	flw  	fa6, 0(a2) !213
	fmul	fa6, fa6, fa0 !213
	flw  	fa0, 4(a2) !213
	fmul	fa0, fa0, fa4 !213
	fadd	fa6, fa6, fa0 !213
	flw  	fa0, 8(a2) !213
	fmul	fa0, fa0, fa5 !213
	fadd	fa6, fa6, fa0 !213
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27083 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27084 !123
bne_else.27083: !123
	addi	a2, zero, 1 !123
bne_cont.27084: !123
	bne 	a0, zero, beq_else.27085 !141
	jal 	zero, beq_cont.27086 !141
beq_else.27085: !141
	bne 	a2, zero, beq_else.27087 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27088 !141
beq_else.27087: !141
	addi	a2, zero, 0 !141
beq_cont.27088: !141
beq_cont.27086: !141
	bne 	a2, zero, beq_else.27089 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.27090 !1189
beq_else.27089: !1189
	addi	a0, zero, 0 !1189
beq_cont.27090: !1189
	jal 	zero, beq_cont.27082 !1207
beq_else.27081: !1207
	fmul	fa6, fa0, fa0 !126
	lw  	a2, 16(a0) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a0) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 16(a0) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.27091 !846
	jal 	zero, beq_cont.27092 !846
beq_else.27091: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 36(a0) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa0 !851
	lw  	a2, 36(a0) !428
	flw  	fa7, 4(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa6, fa6, fa5 !851
	fmul	fa0, fa0, fa4 !852
	lw  	a2, 36(a0) !438
	flw  	fa4, 8(a2) !443
	fmul	fa0, fa0, fa4 !852
	fadd	fa6, fa6, fa0 !852
beq_cont.27092: !846
	lw  	a2, 4(a0) !260
	addi	t0, zero, 3 !1195
	bne 	a2, t0, beq_else.27093 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa6, fa6, fa0 !1195
	jal 	zero, beq_cont.27094 !1195
beq_else.27093: !1195
beq_cont.27094: !1195
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27095 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27096 !123
bne_else.27095: !123
	addi	a2, zero, 1 !123
bne_cont.27096: !123
	bne 	a0, zero, beq_else.27097 !141
	jal 	zero, beq_cont.27098 !141
beq_else.27097: !141
	bne 	a2, zero, beq_else.27099 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27100 !141
beq_else.27099: !141
	addi	a2, zero, 0 !141
beq_cont.27100: !141
beq_cont.27098: !141
	bne 	a2, zero, beq_else.27101 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.27102 !1196
beq_else.27101: !1196
	addi	a0, zero, 0 !1196
beq_cont.27102: !1196
beq_cont.27082: !1207
beq_cont.27066: !1205
	bne 	a0, zero, beq_else.27103 !1219
	lw  	a1, 12(sp) !1215
	lw  	a0, 4(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27105 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27106 !1216
beq_else.27105: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	flw  	fa0, 40(sp) !1219
	flw  	fa1, 32(sp) !1219
	flw  	fa2, 24(sp) !1219
	addi	sp, sp, 68 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -68 !1219
	bne 	a0, zero, beq_else.27107 !1219
	addi	a0, zero, 2 !1222
	flw  	fa0, 40(sp) !1222
	flw  	fa1, 32(sp) !1222
	flw  	fa2, 24(sp) !1222
	lw  	a1, 12(sp) !1222
	addi	sp, sp, 68 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -68 !1222
	jal 	zero, beq_cont.27108 !1219
beq_else.27107: !1219
	addi	a0, zero, 0 !1220
beq_cont.27108: !1219
beq_cont.27106: !1216
	jal 	zero, beq_cont.27104 !1219
beq_else.27103: !1219
	addi	a0, zero, 0 !1220
beq_cont.27104: !1219
beq_cont.27063: !1216
	bne 	a0, zero, beq_else.27109 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 12(sp) !1249
	addi	sp, sp, 68 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -68 !1249
	jal 	zero, beq_cont.27110 !1246
beq_else.27109: !1246
	addi	a0, zero, 1 !1247
beq_cont.27110: !1246
beq_cont.27059: !1239
beq_cont.27053: !1233
	bne 	a0, zero, beq_else.27111 !1269
	lw  	a0, 8(sp) !1272
	addi	a0, a0, 1 !1272
	lw  	a1, 4(sp) !1263
	slli	t0, a0, 2 !1263
	add 	t0, t0, a1 !1263
	lw  	a2, 0(t0) !1263
	addi	t0, zero, -1 !1264
	bne 	a2, t0, beq_else.27112 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27112: !1264
	li  	a3, 1048908 !1267
	slli	t0, a2, 2 !1267
	add 	t0, t0, a3 !1267
	lw  	a2, 0(t0) !1267
	addi	a3, zero, 0 !1268
	sw  	a0, 68(sp) !1268
	addi	a1, a2, 0 !1268
	addi	a0, a3, 0 !1268
	addi	sp, sp, 72 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -72 !1268
	bne 	a0, zero, beq_else.27113 !1269
	lw  	a0, 68(sp) !1272
	addi	a0, a0, 1 !1272
	lw  	a1, 4(sp) !1272
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_group.2698 !1272
beq_else.27113: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27111: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_matrix.2701:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1278
	add 	t0, t0, a1 !1278
	lw  	a2, 0(t0) !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1 !1280
	bne 	a3, t0, beq_else.27114 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27114: !1280
	sw  	a2, 4(sp) !1284
	sw  	a1, 8(sp) !1284
	sw  	a0, 12(sp) !1284
	addi	t0, zero, 99 !1284
	bne 	a3, t0, beq_else.27115 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.27116 !1284
beq_else.27115: !1284
	li  	a4, 1048624 !984
	slli	t0, a3, 2 !984
	add 	t0, t0, a4 !984
	lw  	a4, 0(t0) !984
	li  	a5, 1049128 !985
	lw  	fa0, 0(a5) !985
	lw  	a5, 20(a4) !338
	flw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !985
	li  	a5, 1049128 !986
	lw  	fa1, 4(a5) !986
	lw  	a5, 20(a4) !348
	flw  	fa2, 4(a5) !353
	fsub	fa1, fa1, fa2 !986
	li  	a5, 1049128 !987
	lw  	fa2, 8(a5) !987
	lw  	a5, 20(a4) !358
	flw  	fa3, 8(a5) !363
	fsub	fa2, fa2, fa3 !987
	li  	a5, 1049324 !989
	slli	t0, a3, 2 !989
	add 	t0, t0, a5 !989
	lw  	a3, 0(t0) !989
	lw  	a5, 4(a4) !260
	addi	t0, zero, 1 !991
	bne 	a5, t0, beq_else.27117 !991
	li  	a5, 1049312 !0
	addi	a2, a3, 0 !992
	addi	a1, a5, 0 !992
	addi	a0, a4, 0 !992
	addi	sp, sp, 16 !992
	jal 	ra, solver_rect_fast.2610 !992
	addi	sp, sp, -16 !992
	jal 	zero, beq_cont.27118 !991
beq_else.27117: !991
	addi	t0, zero, 2 !993
	bne 	a5, t0, beq_else.27119 !993
	flw  	fa3, 0(a3) !955
	li  	fa4, 0.000000 !123
	fle 	t0, fa4, fa3 !123
	beq 	zero, t0, bne_else.27121 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.27122 !123
bne_else.27121: !123
	addi	a4, zero, 1 !123
bne_cont.27122: !123
	bne 	a4, zero, beq_else.27123 !955
	addi	a0, zero, 0 !959
	jal 	zero, beq_cont.27124 !955
beq_else.27123: !955
	flw  	fa3, 4(a3) !957
	fmul	fa3, fa3, fa0 !957
	flw  	fa0, 8(a3) !957
	fmul	fa0, fa0, fa1 !957
	fadd	fa3, fa3, fa0 !957
	flw  	fa0, 12(a3) !957
	fmul	fa0, fa0, fa2 !957
	fadd	fa3, fa3, fa0 !957
	li  	a3, 1049116 !956
	sw  	fa3, 0(a3) !956
	addi	a0, zero, 1 !958
beq_cont.27124: !955
	jal 	zero, beq_cont.27120 !993
beq_else.27119: !993
	addi	a1, a3, 0 !996
	addi	a0, a4, 0 !996
	addi	sp, sp, 16 !996
	jal 	ra, solver_second_fast.2623 !996
	addi	sp, sp, -16 !996
beq_cont.27120: !993
beq_cont.27118: !991
	bne 	a0, zero, beq_else.27125 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.27126 !1290
beq_else.27125: !1290
	li  	a0, 1049116 !1291
	lw  	fa0, 0(a0) !1291
	li  	fa1, -0.100000 !1291
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27127 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27128 !121
bne_else.27127: !121
	addi	a0, zero, 1 !121
bne_cont.27128: !121
	bne 	a0, zero, beq_else.27129 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.27130 !1291
beq_else.27129: !1291
	lw  	a0, 4(sp) !1263
	lw  	a1, 4(a0) !1263
	addi	t0, zero, -1 !1264
	bne 	a1, t0, beq_else.27131 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.27132 !1264
beq_else.27131: !1264
	li  	a2, 1048908 !1267
	slli	t0, a1, 2 !1267
	add 	t0, t0, a2 !1267
	lw  	a1, 0(t0) !1267
	addi	a2, zero, 0 !1268
	addi	a0, a2, 0 !1268
	addi	sp, sp, 16 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -16 !1268
	bne 	a0, zero, beq_else.27133 !1269
	addi	a0, zero, 2 !1272
	lw  	a1, 4(sp) !1272
	addi	sp, sp, 16 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -16 !1272
	jal 	zero, beq_cont.27134 !1269
beq_else.27133: !1269
	addi	a0, zero, 1 !1270
beq_cont.27134: !1269
beq_cont.27132: !1264
	bne 	a0, zero, beq_else.27135 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.27136 !1292
beq_else.27135: !1292
	addi	a0, zero, 1 !1293
beq_cont.27136: !1292
beq_cont.27130: !1291
beq_cont.27126: !1290
beq_cont.27116: !1284
	bne 	a0, zero, beq_else.27137 !1283
	lw  	a0, 12(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 8(sp) !1278
	slli	t0, a0, 2 !1278
	add 	t0, t0, a1 !1278
	lw  	a2, 0(t0) !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1 !1280
	bne 	a3, t0, beq_else.27138 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27138: !1280
	sw  	a2, 16(sp) !1284
	sw  	a0, 20(sp) !1284
	addi	t0, zero, 99 !1284
	bne 	a3, t0, beq_else.27139 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.27140 !1284
beq_else.27139: !1284
	li  	a4, 1049128 !0
	li  	a5, 1049564 !0
	addi	a2, a4, 0 !1287
	addi	a1, a5, 0 !1287
	addi	a0, a3, 0 !1287
	addi	sp, sp, 24 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -24 !1287
	bne 	a0, zero, beq_else.27141 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.27142 !1290
beq_else.27141: !1290
	li  	a0, 1049116 !1291
	lw  	fa0, 0(a0) !1291
	li  	fa1, -0.100000 !1291
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27143 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27144 !121
bne_else.27143: !121
	addi	a0, zero, 1 !121
bne_cont.27144: !121
	bne 	a0, zero, beq_else.27145 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.27146 !1291
beq_else.27145: !1291
	addi	a0, zero, 1 !1292
	lw  	a1, 16(sp) !1292
	addi	sp, sp, 24 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -24 !1292
	bne 	a0, zero, beq_else.27147 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.27148 !1292
beq_else.27147: !1292
	addi	a0, zero, 1 !1293
beq_cont.27148: !1292
beq_cont.27146: !1291
beq_cont.27142: !1290
beq_cont.27140: !1284
	bne 	a0, zero, beq_else.27149 !1283
	lw  	a0, 20(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 8(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.27149: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 16(sp) !1298
	addi	sp, sp, 24 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -24 !1298
	bne 	a0, zero, beq_else.27150 !1298
	lw  	a0, 20(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 8(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.27150: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27137: !1283
	lw  	a0, 4(sp) !1263
	lw  	a1, 4(a0) !1263
	addi	t0, zero, -1 !1264
	bne 	a1, t0, beq_else.27151 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.27152 !1264
beq_else.27151: !1264
	li  	a2, 1048908 !1267
	slli	t0, a1, 2 !1267
	add 	t0, t0, a2 !1267
	lw  	a1, 0(t0) !1267
	addi	a2, zero, 0 !1268
	addi	a0, a2, 0 !1268
	addi	sp, sp, 24 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -24 !1268
	bne 	a0, zero, beq_else.27153 !1269
	addi	a0, zero, 2 !1272
	lw  	a1, 4(sp) !1272
	addi	sp, sp, 24 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -24 !1272
	jal 	zero, beq_cont.27154 !1269
beq_else.27153: !1269
	addi	a0, zero, 1 !1270
beq_cont.27154: !1269
beq_cont.27152: !1264
	bne 	a0, zero, beq_else.27155 !1298
	lw  	a0, 12(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 8(sp) !1278
	slli	t0, a0, 2 !1278
	add 	t0, t0, a1 !1278
	lw  	a2, 0(t0) !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1 !1280
	bne 	a3, t0, beq_else.27156 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27156: !1280
	sw  	a2, 24(sp) !1284
	sw  	a0, 28(sp) !1284
	addi	t0, zero, 99 !1284
	bne 	a3, t0, beq_else.27157 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.27158 !1284
beq_else.27157: !1284
	li  	a4, 1049128 !0
	li  	a5, 1049564 !0
	addi	a2, a4, 0 !1287
	addi	a1, a5, 0 !1287
	addi	a0, a3, 0 !1287
	addi	sp, sp, 32 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -32 !1287
	bne 	a0, zero, beq_else.27159 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.27160 !1290
beq_else.27159: !1290
	li  	a0, 1049116 !1291
	lw  	fa0, 0(a0) !1291
	li  	fa1, -0.100000 !1291
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27161 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27162 !121
bne_else.27161: !121
	addi	a0, zero, 1 !121
bne_cont.27162: !121
	bne 	a0, zero, beq_else.27163 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.27164 !1291
beq_else.27163: !1291
	addi	a0, zero, 1 !1292
	lw  	a1, 24(sp) !1292
	addi	sp, sp, 32 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -32 !1292
	bne 	a0, zero, beq_else.27165 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.27166 !1292
beq_else.27165: !1292
	addi	a0, zero, 1 !1293
beq_cont.27166: !1292
beq_cont.27164: !1291
beq_cont.27160: !1290
beq_cont.27158: !1284
	bne 	a0, zero, beq_else.27167 !1283
	lw  	a0, 28(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 8(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.27167: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 24(sp) !1298
	addi	sp, sp, 32 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -32 !1298
	bne 	a0, zero, beq_else.27168 !1298
	lw  	a0, 28(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 8(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.27168: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27155: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_each_element.2704:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1312
	add 	t0, t0, a1 !1312
	lw  	a3, 0(t0) !1312
	addi	t0, zero, -1 !1313
	bne 	a3, t0, beq_else.27169 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27169: !1313
	li  	a4, 1048624 !905
	slli	t0, a3, 2 !905
	add 	t0, t0, a4 !905
	lw  	a4, 0(t0) !905
	li  	a5, 1049212 !907
	lw  	fa0, 0(a5) !907
	lw  	a5, 20(a4) !338
	flw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !907
	li  	a5, 1049212 !908
	lw  	fa1, 4(a5) !908
	lw  	a5, 20(a4) !348
	flw  	fa2, 4(a5) !353
	fsub	fa1, fa1, fa2 !908
	li  	a5, 1049212 !909
	lw  	fa2, 8(a5) !909
	lw  	a5, 20(a4) !358
	flw  	fa3, 8(a5) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a5, 4(a4) !260
	sw  	a2, 4(sp) !912
	sw  	a1, 8(sp) !912
	sw  	a0, 12(sp) !912
	sw  	a3, 16(sp) !912
	addi	t0, zero, 1 !912
	bne 	a5, t0, beq_else.27171 !912
	addi	a1, a2, 0 !912
	addi	a0, a4, 0 !912
	addi	sp, sp, 20 !912
	jal 	ra, solver_rect.2575 !912
	addi	sp, sp, -20 !912
	jal 	zero, beq_cont.27172 !912
beq_else.27171: !912
	addi	t0, zero, 2 !913
	bne 	a5, t0, beq_else.27173 !913
	lw  	a4, 16(a4) !328
	flw  	fa3, 0(a2) !208
	flw  	fa4, 0(a4) !208
	fmul	fa3, fa3, fa4 !208
	flw  	fa4, 4(a2) !208
	flw  	fa5, 4(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flw  	fa4, 8(a2) !208
	flw  	fa5, 8(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	li  	fa4, 0.000000 !122
	fle 	t0, fa3, fa4 !122
	beq 	zero, t0, bne_else.27175 !122
	addi	a5, zero, 0 !122
	jal 	zero, bne_cont.27176 !122
bne_else.27175: !122
	addi	a5, zero, 1 !122
bne_cont.27176: !122
	bne 	a5, zero, beq_else.27177 !833
	addi	a0, zero, 0 !836
	jal 	zero, beq_cont.27178 !833
beq_else.27177: !833
	flw  	fa4, 0(a4) !213
	fmul	fa4, fa4, fa0 !213
	flw  	fa0, 4(a4) !213
	fmul	fa0, fa0, fa1 !213
	fadd	fa4, fa4, fa0 !213
	flw  	fa0, 8(a4) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa0, fa4, fa0 !213
	fsw 	fa3, 24(sp) !834
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 24(sp) !834
	fdiv	fa0, fa0, fa1 !834
	li  	a0, 1049116 !834
	sw  	fa0, 0(a0) !834
	addi	a0, zero, 1 !835
beq_cont.27178: !833
	jal 	zero, beq_cont.27174 !913
beq_else.27173: !913
	addi	a1, a2, 0 !914
	addi	a0, a4, 0 !914
	addi	sp, sp, 32 !914
	jal 	ra, solver_second.2600 !914
	addi	sp, sp, -32 !914
beq_cont.27174: !913
beq_cont.27172: !912
	bne 	a0, zero, beq_else.27180 !1316
	li  	a0, 1048624 !1344
	lw  	a1, 16(sp) !1344
	slli	t0, a1, 2 !1344
	add 	t0, t0, a0 !1344
	lw  	a0, 0(t0) !1344
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27181 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27181: !1344
	lw  	a0, 12(sp) !1345
	addi	a0, a0, 1 !1345
	lw  	a1, 8(sp) !1345
	lw  	a2, 4(sp) !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.27180: !1316
	li  	a1, 1049116 !1320
	lw  	fa0, 0(a1) !1320
	li  	fa1, 0.000000 !1322
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27183 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27184 !121
bne_else.27183: !121
	addi	a1, zero, 1 !121
bne_cont.27184: !121
	bne 	a1, zero, beq_else.27185 !1322
	jal 	zero, beq_cont.27186 !1322
beq_else.27185: !1322
	li  	a1, 1049124 !1323
	lw  	fa1, 0(a1) !1323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27187 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27188 !121
bne_else.27187: !121
	addi	a1, zero, 1 !121
bne_cont.27188: !121
	bne 	a1, zero, beq_else.27189 !1323
	jal 	zero, beq_cont.27190 !1323
beq_else.27189: !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a2, 4(sp) !1326
	flw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	li  	a1, 1049212 !1326
	lw  	fa2, 0(a1) !1326
	fadd	fa1, fa1, fa2 !1326
	flw  	fa2, 4(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	li  	a1, 1049212 !1327
	lw  	fa3, 4(a1) !1327
	fadd	fa2, fa2, fa3 !1327
	flw  	fa3, 8(a2) !1328
	fmul	fa3, fa3, fa0 !1328
	li  	a1, 1049212 !1328
	lw  	fa4, 8(a1) !1328
	fadd	fa3, fa3, fa4 !1328
	lw  	a1, 8(sp) !1215
	lw  	a3, 0(a1) !1215
	sw  	a0, 32(sp) !1216
	fsw 	fa3, 40(sp) !1216
	fsw 	fa2, 48(sp) !1216
	fsw 	fa1, 56(sp) !1216
	fsw 	fa0, 64(sp) !1216
	addi	t0, zero, -1 !1216
	bne 	a3, t0, beq_else.27192 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27193 !1216
beq_else.27192: !1216
	li  	a4, 1048624 !1219
	slli	t0, a3, 2 !1219
	add 	t0, t0, a4 !1219
	lw  	a3, 0(t0) !1219
	addi	a0, a3, 0 !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 72 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -72 !1219
	bne 	a0, zero, beq_else.27194 !1219
	lw  	a1, 8(sp) !1215
	lw  	a0, 4(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27196 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27197 !1216
beq_else.27196: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	lw  	a2, 20(a0) !338
	flw  	fa0, 0(a2) !343
	flw  	fa1, 56(sp) !1201
	fsub	fa0, fa1, fa0 !1201
	lw  	a2, 20(a0) !348
	flw  	fa2, 4(a2) !353
	flw  	fa3, 48(sp) !1202
	fsub	fa2, fa3, fa2 !1202
	lw  	a2, 20(a0) !358
	flw  	fa4, 8(a2) !363
	flw  	fa5, 40(sp) !1203
	fsub	fa4, fa5, fa4 !1203
	lw  	a2, 4(a0) !260
	addi	t0, zero, 1 !1205
	bne 	a2, t0, beq_else.27198 !1205
	fsw 	fa4, 72(sp) !1178
	fsw 	fa2, 80(sp) !1178
	sw  	a0, 88(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 88(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27200 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27201 !121
bne_else.27200: !121
	addi	a1, zero, 1 !121
bne_cont.27201: !121
	bne 	a1, zero, beq_else.27202 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.27203 !1178
beq_else.27202: !1178
	flw  	fa0, 80(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 88(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27204 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27205 !121
bne_else.27204: !121
	addi	a1, zero, 1 !121
bne_cont.27205: !121
	bne 	a1, zero, beq_else.27206 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.27207 !1179
beq_else.27206: !1179
	flw  	fa0, 72(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 88(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27208 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27209 !121
bne_else.27208: !121
	addi	a1, zero, 1 !121
bne_cont.27209: !121
beq_cont.27207: !1179
beq_cont.27203: !1178
	bne 	a1, zero, beq_else.27210 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27212 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.27213 !1183
beq_else.27212: !1183
	addi	a0, zero, 0 !1183
beq_cont.27213: !1183
	jal 	zero, beq_cont.27211 !1177
beq_else.27210: !1177
	lw  	a0, 24(a0) !280
beq_cont.27211: !1177
	jal 	zero, beq_cont.27199 !1205
beq_else.27198: !1205
	addi	t0, zero, 2 !1207
	bne 	a2, t0, beq_else.27214 !1207
	lw  	a2, 16(a0) !328
	flw  	fa6, 0(a2) !213
	fmul	fa6, fa6, fa0 !213
	flw  	fa0, 4(a2) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa6, fa6, fa0 !213
	flw  	fa0, 8(a2) !213
	fmul	fa0, fa0, fa4 !213
	fadd	fa6, fa6, fa0 !213
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27216 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27217 !123
bne_else.27216: !123
	addi	a2, zero, 1 !123
bne_cont.27217: !123
	bne 	a0, zero, beq_else.27218 !141
	jal 	zero, beq_cont.27219 !141
beq_else.27218: !141
	bne 	a2, zero, beq_else.27220 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27221 !141
beq_else.27220: !141
	addi	a2, zero, 0 !141
beq_cont.27221: !141
beq_cont.27219: !141
	bne 	a2, zero, beq_else.27222 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.27223 !1189
beq_else.27222: !1189
	addi	a0, zero, 0 !1189
beq_cont.27223: !1189
	jal 	zero, beq_cont.27215 !1207
beq_else.27214: !1207
	fmul	fa6, fa0, fa0 !126
	lw  	a2, 16(a0) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa2, fa2 !126
	lw  	a2, 16(a0) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a0) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.27224 !846
	jal 	zero, beq_cont.27225 !846
beq_else.27224: !846
	fmul	fa7, fa2, fa4 !850
	lw  	a2, 36(a0) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa4, fa4, fa0 !851
	lw  	a2, 36(a0) !428
	flw  	fa7, 4(a2) !433
	fmul	fa4, fa4, fa7 !851
	fadd	fa6, fa6, fa4 !851
	fmul	fa0, fa0, fa2 !852
	lw  	a2, 36(a0) !438
	flw  	fa2, 8(a2) !443
	fmul	fa0, fa0, fa2 !852
	fadd	fa6, fa6, fa0 !852
beq_cont.27225: !846
	lw  	a2, 4(a0) !260
	addi	t0, zero, 3 !1195
	bne 	a2, t0, beq_else.27226 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa6, fa6, fa0 !1195
	jal 	zero, beq_cont.27227 !1195
beq_else.27226: !1195
beq_cont.27227: !1195
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27228 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27229 !123
bne_else.27228: !123
	addi	a2, zero, 1 !123
bne_cont.27229: !123
	bne 	a0, zero, beq_else.27230 !141
	jal 	zero, beq_cont.27231 !141
beq_else.27230: !141
	bne 	a2, zero, beq_else.27232 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27233 !141
beq_else.27232: !141
	addi	a2, zero, 0 !141
beq_cont.27233: !141
beq_cont.27231: !141
	bne 	a2, zero, beq_else.27234 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.27235 !1196
beq_else.27234: !1196
	addi	a0, zero, 0 !1196
beq_cont.27235: !1196
beq_cont.27215: !1207
beq_cont.27199: !1205
	bne 	a0, zero, beq_else.27236 !1219
	lw  	a1, 8(sp) !1215
	lw  	a0, 8(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27238 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27239 !1216
beq_else.27238: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	flw  	fa0, 56(sp) !1219
	flw  	fa1, 48(sp) !1219
	flw  	fa2, 40(sp) !1219
	addi	sp, sp, 92 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -92 !1219
	bne 	a0, zero, beq_else.27240 !1219
	addi	a0, zero, 3 !1222
	flw  	fa0, 56(sp) !1222
	flw  	fa1, 48(sp) !1222
	flw  	fa2, 40(sp) !1222
	lw  	a1, 8(sp) !1222
	addi	sp, sp, 92 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -92 !1222
	jal 	zero, beq_cont.27241 !1219
beq_else.27240: !1219
	addi	a0, zero, 0 !1220
beq_cont.27241: !1219
beq_cont.27239: !1216
	jal 	zero, beq_cont.27237 !1219
beq_else.27236: !1219
	addi	a0, zero, 0 !1220
beq_cont.27237: !1219
beq_cont.27197: !1216
	jal 	zero, beq_cont.27195 !1219
beq_else.27194: !1219
	addi	a0, zero, 0 !1220
beq_cont.27195: !1219
beq_cont.27193: !1216
	bne 	a0, zero, beq_else.27242 !1329
	jal 	zero, beq_cont.27243 !1329
beq_else.27242: !1329
	li  	a0, 1049124 !1331
	lw  	a1, 64(sp) !1331
	sw  	a1, 0(a0) !1331
	li  	a0, 1049128 !169
	lw  	a1, 56(sp) !169
	sw  	a1, 0(a0) !169
	li  	a0, 1049128 !170
	lw  	a1, 48(sp) !170
	sw  	a1, 4(a0) !170
	li  	a0, 1049128 !171
	lw  	a1, 40(sp) !171
	sw  	a1, 8(a0) !171
	li  	a0, 1049140 !1333
	lw  	a1, 16(sp) !1333
	sw  	a1, 0(a0) !1333
	li  	a0, 1049120 !1334
	lw  	a1, 32(sp) !1334
	sw  	a1, 0(a0) !1334
beq_cont.27243: !1329
beq_cont.27190: !1323
beq_cont.27186: !1322
	lw  	a0, 12(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 8(sp) !1340
	lw  	a2, 4(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
solve_one_or_network.2708:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a3, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a3, t0, beq_else.27244 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27244: !1354
	li  	a4, 1048908 !1355
	slli	t0, a3, 2 !1355
	add 	t0, t0, a4 !1355
	lw  	a3, 0(t0) !1355
	addi	a4, zero, 0 !1356
	sw  	a2, 4(sp) !1356
	sw  	a1, 8(sp) !1356
	sw  	a0, 12(sp) !1356
	addi	a1, a3, 0 !1356
	addi	a0, a4, 0 !1356
	addi	sp, sp, 16 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -16 !1356
	lw  	a0, 12(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1353
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a2, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a2, t0, beq_else.27246 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27246: !1354
	li  	a3, 1048908 !1355
	slli	t0, a2, 2 !1355
	add 	t0, t0, a3 !1355
	lw  	a2, 0(t0) !1355
	addi	a3, zero, 0 !1356
	lw  	a4, 4(sp) !1356
	sw  	a0, 16(sp) !1356
	addi	a1, a2, 0 !1356
	addi	a0, a3, 0 !1356
	addi	a2, a4, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	lw  	a0, 16(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1353
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a2, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a2, t0, beq_else.27248 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27248: !1354
	li  	a3, 1048908 !1355
	slli	t0, a2, 2 !1355
	add 	t0, t0, a3 !1355
	lw  	a2, 0(t0) !1355
	addi	a3, zero, 0 !1356
	lw  	a4, 4(sp) !1356
	sw  	a0, 20(sp) !1356
	addi	a1, a2, 0 !1356
	addi	a0, a3, 0 !1356
	addi	a2, a4, 0 !1356
	addi	sp, sp, 24 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -24 !1356
	lw  	a0, 20(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1353
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a2, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a2, t0, beq_else.27250 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27250: !1354
	li  	a3, 1048908 !1355
	slli	t0, a2, 2 !1355
	add 	t0, t0, a3 !1355
	lw  	a2, 0(t0) !1355
	addi	a3, zero, 0 !1356
	lw  	a4, 4(sp) !1356
	sw  	a0, 24(sp) !1356
	addi	a1, a2, 0 !1356
	addi	a0, a3, 0 !1356
	addi	a2, a4, 0 !1356
	addi	sp, sp, 28 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -28 !1356
	lw  	a0, 24(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1353
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a2, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a2, t0, beq_else.27252 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27252: !1354
	li  	a3, 1048908 !1355
	slli	t0, a2, 2 !1355
	add 	t0, t0, a3 !1355
	lw  	a2, 0(t0) !1355
	addi	a3, zero, 0 !1356
	lw  	a4, 4(sp) !1356
	sw  	a0, 28(sp) !1356
	addi	a1, a2, 0 !1356
	addi	a0, a3, 0 !1356
	addi	a2, a4, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	lw  	a0, 28(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1353
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a2, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a2, t0, beq_else.27254 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27254: !1354
	li  	a3, 1048908 !1355
	slli	t0, a2, 2 !1355
	add 	t0, t0, a3 !1355
	lw  	a2, 0(t0) !1355
	addi	a3, zero, 0 !1356
	lw  	a4, 4(sp) !1356
	sw  	a0, 32(sp) !1356
	addi	a1, a2, 0 !1356
	addi	a0, a3, 0 !1356
	addi	a2, a4, 0 !1356
	addi	sp, sp, 36 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -36 !1356
	lw  	a0, 32(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1353
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a2, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a2, t0, beq_else.27256 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27256: !1354
	li  	a3, 1048908 !1355
	slli	t0, a2, 2 !1355
	add 	t0, t0, a3 !1355
	lw  	a2, 0(t0) !1355
	addi	a3, zero, 0 !1356
	lw  	a4, 4(sp) !1356
	sw  	a0, 36(sp) !1356
	addi	a1, a2, 0 !1356
	addi	a0, a3, 0 !1356
	addi	a2, a4, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1353
	slli	t0, a0, 2 !1353
	add 	t0, t0, a1 !1353
	lw  	a2, 0(t0) !1353
	addi	t0, zero, -1 !1354
	bne 	a2, t0, beq_else.27258 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27258: !1354
	li  	a3, 1048908 !1355
	slli	t0, a2, 2 !1355
	add 	t0, t0, a3 !1355
	lw  	a2, 0(t0) !1355
	addi	a3, zero, 0 !1356
	lw  	a4, 4(sp) !1356
	sw  	a0, 40(sp) !1356
	addi	a1, a2, 0 !1356
	addi	a0, a3, 0 !1356
	addi	a2, a4, 0 !1356
	addi	sp, sp, 44 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -44 !1356
	lw  	a0, 40(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 8(sp) !1357
	lw  	a2, 4(sp) !1357
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network.2708 !1357
trace_or_matrix.2712:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1363
	add 	t0, t0, a1 !1363
	lw  	a3, 0(t0) !1363
	lw  	a4, 0(a3) !1364
	addi	t0, zero, -1 !1365
	bne 	a4, t0, beq_else.27260 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27260: !1365
	sw  	a2, 4(sp) !1368
	sw  	a1, 8(sp) !1368
	sw  	a0, 12(sp) !1368
	addi	t0, zero, 99 !1368
	bne 	a4, t0, beq_else.27262 !1368
	lw  	a4, 4(a3) !1353
	addi	t0, zero, -1 !1354
	bne 	a4, t0, beq_else.27264 !1354
	jal 	zero, beq_cont.27265 !1354
beq_else.27264: !1354
	li  	a5, 1048908 !1355
	slli	t0, a4, 2 !1355
	add 	t0, t0, a5 !1355
	lw  	a4, 0(t0) !1355
	addi	a5, zero, 0 !1356
	sw  	a3, 16(sp) !1356
	addi	a1, a4, 0 !1356
	addi	a0, a5, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 8(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27266 !1354
	jal 	zero, beq_cont.27267 !1354
beq_else.27266: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 12(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27268 !1354
	jal 	zero, beq_cont.27269 !1354
beq_else.27268: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 16(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27270 !1354
	jal 	zero, beq_cont.27271 !1354
beq_else.27270: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 20(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27272 !1354
	jal 	zero, beq_cont.27273 !1354
beq_else.27272: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 24(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27274 !1354
	jal 	zero, beq_cont.27275 !1354
beq_else.27274: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 28(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27276 !1354
	jal 	zero, beq_cont.27277 !1354
beq_else.27276: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	addi	a0, zero, 8 !1357
	lw  	a1, 16(sp) !1357
	lw  	a2, 4(sp) !1357
	addi	sp, sp, 20 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -20 !1357
beq_cont.27277: !1354
beq_cont.27275: !1354
beq_cont.27273: !1354
beq_cont.27271: !1354
beq_cont.27269: !1354
beq_cont.27267: !1354
beq_cont.27265: !1354
	jal 	zero, beq_cont.27263 !1368
beq_else.27262: !1368
	li  	a5, 1048624 !905
	slli	t0, a4, 2 !905
	add 	t0, t0, a5 !905
	lw  	a4, 0(t0) !905
	li  	a5, 1049212 !907
	lw  	fa0, 0(a5) !907
	lw  	a5, 20(a4) !338
	flw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !907
	li  	a5, 1049212 !908
	lw  	fa1, 4(a5) !908
	lw  	a5, 20(a4) !348
	flw  	fa2, 4(a5) !353
	fsub	fa1, fa1, fa2 !908
	li  	a5, 1049212 !909
	lw  	fa2, 8(a5) !909
	lw  	a5, 20(a4) !358
	flw  	fa3, 8(a5) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a5, 4(a4) !260
	sw  	a3, 16(sp) !912
	addi	t0, zero, 1 !912
	bne 	a5, t0, beq_else.27278 !912
	addi	a1, a2, 0 !912
	addi	a0, a4, 0 !912
	addi	sp, sp, 20 !912
	jal 	ra, solver_rect.2575 !912
	addi	sp, sp, -20 !912
	jal 	zero, beq_cont.27279 !912
beq_else.27278: !912
	addi	t0, zero, 2 !913
	bne 	a5, t0, beq_else.27280 !913
	lw  	a4, 16(a4) !328
	flw  	fa3, 0(a2) !208
	flw  	fa4, 0(a4) !208
	fmul	fa3, fa3, fa4 !208
	flw  	fa4, 4(a2) !208
	flw  	fa5, 4(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flw  	fa4, 8(a2) !208
	flw  	fa5, 8(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	li  	fa4, 0.000000 !122
	fle 	t0, fa3, fa4 !122
	beq 	zero, t0, bne_else.27282 !122
	addi	a5, zero, 0 !122
	jal 	zero, bne_cont.27283 !122
bne_else.27282: !122
	addi	a5, zero, 1 !122
bne_cont.27283: !122
	bne 	a5, zero, beq_else.27284 !833
	addi	a0, zero, 0 !836
	jal 	zero, beq_cont.27285 !833
beq_else.27284: !833
	flw  	fa4, 0(a4) !213
	fmul	fa4, fa4, fa0 !213
	flw  	fa0, 4(a4) !213
	fmul	fa0, fa0, fa1 !213
	fadd	fa4, fa4, fa0 !213
	flw  	fa0, 8(a4) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa0, fa4, fa0 !213
	fsw 	fa3, 24(sp) !834
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 24(sp) !834
	fdiv	fa0, fa0, fa1 !834
	li  	a0, 1049116 !834
	sw  	fa0, 0(a0) !834
	addi	a0, zero, 1 !835
beq_cont.27285: !833
	jal 	zero, beq_cont.27281 !913
beq_else.27280: !913
	addi	a1, a2, 0 !914
	addi	a0, a4, 0 !914
	addi	sp, sp, 32 !914
	jal 	ra, solver_second.2600 !914
	addi	sp, sp, -32 !914
beq_cont.27281: !913
beq_cont.27279: !912
	bne 	a0, zero, beq_else.27287 !1374
	jal 	zero, beq_cont.27288 !1374
beq_else.27287: !1374
	li  	a0, 1049116 !1375
	lw  	fa0, 0(a0) !1375
	li  	a0, 1049124 !1376
	lw  	fa1, 0(a0) !1376
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27289 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27290 !121
bne_else.27289: !121
	addi	a0, zero, 1 !121
bne_cont.27290: !121
	bne 	a0, zero, beq_else.27291 !1376
	jal 	zero, beq_cont.27292 !1376
beq_else.27291: !1376
	lw  	a0, 16(sp) !1353
	lw  	a1, 4(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27293 !1354
	jal 	zero, beq_cont.27294 !1354
beq_else.27293: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 8(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27295 !1354
	jal 	zero, beq_cont.27296 !1354
beq_else.27295: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 12(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27297 !1354
	jal 	zero, beq_cont.27298 !1354
beq_else.27297: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 16(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27299 !1354
	jal 	zero, beq_cont.27300 !1354
beq_else.27299: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 20(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27301 !1354
	jal 	zero, beq_cont.27302 !1354
beq_else.27301: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 24(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27303 !1354
	jal 	zero, beq_cont.27304 !1354
beq_else.27303: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	lw  	a0, 16(sp) !1353
	lw  	a1, 28(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27305 !1354
	jal 	zero, beq_cont.27306 !1354
beq_else.27305: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 32 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -32 !1356
	addi	a0, zero, 8 !1357
	lw  	a1, 16(sp) !1357
	lw  	a2, 4(sp) !1357
	addi	sp, sp, 32 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -32 !1357
beq_cont.27306: !1354
beq_cont.27304: !1354
beq_cont.27302: !1354
beq_cont.27300: !1354
beq_cont.27298: !1354
beq_cont.27296: !1354
beq_cont.27294: !1354
beq_cont.27292: !1376
beq_cont.27288: !1374
beq_cont.27263: !1368
	lw  	a0, 12(sp) !1381
	addi	a0, a0, 1 !1381
	lw  	a1, 8(sp) !1363
	slli	t0, a0, 2 !1363
	add 	t0, t0, a1 !1363
	lw  	a2, 0(t0) !1363
	lw  	a3, 0(a2) !1364
	addi	t0, zero, -1 !1365
	bne 	a3, t0, beq_else.27307 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27307: !1365
	sw  	a0, 32(sp) !1368
	addi	t0, zero, 99 !1368
	bne 	a3, t0, beq_else.27309 !1368
	lw  	a3, 4(a2) !1353
	addi	t0, zero, -1 !1354
	bne 	a3, t0, beq_else.27311 !1354
	jal 	zero, beq_cont.27312 !1354
beq_else.27311: !1354
	li  	a4, 1048908 !1355
	slli	t0, a3, 2 !1355
	add 	t0, t0, a4 !1355
	lw  	a3, 0(t0) !1355
	addi	a4, zero, 0 !1356
	lw  	a5, 4(sp) !1356
	sw  	a2, 36(sp) !1356
	addi	a2, a5, 0 !1356
	addi	a1, a3, 0 !1356
	addi	a0, a4, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 8(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27313 !1354
	jal 	zero, beq_cont.27314 !1354
beq_else.27313: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 12(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27315 !1354
	jal 	zero, beq_cont.27316 !1354
beq_else.27315: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 16(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27317 !1354
	jal 	zero, beq_cont.27318 !1354
beq_else.27317: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 20(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27319 !1354
	jal 	zero, beq_cont.27320 !1354
beq_else.27319: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 24(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27321 !1354
	jal 	zero, beq_cont.27322 !1354
beq_else.27321: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	addi	a0, zero, 7 !1357
	lw  	a1, 36(sp) !1357
	lw  	a2, 4(sp) !1357
	addi	sp, sp, 40 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -40 !1357
beq_cont.27322: !1354
beq_cont.27320: !1354
beq_cont.27318: !1354
beq_cont.27316: !1354
beq_cont.27314: !1354
beq_cont.27312: !1354
	jal 	zero, beq_cont.27310 !1368
beq_else.27309: !1368
	li  	a4, 1049212 !0
	lw  	a5, 4(sp) !1373
	sw  	a2, 36(sp) !1373
	addi	a2, a4, 0 !1373
	addi	a1, a5, 0 !1373
	addi	a0, a3, 0 !1373
	addi	sp, sp, 40 !1373
	jal 	ra, solver.2606 !1373
	addi	sp, sp, -40 !1373
	bne 	a0, zero, beq_else.27323 !1374
	jal 	zero, beq_cont.27324 !1374
beq_else.27323: !1374
	li  	a0, 1049116 !1375
	lw  	fa0, 0(a0) !1375
	li  	a0, 1049124 !1376
	lw  	fa1, 0(a0) !1376
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27325 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27326 !121
bne_else.27325: !121
	addi	a0, zero, 1 !121
bne_cont.27326: !121
	bne 	a0, zero, beq_else.27327 !1376
	jal 	zero, beq_cont.27328 !1376
beq_else.27327: !1376
	lw  	a0, 36(sp) !1353
	lw  	a1, 4(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27329 !1354
	jal 	zero, beq_cont.27330 !1354
beq_else.27329: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 8(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27331 !1354
	jal 	zero, beq_cont.27332 !1354
beq_else.27331: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 12(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27333 !1354
	jal 	zero, beq_cont.27334 !1354
beq_else.27333: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 16(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27335 !1354
	jal 	zero, beq_cont.27336 !1354
beq_else.27335: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 20(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27337 !1354
	jal 	zero, beq_cont.27338 !1354
beq_else.27337: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	lw  	a0, 36(sp) !1353
	lw  	a1, 24(a0) !1353
	addi	t0, zero, -1 !1354
	bne 	a1, t0, beq_else.27339 !1354
	jal 	zero, beq_cont.27340 !1354
beq_else.27339: !1354
	li  	a2, 1048908 !1355
	slli	t0, a1, 2 !1355
	add 	t0, t0, a2 !1355
	lw  	a1, 0(t0) !1355
	addi	a2, zero, 0 !1356
	lw  	a3, 4(sp) !1356
	addi	a0, a2, 0 !1356
	addi	a2, a3, 0 !1356
	addi	sp, sp, 40 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -40 !1356
	addi	a0, zero, 7 !1357
	lw  	a1, 36(sp) !1357
	lw  	a2, 4(sp) !1357
	addi	sp, sp, 40 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -40 !1357
beq_cont.27340: !1354
beq_cont.27338: !1354
beq_cont.27336: !1354
beq_cont.27334: !1354
beq_cont.27332: !1354
beq_cont.27330: !1354
beq_cont.27328: !1376
beq_cont.27324: !1374
beq_cont.27310: !1368
	lw  	a0, 32(sp) !1381
	addi	a0, a0, 1 !1381
	lw  	a1, 8(sp) !1381
	lw  	a2, 4(sp) !1381
	lw  	ra, 0(sp)
	jal 	zero, trace_or_matrix.2712 !1381
solve_each_element_fast.2718:
	sw  	ra, 0(sp)
	lw  	a3, 0(a2) !529
	slli	t0, a0, 2 !1404
	add 	t0, t0, a1 !1404
	lw  	a4, 0(t0) !1404
	addi	t0, zero, -1 !1405
	bne 	a4, t0, beq_else.27341 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27341: !1405
	li  	a5, 1048624 !1031
	slli	t0, a4, 2 !1031
	add 	t0, t0, a5 !1031
	lw  	a5, 0(t0) !1031
	lw  	a6, 40(a5) !449
	flw  	fa0, 0(a6) !1033
	flw  	fa1, 4(a6) !1034
	flw  	fa2, 8(a6) !1035
	lw  	a7, 4(a2) !535
	slli	t0, a4, 2 !1037
	add 	t0, t0, a7 !1037
	lw  	a7, 0(t0) !1037
	lw  	s1, 4(a5) !260
	sw  	a3, 4(sp) !1039
	sw  	a2, 8(sp) !1039
	sw  	a1, 12(sp) !1039
	sw  	a0, 16(sp) !1039
	sw  	a4, 20(sp) !1039
	addi	t0, zero, 1 !1039
	bne 	s1, t0, beq_else.27343 !1039
	lw  	a6, 0(a2) !529
	addi	a2, a7, 0 !1040
	addi	a1, a6, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 24 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -24 !1040
	jal 	zero, beq_cont.27344 !1039
beq_else.27343: !1039
	addi	t0, zero, 2 !1041
	bne 	s1, t0, beq_else.27345 !1041
	flw  	fa0, 0(a7) !1004
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27347 !123
	addi	a5, zero, 0 !123
	jal 	zero, bne_cont.27348 !123
bne_else.27347: !123
	addi	a5, zero, 1 !123
bne_cont.27348: !123
	bne 	a5, zero, beq_else.27349 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.27350 !1004
beq_else.27349: !1004
	flw  	fa0, 0(a7) !1005
	flw  	fa1, 12(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	li  	a5, 1049116 !1005
	sw  	fa0, 0(a5) !1005
	addi	a0, zero, 1 !1006
beq_cont.27350: !1004
	jal 	zero, beq_cont.27346 !1041
beq_else.27345: !1041
	flw  	fa3, 0(a7) !1013
	li  	fa4, 0.000000 !124
	feq	t0, fa3, fa4 !124
	beq 	zero, t0, bne_else.27351 !124
	addi	s1, zero, 1 !124
	jal 	zero, bne_cont.27352 !124
bne_else.27351: !124
	addi	s1, zero, 0 !124
bne_cont.27352: !124
	bne 	s1, zero, beq_else.27353 !1014
	flw  	fa4, 4(a7) !1017
	fmul	fa4, fa4, fa0 !1017
	flw  	fa0, 8(a7) !1017
	fmul	fa0, fa0, fa1 !1017
	fadd	fa4, fa4, fa0 !1017
	flw  	fa0, 12(a7) !1017
	fmul	fa0, fa0, fa2 !1017
	fadd	fa4, fa4, fa0 !1017
	flw  	fa0, 12(a6) !1018
	fmul	fa1, fa4, fa4 !126
	fmul	fa3, fa3, fa0 !1019
	fsub	fa0, fa1, fa3 !1019
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27355 !122
	addi	a6, zero, 0 !122
	jal 	zero, bne_cont.27356 !122
bne_else.27355: !122
	addi	a6, zero, 1 !122
bne_cont.27356: !122
	bne 	a6, zero, beq_else.27357 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.27358 !1020
beq_else.27357: !1020
	lw  	a5, 24(a5) !280
	bne 	a5, zero, beq_else.27359 !1021
	sw  	a7, 24(sp) !1024
	fsw 	fa4, 32(sp) !1024
	fsqrt   fa0, fa0
	flw  	fa1, 32(sp) !1024
	fsub	fa1, fa1, fa0 !1024
	lw  	a0, 24(sp) !1024
	flw  	fa0, 16(a0) !1024
	fmul	fa1, fa1, fa0 !1024
	li  	a0, 1049116 !1024
	sw  	fa1, 0(a0) !1024
	jal 	zero, beq_cont.27360 !1021
beq_else.27359: !1021
	sw  	a7, 24(sp) !1022
	fsw 	fa4, 32(sp) !1022
	fsqrt   fa0, fa0
	flw  	fa1, 32(sp) !1022
	fadd	fa1, fa1, fa0 !1022
	lw  	a0, 24(sp) !1022
	flw  	fa0, 16(a0) !1022
	fmul	fa1, fa1, fa0 !1022
	li  	a0, 1049116 !1022
	sw  	fa1, 0(a0) !1022
beq_cont.27360: !1021
	addi	a0, zero, 1 !1025
beq_cont.27358: !1020
	jal 	zero, beq_cont.27354 !1014
beq_else.27353: !1014
	addi	a0, zero, 0 !1015
beq_cont.27354: !1014
beq_cont.27346: !1041
beq_cont.27344: !1039
	bne 	a0, zero, beq_else.27362 !1408
	li  	a0, 1048624 !1436
	lw  	a1, 20(sp) !1436
	slli	t0, a1, 2 !1436
	add 	t0, t0, a0 !1436
	lw  	a0, 0(t0) !1436
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27363 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27363: !1436
	lw  	a0, 16(sp) !1437
	addi	a0, a0, 1 !1437
	lw  	a1, 12(sp) !1437
	lw  	a2, 8(sp) !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.27362: !1408
	li  	a1, 1049116 !1412
	lw  	fa0, 0(a1) !1412
	li  	fa1, 0.000000 !1414
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27365 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27366 !121
bne_else.27365: !121
	addi	a1, zero, 1 !121
bne_cont.27366: !121
	bne 	a1, zero, beq_else.27367 !1414
	jal 	zero, beq_cont.27368 !1414
beq_else.27367: !1414
	li  	a1, 1049124 !1415
	lw  	fa1, 0(a1) !1415
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27369 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27370 !121
bne_else.27369: !121
	addi	a1, zero, 1 !121
bne_cont.27370: !121
	bne 	a1, zero, beq_else.27371 !1415
	jal 	zero, beq_cont.27372 !1415
beq_else.27371: !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a1, 4(sp) !1418
	flw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	li  	a2, 1049224 !1418
	lw  	fa2, 0(a2) !1418
	fadd	fa1, fa1, fa2 !1418
	flw  	fa2, 4(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	li  	a2, 1049224 !1419
	lw  	fa3, 4(a2) !1419
	fadd	fa2, fa2, fa3 !1419
	flw  	fa3, 8(a1) !1420
	fmul	fa3, fa3, fa0 !1420
	li  	a1, 1049224 !1420
	lw  	fa4, 8(a1) !1420
	fadd	fa3, fa3, fa4 !1420
	lw  	a1, 12(sp) !1215
	lw  	a2, 0(a1) !1215
	sw  	a0, 40(sp) !1216
	fsw 	fa3, 48(sp) !1216
	fsw 	fa2, 56(sp) !1216
	fsw 	fa1, 64(sp) !1216
	fsw 	fa0, 72(sp) !1216
	addi	t0, zero, -1 !1216
	bne 	a2, t0, beq_else.27374 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27375 !1216
beq_else.27374: !1216
	li  	a3, 1048624 !1219
	slli	t0, a2, 2 !1219
	add 	t0, t0, a3 !1219
	lw  	a2, 0(t0) !1219
	addi	a0, a2, 0 !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 80 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -80 !1219
	bne 	a0, zero, beq_else.27376 !1219
	lw  	a1, 12(sp) !1215
	lw  	a0, 4(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27378 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27379 !1216
beq_else.27378: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	lw  	a2, 20(a0) !338
	flw  	fa0, 0(a2) !343
	flw  	fa1, 64(sp) !1201
	fsub	fa0, fa1, fa0 !1201
	lw  	a2, 20(a0) !348
	flw  	fa2, 4(a2) !353
	flw  	fa3, 56(sp) !1202
	fsub	fa2, fa3, fa2 !1202
	lw  	a2, 20(a0) !358
	flw  	fa4, 8(a2) !363
	flw  	fa5, 48(sp) !1203
	fsub	fa4, fa5, fa4 !1203
	lw  	a2, 4(a0) !260
	addi	t0, zero, 1 !1205
	bne 	a2, t0, beq_else.27380 !1205
	fsw 	fa4, 80(sp) !1178
	fsw 	fa2, 88(sp) !1178
	sw  	a0, 96(sp) !1178
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 96(sp) !298
	lw  	a1, 16(a0) !298
	flw  	fa1, 0(a1) !303
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27382 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27383 !121
bne_else.27382: !121
	addi	a1, zero, 1 !121
bne_cont.27383: !121
	bne 	a1, zero, beq_else.27384 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.27385 !1178
beq_else.27384: !1178
	flw  	fa0, 88(sp) !1179
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 96(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa1, 4(a1) !313
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27386 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27387 !121
bne_else.27386: !121
	addi	a1, zero, 1 !121
bne_cont.27387: !121
	bne 	a1, zero, beq_else.27388 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.27389 !1179
beq_else.27388: !1179
	flw  	fa0, 80(sp) !1180
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 96(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa1, 8(a1) !323
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27390 !121
	addi	a1, zero, 0 !121
	jal 	zero, bne_cont.27391 !121
bne_else.27390: !121
	addi	a1, zero, 1 !121
bne_cont.27391: !121
beq_cont.27389: !1179
beq_cont.27385: !1178
	bne 	a1, zero, beq_else.27392 !1177
	lw  	a0, 24(a0) !280
	bne 	a0, zero, beq_else.27394 !1183
	addi	a0, zero, 1 !1183
	jal 	zero, beq_cont.27395 !1183
beq_else.27394: !1183
	addi	a0, zero, 0 !1183
beq_cont.27395: !1183
	jal 	zero, beq_cont.27393 !1177
beq_else.27392: !1177
	lw  	a0, 24(a0) !280
beq_cont.27393: !1177
	jal 	zero, beq_cont.27381 !1205
beq_else.27380: !1205
	addi	t0, zero, 2 !1207
	bne 	a2, t0, beq_else.27396 !1207
	lw  	a2, 16(a0) !328
	flw  	fa6, 0(a2) !213
	fmul	fa6, fa6, fa0 !213
	flw  	fa0, 4(a2) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa6, fa6, fa0 !213
	flw  	fa0, 8(a2) !213
	fmul	fa0, fa0, fa4 !213
	fadd	fa6, fa6, fa0 !213
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27398 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27399 !123
bne_else.27398: !123
	addi	a2, zero, 1 !123
bne_cont.27399: !123
	bne 	a0, zero, beq_else.27400 !141
	jal 	zero, beq_cont.27401 !141
beq_else.27400: !141
	bne 	a2, zero, beq_else.27402 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27403 !141
beq_else.27402: !141
	addi	a2, zero, 0 !141
beq_cont.27403: !141
beq_cont.27401: !141
	bne 	a2, zero, beq_else.27404 !1189
	addi	a0, zero, 1 !1189
	jal 	zero, beq_cont.27405 !1189
beq_else.27404: !1189
	addi	a0, zero, 0 !1189
beq_cont.27405: !1189
	jal 	zero, beq_cont.27397 !1207
beq_else.27396: !1207
	fmul	fa6, fa0, fa0 !126
	lw  	a2, 16(a0) !298
	flw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa2, fa2 !126
	lw  	a2, 16(a0) !308
	flw  	fs1, 4(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 16(a0) !318
	flw  	fs1, 8(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 12(a0) !289
	bne 	a2, zero, beq_else.27406 !846
	jal 	zero, beq_cont.27407 !846
beq_else.27406: !846
	fmul	fa7, fa2, fa4 !850
	lw  	a2, 36(a0) !418
	flw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa4, fa4, fa0 !851
	lw  	a2, 36(a0) !428
	flw  	fa7, 4(a2) !433
	fmul	fa4, fa4, fa7 !851
	fadd	fa6, fa6, fa4 !851
	fmul	fa0, fa0, fa2 !852
	lw  	a2, 36(a0) !438
	flw  	fa2, 8(a2) !443
	fmul	fa0, fa0, fa2 !852
	fadd	fa6, fa6, fa0 !852
beq_cont.27407: !846
	lw  	a2, 4(a0) !260
	addi	t0, zero, 3 !1195
	bne 	a2, t0, beq_else.27408 !1195
	li  	fa0, 1.000000 !1195
	fsub	fa6, fa6, fa0 !1195
	jal 	zero, beq_cont.27409 !1195
beq_else.27408: !1195
beq_cont.27409: !1195
	lw  	a0, 24(a0) !280
	li  	fa0, 0.000000 !123
	fle 	t0, fa0, fa6 !123
	beq 	zero, t0, bne_else.27410 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27411 !123
bne_else.27410: !123
	addi	a2, zero, 1 !123
bne_cont.27411: !123
	bne 	a0, zero, beq_else.27412 !141
	jal 	zero, beq_cont.27413 !141
beq_else.27412: !141
	bne 	a2, zero, beq_else.27414 !141
	addi	a2, zero, 1 !141
	jal 	zero, beq_cont.27415 !141
beq_else.27414: !141
	addi	a2, zero, 0 !141
beq_cont.27415: !141
beq_cont.27413: !141
	bne 	a2, zero, beq_else.27416 !1196
	addi	a0, zero, 1 !1196
	jal 	zero, beq_cont.27417 !1196
beq_else.27416: !1196
	addi	a0, zero, 0 !1196
beq_cont.27417: !1196
beq_cont.27397: !1207
beq_cont.27381: !1205
	bne 	a0, zero, beq_else.27418 !1219
	lw  	a1, 12(sp) !1215
	lw  	a0, 8(a1) !1215
	addi	t0, zero, -1 !1216
	bne 	a0, t0, beq_else.27420 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.27421 !1216
beq_else.27420: !1216
	li  	a2, 1048624 !1219
	slli	t0, a0, 2 !1219
	add 	t0, t0, a2 !1219
	lw  	a0, 0(t0) !1219
	flw  	fa0, 64(sp) !1219
	flw  	fa1, 56(sp) !1219
	flw  	fa2, 48(sp) !1219
	addi	sp, sp, 100 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -100 !1219
	bne 	a0, zero, beq_else.27422 !1219
	addi	a0, zero, 3 !1222
	flw  	fa0, 64(sp) !1222
	flw  	fa1, 56(sp) !1222
	flw  	fa2, 48(sp) !1222
	lw  	a1, 12(sp) !1222
	addi	sp, sp, 100 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -100 !1222
	jal 	zero, beq_cont.27423 !1219
beq_else.27422: !1219
	addi	a0, zero, 0 !1220
beq_cont.27423: !1219
beq_cont.27421: !1216
	jal 	zero, beq_cont.27419 !1219
beq_else.27418: !1219
	addi	a0, zero, 0 !1220
beq_cont.27419: !1219
beq_cont.27379: !1216
	jal 	zero, beq_cont.27377 !1219
beq_else.27376: !1219
	addi	a0, zero, 0 !1220
beq_cont.27377: !1219
beq_cont.27375: !1216
	bne 	a0, zero, beq_else.27424 !1421
	jal 	zero, beq_cont.27425 !1421
beq_else.27424: !1421
	li  	a0, 1049124 !1423
	lw  	a1, 72(sp) !1423
	sw  	a1, 0(a0) !1423
	li  	a0, 1049128 !169
	lw  	a1, 64(sp) !169
	sw  	a1, 0(a0) !169
	li  	a0, 1049128 !170
	lw  	a1, 56(sp) !170
	sw  	a1, 4(a0) !170
	li  	a0, 1049128 !171
	lw  	a1, 48(sp) !171
	sw  	a1, 8(a0) !171
	li  	a0, 1049140 !1425
	lw  	a1, 20(sp) !1425
	sw  	a1, 0(a0) !1425
	li  	a0, 1049120 !1426
	lw  	a1, 40(sp) !1426
	sw  	a1, 0(a0) !1426
beq_cont.27425: !1421
beq_cont.27372: !1415
beq_cont.27368: !1414
	lw  	a0, 16(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 12(sp) !1432
	lw  	a2, 8(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
solve_one_or_network_fast.2722:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a3, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a3, t0, beq_else.27426 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27426: !1445
	li  	a4, 1048908 !1446
	slli	t0, a3, 2 !1446
	add 	t0, t0, a4 !1446
	lw  	a3, 0(t0) !1446
	addi	a4, zero, 0 !1447
	sw  	a2, 4(sp) !1447
	sw  	a1, 8(sp) !1447
	sw  	a0, 12(sp) !1447
	addi	a1, a3, 0 !1447
	addi	a0, a4, 0 !1447
	addi	sp, sp, 16 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -16 !1447
	lw  	a0, 12(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1444
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a2, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a2, t0, beq_else.27428 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27428: !1445
	li  	a3, 1048908 !1446
	slli	t0, a2, 2 !1446
	add 	t0, t0, a3 !1446
	lw  	a2, 0(t0) !1446
	addi	a3, zero, 0 !1447
	lw  	a4, 4(sp) !1447
	sw  	a0, 16(sp) !1447
	addi	a1, a2, 0 !1447
	addi	a0, a3, 0 !1447
	addi	a2, a4, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	lw  	a0, 16(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1444
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a2, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a2, t0, beq_else.27430 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27430: !1445
	li  	a3, 1048908 !1446
	slli	t0, a2, 2 !1446
	add 	t0, t0, a3 !1446
	lw  	a2, 0(t0) !1446
	addi	a3, zero, 0 !1447
	lw  	a4, 4(sp) !1447
	sw  	a0, 20(sp) !1447
	addi	a1, a2, 0 !1447
	addi	a0, a3, 0 !1447
	addi	a2, a4, 0 !1447
	addi	sp, sp, 24 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -24 !1447
	lw  	a0, 20(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1444
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a2, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a2, t0, beq_else.27432 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27432: !1445
	li  	a3, 1048908 !1446
	slli	t0, a2, 2 !1446
	add 	t0, t0, a3 !1446
	lw  	a2, 0(t0) !1446
	addi	a3, zero, 0 !1447
	lw  	a4, 4(sp) !1447
	sw  	a0, 24(sp) !1447
	addi	a1, a2, 0 !1447
	addi	a0, a3, 0 !1447
	addi	a2, a4, 0 !1447
	addi	sp, sp, 28 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -28 !1447
	lw  	a0, 24(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1444
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a2, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a2, t0, beq_else.27434 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27434: !1445
	li  	a3, 1048908 !1446
	slli	t0, a2, 2 !1446
	add 	t0, t0, a3 !1446
	lw  	a2, 0(t0) !1446
	addi	a3, zero, 0 !1447
	lw  	a4, 4(sp) !1447
	sw  	a0, 28(sp) !1447
	addi	a1, a2, 0 !1447
	addi	a0, a3, 0 !1447
	addi	a2, a4, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	lw  	a0, 28(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1444
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a2, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a2, t0, beq_else.27436 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27436: !1445
	li  	a3, 1048908 !1446
	slli	t0, a2, 2 !1446
	add 	t0, t0, a3 !1446
	lw  	a2, 0(t0) !1446
	addi	a3, zero, 0 !1447
	lw  	a4, 4(sp) !1447
	sw  	a0, 32(sp) !1447
	addi	a1, a2, 0 !1447
	addi	a0, a3, 0 !1447
	addi	a2, a4, 0 !1447
	addi	sp, sp, 36 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -36 !1447
	lw  	a0, 32(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1444
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a2, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a2, t0, beq_else.27438 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27438: !1445
	li  	a3, 1048908 !1446
	slli	t0, a2, 2 !1446
	add 	t0, t0, a3 !1446
	lw  	a2, 0(t0) !1446
	addi	a3, zero, 0 !1447
	lw  	a4, 4(sp) !1447
	sw  	a0, 36(sp) !1447
	addi	a1, a2, 0 !1447
	addi	a0, a3, 0 !1447
	addi	a2, a4, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1444
	slli	t0, a0, 2 !1444
	add 	t0, t0, a1 !1444
	lw  	a2, 0(t0) !1444
	addi	t0, zero, -1 !1445
	bne 	a2, t0, beq_else.27440 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27440: !1445
	li  	a3, 1048908 !1446
	slli	t0, a2, 2 !1446
	add 	t0, t0, a3 !1446
	lw  	a2, 0(t0) !1446
	addi	a3, zero, 0 !1447
	lw  	a4, 4(sp) !1447
	sw  	a0, 40(sp) !1447
	addi	a1, a2, 0 !1447
	addi	a0, a3, 0 !1447
	addi	a2, a4, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	lw  	a0, 40(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 8(sp) !1448
	lw  	a2, 4(sp) !1448
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network_fast.2722 !1448
trace_or_matrix_fast.2726:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1454
	add 	t0, t0, a1 !1454
	lw  	a3, 0(t0) !1454
	lw  	a4, 0(a3) !1455
	addi	t0, zero, -1 !1456
	bne 	a4, t0, beq_else.27442 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27442: !1456
	sw  	a2, 4(sp) !1459
	sw  	a1, 8(sp) !1459
	sw  	a0, 12(sp) !1459
	addi	t0, zero, 99 !1459
	bne 	a4, t0, beq_else.27444 !1459
	lw  	a4, 4(a3) !1444
	addi	t0, zero, -1 !1445
	bne 	a4, t0, beq_else.27446 !1445
	jal 	zero, beq_cont.27447 !1445
beq_else.27446: !1445
	li  	a5, 1048908 !1446
	slli	t0, a4, 2 !1446
	add 	t0, t0, a5 !1446
	lw  	a4, 0(t0) !1446
	addi	a5, zero, 0 !1447
	sw  	a3, 16(sp) !1447
	addi	a1, a4, 0 !1447
	addi	a0, a5, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27448 !1445
	jal 	zero, beq_cont.27449 !1445
beq_else.27448: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27450 !1445
	jal 	zero, beq_cont.27451 !1445
beq_else.27450: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27452 !1445
	jal 	zero, beq_cont.27453 !1445
beq_else.27452: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 20(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27454 !1445
	jal 	zero, beq_cont.27455 !1445
beq_else.27454: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 24(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27456 !1445
	jal 	zero, beq_cont.27457 !1445
beq_else.27456: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 28(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27458 !1445
	jal 	zero, beq_cont.27459 !1445
beq_else.27458: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 20 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -20 !1447
	addi	a0, zero, 8 !1448
	lw  	a1, 16(sp) !1448
	lw  	a2, 4(sp) !1448
	addi	sp, sp, 20 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -20 !1448
beq_cont.27459: !1445
beq_cont.27457: !1445
beq_cont.27455: !1445
beq_cont.27453: !1445
beq_cont.27451: !1445
beq_cont.27449: !1445
beq_cont.27447: !1445
	jal 	zero, beq_cont.27445 !1459
beq_else.27444: !1459
	li  	a5, 1048624 !1031
	slli	t0, a4, 2 !1031
	add 	t0, t0, a5 !1031
	lw  	a5, 0(t0) !1031
	lw  	a6, 40(a5) !449
	flw  	fa0, 0(a6) !1033
	flw  	fa1, 4(a6) !1034
	flw  	fa2, 8(a6) !1035
	lw  	a7, 4(a2) !535
	slli	t0, a4, 2 !1037
	add 	t0, t0, a7 !1037
	lw  	a4, 0(t0) !1037
	lw  	a7, 4(a5) !260
	sw  	a3, 16(sp) !1039
	addi	t0, zero, 1 !1039
	bne 	a7, t0, beq_else.27460 !1039
	lw  	a6, 0(a2) !529
	addi	a2, a4, 0 !1040
	addi	a1, a6, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 20 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -20 !1040
	jal 	zero, beq_cont.27461 !1039
beq_else.27460: !1039
	addi	t0, zero, 2 !1041
	bne 	a7, t0, beq_else.27462 !1041
	flw  	fa0, 0(a4) !1004
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27464 !123
	addi	a5, zero, 0 !123
	jal 	zero, bne_cont.27465 !123
bne_else.27464: !123
	addi	a5, zero, 1 !123
bne_cont.27465: !123
	bne 	a5, zero, beq_else.27466 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.27467 !1004
beq_else.27466: !1004
	flw  	fa0, 0(a4) !1005
	flw  	fa1, 12(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	li  	a4, 1049116 !1005
	sw  	fa0, 0(a4) !1005
	addi	a0, zero, 1 !1006
beq_cont.27467: !1004
	jal 	zero, beq_cont.27463 !1041
beq_else.27462: !1041
	flw  	fa3, 0(a4) !1013
	li  	fa4, 0.000000 !124
	feq	t0, fa3, fa4 !124
	beq 	zero, t0, bne_else.27468 !124
	addi	a7, zero, 1 !124
	jal 	zero, bne_cont.27469 !124
bne_else.27468: !124
	addi	a7, zero, 0 !124
bne_cont.27469: !124
	bne 	a7, zero, beq_else.27470 !1014
	flw  	fa4, 4(a4) !1017
	fmul	fa4, fa4, fa0 !1017
	flw  	fa0, 8(a4) !1017
	fmul	fa0, fa0, fa1 !1017
	fadd	fa4, fa4, fa0 !1017
	flw  	fa0, 12(a4) !1017
	fmul	fa0, fa0, fa2 !1017
	fadd	fa4, fa4, fa0 !1017
	flw  	fa0, 12(a6) !1018
	fmul	fa1, fa4, fa4 !126
	fmul	fa3, fa3, fa0 !1019
	fsub	fa0, fa1, fa3 !1019
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27472 !122
	addi	a6, zero, 0 !122
	jal 	zero, bne_cont.27473 !122
bne_else.27472: !122
	addi	a6, zero, 1 !122
bne_cont.27473: !122
	bne 	a6, zero, beq_else.27474 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.27475 !1020
beq_else.27474: !1020
	lw  	a5, 24(a5) !280
	bne 	a5, zero, beq_else.27476 !1021
	sw  	a4, 20(sp) !1024
	fsw 	fa4, 24(sp) !1024
	fsqrt   fa0, fa0
	flw  	fa1, 24(sp) !1024
	fsub	fa1, fa1, fa0 !1024
	lw  	a0, 20(sp) !1024
	flw  	fa0, 16(a0) !1024
	fmul	fa1, fa1, fa0 !1024
	li  	a0, 1049116 !1024
	sw  	fa1, 0(a0) !1024
	jal 	zero, beq_cont.27477 !1021
beq_else.27476: !1021
	sw  	a4, 20(sp) !1022
	fsw 	fa4, 24(sp) !1022
	fsqrt   fa0, fa0
	flw  	fa1, 24(sp) !1022
	fadd	fa1, fa1, fa0 !1022
	lw  	a0, 20(sp) !1022
	flw  	fa0, 16(a0) !1022
	fmul	fa1, fa1, fa0 !1022
	li  	a0, 1049116 !1022
	sw  	fa1, 0(a0) !1022
beq_cont.27477: !1021
	addi	a0, zero, 1 !1025
beq_cont.27475: !1020
	jal 	zero, beq_cont.27471 !1014
beq_else.27470: !1014
	addi	a0, zero, 0 !1015
beq_cont.27471: !1014
beq_cont.27463: !1041
beq_cont.27461: !1039
	bne 	a0, zero, beq_else.27478 !1465
	jal 	zero, beq_cont.27479 !1465
beq_else.27478: !1465
	li  	a0, 1049116 !1466
	lw  	fa0, 0(a0) !1466
	li  	a0, 1049124 !1467
	lw  	fa1, 0(a0) !1467
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27480 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27481 !121
bne_else.27480: !121
	addi	a0, zero, 1 !121
bne_cont.27481: !121
	bne 	a0, zero, beq_else.27482 !1467
	jal 	zero, beq_cont.27483 !1467
beq_else.27482: !1467
	lw  	a0, 16(sp) !1444
	lw  	a1, 4(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27484 !1445
	jal 	zero, beq_cont.27485 !1445
beq_else.27484: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27486 !1445
	jal 	zero, beq_cont.27487 !1445
beq_else.27486: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27488 !1445
	jal 	zero, beq_cont.27489 !1445
beq_else.27488: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27490 !1445
	jal 	zero, beq_cont.27491 !1445
beq_else.27490: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 20(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27492 !1445
	jal 	zero, beq_cont.27493 !1445
beq_else.27492: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 24(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27494 !1445
	jal 	zero, beq_cont.27495 !1445
beq_else.27494: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	lw  	a0, 16(sp) !1444
	lw  	a1, 28(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27496 !1445
	jal 	zero, beq_cont.27497 !1445
beq_else.27496: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	addi	a0, zero, 8 !1448
	lw  	a1, 16(sp) !1448
	lw  	a2, 4(sp) !1448
	addi	sp, sp, 32 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -32 !1448
beq_cont.27497: !1445
beq_cont.27495: !1445
beq_cont.27493: !1445
beq_cont.27491: !1445
beq_cont.27489: !1445
beq_cont.27487: !1445
beq_cont.27485: !1445
beq_cont.27483: !1467
beq_cont.27479: !1465
beq_cont.27445: !1459
	lw  	a0, 12(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 8(sp) !1454
	slli	t0, a0, 2 !1454
	add 	t0, t0, a1 !1454
	lw  	a2, 0(t0) !1454
	lw  	a3, 0(a2) !1455
	addi	t0, zero, -1 !1456
	bne 	a3, t0, beq_else.27498 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27498: !1456
	sw  	a0, 32(sp) !1459
	addi	t0, zero, 99 !1459
	bne 	a3, t0, beq_else.27500 !1459
	lw  	a3, 4(a2) !1444
	addi	t0, zero, -1 !1445
	bne 	a3, t0, beq_else.27502 !1445
	jal 	zero, beq_cont.27503 !1445
beq_else.27502: !1445
	li  	a4, 1048908 !1446
	slli	t0, a3, 2 !1446
	add 	t0, t0, a4 !1446
	lw  	a3, 0(t0) !1446
	addi	a4, zero, 0 !1447
	lw  	a5, 4(sp) !1447
	sw  	a2, 36(sp) !1447
	addi	a2, a5, 0 !1447
	addi	a1, a3, 0 !1447
	addi	a0, a4, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27504 !1445
	jal 	zero, beq_cont.27505 !1445
beq_else.27504: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27506 !1445
	jal 	zero, beq_cont.27507 !1445
beq_else.27506: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27508 !1445
	jal 	zero, beq_cont.27509 !1445
beq_else.27508: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 20(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27510 !1445
	jal 	zero, beq_cont.27511 !1445
beq_else.27510: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 24(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27512 !1445
	jal 	zero, beq_cont.27513 !1445
beq_else.27512: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	addi	a0, zero, 7 !1448
	lw  	a1, 36(sp) !1448
	lw  	a2, 4(sp) !1448
	addi	sp, sp, 40 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -40 !1448
beq_cont.27513: !1445
beq_cont.27511: !1445
beq_cont.27509: !1445
beq_cont.27507: !1445
beq_cont.27505: !1445
beq_cont.27503: !1445
	jal 	zero, beq_cont.27501 !1459
beq_else.27500: !1459
	lw  	a4, 4(sp) !1464
	sw  	a2, 36(sp) !1464
	addi	a1, a4, 0 !1464
	addi	a0, a3, 0 !1464
	addi	sp, sp, 40 !1464
	jal 	ra, solver_fast2.2647 !1464
	addi	sp, sp, -40 !1464
	bne 	a0, zero, beq_else.27514 !1465
	jal 	zero, beq_cont.27515 !1465
beq_else.27514: !1465
	li  	a0, 1049116 !1466
	lw  	fa0, 0(a0) !1466
	li  	a0, 1049124 !1467
	lw  	fa1, 0(a0) !1467
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27516 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27517 !121
bne_else.27516: !121
	addi	a0, zero, 1 !121
bne_cont.27517: !121
	bne 	a0, zero, beq_else.27518 !1467
	jal 	zero, beq_cont.27519 !1467
beq_else.27518: !1467
	lw  	a0, 36(sp) !1444
	lw  	a1, 4(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27520 !1445
	jal 	zero, beq_cont.27521 !1445
beq_else.27520: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27522 !1445
	jal 	zero, beq_cont.27523 !1445
beq_else.27522: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27524 !1445
	jal 	zero, beq_cont.27525 !1445
beq_else.27524: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27526 !1445
	jal 	zero, beq_cont.27527 !1445
beq_else.27526: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 20(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27528 !1445
	jal 	zero, beq_cont.27529 !1445
beq_else.27528: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	lw  	a0, 36(sp) !1444
	lw  	a1, 24(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27530 !1445
	jal 	zero, beq_cont.27531 !1445
beq_else.27530: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 4(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	addi	a0, zero, 7 !1448
	lw  	a1, 36(sp) !1448
	lw  	a2, 4(sp) !1448
	addi	sp, sp, 40 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -40 !1448
beq_cont.27531: !1445
beq_cont.27529: !1445
beq_cont.27527: !1445
beq_cont.27525: !1445
beq_cont.27523: !1445
beq_cont.27521: !1445
beq_cont.27519: !1467
beq_cont.27515: !1465
beq_cont.27501: !1459
	lw  	a0, 32(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 8(sp) !1472
	lw  	a2, 4(sp) !1472
	lw  	ra, 0(sp)
	jal 	zero, trace_or_matrix_fast.2726 !1472
get_nvector_second.2736:
	sw  	ra, 0(sp)
	li  	a1, 1049128 !1513
	lw  	fa0, 0(a1) !1513
	lw  	a1, 20(a0) !338
	flw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1513
	li  	a1, 1049128 !1514
	lw  	fa1, 4(a1) !1514
	lw  	a1, 20(a0) !348
	flw  	fa2, 4(a1) !353
	fsub	fa1, fa1, fa2 !1514
	li  	a1, 1049128 !1515
	lw  	fa2, 8(a1) !1515
	lw  	a1, 20(a0) !358
	flw  	fa3, 8(a1) !363
	fsub	fa2, fa2, fa3 !1515
	lw  	a1, 16(a0) !298
	flw  	fa3, 0(a1) !303
	fmul	fa3, fa0, fa3 !1517
	lw  	a1, 16(a0) !308
	flw  	fa4, 4(a1) !313
	fmul	fa4, fa1, fa4 !1518
	lw  	a1, 16(a0) !318
	flw  	fa5, 8(a1) !323
	fmul	fa5, fa2, fa5 !1519
	lw  	a1, 12(a0) !289
	bne 	a1, zero, beq_else.27532 !1521
	li  	a1, 1049144 !1522
	sw  	fa3, 0(a1) !1522
	li  	a1, 1049144 !1523
	sw  	fa4, 4(a1) !1523
	li  	a1, 1049144 !1524
	sw  	fa5, 8(a1) !1524
	jal 	zero, beq_cont.27533 !1521
beq_else.27532: !1521
	lw  	a1, 36(a0) !438
	flw  	fa6, 8(a1) !443
	fmul	fa6, fa1, fa6 !1526
	lw  	a1, 36(a0) !428
	flw  	fa7, 4(a1) !433
	fmul	fa7, fa2, fa7 !1526
	fadd	fa6, fa6, fa7 !1526
	li  	fa7, 2.000000 !125
	fdiv	fa6, fa6, fa7 !125
	fadd	fa3, fa3, fa6 !1526
	li  	a1, 1049144 !1526
	sw  	fa3, 0(a1) !1526
	lw  	a1, 36(a0) !438
	flw  	fa3, 8(a1) !443
	fmul	fa3, fa0, fa3 !1527
	lw  	a1, 36(a0) !418
	flw  	fa6, 0(a1) !423
	fmul	fa2, fa2, fa6 !1527
	fadd	fa3, fa3, fa2 !1527
	li  	fa2, 2.000000 !125
	fdiv	fa3, fa3, fa2 !125
	fadd	fa4, fa4, fa3 !1527
	li  	a1, 1049144 !1527
	sw  	fa4, 4(a1) !1527
	lw  	a1, 36(a0) !428
	flw  	fa2, 4(a1) !433
	fmul	fa0, fa0, fa2 !1528
	lw  	a1, 36(a0) !418
	flw  	fa2, 0(a1) !423
	fmul	fa1, fa1, fa2 !1528
	fadd	fa0, fa0, fa1 !1528
	li  	fa1, 2.000000 !125
	fdiv	fa0, fa0, fa1 !125
	fadd	fa5, fa5, fa0 !1528
	li  	a1, 1049144 !1528
	sw  	fa5, 8(a1) !1528
beq_cont.27533: !1521
	lw  	a0, 24(a0) !280
	li  	a1, 1049144 !199
	lw  	fa0, 0(a1) !199
	fmul	fa0, fa0, fa0 !126
	li  	a1, 1049144 !199
	lw  	fa1, 4(a1) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	li  	a1, 1049144 !199
	lw  	fa1, 8(a1) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	sw  	a0, 4(sp) !199
	fsqrt   fa0, fa0
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.27534 !124
	addi	a0, zero, 1 !124
	jal 	zero, bne_cont.27535 !124
bne_else.27534: !124
	addi	a0, zero, 0 !124
bne_cont.27535: !124
	bne 	a0, zero, beq_else.27536 !200
	lw  	a0, 4(sp) !200
	bne 	a0, zero, beq_else.27538 !200
	li  	fa1, 1.000000 !200
	fdiv	fa1, fa1, fa0 !200
	jal 	zero, beq_cont.27539 !200
beq_else.27538: !200
	li  	fa1, -1.000000 !200
	fdiv	fa1, fa1, fa0 !200
beq_cont.27539: !200
	jal 	zero, beq_cont.27537 !200
beq_else.27536: !200
	li  	fa1, 1.000000 !200
beq_cont.27537: !200
	li  	a0, 1049144 !201
	lw  	fa0, 0(a0) !201
	fmul	fa0, fa0, fa1 !201
	li  	a0, 1049144 !201
	sw  	fa0, 0(a0) !201
	li  	a0, 1049144 !202
	lw  	fa0, 4(a0) !202
	fmul	fa0, fa0, fa1 !202
	li  	a0, 1049144 !202
	sw  	fa0, 4(a0) !202
	li  	a0, 1049144 !203
	lw  	fa0, 8(a0) !203
	fmul	fa0, fa0, fa1 !203
	li  	a0, 1049144 !203
	sw  	fa0, 8(a0) !203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
utexture.2741:
	sw  	ra, 0(sp)
	lw  	a2, 0(a0) !250
	lw  	a3, 32(a0) !388
	flw  	fa0, 0(a3) !393
	li  	a3, 1049156 !1551
	sw  	fa0, 0(a3) !1551
	lw  	a3, 32(a0) !398
	flw  	fa0, 4(a3) !403
	li  	a3, 1049156 !1552
	sw  	fa0, 4(a3) !1552
	lw  	a3, 32(a0) !408
	flw  	fa0, 8(a3) !413
	li  	a3, 1049156 !1553
	sw  	fa0, 8(a3) !1553
	addi	t0, zero, 1 !1554
	bne 	a2, t0, beq_else.27541 !1554
	flw  	fa0, 0(a1) !1557
	lw  	a2, 20(a0) !338
	flw  	fa1, 0(a2) !343
	fsub	fa0, fa0, fa1 !1557
	li  	fa1, 0.050000 !1559
	fmul	fa1, fa0, fa1 !1559
	sw  	a0, 4(sp) !1559
	sw  	a1, 8(sp) !1559
	fsw 	fa0, 16(sp) !1559
	fsgnj   fa0, fa1, fa1 !1559
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.27543
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.27543:
	fsgnj   fa0, ft0, ft0
	li  	fa1, 20.000000 !1559
	fmul	fa0, fa0, fa1 !1559
	flw  	fa1, 16(sp) !1560
	fsub	fa1, fa1, fa0 !1560
	li  	fa0, 10.000000 !1560
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27544 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27545 !121
bne_else.27544: !121
	addi	a0, zero, 1 !121
bne_cont.27545: !121
	lw  	a1, 8(sp) !1562
	flw  	fa0, 8(a1) !1562
	lw  	a1, 4(sp) !358
	lw  	a1, 20(a1) !358
	flw  	fa1, 8(a1) !363
	fsub	fa0, fa0, fa1 !1562
	li  	fa1, 0.050000 !1564
	fmul	fa1, fa0, fa1 !1564
	sw  	a0, 24(sp) !1564
	fsw 	fa0, 32(sp) !1564
	fsgnj   fa0, fa1, fa1 !1564
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.27547
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.27547:
	fsgnj   fa0, ft0, ft0
	li  	fa1, 20.000000 !1564
	fmul	fa0, fa0, fa1 !1564
	flw  	fa1, 32(sp) !1565
	fsub	fa1, fa1, fa0 !1565
	li  	fa0, 10.000000 !1565
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27548 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27549 !121
bne_else.27548: !121
	addi	a0, zero, 1 !121
bne_cont.27549: !121
	lw  	a1, 24(sp) !1568
	bne 	a1, zero, beq_else.27550 !1568
	bne 	a0, zero, beq_else.27552 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.27553 !1570
beq_else.27552: !1570
	li  	fa0, 0.000000 !1570
beq_cont.27553: !1570
	jal 	zero, beq_cont.27551 !1568
beq_else.27550: !1568
	bne 	a0, zero, beq_else.27554 !1569
	li  	fa0, 0.000000 !1569
	jal 	zero, beq_cont.27555 !1569
beq_else.27554: !1569
	li  	fa0, 255.000000 !1569
beq_cont.27555: !1569
beq_cont.27551: !1568
	li  	a0, 1049156 !1567
	sw  	fa0, 4(a0) !1567
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27541: !1554
	addi	t0, zero, 2 !1572
	bne 	a2, t0, beq_else.27557 !1572
	flw  	fa0, 4(a1) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 40 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -40 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	li  	a0, 1049156 !1576
	sw  	fa1, 0(a0) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa2, fa2, fa0 !1577
	fmul	fa1, fa1, fa2 !1577
	li  	a0, 1049156 !1577
	sw  	fa1, 4(a0) !1577
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27557: !1572
	addi	t0, zero, 3 !1579
	bne 	a2, t0, beq_else.27559 !1579
	flw  	fa0, 0(a1) !1582
	lw  	a2, 20(a0) !338
	flw  	fa1, 0(a2) !343
	fsub	fa0, fa0, fa1 !1582
	flw  	fa1, 8(a1) !1583
	lw  	a0, 20(a0) !358
	flw  	fa2, 8(a0) !363
	fsub	fa1, fa1, fa2 !1583
	fmul	fa0, fa0, fa0 !126
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !1584
	fsqrt   fa0, fa0
	li  	fa1, 10.000000 !1584
	fdiv	fa0, fa0, fa1 !1584
	fsw 	fa0, 40(sp) !1585
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.27560
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.27560:
	fsgnj   fa0, ft0, ft0
	flw  	fa1, 40(sp) !1585
	fsub	fa1, fa1, fa0 !1585
	li  	fa0, 3.141593 !1585
	fmul	fa0, fa1, fa0 !1585
	addi	sp, sp, 48 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -48 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	li  	a0, 1049156 !1587
	sw  	fa1, 4(a0) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa1, fa1, fa0 !1588
	li  	fa0, 255.000000 !1588
	fmul	fa1, fa1, fa0 !1588
	li  	a0, 1049156 !1588
	sw  	fa1, 8(a0) !1588
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27559: !1579
	addi	t0, zero, 4 !1590
	bne 	a2, t0, beq_else.27562 !1590
	flw  	fa0, 0(a1) !1592
	lw  	a2, 20(a0) !338
	flw  	fa1, 0(a2) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a2, 16(a0) !298
	flw  	fa1, 0(a2) !303
	sw  	a0, 4(sp) !1592
	sw  	a1, 8(sp) !1592
	fsw 	fa0, 48(sp) !1592
	fsgnj   fa0, fa1, fa1 !1592
	fsqrt   fa0, fa0
	flw  	fa1, 48(sp) !1592
	fmul	fa0, fa1, fa0 !1592
	lw  	a0, 8(sp) !1593
	flw  	fa1, 8(a0) !1593
	lw  	a1, 4(sp) !358
	lw  	a2, 20(a1) !358
	flw  	fa2, 8(a2) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a2, 16(a1) !318
	flw  	fa2, 8(a2) !323
	fsw 	fa0, 56(sp) !1593
	fsw 	fa1, 64(sp) !1593
	fsgnj   fa0, fa2, fa2 !1593
	fsqrt   fa0, fa0
	flw  	fa1, 64(sp) !1593
	fmul	fa1, fa1, fa0 !1593
	flw  	fa0, 56(sp) !126
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsw 	fa2, 72(sp) !1596
	fsw 	fa1, 80(sp) !1596
	fsgnjx  fa0, fa0, fa0
	li  	fa1, 0.000100 !1596
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27563 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27564 !121
bne_else.27563: !121
	addi	a0, zero, 1 !121
bne_cont.27564: !121
	bne 	a0, zero, beq_else.27565 !1596
	flw  	fa0, 56(sp) !1599
	flw  	fa1, 80(sp) !1599
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0
	addi	sp, sp, 88 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -88 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.27566 !1596
beq_else.27565: !1596
	li  	fa0, 15.000000 !1597
beq_cont.27566: !1596
	fsw 	fa0, 88(sp) !1603
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.27567
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.27567:
	fsgnj   fa0, ft0, ft0
	flw  	fa1, 88(sp) !1603
	fsub	fa1, fa1, fa0 !1603
	lw  	a0, 8(sp) !1605
	flw  	fa0, 4(a0) !1605
	lw  	a0, 4(sp) !348
	lw  	a1, 20(a0) !348
	flw  	fa2, 4(a1) !353
	fsub	fa0, fa0, fa2 !1605
	lw  	a0, 16(a0) !308
	flw  	fa2, 4(a0) !313
	fsw 	fa1, 96(sp) !1605
	fsw 	fa0, 104(sp) !1605
	fsgnj   fa0, fa2, fa2 !1605
	fsqrt   fa0, fa0
	flw  	fa1, 104(sp) !1605
	fmul	fa1, fa1, fa0 !1605
	flw  	fa0, 72(sp) !1607
	fsw 	fa1, 112(sp) !1607
	fsgnjx  fa0, fa0, fa0
	li  	fa1, 0.000100 !1607
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27568 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27569 !121
bne_else.27568: !121
	addi	a0, zero, 1 !121
bne_cont.27569: !121
	bne 	a0, zero, beq_else.27570 !1607
	flw  	fa0, 72(sp) !1610
	flw  	fa1, 112(sp) !1610
	fdiv	fa0, fa1, fa0 !1610
	fsgnjx  fa0, fa0, fa0
	addi	sp, sp, 120 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -120 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.27571 !1607
beq_else.27570: !1607
	li  	fa0, 15.000000 !1608
beq_cont.27571: !1607
	fsw 	fa0, 120(sp) !1613
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.27572
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.27572:
	fsgnj   fa0, ft0, ft0
	flw  	fa1, 120(sp) !1613
	fsub	fa1, fa1, fa0 !1613
	li  	fa0, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	flw  	fa3, 96(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa0, fa0, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa2, fa2, fa1 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa0, fa0, fa2 !1614
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27573 !123
	addi	a0, zero, 0 !123
	jal 	zero, bne_cont.27574 !123
bne_else.27573: !123
	addi	a0, zero, 1 !123
bne_cont.27574: !123
	bne 	a0, zero, beq_else.27575 !1615
	jal 	zero, beq_cont.27576 !1615
beq_else.27575: !1615
	li  	fa0, 0.000000 !1615
beq_cont.27576: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa1, fa1, fa0 !1616
	li  	fa0, 0.300000 !1616
	fdiv	fa1, fa1, fa0 !1616
	li  	a0, 1049156 !1616
	sw  	fa1, 8(a0) !1616
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27562: !1590
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
add_light.2744:
	sw  	ra, 0(sp)
	li  	fa3, 0.000000 !122
	fle 	t0, fa0, fa3 !122
	beq 	zero, t0, bne_else.27579 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27580 !122
bne_else.27579: !122
	addi	a0, zero, 1 !122
bne_cont.27580: !122
	bne 	a0, zero, beq_else.27581 !1627
	jal 	zero, beq_cont.27582 !1627
beq_else.27581: !1627
	li  	a0, 1049180 !218
	lw  	fa3, 0(a0) !218
	li  	a0, 1049156 !218
	lw  	fa4, 0(a0) !218
	fmul	fa4, fa0, fa4 !218
	fadd	fa3, fa3, fa4 !218
	li  	a0, 1049180 !218
	sw  	fa3, 0(a0) !218
	li  	a0, 1049180 !219
	lw  	fa3, 4(a0) !219
	li  	a0, 1049156 !219
	lw  	fa4, 4(a0) !219
	fmul	fa4, fa0, fa4 !219
	fadd	fa3, fa3, fa4 !219
	li  	a0, 1049180 !219
	sw  	fa3, 4(a0) !219
	li  	a0, 1049180 !220
	lw  	fa3, 8(a0) !220
	li  	a0, 1049156 !220
	lw  	fa4, 8(a0) !220
	fmul	fa0, fa0, fa4 !220
	fadd	fa3, fa3, fa0 !220
	li  	a0, 1049180 !220
	sw  	fa3, 8(a0) !220
beq_cont.27582: !1627
	li  	fa0, 0.000000 !122
	fle 	t0, fa1, fa0 !122
	beq 	zero, t0, bne_else.27583 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27584 !122
bne_else.27583: !122
	addi	a0, zero, 1 !122
bne_cont.27584: !122
	bne 	a0, zero, beq_else.27585 !1632
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27585: !1632
	fmul	fa1, fa1, fa1 !126
	fmul	fa1, fa1, fa1 !126
	fmul	fa1, fa1, fa2 !1633
	li  	a0, 1049180 !1634
	lw  	fa0, 0(a0) !1634
	fadd	fa0, fa0, fa1 !1634
	li  	a0, 1049180 !1634
	sw  	fa0, 0(a0) !1634
	li  	a0, 1049180 !1635
	lw  	fa0, 4(a0) !1635
	fadd	fa0, fa0, fa1 !1635
	li  	a0, 1049180 !1635
	sw  	fa0, 4(a0) !1635
	li  	a0, 1049180 !1636
	lw  	fa0, 8(a0) !1636
	fadd	fa0, fa0, fa1 !1636
	li  	a0, 1049180 !1636
	sw  	fa0, 8(a0) !1636
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_reflections.2748:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.27588 !1643
	li  	a2, 1049592 !1644
	slli	t0, a0, 2 !1644
	add 	t0, t0, a2 !1644
	lw  	a2, 0(t0) !1644
	lw  	a3, 4(a2) !549
	li  	fa2, 1000000000.000000 !1479
	li  	a4, 1049124 !1479
	sw  	fa2, 0(a4) !1479
	addi	a4, zero, 0 !1480
	li  	a5, 1049112 !1480
	lw  	a5, 0(a5) !1480
	sw  	a0, 4(sp) !1480
	fsw 	fa1, 8(sp) !1480
	sw  	a1, 16(sp) !1480
	fsw 	fa0, 24(sp) !1480
	sw  	a3, 32(sp) !1480
	sw  	a2, 36(sp) !1480
	addi	a2, a3, 0 !1480
	addi	a1, a5, 0 !1480
	addi	a0, a4, 0 !1480
	addi	sp, sp, 40 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -40 !1480
	li  	a0, 1049124 !1481
	lw  	fa0, 0(a0) !1481
	li  	fa1, -0.100000 !1483
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27590 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27591 !121
bne_else.27590: !121
	addi	a0, zero, 1 !121
bne_cont.27591: !121
	bne 	a0, zero, beq_else.27592 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.27593 !1483
beq_else.27592: !1483
	li  	fa1, 100000000.000000 !1484
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27594 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27595 !121
bne_else.27594: !121
	addi	a0, zero, 1 !121
bne_cont.27595: !121
beq_cont.27593: !1483
	bne 	a0, zero, beq_else.27596 !1648
	jal 	zero, beq_cont.27597 !1648
beq_else.27596: !1648
	li  	a0, 1049140 !1649
	lw  	a0, 0(a0) !1649
	slli	a0, a0, 2 !1649
	li  	a1, 1049120 !1649
	lw  	a1, 0(a1) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 36(sp) !543
	lw  	a2, 0(a1) !543
	bne 	a0, a2, beq_else.27598 !1650
	li  	a0, 1049112 !1652
	lw  	a0, 0(a0) !1652
	lw  	a2, 0(a0) !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1 !1280
	bne 	a3, t0, beq_else.27600 !1280
	addi	a0, zero, 0 !1281
	jal 	zero, beq_cont.27601 !1280
beq_else.27600: !1280
	sw  	a2, 40(sp) !1284
	sw  	a0, 44(sp) !1284
	addi	t0, zero, 99 !1284
	bne 	a3, t0, beq_else.27602 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.27603 !1284
beq_else.27602: !1284
	li  	a4, 1049128 !0
	li  	a5, 1049564 !0
	addi	a2, a4, 0 !1287
	addi	a1, a5, 0 !1287
	addi	a0, a3, 0 !1287
	addi	sp, sp, 48 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -48 !1287
	bne 	a0, zero, beq_else.27604 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.27605 !1290
beq_else.27604: !1290
	li  	a0, 1049116 !1291
	lw  	fa0, 0(a0) !1291
	li  	fa1, -0.100000 !1291
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27606 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27607 !121
bne_else.27606: !121
	addi	a0, zero, 1 !121
bne_cont.27607: !121
	bne 	a0, zero, beq_else.27608 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.27609 !1291
beq_else.27608: !1291
	addi	a0, zero, 1 !1292
	lw  	a1, 40(sp) !1292
	addi	sp, sp, 48 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -48 !1292
	bne 	a0, zero, beq_else.27610 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.27611 !1292
beq_else.27610: !1292
	addi	a0, zero, 1 !1293
beq_cont.27611: !1292
beq_cont.27609: !1291
beq_cont.27605: !1290
beq_cont.27603: !1284
	bne 	a0, zero, beq_else.27612 !1283
	addi	a0, zero, 1 !1303
	lw  	a1, 44(sp) !1303
	addi	sp, sp, 48 !1303
	jal 	ra, shadow_check_one_or_matrix.2701 !1303
	addi	sp, sp, -48 !1303
	jal 	zero, beq_cont.27613 !1283
beq_else.27612: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 40(sp) !1298
	addi	sp, sp, 48 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -48 !1298
	bne 	a0, zero, beq_else.27614 !1298
	addi	a0, zero, 1 !1301
	lw  	a1, 44(sp) !1301
	addi	sp, sp, 48 !1301
	jal 	ra, shadow_check_one_or_matrix.2701 !1301
	addi	sp, sp, -48 !1301
	jal 	zero, beq_cont.27615 !1298
beq_else.27614: !1298
	addi	a0, zero, 1 !1299
beq_cont.27615: !1298
beq_cont.27613: !1283
beq_cont.27601: !1280
	bne 	a0, zero, beq_else.27616 !1652
	lw  	a0, 32(sp) !529
	lw  	a1, 0(a0) !529
	li  	a2, 1049144 !208
	lw  	fa0, 0(a2) !208
	flw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	li  	a2, 1049144 !208
	lw  	fa1, 4(a2) !208
	flw  	fa2, 4(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	a2, 1049144 !208
	lw  	fa1, 8(a2) !208
	flw  	fa2, 8(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	a1, 36(sp) !555
	flw  	fa1, 8(a1) !555
	flw  	fa2, 24(sp) !1656
	fmul	fa3, fa1, fa2 !1656
	fmul	fa3, fa3, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 16(sp) !208
	flw  	fa0, 0(a1) !208
	flw  	fa4, 0(a0) !208
	fmul	fa0, fa0, fa4 !208
	flw  	fa4, 4(a1) !208
	flw  	fa5, 4(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa0, fa0, fa4 !208
	flw  	fa4, 8(a1) !208
	flw  	fa5, 8(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa0, fa0, fa4 !208
	fmul	fa1, fa1, fa0 !1657
	li  	fa0, 0.000000 !122
	fle 	t0, fa3, fa0 !122
	beq 	zero, t0, bne_else.27618 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27619 !122
bne_else.27618: !122
	addi	a0, zero, 1 !122
bne_cont.27619: !122
	bne 	a0, zero, beq_else.27620 !1627
	jal 	zero, beq_cont.27621 !1627
beq_else.27620: !1627
	li  	a0, 1049180 !218
	lw  	fa0, 0(a0) !218
	li  	a0, 1049156 !218
	lw  	fa4, 0(a0) !218
	fmul	fa4, fa3, fa4 !218
	fadd	fa0, fa0, fa4 !218
	li  	a0, 1049180 !218
	sw  	fa0, 0(a0) !218
	li  	a0, 1049180 !219
	lw  	fa0, 4(a0) !219
	li  	a0, 1049156 !219
	lw  	fa4, 4(a0) !219
	fmul	fa4, fa3, fa4 !219
	fadd	fa0, fa0, fa4 !219
	li  	a0, 1049180 !219
	sw  	fa0, 4(a0) !219
	li  	a0, 1049180 !220
	lw  	fa0, 8(a0) !220
	li  	a0, 1049156 !220
	lw  	fa4, 8(a0) !220
	fmul	fa3, fa3, fa4 !220
	fadd	fa0, fa0, fa3 !220
	li  	a0, 1049180 !220
	sw  	fa0, 8(a0) !220
beq_cont.27621: !1627
	li  	fa0, 0.000000 !122
	fle 	t0, fa1, fa0 !122
	beq 	zero, t0, bne_else.27622 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27623 !122
bne_else.27622: !122
	addi	a0, zero, 1 !122
bne_cont.27623: !122
	bne 	a0, zero, beq_else.27624 !1632
	jal 	zero, beq_cont.27625 !1632
beq_else.27624: !1632
	fmul	fa1, fa1, fa1 !126
	fmul	fa1, fa1, fa1 !126
	flw  	fa0, 8(sp) !1633
	fmul	fa1, fa1, fa0 !1633
	li  	a0, 1049180 !1634
	lw  	fa3, 0(a0) !1634
	fadd	fa3, fa3, fa1 !1634
	li  	a0, 1049180 !1634
	sw  	fa3, 0(a0) !1634
	li  	a0, 1049180 !1635
	lw  	fa3, 4(a0) !1635
	fadd	fa3, fa3, fa1 !1635
	li  	a0, 1049180 !1635
	sw  	fa3, 4(a0) !1635
	li  	a0, 1049180 !1636
	lw  	fa3, 8(a0) !1636
	fadd	fa3, fa3, fa1 !1636
	li  	a0, 1049180 !1636
	sw  	fa3, 8(a0) !1636
beq_cont.27625: !1632
	jal 	zero, beq_cont.27617 !1652
beq_else.27616: !1652
beq_cont.27617: !1652
	jal 	zero, beq_cont.27599 !1650
beq_else.27598: !1650
beq_cont.27599: !1650
beq_cont.27597: !1648
	lw  	a0, 4(sp) !1662
	addi	a0, a0, -1 !1662
	blt 	a0, zero, bge_else.27626 !1643
	li  	a1, 1049592 !1644
	slli	t0, a0, 2 !1644
	add 	t0, t0, a1 !1644
	lw  	a1, 0(t0) !1644
	lw  	a2, 4(a1) !549
	li  	fa0, 1000000000.000000 !1479
	li  	a3, 1049124 !1479
	sw  	fa0, 0(a3) !1479
	li  	a3, 1049112 !1480
	lw  	a3, 0(a3) !1480
	lw  	a4, 0(a3) !1454
	lw  	a5, 0(a4) !1455
	sw  	a0, 48(sp) !1456
	sw  	a2, 52(sp) !1456
	sw  	a1, 56(sp) !1456
	addi	t0, zero, -1 !1456
	bne 	a5, t0, beq_else.27627 !1456
	jal 	zero, beq_cont.27628 !1456
beq_else.27627: !1456
	sw  	a3, 60(sp) !1459
	addi	t0, zero, 99 !1459
	bne 	a5, t0, beq_else.27629 !1459
	lw  	a5, 4(a4) !1444
	addi	t0, zero, -1 !1445
	bne 	a5, t0, beq_else.27631 !1445
	jal 	zero, beq_cont.27632 !1445
beq_else.27631: !1445
	li  	a6, 1048908 !1446
	slli	t0, a5, 2 !1446
	add 	t0, t0, a6 !1446
	lw  	a5, 0(t0) !1446
	addi	a6, zero, 0 !1447
	sw  	a4, 64(sp) !1447
	addi	a1, a5, 0 !1447
	addi	a0, a6, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	lw  	a0, 64(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27633 !1445
	jal 	zero, beq_cont.27634 !1445
beq_else.27633: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 52(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	lw  	a0, 64(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27635 !1445
	jal 	zero, beq_cont.27636 !1445
beq_else.27635: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 52(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	lw  	a0, 64(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27637 !1445
	jal 	zero, beq_cont.27638 !1445
beq_else.27637: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 52(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 64(sp) !1448
	lw  	a2, 52(sp) !1448
	addi	sp, sp, 68 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -68 !1448
beq_cont.27638: !1445
beq_cont.27636: !1445
beq_cont.27634: !1445
beq_cont.27632: !1445
	jal 	zero, beq_cont.27630 !1459
beq_else.27629: !1459
	sw  	a4, 64(sp) !1464
	addi	a1, a2, 0 !1464
	addi	a0, a5, 0 !1464
	addi	sp, sp, 68 !1464
	jal 	ra, solver_fast2.2647 !1464
	addi	sp, sp, -68 !1464
	bne 	a0, zero, beq_else.27639 !1465
	jal 	zero, beq_cont.27640 !1465
beq_else.27639: !1465
	li  	a0, 1049116 !1466
	lw  	fa0, 0(a0) !1466
	li  	a0, 1049124 !1467
	lw  	fa1, 0(a0) !1467
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27641 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27642 !121
bne_else.27641: !121
	addi	a0, zero, 1 !121
bne_cont.27642: !121
	bne 	a0, zero, beq_else.27643 !1467
	jal 	zero, beq_cont.27644 !1467
beq_else.27643: !1467
	lw  	a0, 64(sp) !1444
	lw  	a1, 4(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27645 !1445
	jal 	zero, beq_cont.27646 !1445
beq_else.27645: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 52(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	lw  	a0, 64(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27647 !1445
	jal 	zero, beq_cont.27648 !1445
beq_else.27647: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 52(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	lw  	a0, 64(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27649 !1445
	jal 	zero, beq_cont.27650 !1445
beq_else.27649: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 52(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	lw  	a0, 64(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27651 !1445
	jal 	zero, beq_cont.27652 !1445
beq_else.27651: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 52(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 68 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -68 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 64(sp) !1448
	lw  	a2, 52(sp) !1448
	addi	sp, sp, 68 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -68 !1448
beq_cont.27652: !1445
beq_cont.27650: !1445
beq_cont.27648: !1445
beq_cont.27646: !1445
beq_cont.27644: !1467
beq_cont.27640: !1465
beq_cont.27630: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 60(sp) !1472
	lw  	a2, 52(sp) !1472
	addi	sp, sp, 68 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -68 !1472
beq_cont.27628: !1456
	li  	a0, 1049124 !1481
	lw  	fa0, 0(a0) !1481
	li  	fa1, -0.100000 !1483
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27653 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27654 !121
bne_else.27653: !121
	addi	a0, zero, 1 !121
bne_cont.27654: !121
	bne 	a0, zero, beq_else.27655 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.27656 !1483
beq_else.27655: !1483
	li  	fa1, 100000000.000000 !1484
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27657 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27658 !121
bne_else.27657: !121
	addi	a0, zero, 1 !121
bne_cont.27658: !121
beq_cont.27656: !1483
	bne 	a0, zero, beq_else.27659 !1648
	jal 	zero, beq_cont.27660 !1648
beq_else.27659: !1648
	li  	a0, 1049140 !1649
	lw  	a0, 0(a0) !1649
	slli	a0, a0, 2 !1649
	li  	a1, 1049120 !1649
	lw  	a1, 0(a1) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 56(sp) !543
	lw  	a2, 0(a1) !543
	bne 	a0, a2, beq_else.27661 !1650
	addi	a0, zero, 0 !1652
	li  	a2, 1049112 !1652
	lw  	a2, 0(a2) !1652
	addi	a1, a2, 0 !1652
	addi	sp, sp, 68 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -68 !1652
	bne 	a0, zero, beq_else.27663 !1652
	lw  	a0, 52(sp) !529
	lw  	a1, 0(a0) !529
	li  	a2, 1049144 !208
	lw  	fa0, 0(a2) !208
	flw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	li  	a2, 1049144 !208
	lw  	fa1, 4(a2) !208
	flw  	fa2, 4(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	a2, 1049144 !208
	lw  	fa1, 8(a2) !208
	flw  	fa2, 8(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	a1, 56(sp) !555
	flw  	fa1, 8(a1) !555
	flw  	fa2, 24(sp) !1656
	fmul	fa3, fa1, fa2 !1656
	fmul	fa0, fa3, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 16(sp) !208
	flw  	fa3, 0(a1) !208
	flw  	fa4, 0(a0) !208
	fmul	fa3, fa3, fa4 !208
	flw  	fa4, 4(a1) !208
	flw  	fa5, 4(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flw  	fa4, 8(a1) !208
	flw  	fa5, 8(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	fmul	fa1, fa1, fa3 !1657
	flw  	fa3, 8(sp) !1658
	fsgnj   fa2, fa3, fa3 !1658
	addi	sp, sp, 68 !1658
	jal 	ra, add_light.2744 !1658
	addi	sp, sp, -68 !1658
	jal 	zero, beq_cont.27664 !1652
beq_else.27663: !1652
beq_cont.27664: !1652
	jal 	zero, beq_cont.27662 !1650
beq_else.27661: !1650
beq_cont.27662: !1650
beq_cont.27660: !1648
	lw  	a0, 48(sp) !1662
	addi	a0, a0, -1 !1662
	flw  	fa0, 24(sp) !1662
	flw  	fa1, 8(sp) !1662
	lw  	a1, 16(sp) !1662
	lw  	ra, 0(sp)
	jal 	zero, trace_reflections.2748 !1662
bge_else.27626: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27588: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_ray.2753:
	sw  	ra, 0(sp)
	addi	t0, zero, 4 !1669
	blt 	t0, a0, bge_else.27667 !1669
	lw  	a3, 8(a2) !476
	li  	fa2, 1000000000.000000 !1390
	li  	a4, 1049124 !1390
	sw  	fa2, 0(a4) !1390
	addi	a4, zero, 0 !1391
	li  	a5, 1049112 !1391
	lw  	a5, 0(a5) !1391
	fsw 	fa1, 8(sp) !1391
	sw  	a2, 16(sp) !1391
	fsw 	fa0, 24(sp) !1391
	sw  	a1, 32(sp) !1391
	sw  	a0, 36(sp) !1391
	sw  	a3, 40(sp) !1391
	addi	a2, a1, 0 !1391
	addi	a0, a4, 0 !1391
	addi	a1, a5, 0 !1391
	addi	sp, sp, 44 !1391
	jal 	ra, trace_or_matrix.2712 !1391
	addi	sp, sp, -44 !1391
	li  	a0, 1049124 !1392
	lw  	fa0, 0(a0) !1392
	li  	fa1, -0.100000 !1394
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27670 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27671 !121
bne_else.27670: !121
	addi	a0, zero, 1 !121
bne_cont.27671: !121
	bne 	a0, zero, beq_else.27672 !1394
	addi	a0, zero, 0 !1396
	jal 	zero, beq_cont.27673 !1394
beq_else.27672: !1394
	li  	fa1, 100000000.000000 !1395
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27674 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27675 !121
bne_else.27674: !121
	addi	a0, zero, 1 !121
bne_cont.27675: !121
beq_cont.27673: !1394
	bne 	a0, zero, beq_else.27676 !1671
	addi	a0, zero, -1 !1734
	lw  	a1, 36(sp) !1734
	lw  	a2, 40(sp) !1734
	slli	t0, a1, 2 !1734
	add 	t0, t0, a2 !1734
	sw  	a0, 0(t0) !1734
	bne 	a1, zero, beq_else.27677 !1736
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27677: !1736
	lw  	a0, 32(sp) !208
	flw  	fa0, 0(a0) !208
	li  	a1, 1048888 !208
	lw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a0) !208
	li  	a1, 1048888 !208
	lw  	fa2, 4(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 8(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27679 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27680 !122
bne_else.27679: !122
	addi	a0, zero, 1 !122
bne_cont.27680: !122
	bne 	a0, zero, beq_else.27681 !1739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27681: !1739
	fmul	fa1, fa0, fa0 !126
	fmul	fa1, fa1, fa0 !1742
	flw  	fa0, 24(sp) !1742
	fmul	fa1, fa1, fa0 !1742
	li  	a0, 1048900 !1742
	lw  	fa0, 0(a0) !1742
	fmul	fa1, fa1, fa0 !1742
	li  	a0, 1049180 !1743
	lw  	fa0, 0(a0) !1743
	fadd	fa0, fa0, fa1 !1743
	li  	a0, 1049180 !1743
	sw  	fa0, 0(a0) !1743
	li  	a0, 1049180 !1744
	lw  	fa0, 4(a0) !1744
	fadd	fa0, fa0, fa1 !1744
	li  	a0, 1049180 !1744
	sw  	fa0, 4(a0) !1744
	li  	a0, 1049180 !1745
	lw  	fa0, 8(a0) !1745
	fadd	fa0, fa0, fa1 !1745
	li  	a0, 1049180 !1745
	sw  	fa0, 8(a0) !1745
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27676: !1671
	li  	a0, 1049140 !1673
	lw  	a0, 0(a0) !1673
	li  	a1, 1048624 !1674
	slli	t0, a0, 2 !1674
	add 	t0, t0, a1 !1674
	lw  	a1, 0(t0) !1674
	lw  	a2, 8(a1) !270
	lw  	a3, 28(a1) !368
	flw  	fa0, 0(a3) !373
	flw  	fa1, 24(sp) !1676
	fmul	fa0, fa0, fa1 !1676
	lw  	a3, 4(a1) !260
	sw  	a2, 44(sp) !1536
	fsw 	fa0, 48(sp) !1536
	sw  	a0, 56(sp) !1536
	sw  	a1, 60(sp) !1536
	addi	t0, zero, 1 !1536
	bne 	a3, t0, beq_else.27684 !1536
	li  	a3, 1049120 !1497
	lw  	a3, 0(a3) !1497
	li  	fa2, 0.000000 !183
	li  	a4, 1049144 !176
	sw  	fa2, 0(a4) !176
	li  	a4, 1049144 !177
	sw  	fa2, 4(a4) !177
	li  	a4, 1049144 !178
	sw  	fa2, 8(a4) !178
	addi	a4, a3, -1 !1500
	addi	a3, a3, -1 !1500
	lw  	a5, 32(sp) !1500
	slli	t0, a3, 2 !1500
	add 	t0, t0, a5 !1500
	flw  	fa2, 0(t0) !1500
	li  	fa3, 0.000000 !124
	feq	t0, fa2, fa3 !124
	beq 	zero, t0, bne_else.27686 !124
	addi	a3, zero, 1 !124
	jal 	zero, bne_cont.27687 !124
bne_else.27686: !124
	addi	a3, zero, 0 !124
bne_cont.27687: !124
	bne 	a3, zero, beq_else.27688 !147
	li  	fa3, 0.000000 !122
	fle 	t0, fa2, fa3 !122
	beq 	zero, t0, bne_else.27690 !122
	addi	a3, zero, 0 !122
	jal 	zero, bne_cont.27691 !122
bne_else.27690: !122
	addi	a3, zero, 1 !122
bne_cont.27691: !122
	bne 	a3, zero, beq_else.27692 !148
	li  	fa2, -1.000000 !149
	jal 	zero, beq_cont.27693 !148
beq_else.27692: !148
	li  	fa2, 1.000000 !148
beq_cont.27693: !148
	jal 	zero, beq_cont.27689 !147
beq_else.27688: !147
	li  	fa2, 0.000000 !147
beq_cont.27689: !147
	sw  	a4, 64(sp) !1500
	fsgnj   fa0, fa2, fa2 !1500
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1500
	lw  	a1, 64(sp) !1500
	slli	t0, a1, 2 !1500
	add 	t0, t0, a0 !1500
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.27685 !1536
beq_else.27684: !1536
	addi	t0, zero, 2 !1538
	bne 	a3, t0, beq_else.27694 !1538
	lw  	a3, 16(a1) !298
	flw  	fa2, 0(a3) !303
	fsgnj   fa0, fa2, fa2 !1506
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1506
	sw  	fa0, 0(a0) !1506
	lw  	a0, 60(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa0, 4(a1) !313
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1507
	sw  	fa0, 4(a0) !1507
	lw  	a0, 60(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa0, 8(a1) !323
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1508
	sw  	fa0, 8(a0) !1508
	jal 	zero, beq_cont.27695 !1538
beq_else.27694: !1538
	addi	a0, a1, 0 !1541
	addi	sp, sp, 68 !1541
	jal 	ra, get_nvector_second.2736 !1541
	addi	sp, sp, -68 !1541
beq_cont.27695: !1538
beq_cont.27685: !1536
	li  	a0, 1049128 !188
	lw  	fa0, 0(a0) !188
	li  	a0, 1049212 !188
	sw  	fa0, 0(a0) !188
	li  	a0, 1049128 !189
	lw  	fa0, 4(a0) !189
	li  	a0, 1049212 !189
	sw  	fa0, 4(a0) !189
	li  	a0, 1049128 !190
	lw  	fa0, 8(a0) !190
	li  	a0, 1049212 !190
	sw  	fa0, 8(a0) !190
	li  	a1, 1049128 !0
	lw  	a0, 60(sp) !1680
	addi	sp, sp, 68 !1680
	jal 	ra, utexture.2741 !1680
	addi	sp, sp, -68 !1680
	lw  	a0, 56(sp) !1683
	slli	a0, a0, 2 !1683
	li  	a1, 1049120 !1683
	lw  	a1, 0(a1) !1683
	add 	a0, a0, a1 !1683
	lw  	a1, 36(sp) !1683
	lw  	a2, 40(sp) !1683
	slli	t0, a1, 2 !1683
	add 	t0, t0, a2 !1683
	sw  	a0, 0(t0) !1683
	lw  	a0, 16(sp) !468
	lw  	a3, 4(a0) !468
	slli	t0, a1, 2 !1685
	add 	t0, t0, a3 !1685
	lw  	a3, 0(t0) !1685
	li  	a4, 1049128 !188
	lw  	fa0, 0(a4) !188
	fsw  	fa0, 0(a3) !188
	li  	a4, 1049128 !189
	lw  	fa0, 4(a4) !189
	fsw  	fa0, 4(a3) !189
	li  	a4, 1049128 !190
	lw  	fa0, 8(a4) !190
	fsw  	fa0, 8(a3) !190
	lw  	a3, 12(a0) !483
	lw  	a4, 60(sp) !368
	lw  	a5, 28(a4) !368
	flw  	fa0, 0(a5) !373
	li  	fa1, 0.500000 !1689
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27696 !121
	addi	a5, zero, 0 !121
	jal 	zero, bne_cont.27697 !121
bne_else.27696: !121
	addi	a5, zero, 1 !121
bne_cont.27697: !121
	bne 	a5, zero, beq_else.27698 !1689
	addi	a5, zero, 1 !1692
	slli	t0, a1, 2 !1692
	add 	t0, t0, a3 !1692
	sw  	a5, 0(t0) !1692
	lw  	a3, 16(a0) !490
	slli	t0, a1, 2 !1694
	add 	t0, t0, a3 !1694
	lw  	a5, 0(t0) !1694
	li  	a6, 1049156 !188
	lw  	fa0, 0(a6) !188
	fsw  	fa0, 0(a5) !188
	li  	a6, 1049156 !189
	lw  	fa0, 4(a6) !189
	fsw  	fa0, 4(a5) !189
	li  	a6, 1049156 !190
	lw  	fa0, 8(a6) !190
	fsw  	fa0, 8(a5) !190
	slli	t0, a1, 2 !1695
	add 	t0, t0, a3 !1695
	lw  	a3, 0(t0) !1695
	li  	fa0, 0.003906 !1695
	flw  	fa1, 48(sp) !1695
	fmul	fa0, fa0, fa1 !1695
	flw  	fa2, 0(a3) !234
	fmul	fa2, fa2, fa0 !234
	fsw  	fa2, 0(a3) !234
	flw  	fa2, 4(a3) !235
	fmul	fa2, fa2, fa0 !235
	fsw  	fa2, 4(a3) !235
	flw  	fa2, 8(a3) !236
	fmul	fa2, fa2, fa0 !236
	fsw  	fa2, 8(a3) !236
	lw  	a3, 28(a0) !520
	slli	t0, a1, 2 !1697
	add 	t0, t0, a3 !1697
	lw  	a3, 0(t0) !1697
	li  	a5, 1049144 !188
	lw  	fa0, 0(a5) !188
	fsw  	fa0, 0(a3) !188
	li  	a5, 1049144 !189
	lw  	fa0, 4(a5) !189
	fsw  	fa0, 4(a3) !189
	li  	a5, 1049144 !190
	lw  	fa0, 8(a5) !190
	fsw  	fa0, 8(a3) !190
	jal 	zero, beq_cont.27699 !1689
beq_else.27698: !1689
	addi	a5, zero, 0 !1690
	slli	t0, a1, 2 !1690
	add 	t0, t0, a3 !1690
	sw  	a5, 0(t0) !1690
beq_cont.27699: !1689
	li  	fa0, -2.000000 !1700
	lw  	a3, 32(sp) !208
	flw  	fa1, 0(a3) !208
	li  	a5, 1049144 !208
	lw  	fa2, 0(a5) !208
	fmul	fa1, fa1, fa2 !208
	flw  	fa2, 4(a3) !208
	li  	a5, 1049144 !208
	lw  	fa3, 4(a5) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	flw  	fa2, 8(a3) !208
	li  	a5, 1049144 !208
	lw  	fa3, 8(a5) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	fmul	fa0, fa0, fa1 !1700
	flw  	fa1, 0(a3) !218
	li  	a5, 1049144 !218
	lw  	fa2, 0(a5) !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	fsw  	fa1, 0(a3) !218
	flw  	fa1, 4(a3) !219
	li  	a5, 1049144 !219
	lw  	fa2, 4(a5) !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	fsw  	fa1, 4(a3) !219
	flw  	fa1, 8(a3) !220
	li  	a5, 1049144 !220
	lw  	fa2, 8(a5) !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa1, fa1, fa0 !220
	fsw  	fa1, 8(a3) !220
	lw  	a5, 28(a4) !378
	flw  	fa0, 4(a5) !383
	flw  	fa1, 24(sp) !1704
	fmul	fa0, fa1, fa0 !1704
	li  	a5, 1049112 !1707
	lw  	a5, 0(a5) !1707
	lw  	a6, 0(a5) !1278
	lw  	a7, 0(a6) !1279
	fsw 	fa0, 72(sp) !1280
	addi	t0, zero, -1 !1280
	bne 	a7, t0, beq_else.27701 !1280
	addi	a0, zero, 0 !1281
	jal 	zero, beq_cont.27702 !1280
beq_else.27701: !1280
	sw  	a6, 80(sp) !1284
	sw  	a5, 84(sp) !1284
	addi	t0, zero, 99 !1284
	bne 	a7, t0, beq_else.27703 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.27704 !1284
beq_else.27703: !1284
	li  	s1, 1049128 !0
	li  	s2, 1049564 !0
	addi	a2, s1, 0 !1287
	addi	a1, s2, 0 !1287
	addi	a0, a7, 0 !1287
	addi	sp, sp, 88 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -88 !1287
	bne 	a0, zero, beq_else.27705 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.27706 !1290
beq_else.27705: !1290
	li  	a0, 1049116 !1291
	lw  	fa0, 0(a0) !1291
	li  	fa1, -0.100000 !1291
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27707 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27708 !121
bne_else.27707: !121
	addi	a0, zero, 1 !121
bne_cont.27708: !121
	bne 	a0, zero, beq_else.27709 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.27710 !1291
beq_else.27709: !1291
	addi	a0, zero, 1 !1292
	lw  	a1, 80(sp) !1292
	addi	sp, sp, 88 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -88 !1292
	bne 	a0, zero, beq_else.27711 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.27712 !1292
beq_else.27711: !1292
	addi	a0, zero, 1 !1293
beq_cont.27712: !1292
beq_cont.27710: !1291
beq_cont.27706: !1290
beq_cont.27704: !1284
	bne 	a0, zero, beq_else.27713 !1283
	addi	a0, zero, 1 !1303
	lw  	a1, 84(sp) !1303
	addi	sp, sp, 88 !1303
	jal 	ra, shadow_check_one_or_matrix.2701 !1303
	addi	sp, sp, -88 !1303
	jal 	zero, beq_cont.27714 !1283
beq_else.27713: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 80(sp) !1298
	addi	sp, sp, 88 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -88 !1298
	bne 	a0, zero, beq_else.27715 !1298
	addi	a0, zero, 1 !1301
	lw  	a1, 84(sp) !1301
	addi	sp, sp, 88 !1301
	jal 	ra, shadow_check_one_or_matrix.2701 !1301
	addi	sp, sp, -88 !1301
	jal 	zero, beq_cont.27716 !1298
beq_else.27715: !1298
	addi	a0, zero, 1 !1299
beq_cont.27716: !1298
beq_cont.27714: !1283
beq_cont.27702: !1280
	bne 	a0, zero, beq_else.27717 !1707
	li  	a0, 1049144 !208
	lw  	fa0, 0(a0) !208
	li  	a0, 1048888 !208
	lw  	fa1, 0(a0) !208
	fmul	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 4(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 4(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 8(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 8(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 48(sp) !1708
	fmul	fa0, fa0, fa1 !1708
	lw  	a0, 32(sp) !208
	flw  	fa2, 0(a0) !208
	li  	a1, 1048888 !208
	lw  	fa3, 0(a1) !208
	fmul	fa2, fa2, fa3 !208
	flw  	fa3, 4(a0) !208
	li  	a1, 1048888 !208
	lw  	fa4, 4(a1) !208
	fmul	fa3, fa3, fa4 !208
	fadd	fa2, fa2, fa3 !208
	flw  	fa3, 8(a0) !208
	li  	a1, 1048888 !208
	lw  	fa4, 8(a1) !208
	fmul	fa3, fa3, fa4 !208
	fadd	fa2, fa2, fa3 !208
	fsw 	fa0, 88(sp) !1709
	fsgnj   fa0, fa2, fa2 !1709
	fsgnjn  fa0, fa0, fa0
	li  	fa1, 0.000000 !122
	flw  	fa2, 88(sp) !122
	fle 	t0, fa2, fa1 !122
	beq 	zero, t0, bne_else.27719 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27720 !122
bne_else.27719: !122
	addi	a0, zero, 1 !122
bne_cont.27720: !122
	bne 	a0, zero, beq_else.27721 !1627
	jal 	zero, beq_cont.27722 !1627
beq_else.27721: !1627
	li  	a0, 1049180 !218
	lw  	fa1, 0(a0) !218
	li  	a0, 1049156 !218
	lw  	fa3, 0(a0) !218
	fmul	fa3, fa2, fa3 !218
	fadd	fa1, fa1, fa3 !218
	li  	a0, 1049180 !218
	sw  	fa1, 0(a0) !218
	li  	a0, 1049180 !219
	lw  	fa1, 4(a0) !219
	li  	a0, 1049156 !219
	lw  	fa3, 4(a0) !219
	fmul	fa3, fa2, fa3 !219
	fadd	fa1, fa1, fa3 !219
	li  	a0, 1049180 !219
	sw  	fa1, 4(a0) !219
	li  	a0, 1049180 !220
	lw  	fa1, 8(a0) !220
	li  	a0, 1049156 !220
	lw  	fa3, 8(a0) !220
	fmul	fa2, fa2, fa3 !220
	fadd	fa1, fa1, fa2 !220
	li  	a0, 1049180 !220
	sw  	fa1, 8(a0) !220
beq_cont.27722: !1627
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27723 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27724 !122
bne_else.27723: !122
	addi	a0, zero, 1 !122
bne_cont.27724: !122
	bne 	a0, zero, beq_else.27725 !1632
	jal 	zero, beq_cont.27726 !1632
beq_else.27725: !1632
	fmul	fa0, fa0, fa0 !126
	fmul	fa0, fa0, fa0 !126
	flw  	fa1, 72(sp) !1633
	fmul	fa0, fa0, fa1 !1633
	li  	a0, 1049180 !1634
	lw  	fa2, 0(a0) !1634
	fadd	fa2, fa2, fa0 !1634
	li  	a0, 1049180 !1634
	sw  	fa2, 0(a0) !1634
	li  	a0, 1049180 !1635
	lw  	fa2, 4(a0) !1635
	fadd	fa2, fa2, fa0 !1635
	li  	a0, 1049180 !1635
	sw  	fa2, 4(a0) !1635
	li  	a0, 1049180 !1636
	lw  	fa2, 8(a0) !1636
	fadd	fa2, fa2, fa0 !1636
	li  	a0, 1049180 !1636
	sw  	fa2, 8(a0) !1636
beq_cont.27726: !1632
	jal 	zero, beq_cont.27718 !1707
beq_else.27717: !1707
beq_cont.27718: !1707
	li  	a0, 1049128 !188
	lw  	fa0, 0(a0) !188
	li  	a0, 1049224 !188
	sw  	fa0, 0(a0) !188
	li  	a0, 1049128 !189
	lw  	fa0, 4(a0) !189
	li  	a0, 1049224 !189
	sw  	fa0, 4(a0) !189
	li  	a0, 1049128 !190
	lw  	fa0, 8(a0) !190
	li  	a0, 1049224 !190
	sw  	fa0, 8(a0) !190
	li  	a0, 1048576 !1168
	lw  	a0, 0(a0) !1168
	addi	a1, a0, -1 !1168
	li  	a0, 1049128 !0
	addi	sp, sp, 96 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -96 !1168
	li  	a0, 1050312 !1715
	lw  	a0, 0(a0) !1715
	addi	a0, a0, -1 !1715
	blt 	a0, zero, bge_else.27727 !1643
	li  	a1, 1049592 !1644
	slli	t0, a0, 2 !1644
	add 	t0, t0, a1 !1644
	lw  	a1, 0(t0) !1644
	lw  	a2, 4(a1) !549
	li  	fa0, 1000000000.000000 !1479
	li  	a3, 1049124 !1479
	sw  	fa0, 0(a3) !1479
	li  	a3, 1049112 !1480
	lw  	a3, 0(a3) !1480
	lw  	a4, 0(a3) !1454
	lw  	a5, 0(a4) !1455
	sw  	a0, 96(sp) !1456
	sw  	a2, 100(sp) !1456
	sw  	a1, 104(sp) !1456
	addi	t0, zero, -1 !1456
	bne 	a5, t0, beq_else.27729 !1456
	jal 	zero, beq_cont.27730 !1456
beq_else.27729: !1456
	sw  	a3, 108(sp) !1459
	addi	t0, zero, 99 !1459
	bne 	a5, t0, beq_else.27731 !1459
	lw  	a5, 4(a4) !1444
	addi	t0, zero, -1 !1445
	bne 	a5, t0, beq_else.27733 !1445
	jal 	zero, beq_cont.27734 !1445
beq_else.27733: !1445
	li  	a6, 1048908 !1446
	slli	t0, a5, 2 !1446
	add 	t0, t0, a6 !1446
	lw  	a5, 0(t0) !1446
	addi	a6, zero, 0 !1447
	sw  	a4, 112(sp) !1447
	addi	a1, a5, 0 !1447
	addi	a0, a6, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	lw  	a0, 112(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27735 !1445
	jal 	zero, beq_cont.27736 !1445
beq_else.27735: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 100(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	lw  	a0, 112(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27737 !1445
	jal 	zero, beq_cont.27738 !1445
beq_else.27737: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 100(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	lw  	a0, 112(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27739 !1445
	jal 	zero, beq_cont.27740 !1445
beq_else.27739: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 100(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 112(sp) !1448
	lw  	a2, 100(sp) !1448
	addi	sp, sp, 116 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -116 !1448
beq_cont.27740: !1445
beq_cont.27738: !1445
beq_cont.27736: !1445
beq_cont.27734: !1445
	jal 	zero, beq_cont.27732 !1459
beq_else.27731: !1459
	sw  	a4, 112(sp) !1464
	addi	a1, a2, 0 !1464
	addi	a0, a5, 0 !1464
	addi	sp, sp, 116 !1464
	jal 	ra, solver_fast2.2647 !1464
	addi	sp, sp, -116 !1464
	bne 	a0, zero, beq_else.27741 !1465
	jal 	zero, beq_cont.27742 !1465
beq_else.27741: !1465
	li  	a0, 1049116 !1466
	lw  	fa0, 0(a0) !1466
	li  	a0, 1049124 !1467
	lw  	fa1, 0(a0) !1467
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27743 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27744 !121
bne_else.27743: !121
	addi	a0, zero, 1 !121
bne_cont.27744: !121
	bne 	a0, zero, beq_else.27745 !1467
	jal 	zero, beq_cont.27746 !1467
beq_else.27745: !1467
	lw  	a0, 112(sp) !1444
	lw  	a1, 4(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27747 !1445
	jal 	zero, beq_cont.27748 !1445
beq_else.27747: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 100(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	lw  	a0, 112(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27749 !1445
	jal 	zero, beq_cont.27750 !1445
beq_else.27749: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 100(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	lw  	a0, 112(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27751 !1445
	jal 	zero, beq_cont.27752 !1445
beq_else.27751: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 100(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	lw  	a0, 112(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27753 !1445
	jal 	zero, beq_cont.27754 !1445
beq_else.27753: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 100(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 116 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -116 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 112(sp) !1448
	lw  	a2, 100(sp) !1448
	addi	sp, sp, 116 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -116 !1448
beq_cont.27754: !1445
beq_cont.27752: !1445
beq_cont.27750: !1445
beq_cont.27748: !1445
beq_cont.27746: !1467
beq_cont.27742: !1465
beq_cont.27732: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 108(sp) !1472
	lw  	a2, 100(sp) !1472
	addi	sp, sp, 116 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -116 !1472
beq_cont.27730: !1456
	li  	a0, 1049124 !1481
	lw  	fa0, 0(a0) !1481
	li  	fa1, -0.100000 !1483
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27755 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27756 !121
bne_else.27755: !121
	addi	a0, zero, 1 !121
bne_cont.27756: !121
	bne 	a0, zero, beq_else.27757 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.27758 !1483
beq_else.27757: !1483
	li  	fa1, 100000000.000000 !1484
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27759 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27760 !121
bne_else.27759: !121
	addi	a0, zero, 1 !121
bne_cont.27760: !121
beq_cont.27758: !1483
	bne 	a0, zero, beq_else.27761 !1648
	jal 	zero, beq_cont.27762 !1648
beq_else.27761: !1648
	li  	a0, 1049140 !1649
	lw  	a0, 0(a0) !1649
	slli	a0, a0, 2 !1649
	li  	a1, 1049120 !1649
	lw  	a1, 0(a1) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 104(sp) !543
	lw  	a2, 0(a1) !543
	bne 	a0, a2, beq_else.27763 !1650
	addi	a0, zero, 0 !1652
	li  	a2, 1049112 !1652
	lw  	a2, 0(a2) !1652
	addi	a1, a2, 0 !1652
	addi	sp, sp, 116 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -116 !1652
	bne 	a0, zero, beq_else.27765 !1652
	lw  	a0, 100(sp) !529
	lw  	a1, 0(a0) !529
	li  	a2, 1049144 !208
	lw  	fa0, 0(a2) !208
	flw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	li  	a2, 1049144 !208
	lw  	fa1, 4(a2) !208
	flw  	fa2, 4(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	a2, 1049144 !208
	lw  	fa1, 8(a2) !208
	flw  	fa2, 8(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	a1, 104(sp) !555
	flw  	fa1, 8(a1) !555
	flw  	fa2, 48(sp) !1656
	fmul	fa3, fa1, fa2 !1656
	fmul	fa0, fa3, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 32(sp) !208
	flw  	fa3, 0(a1) !208
	flw  	fa4, 0(a0) !208
	fmul	fa3, fa3, fa4 !208
	flw  	fa4, 4(a1) !208
	flw  	fa5, 4(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flw  	fa4, 8(a1) !208
	flw  	fa5, 8(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	fmul	fa1, fa1, fa3 !1657
	flw  	fa3, 72(sp) !1658
	fsgnj   fa2, fa3, fa3 !1658
	addi	sp, sp, 116 !1658
	jal 	ra, add_light.2744 !1658
	addi	sp, sp, -116 !1658
	jal 	zero, beq_cont.27766 !1652
beq_else.27765: !1652
beq_cont.27766: !1652
	jal 	zero, beq_cont.27764 !1650
beq_else.27763: !1650
beq_cont.27764: !1650
beq_cont.27762: !1648
	lw  	a0, 96(sp) !1662
	addi	a0, a0, -1 !1662
	flw  	fa0, 48(sp) !1662
	flw  	fa1, 72(sp) !1662
	lw  	a1, 32(sp) !1662
	addi	sp, sp, 116 !1662
	jal 	ra, trace_reflections.2748 !1662
	addi	sp, sp, -116 !1662
	jal 	zero, bge_cont.27728 !1643
bge_else.27727: !1643
bge_cont.27728: !1643
	li  	fa0, 0.100000 !1718
	flw  	fa1, 24(sp) !121
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27767 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27768 !121
bne_else.27767: !121
	addi	a0, zero, 1 !121
bne_cont.27768: !121
	bne 	a0, zero, beq_else.27769 !1718
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27769: !1718
	lw  	a0, 36(sp) !1720
	addi	t0, zero, 4 !1720
	blt 	a0, t0, bge_else.27771 !1720
	jal 	zero, bge_cont.27772 !1720
bge_else.27771: !1720
	addi	a1, a0, 1 !1721
	addi	a2, zero, -1 !1721
	lw  	a3, 40(sp) !1721
	slli	t0, a1, 2 !1721
	add 	t0, t0, a3 !1721
	sw  	a2, 0(t0) !1721
bge_cont.27772: !1720
	lw  	a1, 44(sp) !1724
	addi	t0, zero, 2 !1724
	bne 	a1, t0, beq_else.27773 !1724
	li  	fa0, 1.000000 !1725
	lw  	a1, 60(sp) !368
	lw  	a1, 28(a1) !368
	flw  	fa2, 0(a1) !373
	fsub	fa0, fa0, fa2 !1725
	fmul	fa0, fa1, fa0 !1725
	addi	a0, a0, 1 !1726
	li  	a1, 1049124 !1726
	lw  	fa1, 0(a1) !1726
	flw  	fa2, 8(sp) !1726
	fadd	fa1, fa2, fa1 !1726
	lw  	a1, 32(sp) !1726
	lw  	a2, 16(sp) !1726
	lw  	ra, 0(sp)
	jal 	zero, trace_ray.2753 !1726
beq_else.27773: !1724
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27667: !1669
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_ray.2759:
	sw  	ra, 0(sp)
	li  	fa1, 1000000000.000000 !1479
	li  	a1, 1049124 !1479
	sw  	fa1, 0(a1) !1479
	addi	a1, zero, 0 !1480
	li  	a2, 1049112 !1480
	lw  	a2, 0(a2) !1480
	fsw 	fa0, 8(sp) !1480
	sw  	a0, 16(sp) !1480
	addi	t0, a2, 0 !1480
	addi	a2, a0, 0 !1480
	addi	a0, a1, 0 !1480
	addi	a1, t0, 0 !1480
	addi	sp, sp, 20 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -20 !1480
	li  	a0, 1049124 !1481
	lw  	fa0, 0(a0) !1481
	li  	fa1, -0.100000 !1483
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27777 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27778 !121
bne_else.27777: !121
	addi	a0, zero, 1 !121
bne_cont.27778: !121
	bne 	a0, zero, beq_else.27779 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.27780 !1483
beq_else.27779: !1483
	li  	fa1, 100000000.000000 !1484
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27781 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27782 !121
bne_else.27781: !121
	addi	a0, zero, 1 !121
bne_cont.27782: !121
beq_cont.27780: !1483
	bne 	a0, zero, beq_else.27783 !1761
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27783: !1761
	li  	a0, 1049140 !1762
	lw  	a0, 0(a0) !1762
	li  	a1, 1048624 !1762
	slli	t0, a0, 2 !1762
	add 	t0, t0, a1 !1762
	lw  	a0, 0(t0) !1762
	lw  	a1, 16(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 4(a0) !260
	sw  	a0, 20(sp) !1536
	addi	t0, zero, 1 !1536
	bne 	a2, t0, beq_else.27785 !1536
	li  	a2, 1049120 !1497
	lw  	a2, 0(a2) !1497
	li  	fa0, 0.000000 !183
	li  	a3, 1049144 !176
	sw  	fa0, 0(a3) !176
	li  	a3, 1049144 !177
	sw  	fa0, 4(a3) !177
	li  	a3, 1049144 !178
	sw  	fa0, 8(a3) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	slli	t0, a2, 2 !1500
	add 	t0, t0, a1 !1500
	flw  	fa0, 0(t0) !1500
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.27787 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.27788 !124
bne_else.27787: !124
	addi	a1, zero, 0 !124
bne_cont.27788: !124
	bne 	a1, zero, beq_else.27789 !147
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27791 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.27792 !122
bne_else.27791: !122
	addi	a1, zero, 1 !122
bne_cont.27792: !122
	bne 	a1, zero, beq_else.27793 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.27794 !148
beq_else.27793: !148
	li  	fa0, 1.000000 !148
beq_cont.27794: !148
	jal 	zero, beq_cont.27790 !147
beq_else.27789: !147
	li  	fa0, 0.000000 !147
beq_cont.27790: !147
	sw  	a3, 24(sp) !1500
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1500
	lw  	a1, 24(sp) !1500
	slli	t0, a1, 2 !1500
	add 	t0, t0, a0 !1500
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.27786 !1536
beq_else.27785: !1536
	addi	t0, zero, 2 !1538
	bne 	a2, t0, beq_else.27795 !1538
	lw  	a1, 16(a0) !298
	flw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1506
	sw  	fa0, 0(a0) !1506
	lw  	a0, 20(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa0, 4(a1) !313
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1507
	sw  	fa0, 4(a0) !1507
	lw  	a0, 20(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa0, 8(a1) !323
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1508
	sw  	fa0, 8(a0) !1508
	jal 	zero, beq_cont.27796 !1538
beq_else.27795: !1538
	addi	sp, sp, 28 !1541
	jal 	ra, get_nvector_second.2736 !1541
	addi	sp, sp, -28 !1541
beq_cont.27796: !1538
beq_cont.27786: !1536
	li  	a1, 1049128 !0
	lw  	a0, 20(sp) !1764
	addi	sp, sp, 28 !1764
	jal 	ra, utexture.2741 !1764
	addi	sp, sp, -28 !1764
	li  	a0, 1049112 !1767
	lw  	a1, 0(a0) !1767
	lw  	a0, 0(a1) !1278
	lw  	a2, 0(a0) !1279
	addi	t0, zero, -1 !1280
	bne 	a2, t0, beq_else.27797 !1280
	addi	a0, zero, 0 !1281
	jal 	zero, beq_cont.27798 !1280
beq_else.27797: !1280
	sw  	a0, 28(sp) !1284
	sw  	a1, 32(sp) !1284
	addi	t0, zero, 99 !1284
	bne 	a2, t0, beq_else.27799 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.27800 !1284
beq_else.27799: !1284
	li  	a3, 1049128 !0
	li  	a4, 1049564 !0
	addi	a1, a4, 0 !1287
	addi	a0, a2, 0 !1287
	addi	a2, a3, 0 !1287
	addi	sp, sp, 36 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -36 !1287
	bne 	a0, zero, beq_else.27801 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.27802 !1290
beq_else.27801: !1290
	li  	a0, 1049116 !1291
	lw  	fa0, 0(a0) !1291
	li  	fa1, -0.100000 !1291
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27803 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27804 !121
bne_else.27803: !121
	addi	a0, zero, 1 !121
bne_cont.27804: !121
	bne 	a0, zero, beq_else.27805 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.27806 !1291
beq_else.27805: !1291
	addi	a0, zero, 1 !1292
	lw  	a1, 28(sp) !1292
	addi	sp, sp, 36 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -36 !1292
	bne 	a0, zero, beq_else.27807 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.27808 !1292
beq_else.27807: !1292
	addi	a0, zero, 1 !1293
beq_cont.27808: !1292
beq_cont.27806: !1291
beq_cont.27802: !1290
beq_cont.27800: !1284
	bne 	a0, zero, beq_else.27809 !1283
	addi	a0, zero, 1 !1303
	lw  	a1, 32(sp) !1303
	addi	sp, sp, 36 !1303
	jal 	ra, shadow_check_one_or_matrix.2701 !1303
	addi	sp, sp, -36 !1303
	jal 	zero, beq_cont.27810 !1283
beq_else.27809: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 28(sp) !1298
	addi	sp, sp, 36 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -36 !1298
	bne 	a0, zero, beq_else.27811 !1298
	addi	a0, zero, 1 !1301
	lw  	a1, 32(sp) !1301
	addi	sp, sp, 36 !1301
	jal 	ra, shadow_check_one_or_matrix.2701 !1301
	addi	sp, sp, -36 !1301
	jal 	zero, beq_cont.27812 !1298
beq_else.27811: !1298
	addi	a0, zero, 1 !1299
beq_cont.27812: !1298
beq_cont.27810: !1283
beq_cont.27798: !1280
	bne 	a0, zero, beq_else.27813 !1767
	li  	a0, 1049144 !208
	lw  	fa0, 0(a0) !208
	li  	a0, 1048888 !208
	lw  	fa1, 0(a0) !208
	fmul	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 4(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 4(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 8(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 8(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27814 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27815 !122
bne_else.27814: !122
	addi	a0, zero, 1 !122
bne_cont.27815: !122
	bne 	a0, zero, beq_else.27816 !1769
	li  	fa0, 0.000000 !1769
	jal 	zero, beq_cont.27817 !1769
beq_else.27816: !1769
beq_cont.27817: !1769
	flw  	fa1, 8(sp) !1770
	fmul	fa1, fa1, fa0 !1770
	lw  	a0, 20(sp) !368
	lw  	a0, 28(a0) !368
	flw  	fa0, 0(a0) !373
	fmul	fa1, fa1, fa0 !1770
	li  	a0, 1049168 !218
	lw  	fa0, 0(a0) !218
	li  	a0, 1049156 !218
	lw  	fa2, 0(a0) !218
	fmul	fa2, fa1, fa2 !218
	fadd	fa0, fa0, fa2 !218
	li  	a0, 1049168 !218
	sw  	fa0, 0(a0) !218
	li  	a0, 1049168 !219
	lw  	fa0, 4(a0) !219
	li  	a0, 1049156 !219
	lw  	fa2, 4(a0) !219
	fmul	fa2, fa1, fa2 !219
	fadd	fa0, fa0, fa2 !219
	li  	a0, 1049168 !219
	sw  	fa0, 4(a0) !219
	li  	a0, 1049168 !220
	lw  	fa0, 8(a0) !220
	li  	a0, 1049156 !220
	lw  	fa2, 8(a0) !220
	fmul	fa1, fa1, fa2 !220
	fadd	fa0, fa0, fa1 !220
	li  	a0, 1049168 !220
	sw  	fa0, 8(a0) !220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27813: !1767
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_trace_diffuse_rays.2762:
	sw  	ra, 0(sp)
	blt 	a3, zero, bge_else.27820 !1777
	slli	t0, a3, 2 !1778
	add 	t0, t0, a0 !1778
	lw  	a4, 0(t0) !1778
	lw  	a4, 0(a4) !529
	flw  	fa0, 0(a4) !208
	flw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a4) !208
	flw  	fa2, 4(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a4) !208
	flw  	fa2, 8(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27821 !123
	addi	a4, zero, 0 !123
	jal 	zero, bne_cont.27822 !123
bne_else.27821: !123
	addi	a4, zero, 1 !123
bne_cont.27822: !123
	sw  	a2, 4(sp) !1781
	sw  	a1, 8(sp) !1781
	sw  	a0, 12(sp) !1781
	sw  	a3, 16(sp) !1781
	bne 	a4, zero, beq_else.27823 !1781
	slli	t0, a3, 2 !1784
	add 	t0, t0, a0 !1784
	lw  	a4, 0(t0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	li  	fa1, 1000000000.000000 !1479
	li  	a5, 1049124 !1479
	sw  	fa1, 0(a5) !1479
	li  	a5, 1049112 !1480
	lw  	a5, 0(a5) !1480
	lw  	a6, 0(a5) !1454
	lw  	a7, 0(a6) !1455
	fsw 	fa0, 24(sp) !1456
	sw  	a4, 32(sp) !1456
	addi	t0, zero, -1 !1456
	bne 	a7, t0, beq_else.27826 !1456
	jal 	zero, beq_cont.27827 !1456
beq_else.27826: !1456
	sw  	a5, 36(sp) !1459
	addi	t0, zero, 99 !1459
	bne 	a7, t0, beq_else.27828 !1459
	lw  	a7, 4(a6) !1444
	addi	t0, zero, -1 !1445
	bne 	a7, t0, beq_else.27830 !1445
	jal 	zero, beq_cont.27831 !1445
beq_else.27830: !1445
	li  	s1, 1048908 !1446
	slli	t0, a7, 2 !1446
	add 	t0, t0, s1 !1446
	lw  	a7, 0(t0) !1446
	addi	s1, zero, 0 !1447
	sw  	a6, 40(sp) !1447
	addi	a2, a4, 0 !1447
	addi	a1, a7, 0 !1447
	addi	a0, s1, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	lw  	a0, 40(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27832 !1445
	jal 	zero, beq_cont.27833 !1445
beq_else.27832: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 32(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	lw  	a0, 40(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27834 !1445
	jal 	zero, beq_cont.27835 !1445
beq_else.27834: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 32(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	lw  	a0, 40(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27836 !1445
	jal 	zero, beq_cont.27837 !1445
beq_else.27836: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 32(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 40(sp) !1448
	lw  	a2, 32(sp) !1448
	addi	sp, sp, 44 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -44 !1448
beq_cont.27837: !1445
beq_cont.27835: !1445
beq_cont.27833: !1445
beq_cont.27831: !1445
	jal 	zero, beq_cont.27829 !1459
beq_else.27828: !1459
	sw  	a6, 40(sp) !1464
	addi	a1, a4, 0 !1464
	addi	a0, a7, 0 !1464
	addi	sp, sp, 44 !1464
	jal 	ra, solver_fast2.2647 !1464
	addi	sp, sp, -44 !1464
	bne 	a0, zero, beq_else.27838 !1465
	jal 	zero, beq_cont.27839 !1465
beq_else.27838: !1465
	li  	a0, 1049116 !1466
	lw  	fa0, 0(a0) !1466
	li  	a0, 1049124 !1467
	lw  	fa1, 0(a0) !1467
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27840 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27841 !121
bne_else.27840: !121
	addi	a0, zero, 1 !121
bne_cont.27841: !121
	bne 	a0, zero, beq_else.27842 !1467
	jal 	zero, beq_cont.27843 !1467
beq_else.27842: !1467
	lw  	a0, 40(sp) !1444
	lw  	a1, 4(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27844 !1445
	jal 	zero, beq_cont.27845 !1445
beq_else.27844: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 32(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	lw  	a0, 40(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27846 !1445
	jal 	zero, beq_cont.27847 !1445
beq_else.27846: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 32(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	lw  	a0, 40(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27848 !1445
	jal 	zero, beq_cont.27849 !1445
beq_else.27848: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 32(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	lw  	a0, 40(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27850 !1445
	jal 	zero, beq_cont.27851 !1445
beq_else.27850: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 32(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 40(sp) !1448
	lw  	a2, 32(sp) !1448
	addi	sp, sp, 44 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -44 !1448
beq_cont.27851: !1445
beq_cont.27849: !1445
beq_cont.27847: !1445
beq_cont.27845: !1445
beq_cont.27843: !1467
beq_cont.27839: !1465
beq_cont.27829: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 36(sp) !1472
	lw  	a2, 32(sp) !1472
	addi	sp, sp, 44 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -44 !1472
beq_cont.27827: !1456
	li  	a0, 1049124 !1481
	lw  	fa0, 0(a0) !1481
	li  	fa1, -0.100000 !1483
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27852 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27853 !121
bne_else.27852: !121
	addi	a0, zero, 1 !121
bne_cont.27853: !121
	bne 	a0, zero, beq_else.27854 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.27855 !1483
beq_else.27854: !1483
	li  	fa1, 100000000.000000 !1484
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27856 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27857 !121
bne_else.27856: !121
	addi	a0, zero, 1 !121
bne_cont.27857: !121
beq_cont.27855: !1483
	bne 	a0, zero, beq_else.27858 !1761
	jal 	zero, beq_cont.27859 !1761
beq_else.27858: !1761
	li  	a0, 1049140 !1762
	lw  	a0, 0(a0) !1762
	li  	a1, 1048624 !1762
	slli	t0, a0, 2 !1762
	add 	t0, t0, a1 !1762
	lw  	a0, 0(t0) !1762
	lw  	a1, 32(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 4(a0) !260
	sw  	a0, 44(sp) !1536
	addi	t0, zero, 1 !1536
	bne 	a2, t0, beq_else.27860 !1536
	li  	a2, 1049120 !1497
	lw  	a2, 0(a2) !1497
	li  	fa0, 0.000000 !183
	li  	a3, 1049144 !176
	sw  	fa0, 0(a3) !176
	li  	a3, 1049144 !177
	sw  	fa0, 4(a3) !177
	li  	a3, 1049144 !178
	sw  	fa0, 8(a3) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	slli	t0, a2, 2 !1500
	add 	t0, t0, a1 !1500
	flw  	fa0, 0(t0) !1500
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.27862 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.27863 !124
bne_else.27862: !124
	addi	a1, zero, 0 !124
bne_cont.27863: !124
	bne 	a1, zero, beq_else.27864 !147
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27866 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.27867 !122
bne_else.27866: !122
	addi	a1, zero, 1 !122
bne_cont.27867: !122
	bne 	a1, zero, beq_else.27868 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.27869 !148
beq_else.27868: !148
	li  	fa0, 1.000000 !148
beq_cont.27869: !148
	jal 	zero, beq_cont.27865 !147
beq_else.27864: !147
	li  	fa0, 0.000000 !147
beq_cont.27865: !147
	sw  	a3, 48(sp) !1500
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1500
	lw  	a1, 48(sp) !1500
	slli	t0, a1, 2 !1500
	add 	t0, t0, a0 !1500
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.27861 !1536
beq_else.27860: !1536
	addi	t0, zero, 2 !1538
	bne 	a2, t0, beq_else.27870 !1538
	lw  	a1, 16(a0) !298
	flw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1506
	sw  	fa0, 0(a0) !1506
	lw  	a0, 44(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa0, 4(a1) !313
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1507
	sw  	fa0, 4(a0) !1507
	lw  	a0, 44(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa0, 8(a1) !323
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1508
	sw  	fa0, 8(a0) !1508
	jal 	zero, beq_cont.27871 !1538
beq_else.27870: !1538
	addi	sp, sp, 52 !1541
	jal 	ra, get_nvector_second.2736 !1541
	addi	sp, sp, -52 !1541
beq_cont.27871: !1538
beq_cont.27861: !1536
	li  	a1, 1049128 !0
	lw  	a0, 44(sp) !1764
	addi	sp, sp, 52 !1764
	jal 	ra, utexture.2741 !1764
	addi	sp, sp, -52 !1764
	addi	a0, zero, 0 !1767
	li  	a1, 1049112 !1767
	lw  	a1, 0(a1) !1767
	addi	sp, sp, 52 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -52 !1767
	bne 	a0, zero, beq_else.27872 !1767
	li  	a0, 1049144 !208
	lw  	fa0, 0(a0) !208
	li  	a0, 1048888 !208
	lw  	fa1, 0(a0) !208
	fmul	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 4(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 4(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 8(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 8(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27874 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27875 !122
bne_else.27874: !122
	addi	a0, zero, 1 !122
bne_cont.27875: !122
	bne 	a0, zero, beq_else.27876 !1769
	li  	fa0, 0.000000 !1769
	jal 	zero, beq_cont.27877 !1769
beq_else.27876: !1769
beq_cont.27877: !1769
	flw  	fa1, 24(sp) !1770
	fmul	fa1, fa1, fa0 !1770
	lw  	a0, 44(sp) !368
	lw  	a0, 28(a0) !368
	flw  	fa0, 0(a0) !373
	fmul	fa1, fa1, fa0 !1770
	li  	a0, 1049168 !218
	lw  	fa0, 0(a0) !218
	li  	a0, 1049156 !218
	lw  	fa2, 0(a0) !218
	fmul	fa2, fa1, fa2 !218
	fadd	fa0, fa0, fa2 !218
	li  	a0, 1049168 !218
	sw  	fa0, 0(a0) !218
	li  	a0, 1049168 !219
	lw  	fa0, 4(a0) !219
	li  	a0, 1049156 !219
	lw  	fa2, 4(a0) !219
	fmul	fa2, fa1, fa2 !219
	fadd	fa0, fa0, fa2 !219
	li  	a0, 1049168 !219
	sw  	fa0, 4(a0) !219
	li  	a0, 1049168 !220
	lw  	fa0, 8(a0) !220
	li  	a0, 1049156 !220
	lw  	fa2, 8(a0) !220
	fmul	fa1, fa1, fa2 !220
	fadd	fa0, fa0, fa1 !220
	li  	a0, 1049168 !220
	sw  	fa0, 8(a0) !220
	jal 	zero, beq_cont.27873 !1767
beq_else.27872: !1767
beq_cont.27873: !1767
beq_cont.27859: !1761
	jal 	zero, beq_cont.27824 !1781
beq_else.27823: !1781
	addi	a4, a3, 1 !1782
	slli	t0, a4, 2 !1782
	add 	t0, t0, a0 !1782
	lw  	a4, 0(t0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	li  	fa1, 1000000000.000000 !1479
	li  	a5, 1049124 !1479
	sw  	fa1, 0(a5) !1479
	li  	a5, 1049112 !1480
	lw  	a5, 0(a5) !1480
	lw  	a6, 0(a5) !1454
	lw  	a7, 0(a6) !1455
	fsw 	fa0, 56(sp) !1456
	sw  	a4, 64(sp) !1456
	addi	t0, zero, -1 !1456
	bne 	a7, t0, beq_else.27879 !1456
	jal 	zero, beq_cont.27880 !1456
beq_else.27879: !1456
	sw  	a5, 68(sp) !1459
	addi	t0, zero, 99 !1459
	bne 	a7, t0, beq_else.27881 !1459
	lw  	a7, 4(a6) !1444
	addi	t0, zero, -1 !1445
	bne 	a7, t0, beq_else.27883 !1445
	jal 	zero, beq_cont.27884 !1445
beq_else.27883: !1445
	li  	s1, 1048908 !1446
	slli	t0, a7, 2 !1446
	add 	t0, t0, s1 !1446
	lw  	a7, 0(t0) !1446
	addi	s1, zero, 0 !1447
	sw  	a6, 72(sp) !1447
	addi	a2, a4, 0 !1447
	addi	a1, a7, 0 !1447
	addi	a0, s1, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	lw  	a0, 72(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27885 !1445
	jal 	zero, beq_cont.27886 !1445
beq_else.27885: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 64(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	lw  	a0, 72(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27887 !1445
	jal 	zero, beq_cont.27888 !1445
beq_else.27887: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 64(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	lw  	a0, 72(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27889 !1445
	jal 	zero, beq_cont.27890 !1445
beq_else.27889: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 64(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 72(sp) !1448
	lw  	a2, 64(sp) !1448
	addi	sp, sp, 76 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -76 !1448
beq_cont.27890: !1445
beq_cont.27888: !1445
beq_cont.27886: !1445
beq_cont.27884: !1445
	jal 	zero, beq_cont.27882 !1459
beq_else.27881: !1459
	sw  	a6, 72(sp) !1464
	addi	a1, a4, 0 !1464
	addi	a0, a7, 0 !1464
	addi	sp, sp, 76 !1464
	jal 	ra, solver_fast2.2647 !1464
	addi	sp, sp, -76 !1464
	bne 	a0, zero, beq_else.27891 !1465
	jal 	zero, beq_cont.27892 !1465
beq_else.27891: !1465
	li  	a0, 1049116 !1466
	lw  	fa0, 0(a0) !1466
	li  	a0, 1049124 !1467
	lw  	fa1, 0(a0) !1467
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27893 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27894 !121
bne_else.27893: !121
	addi	a0, zero, 1 !121
bne_cont.27894: !121
	bne 	a0, zero, beq_else.27895 !1467
	jal 	zero, beq_cont.27896 !1467
beq_else.27895: !1467
	lw  	a0, 72(sp) !1444
	lw  	a1, 4(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27897 !1445
	jal 	zero, beq_cont.27898 !1445
beq_else.27897: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 64(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	lw  	a0, 72(sp) !1444
	lw  	a1, 8(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27899 !1445
	jal 	zero, beq_cont.27900 !1445
beq_else.27899: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 64(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	lw  	a0, 72(sp) !1444
	lw  	a1, 12(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27901 !1445
	jal 	zero, beq_cont.27902 !1445
beq_else.27901: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 64(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	lw  	a0, 72(sp) !1444
	lw  	a1, 16(a0) !1444
	addi	t0, zero, -1 !1445
	bne 	a1, t0, beq_else.27903 !1445
	jal 	zero, beq_cont.27904 !1445
beq_else.27903: !1445
	li  	a2, 1048908 !1446
	slli	t0, a1, 2 !1446
	add 	t0, t0, a2 !1446
	lw  	a1, 0(t0) !1446
	addi	a2, zero, 0 !1447
	lw  	a3, 64(sp) !1447
	addi	a0, a2, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 76 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -76 !1447
	addi	a0, zero, 5 !1448
	lw  	a1, 72(sp) !1448
	lw  	a2, 64(sp) !1448
	addi	sp, sp, 76 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -76 !1448
beq_cont.27904: !1445
beq_cont.27902: !1445
beq_cont.27900: !1445
beq_cont.27898: !1445
beq_cont.27896: !1467
beq_cont.27892: !1465
beq_cont.27882: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 68(sp) !1472
	lw  	a2, 64(sp) !1472
	addi	sp, sp, 76 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -76 !1472
beq_cont.27880: !1456
	li  	a0, 1049124 !1481
	lw  	fa0, 0(a0) !1481
	li  	fa1, -0.100000 !1483
	fle 	t0, fa0, fa1 !121
	beq 	zero, t0, bne_else.27905 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27906 !121
bne_else.27905: !121
	addi	a0, zero, 1 !121
bne_cont.27906: !121
	bne 	a0, zero, beq_else.27907 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.27908 !1483
beq_else.27907: !1483
	li  	fa1, 100000000.000000 !1484
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.27909 !121
	addi	a0, zero, 0 !121
	jal 	zero, bne_cont.27910 !121
bne_else.27909: !121
	addi	a0, zero, 1 !121
bne_cont.27910: !121
beq_cont.27908: !1483
	bne 	a0, zero, beq_else.27911 !1761
	jal 	zero, beq_cont.27912 !1761
beq_else.27911: !1761
	li  	a0, 1049140 !1762
	lw  	a0, 0(a0) !1762
	li  	a1, 1048624 !1762
	slli	t0, a0, 2 !1762
	add 	t0, t0, a1 !1762
	lw  	a0, 0(t0) !1762
	lw  	a1, 64(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 4(a0) !260
	sw  	a0, 76(sp) !1536
	addi	t0, zero, 1 !1536
	bne 	a2, t0, beq_else.27913 !1536
	li  	a2, 1049120 !1497
	lw  	a2, 0(a2) !1497
	li  	fa0, 0.000000 !183
	li  	a3, 1049144 !176
	sw  	fa0, 0(a3) !176
	li  	a3, 1049144 !177
	sw  	fa0, 4(a3) !177
	li  	a3, 1049144 !178
	sw  	fa0, 8(a3) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	slli	t0, a2, 2 !1500
	add 	t0, t0, a1 !1500
	flw  	fa0, 0(t0) !1500
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.27915 !124
	addi	a1, zero, 1 !124
	jal 	zero, bne_cont.27916 !124
bne_else.27915: !124
	addi	a1, zero, 0 !124
bne_cont.27916: !124
	bne 	a1, zero, beq_else.27917 !147
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27919 !122
	addi	a1, zero, 0 !122
	jal 	zero, bne_cont.27920 !122
bne_else.27919: !122
	addi	a1, zero, 1 !122
bne_cont.27920: !122
	bne 	a1, zero, beq_else.27921 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.27922 !148
beq_else.27921: !148
	li  	fa0, 1.000000 !148
beq_cont.27922: !148
	jal 	zero, beq_cont.27918 !147
beq_else.27917: !147
	li  	fa0, 0.000000 !147
beq_cont.27918: !147
	sw  	a3, 80(sp) !1500
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1500
	lw  	a1, 80(sp) !1500
	slli	t0, a1, 2 !1500
	add 	t0, t0, a0 !1500
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.27914 !1536
beq_else.27913: !1536
	addi	t0, zero, 2 !1538
	bne 	a2, t0, beq_else.27923 !1538
	lw  	a1, 16(a0) !298
	flw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1506
	sw  	fa0, 0(a0) !1506
	lw  	a0, 76(sp) !308
	lw  	a1, 16(a0) !308
	flw  	fa0, 4(a1) !313
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1507
	sw  	fa0, 4(a0) !1507
	lw  	a0, 76(sp) !318
	lw  	a1, 16(a0) !318
	flw  	fa0, 8(a1) !323
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1049144 !1508
	sw  	fa0, 8(a0) !1508
	jal 	zero, beq_cont.27924 !1538
beq_else.27923: !1538
	addi	sp, sp, 84 !1541
	jal 	ra, get_nvector_second.2736 !1541
	addi	sp, sp, -84 !1541
beq_cont.27924: !1538
beq_cont.27914: !1536
	li  	a1, 1049128 !0
	lw  	a0, 76(sp) !1764
	addi	sp, sp, 84 !1764
	jal 	ra, utexture.2741 !1764
	addi	sp, sp, -84 !1764
	addi	a0, zero, 0 !1767
	li  	a1, 1049112 !1767
	lw  	a1, 0(a1) !1767
	addi	sp, sp, 84 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -84 !1767
	bne 	a0, zero, beq_else.27925 !1767
	li  	a0, 1049144 !208
	lw  	fa0, 0(a0) !208
	li  	a0, 1048888 !208
	lw  	fa1, 0(a0) !208
	fmul	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 4(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 4(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	a0, 1049144 !208
	lw  	fa1, 8(a0) !208
	li  	a0, 1048888 !208
	lw  	fa2, 8(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0
	li  	fa1, 0.000000 !122
	fle 	t0, fa0, fa1 !122
	beq 	zero, t0, bne_else.27927 !122
	addi	a0, zero, 0 !122
	jal 	zero, bne_cont.27928 !122
bne_else.27927: !122
	addi	a0, zero, 1 !122
bne_cont.27928: !122
	bne 	a0, zero, beq_else.27929 !1769
	li  	fa0, 0.000000 !1769
	jal 	zero, beq_cont.27930 !1769
beq_else.27929: !1769
beq_cont.27930: !1769
	flw  	fa1, 56(sp) !1770
	fmul	fa1, fa1, fa0 !1770
	lw  	a0, 76(sp) !368
	lw  	a0, 28(a0) !368
	flw  	fa0, 0(a0) !373
	fmul	fa1, fa1, fa0 !1770
	li  	a0, 1049168 !218
	lw  	fa0, 0(a0) !218
	li  	a0, 1049156 !218
	lw  	fa2, 0(a0) !218
	fmul	fa2, fa1, fa2 !218
	fadd	fa0, fa0, fa2 !218
	li  	a0, 1049168 !218
	sw  	fa0, 0(a0) !218
	li  	a0, 1049168 !219
	lw  	fa0, 4(a0) !219
	li  	a0, 1049156 !219
	lw  	fa2, 4(a0) !219
	fmul	fa2, fa1, fa2 !219
	fadd	fa0, fa0, fa2 !219
	li  	a0, 1049168 !219
	sw  	fa0, 4(a0) !219
	li  	a0, 1049168 !220
	lw  	fa0, 8(a0) !220
	li  	a0, 1049156 !220
	lw  	fa2, 8(a0) !220
	fmul	fa1, fa1, fa2 !220
	fadd	fa0, fa0, fa1 !220
	li  	a0, 1049168 !220
	sw  	fa0, 8(a0) !220
	jal 	zero, beq_cont.27926 !1767
beq_else.27925: !1767
beq_cont.27926: !1767
beq_cont.27912: !1761
beq_cont.27824: !1781
	lw  	a0, 16(sp) !1786
	addi	a0, a0, -2 !1786
	blt 	a0, zero, bge_else.27931 !1777
	lw  	a1, 12(sp) !1778
	slli	t0, a0, 2 !1778
	add 	t0, t0, a1 !1778
	lw  	a2, 0(t0) !1778
	lw  	a2, 0(a2) !529
	flw  	fa0, 0(a2) !208
	lw  	a3, 8(sp) !208
	flw  	fa1, 0(a3) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a2) !208
	flw  	fa2, 4(a3) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a2) !208
	flw  	fa2, 8(a3) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27932 !123
	addi	a2, zero, 0 !123
	jal 	zero, bne_cont.27933 !123
bne_else.27932: !123
	addi	a2, zero, 1 !123
bne_cont.27933: !123
	sw  	a0, 84(sp) !1781
	bne 	a2, zero, beq_else.27934 !1781
	slli	t0, a0, 2 !1784
	add 	t0, t0, a1 !1784
	lw  	a2, 0(t0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a2, 0 !1784
	addi	sp, sp, 88 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -88 !1784
	jal 	zero, beq_cont.27935 !1781
beq_else.27934: !1781
	addi	a2, a0, 1 !1782
	slli	t0, a2, 2 !1782
	add 	t0, t0, a1 !1782
	lw  	a2, 0(t0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a2, 0 !1782
	addi	sp, sp, 88 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -88 !1782
beq_cont.27935: !1781
	lw  	a0, 84(sp) !1786
	addi	a3, a0, -2 !1786
	lw  	a0, 12(sp) !1786
	lw  	a1, 8(sp) !1786
	lw  	a2, 4(sp) !1786
	lw  	ra, 0(sp)
	jal 	zero, iter_trace_diffuse_rays.2762 !1786
bge_else.27931: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27820: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_ray_80percent.2771:
	sw  	ra, 0(sp)
	sw  	a1, 4(sp) !1801
	sw  	a2, 8(sp) !1801
	sw  	a0, 12(sp) !1801
	bne 	a0, zero, beq_else.27938 !1801
	jal 	zero, beq_cont.27939 !1801
beq_else.27938: !1801
	li  	a3, 1049292 !1802
	lw  	a3, 0(a3) !1802
	flw  	fa0, 0(a2) !188
	li  	a4, 1049224 !188
	sw  	fa0, 0(a4) !188
	flw  	fa0, 4(a2) !189
	li  	a4, 1049224 !189
	sw  	fa0, 4(a4) !189
	flw  	fa0, 8(a2) !190
	li  	a4, 1049224 !190
	sw  	fa0, 8(a4) !190
	li  	a4, 1048576 !1168
	lw  	a4, 0(a4) !1168
	addi	a4, a4, -1 !1168
	sw  	a3, 16(sp) !1168
	addi	a1, a4, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 16(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 8(sp) !1795
	addi	sp, sp, 20 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -20 !1795
beq_cont.27939: !1801
	lw  	a0, 12(sp) !1805
	addi	t0, zero, 1 !1805
	bne 	a0, t0, beq_else.27940 !1805
	jal 	zero, beq_cont.27941 !1805
beq_else.27940: !1805
	li  	a1, 1049292 !1806
	lw  	a1, 4(a1) !1806
	lw  	a2, 8(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 20(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 24 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -24 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 20(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 8(sp) !1795
	addi	sp, sp, 24 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -24 !1795
beq_cont.27941: !1805
	lw  	a0, 12(sp) !1809
	addi	t0, zero, 2 !1809
	bne 	a0, t0, beq_else.27942 !1809
	jal 	zero, beq_cont.27943 !1809
beq_else.27942: !1809
	li  	a1, 1049292 !1810
	lw  	a1, 8(a1) !1810
	lw  	a2, 8(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 24(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 28 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -28 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 24(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 8(sp) !1795
	addi	sp, sp, 28 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -28 !1795
beq_cont.27943: !1809
	lw  	a0, 12(sp) !1813
	addi	t0, zero, 3 !1813
	bne 	a0, t0, beq_else.27944 !1813
	jal 	zero, beq_cont.27945 !1813
beq_else.27944: !1813
	li  	a1, 1049292 !1814
	lw  	a1, 12(a1) !1814
	lw  	a2, 8(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 28(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 32 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -32 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 28(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 8(sp) !1795
	addi	sp, sp, 32 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -32 !1795
beq_cont.27945: !1813
	lw  	a0, 12(sp) !1817
	addi	t0, zero, 4 !1817
	bne 	a0, t0, beq_else.27946 !1817
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.27946: !1817
	li  	a0, 1049292 !1818
	lw  	a0, 16(a0) !1818
	lw  	a1, 8(sp) !188
	flw  	fa0, 0(a1) !188
	li  	a2, 1049224 !188
	sw  	fa0, 0(a2) !188
	flw  	fa0, 4(a1) !189
	li  	a2, 1049224 !189
	sw  	fa0, 4(a2) !189
	flw  	fa0, 8(a1) !190
	li  	a2, 1049224 !190
	sw  	fa0, 8(a2) !190
	li  	a2, 1048576 !1168
	lw  	a2, 0(a2) !1168
	addi	a2, a2, -1 !1168
	sw  	a0, 32(sp) !1168
	addi	a0, a1, 0 !1168
	addi	a1, a2, 0 !1168
	addi	sp, sp, 36 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -36 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 32(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 8(sp) !1795
	lw  	ra, 0(sp)
	jal 	zero, iter_trace_diffuse_rays.2762 !1795
calc_diffuse_using_1point.2775:
	sw  	ra, 0(sp)
	lw  	a2, 20(a0) !497
	lw  	a3, 28(a0) !520
	lw  	a4, 4(a0) !468
	lw  	a5, 16(a0) !490
	slli	t0, a1, 2 !1831
	add 	t0, t0, a2 !1831
	lw  	a2, 0(t0) !1831
	flw  	fa0, 0(a2) !188
	li  	a6, 1049168 !188
	sw  	fa0, 0(a6) !188
	flw  	fa0, 4(a2) !189
	li  	a6, 1049168 !189
	sw  	fa0, 4(a6) !189
	flw  	fa0, 8(a2) !190
	li  	a2, 1049168 !190
	sw  	fa0, 8(a2) !190
	lw  	a0, 24(a0) !506
	lw  	a0, 0(a0) !508
	slli	t0, a1, 2 !1834
	add 	t0, t0, a3 !1834
	lw  	a2, 0(t0) !1834
	slli	t0, a1, 2 !1835
	add 	t0, t0, a4 !1835
	lw  	a3, 0(t0) !1835
	sw  	a1, 4(sp) !1801
	sw  	a5, 8(sp) !1801
	sw  	a2, 12(sp) !1801
	sw  	a3, 16(sp) !1801
	sw  	a0, 20(sp) !1801
	bne 	a0, zero, beq_else.27948 !1801
	jal 	zero, beq_cont.27949 !1801
beq_else.27948: !1801
	li  	a4, 1049292 !1802
	lw  	a4, 0(a4) !1802
	flw  	fa0, 0(a3) !188
	li  	a6, 1049224 !188
	sw  	fa0, 0(a6) !188
	flw  	fa0, 4(a3) !189
	li  	a6, 1049224 !189
	sw  	fa0, 4(a6) !189
	flw  	fa0, 8(a3) !190
	li  	a6, 1049224 !190
	sw  	fa0, 8(a6) !190
	li  	a6, 1048576 !1168
	lw  	a6, 0(a6) !1168
	addi	a6, a6, -1 !1168
	sw  	a4, 24(sp) !1168
	addi	a1, a6, 0 !1168
	addi	a0, a3, 0 !1168
	addi	sp, sp, 28 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -28 !1168
	lw  	a0, 24(sp) !1778
	lw  	a1, 472(a0) !1778
	lw  	a1, 0(a1) !529
	flw  	fa0, 0(a1) !208
	lw  	a2, 12(sp) !208
	flw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a1) !208
	flw  	fa2, 4(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a1) !208
	flw  	fa2, 8(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27950 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.27951 !123
bne_else.27950: !123
	addi	a1, zero, 1 !123
bne_cont.27951: !123
	bne 	a1, zero, beq_else.27952 !1781
	lw  	a1, 472(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a1, 0 !1784
	addi	sp, sp, 28 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -28 !1784
	jal 	zero, beq_cont.27953 !1781
beq_else.27952: !1781
	lw  	a1, 476(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a1, 0 !1782
	addi	sp, sp, 28 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -28 !1782
beq_cont.27953: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 24(sp) !1786
	lw  	a1, 12(sp) !1786
	lw  	a2, 16(sp) !1786
	addi	sp, sp, 28 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -28 !1786
beq_cont.27949: !1801
	lw  	a0, 20(sp) !1805
	addi	t0, zero, 1 !1805
	bne 	a0, t0, beq_else.27954 !1805
	jal 	zero, beq_cont.27955 !1805
beq_else.27954: !1805
	li  	a1, 1049292 !1806
	lw  	a1, 4(a1) !1806
	lw  	a2, 16(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 28(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 32 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -32 !1168
	lw  	a0, 28(sp) !1778
	lw  	a1, 472(a0) !1778
	lw  	a1, 0(a1) !529
	flw  	fa0, 0(a1) !208
	lw  	a2, 12(sp) !208
	flw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a1) !208
	flw  	fa2, 4(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a1) !208
	flw  	fa2, 8(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27956 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.27957 !123
bne_else.27956: !123
	addi	a1, zero, 1 !123
bne_cont.27957: !123
	bne 	a1, zero, beq_else.27958 !1781
	lw  	a1, 472(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a1, 0 !1784
	addi	sp, sp, 32 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -32 !1784
	jal 	zero, beq_cont.27959 !1781
beq_else.27958: !1781
	lw  	a1, 476(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a1, 0 !1782
	addi	sp, sp, 32 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -32 !1782
beq_cont.27959: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 28(sp) !1786
	lw  	a1, 12(sp) !1786
	lw  	a2, 16(sp) !1786
	addi	sp, sp, 32 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -32 !1786
beq_cont.27955: !1805
	lw  	a0, 20(sp) !1809
	addi	t0, zero, 2 !1809
	bne 	a0, t0, beq_else.27960 !1809
	jal 	zero, beq_cont.27961 !1809
beq_else.27960: !1809
	li  	a1, 1049292 !1810
	lw  	a1, 8(a1) !1810
	lw  	a2, 16(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 32(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 36 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -36 !1168
	lw  	a0, 32(sp) !1778
	lw  	a1, 472(a0) !1778
	lw  	a1, 0(a1) !529
	flw  	fa0, 0(a1) !208
	lw  	a2, 12(sp) !208
	flw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a1) !208
	flw  	fa2, 4(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a1) !208
	flw  	fa2, 8(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27962 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.27963 !123
bne_else.27962: !123
	addi	a1, zero, 1 !123
bne_cont.27963: !123
	bne 	a1, zero, beq_else.27964 !1781
	lw  	a1, 472(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a1, 0 !1784
	addi	sp, sp, 36 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -36 !1784
	jal 	zero, beq_cont.27965 !1781
beq_else.27964: !1781
	lw  	a1, 476(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a1, 0 !1782
	addi	sp, sp, 36 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -36 !1782
beq_cont.27965: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 32(sp) !1786
	lw  	a1, 12(sp) !1786
	lw  	a2, 16(sp) !1786
	addi	sp, sp, 36 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -36 !1786
beq_cont.27961: !1809
	lw  	a0, 20(sp) !1813
	addi	t0, zero, 3 !1813
	bne 	a0, t0, beq_else.27966 !1813
	jal 	zero, beq_cont.27967 !1813
beq_else.27966: !1813
	li  	a1, 1049292 !1814
	lw  	a1, 12(a1) !1814
	lw  	a2, 16(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 36(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 40 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -40 !1168
	lw  	a0, 36(sp) !1778
	lw  	a1, 472(a0) !1778
	lw  	a1, 0(a1) !529
	flw  	fa0, 0(a1) !208
	lw  	a2, 12(sp) !208
	flw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a1) !208
	flw  	fa2, 4(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a1) !208
	flw  	fa2, 8(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27968 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.27969 !123
bne_else.27968: !123
	addi	a1, zero, 1 !123
bne_cont.27969: !123
	bne 	a1, zero, beq_else.27970 !1781
	lw  	a1, 472(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a1, 0 !1784
	addi	sp, sp, 40 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -40 !1784
	jal 	zero, beq_cont.27971 !1781
beq_else.27970: !1781
	lw  	a1, 476(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a1, 0 !1782
	addi	sp, sp, 40 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -40 !1782
beq_cont.27971: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 36(sp) !1786
	lw  	a1, 12(sp) !1786
	lw  	a2, 16(sp) !1786
	addi	sp, sp, 40 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -40 !1786
beq_cont.27967: !1813
	lw  	a0, 20(sp) !1817
	addi	t0, zero, 4 !1817
	bne 	a0, t0, beq_else.27972 !1817
	jal 	zero, beq_cont.27973 !1817
beq_else.27972: !1817
	li  	a0, 1049292 !1818
	lw  	a0, 16(a0) !1818
	lw  	a1, 16(sp) !188
	flw  	fa0, 0(a1) !188
	li  	a2, 1049224 !188
	sw  	fa0, 0(a2) !188
	flw  	fa0, 4(a1) !189
	li  	a2, 1049224 !189
	sw  	fa0, 4(a2) !189
	flw  	fa0, 8(a1) !190
	li  	a2, 1049224 !190
	sw  	fa0, 8(a2) !190
	li  	a2, 1048576 !1168
	lw  	a2, 0(a2) !1168
	addi	a2, a2, -1 !1168
	sw  	a0, 40(sp) !1168
	addi	a0, a1, 0 !1168
	addi	a1, a2, 0 !1168
	addi	sp, sp, 44 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -44 !1168
	lw  	a0, 40(sp) !1778
	lw  	a1, 472(a0) !1778
	lw  	a1, 0(a1) !529
	flw  	fa0, 0(a1) !208
	lw  	a2, 12(sp) !208
	flw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a1) !208
	flw  	fa2, 4(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a1) !208
	flw  	fa2, 8(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.27974 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.27975 !123
bne_else.27974: !123
	addi	a1, zero, 1 !123
bne_cont.27975: !123
	bne 	a1, zero, beq_else.27976 !1781
	lw  	a1, 472(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a1, 0 !1784
	addi	sp, sp, 44 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -44 !1784
	jal 	zero, beq_cont.27977 !1781
beq_else.27976: !1781
	lw  	a1, 476(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a1, 0 !1782
	addi	sp, sp, 44 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -44 !1782
beq_cont.27977: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 40(sp) !1786
	lw  	a1, 12(sp) !1786
	lw  	a2, 16(sp) !1786
	addi	sp, sp, 44 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -44 !1786
beq_cont.27973: !1817
	lw  	a0, 4(sp) !1836
	lw  	a1, 8(sp) !1836
	slli	t0, a0, 2 !1836
	add 	t0, t0, a1 !1836
	lw  	a0, 0(t0) !1836
	li  	a1, 1049180 !241
	lw  	fa0, 0(a1) !241
	flw  	fa1, 0(a0) !241
	li  	a1, 1049168 !241
	lw  	fa2, 0(a1) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a1, 1049180 !241
	sw  	fa0, 0(a1) !241
	li  	a1, 1049180 !242
	lw  	fa0, 4(a1) !242
	flw  	fa1, 4(a0) !242
	li  	a1, 1049168 !242
	lw  	fa2, 4(a1) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a1, 1049180 !242
	sw  	fa0, 4(a1) !242
	li  	a1, 1049180 !243
	lw  	fa0, 8(a1) !243
	flw  	fa1, 8(a0) !243
	li  	a0, 1049168 !243
	lw  	fa2, 8(a0) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a0, 1049180 !243
	sw  	fa0, 8(a0) !243
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_diffuse_using_5points.2778:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1844
	add 	t0, t0, a1 !1844
	lw  	a1, 0(t0) !1844
	lw  	a1, 20(a1) !497
	addi	a5, a0, -1 !1845
	slli	t0, a5, 2 !1845
	add 	t0, t0, a2 !1845
	lw  	a5, 0(t0) !1845
	lw  	a5, 20(a5) !497
	slli	t0, a0, 2 !1846
	add 	t0, t0, a2 !1846
	lw  	a6, 0(t0) !1846
	lw  	a6, 20(a6) !497
	addi	a7, a0, 1 !1847
	slli	t0, a7, 2 !1847
	add 	t0, t0, a2 !1847
	lw  	a7, 0(t0) !1847
	lw  	a7, 20(a7) !497
	slli	t0, a0, 2 !1848
	add 	t0, t0, a3 !1848
	lw  	a3, 0(t0) !1848
	lw  	a3, 20(a3) !497
	slli	t0, a4, 2 !1850
	add 	t0, t0, a1 !1850
	lw  	a1, 0(t0) !1850
	flw  	fa0, 0(a1) !188
	li  	s1, 1049168 !188
	sw  	fa0, 0(s1) !188
	flw  	fa0, 4(a1) !189
	li  	s1, 1049168 !189
	sw  	fa0, 4(s1) !189
	flw  	fa0, 8(a1) !190
	li  	a1, 1049168 !190
	sw  	fa0, 8(a1) !190
	slli	t0, a4, 2 !1851
	add 	t0, t0, a5 !1851
	lw  	a1, 0(t0) !1851
	li  	a5, 1049168 !225
	lw  	fa0, 0(a5) !225
	flw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	li  	a5, 1049168 !225
	sw  	fa0, 0(a5) !225
	li  	a5, 1049168 !226
	lw  	fa0, 4(a5) !226
	flw  	fa1, 4(a1) !226
	fadd	fa0, fa0, fa1 !226
	li  	a5, 1049168 !226
	sw  	fa0, 4(a5) !226
	li  	a5, 1049168 !227
	lw  	fa0, 8(a5) !227
	flw  	fa1, 8(a1) !227
	fadd	fa0, fa0, fa1 !227
	li  	a1, 1049168 !227
	sw  	fa0, 8(a1) !227
	slli	t0, a4, 2 !1852
	add 	t0, t0, a6 !1852
	lw  	a1, 0(t0) !1852
	li  	a5, 1049168 !225
	lw  	fa0, 0(a5) !225
	flw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	li  	a5, 1049168 !225
	sw  	fa0, 0(a5) !225
	li  	a5, 1049168 !226
	lw  	fa0, 4(a5) !226
	flw  	fa1, 4(a1) !226
	fadd	fa0, fa0, fa1 !226
	li  	a5, 1049168 !226
	sw  	fa0, 4(a5) !226
	li  	a5, 1049168 !227
	lw  	fa0, 8(a5) !227
	flw  	fa1, 8(a1) !227
	fadd	fa0, fa0, fa1 !227
	li  	a1, 1049168 !227
	sw  	fa0, 8(a1) !227
	slli	t0, a4, 2 !1853
	add 	t0, t0, a7 !1853
	lw  	a1, 0(t0) !1853
	li  	a5, 1049168 !225
	lw  	fa0, 0(a5) !225
	flw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	li  	a5, 1049168 !225
	sw  	fa0, 0(a5) !225
	li  	a5, 1049168 !226
	lw  	fa0, 4(a5) !226
	flw  	fa1, 4(a1) !226
	fadd	fa0, fa0, fa1 !226
	li  	a5, 1049168 !226
	sw  	fa0, 4(a5) !226
	li  	a5, 1049168 !227
	lw  	fa0, 8(a5) !227
	flw  	fa1, 8(a1) !227
	fadd	fa0, fa0, fa1 !227
	li  	a1, 1049168 !227
	sw  	fa0, 8(a1) !227
	slli	t0, a4, 2 !1854
	add 	t0, t0, a3 !1854
	lw  	a1, 0(t0) !1854
	li  	a3, 1049168 !225
	lw  	fa0, 0(a3) !225
	flw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	li  	a3, 1049168 !225
	sw  	fa0, 0(a3) !225
	li  	a3, 1049168 !226
	lw  	fa0, 4(a3) !226
	flw  	fa1, 4(a1) !226
	fadd	fa0, fa0, fa1 !226
	li  	a3, 1049168 !226
	sw  	fa0, 4(a3) !226
	li  	a3, 1049168 !227
	lw  	fa0, 8(a3) !227
	flw  	fa1, 8(a1) !227
	fadd	fa0, fa0, fa1 !227
	li  	a1, 1049168 !227
	sw  	fa0, 8(a1) !227
	slli	t0, a0, 2 !1856
	add 	t0, t0, a2 !1856
	lw  	a0, 0(t0) !1856
	lw  	a0, 16(a0) !490
	slli	t0, a4, 2 !1857
	add 	t0, t0, a0 !1857
	lw  	a0, 0(t0) !1857
	li  	a1, 1049180 !241
	lw  	fa0, 0(a1) !241
	flw  	fa1, 0(a0) !241
	li  	a1, 1049168 !241
	lw  	fa2, 0(a1) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a1, 1049180 !241
	sw  	fa0, 0(a1) !241
	li  	a1, 1049180 !242
	lw  	fa0, 4(a1) !242
	flw  	fa1, 4(a0) !242
	li  	a1, 1049168 !242
	lw  	fa2, 4(a1) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a1, 1049180 !242
	sw  	fa0, 4(a1) !242
	li  	a1, 1049180 !243
	lw  	fa0, 8(a1) !243
	flw  	fa1, 8(a0) !243
	li  	a0, 1049168 !243
	lw  	fa2, 8(a0) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a0, 1049180 !243
	sw  	fa0, 8(a0) !243
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
do_without_neighbors.2784:
	sw  	ra, 0(sp)
	addi	t0, zero, 4 !1863
	blt 	t0, a1, bge_else.27980 !1863
	lw  	a2, 8(a0) !476
	slli	t0, a1, 2 !1866
	add 	t0, t0, a2 !1866
	lw  	a2, 0(t0) !1866
	blt 	a2, zero, bge_else.27981 !1866
	lw  	a2, 12(a0) !483
	slli	t0, a1, 2 !1868
	add 	t0, t0, a2 !1868
	lw  	a2, 0(t0) !1868
	sw  	a0, 4(sp) !1868
	sw  	a1, 8(sp) !1868
	bne 	a2, zero, beq_else.27982 !1868
	jal 	zero, beq_cont.27983 !1868
beq_else.27982: !1868
	lw  	a2, 20(a0) !497
	lw  	a3, 28(a0) !520
	lw  	a4, 4(a0) !468
	lw  	a5, 16(a0) !490
	slli	t0, a1, 2 !1831
	add 	t0, t0, a2 !1831
	lw  	a2, 0(t0) !1831
	flw  	fa0, 0(a2) !188
	li  	a6, 1049168 !188
	sw  	fa0, 0(a6) !188
	flw  	fa0, 4(a2) !189
	li  	a6, 1049168 !189
	sw  	fa0, 4(a6) !189
	flw  	fa0, 8(a2) !190
	li  	a2, 1049168 !190
	sw  	fa0, 8(a2) !190
	lw  	a2, 24(a0) !506
	lw  	a2, 0(a2) !508
	slli	t0, a1, 2 !1834
	add 	t0, t0, a3 !1834
	lw  	a3, 0(t0) !1834
	slli	t0, a1, 2 !1835
	add 	t0, t0, a4 !1835
	lw  	a4, 0(t0) !1835
	sw  	a5, 12(sp) !1801
	sw  	a3, 16(sp) !1801
	sw  	a4, 20(sp) !1801
	sw  	a2, 24(sp) !1801
	bne 	a2, zero, beq_else.27984 !1801
	jal 	zero, beq_cont.27985 !1801
beq_else.27984: !1801
	li  	a6, 1049292 !1802
	lw  	a6, 0(a6) !1802
	flw  	fa0, 0(a4) !188
	li  	a7, 1049224 !188
	sw  	fa0, 0(a7) !188
	flw  	fa0, 4(a4) !189
	li  	a7, 1049224 !189
	sw  	fa0, 4(a7) !189
	flw  	fa0, 8(a4) !190
	li  	a7, 1049224 !190
	sw  	fa0, 8(a7) !190
	li  	a7, 1048576 !1168
	lw  	a7, 0(a7) !1168
	addi	a7, a7, -1 !1168
	sw  	a6, 28(sp) !1168
	addi	a1, a7, 0 !1168
	addi	a0, a4, 0 !1168
	addi	sp, sp, 32 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -32 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 28(sp) !1795
	lw  	a1, 16(sp) !1795
	lw  	a2, 20(sp) !1795
	addi	sp, sp, 32 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -32 !1795
beq_cont.27985: !1801
	lw  	a0, 24(sp) !1805
	addi	t0, zero, 1 !1805
	bne 	a0, t0, beq_else.27986 !1805
	jal 	zero, beq_cont.27987 !1805
beq_else.27986: !1805
	li  	a1, 1049292 !1806
	lw  	a1, 4(a1) !1806
	lw  	a2, 20(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 32(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 36 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -36 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 32(sp) !1795
	lw  	a1, 16(sp) !1795
	lw  	a2, 20(sp) !1795
	addi	sp, sp, 36 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -36 !1795
beq_cont.27987: !1805
	lw  	a0, 24(sp) !1809
	addi	t0, zero, 2 !1809
	bne 	a0, t0, beq_else.27988 !1809
	jal 	zero, beq_cont.27989 !1809
beq_else.27988: !1809
	li  	a1, 1049292 !1810
	lw  	a1, 8(a1) !1810
	lw  	a2, 20(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 36(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 40 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -40 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 36(sp) !1795
	lw  	a1, 16(sp) !1795
	lw  	a2, 20(sp) !1795
	addi	sp, sp, 40 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -40 !1795
beq_cont.27989: !1809
	lw  	a0, 24(sp) !1813
	addi	t0, zero, 3 !1813
	bne 	a0, t0, beq_else.27990 !1813
	jal 	zero, beq_cont.27991 !1813
beq_else.27990: !1813
	li  	a1, 1049292 !1814
	lw  	a1, 12(a1) !1814
	lw  	a2, 20(sp) !188
	flw  	fa0, 0(a2) !188
	li  	a3, 1049224 !188
	sw  	fa0, 0(a3) !188
	flw  	fa0, 4(a2) !189
	li  	a3, 1049224 !189
	sw  	fa0, 4(a3) !189
	flw  	fa0, 8(a2) !190
	li  	a3, 1049224 !190
	sw  	fa0, 8(a3) !190
	li  	a3, 1048576 !1168
	lw  	a3, 0(a3) !1168
	addi	a3, a3, -1 !1168
	sw  	a1, 40(sp) !1168
	addi	a1, a3, 0 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 44 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -44 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 40(sp) !1795
	lw  	a1, 16(sp) !1795
	lw  	a2, 20(sp) !1795
	addi	sp, sp, 44 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -44 !1795
beq_cont.27991: !1813
	lw  	a0, 24(sp) !1817
	addi	t0, zero, 4 !1817
	bne 	a0, t0, beq_else.27992 !1817
	jal 	zero, beq_cont.27993 !1817
beq_else.27992: !1817
	li  	a0, 1049292 !1818
	lw  	a0, 16(a0) !1818
	lw  	a1, 20(sp) !188
	flw  	fa0, 0(a1) !188
	li  	a2, 1049224 !188
	sw  	fa0, 0(a2) !188
	flw  	fa0, 4(a1) !189
	li  	a2, 1049224 !189
	sw  	fa0, 4(a2) !189
	flw  	fa0, 8(a1) !190
	li  	a2, 1049224 !190
	sw  	fa0, 8(a2) !190
	li  	a2, 1048576 !1168
	lw  	a2, 0(a2) !1168
	addi	a2, a2, -1 !1168
	sw  	a0, 44(sp) !1168
	addi	a0, a1, 0 !1168
	addi	a1, a2, 0 !1168
	addi	sp, sp, 48 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -48 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 44(sp) !1795
	lw  	a1, 16(sp) !1795
	lw  	a2, 20(sp) !1795
	addi	sp, sp, 48 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -48 !1795
beq_cont.27993: !1817
	lw  	a0, 8(sp) !1836
	lw  	a1, 12(sp) !1836
	slli	t0, a0, 2 !1836
	add 	t0, t0, a1 !1836
	lw  	a1, 0(t0) !1836
	li  	a2, 1049180 !241
	lw  	fa0, 0(a2) !241
	flw  	fa1, 0(a1) !241
	li  	a2, 1049168 !241
	lw  	fa2, 0(a2) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a2, 1049180 !241
	sw  	fa0, 0(a2) !241
	li  	a2, 1049180 !242
	lw  	fa0, 4(a2) !242
	flw  	fa1, 4(a1) !242
	li  	a2, 1049168 !242
	lw  	fa2, 4(a2) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a2, 1049180 !242
	sw  	fa0, 4(a2) !242
	li  	a2, 1049180 !243
	lw  	fa0, 8(a2) !243
	flw  	fa1, 8(a1) !243
	li  	a1, 1049168 !243
	lw  	fa2, 8(a1) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a1, 1049180 !243
	sw  	fa0, 8(a1) !243
beq_cont.27983: !1868
	lw  	a0, 8(sp) !1871
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4 !1863
	blt 	t0, a1, bge_else.27994 !1863
	lw  	a0, 4(sp) !476
	lw  	a2, 8(a0) !476
	slli	t0, a1, 2 !1866
	add 	t0, t0, a2 !1866
	lw  	a2, 0(t0) !1866
	blt 	a2, zero, bge_else.27995 !1866
	lw  	a2, 12(a0) !483
	slli	t0, a1, 2 !1868
	add 	t0, t0, a2 !1868
	lw  	a2, 0(t0) !1868
	sw  	a1, 48(sp) !1868
	bne 	a2, zero, beq_else.27996 !1868
	jal 	zero, beq_cont.27997 !1868
beq_else.27996: !1868
	addi	sp, sp, 52 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -52 !1869
beq_cont.27997: !1868
	lw  	a0, 48(sp) !1871
	addi	a0, a0, 1 !1871
	addi	t0, zero, 4 !1863
	blt 	t0, a0, bge_else.27998 !1863
	lw  	a1, 4(sp) !476
	lw  	a2, 8(a1) !476
	slli	t0, a0, 2 !1866
	add 	t0, t0, a2 !1866
	lw  	a2, 0(t0) !1866
	blt 	a2, zero, bge_else.27999 !1866
	lw  	a2, 12(a1) !483
	slli	t0, a0, 2 !1868
	add 	t0, t0, a2 !1868
	lw  	a2, 0(t0) !1868
	bne 	a2, zero, beq_else.28000 !1868
	jal 	zero, beq_cont.28001 !1868
beq_else.28000: !1868
	lw  	a2, 20(a1) !497
	lw  	a3, 28(a1) !520
	lw  	a4, 4(a1) !468
	lw  	a5, 16(a1) !490
	slli	t0, a0, 2 !1831
	add 	t0, t0, a2 !1831
	lw  	a2, 0(t0) !1831
	flw  	fa0, 0(a2) !188
	li  	a6, 1049168 !188
	sw  	fa0, 0(a6) !188
	flw  	fa0, 4(a2) !189
	li  	a6, 1049168 !189
	sw  	fa0, 4(a6) !189
	flw  	fa0, 8(a2) !190
	li  	a2, 1049168 !190
	sw  	fa0, 8(a2) !190
	lw  	a2, 24(a1) !506
	lw  	a2, 0(a2) !508
	slli	t0, a0, 2 !1834
	add 	t0, t0, a3 !1834
	lw  	a3, 0(t0) !1834
	slli	t0, a0, 2 !1835
	add 	t0, t0, a4 !1835
	lw  	a4, 0(t0) !1835
	sw  	a0, 52(sp) !1832
	sw  	a5, 56(sp) !1832
	addi	a1, a3, 0 !1832
	addi	a0, a2, 0 !1832
	addi	a2, a4, 0 !1832
	addi	sp, sp, 60 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -60 !1832
	lw  	a0, 52(sp) !1836
	lw  	a1, 56(sp) !1836
	slli	t0, a0, 2 !1836
	add 	t0, t0, a1 !1836
	lw  	a1, 0(t0) !1836
	li  	a2, 1049180 !241
	lw  	fa0, 0(a2) !241
	flw  	fa1, 0(a1) !241
	li  	a2, 1049168 !241
	lw  	fa2, 0(a2) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a2, 1049180 !241
	sw  	fa0, 0(a2) !241
	li  	a2, 1049180 !242
	lw  	fa0, 4(a2) !242
	flw  	fa1, 4(a1) !242
	li  	a2, 1049168 !242
	lw  	fa2, 4(a2) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a2, 1049180 !242
	sw  	fa0, 4(a2) !242
	li  	a2, 1049180 !243
	lw  	fa0, 8(a2) !243
	flw  	fa1, 8(a1) !243
	li  	a1, 1049168 !243
	lw  	fa2, 8(a1) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a1, 1049180 !243
	sw  	fa0, 8(a1) !243
beq_cont.28001: !1868
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4 !1863
	blt 	t0, a1, bge_else.28002 !1863
	lw  	a0, 4(sp) !476
	lw  	a2, 8(a0) !476
	slli	t0, a1, 2 !1866
	add 	t0, t0, a2 !1866
	lw  	a2, 0(t0) !1866
	blt 	a2, zero, bge_else.28003 !1866
	lw  	a2, 12(a0) !483
	slli	t0, a1, 2 !1868
	add 	t0, t0, a2 !1868
	lw  	a2, 0(t0) !1868
	sw  	a1, 60(sp) !1868
	bne 	a2, zero, beq_else.28004 !1868
	jal 	zero, beq_cont.28005 !1868
beq_else.28004: !1868
	addi	sp, sp, 64 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -64 !1869
beq_cont.28005: !1868
	lw  	a0, 60(sp) !1871
	addi	a1, a0, 1 !1871
	lw  	a0, 4(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.28003: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28002: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27999: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27998: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27995: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27994: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27981: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.27980: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
try_exploit_neighbors.2800:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1912
	add 	t0, t0, a3 !1912
	lw  	a6, 0(t0) !1912
	addi	t0, zero, 4 !1913
	blt 	t0, a5, bge_else.28014 !1913
	lw  	a7, 8(a6) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, a7 !1891
	lw  	a7, 0(t0) !1891
	blt 	a7, zero, bge_else.28015 !1916
	slli	t0, a0, 2 !1896
	add 	t0, t0, a3 !1896
	lw  	a7, 0(t0) !1896
	lw  	a7, 8(a7) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, a7 !1891
	lw  	a7, 0(t0) !1891
	slli	t0, a0, 2 !1898
	add 	t0, t0, a2 !1898
	lw  	s1, 0(t0) !1898
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28016 !1898
	slli	t0, a0, 2 !1899
	add 	t0, t0, a4 !1899
	lw  	s1, 0(t0) !1899
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28018 !1899
	addi	s1, a0, -1 !1900
	slli	t0, s1, 2 !1900
	add 	t0, t0, a3 !1900
	lw  	s1, 0(t0) !1900
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28020 !1900
	addi	s1, a0, 1 !1901
	slli	t0, s1, 2 !1901
	add 	t0, t0, a3 !1901
	lw  	s1, 0(t0) !1901
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28022 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.28023 !1901
beq_else.28022: !1901
	addi	a7, zero, 0 !1903
beq_cont.28023: !1901
	jal 	zero, beq_cont.28021 !1900
beq_else.28020: !1900
	addi	a7, zero, 0 !1904
beq_cont.28021: !1900
	jal 	zero, beq_cont.28019 !1899
beq_else.28018: !1899
	addi	a7, zero, 0 !1905
beq_cont.28019: !1899
	jal 	zero, beq_cont.28017 !1898
beq_else.28016: !1898
	addi	a7, zero, 0 !1906
beq_cont.28017: !1898
	bne 	a7, zero, beq_else.28024 !1918
	slli	t0, a0, 2 !1930
	add 	t0, t0, a3 !1930
	lw  	a0, 0(t0) !1930
	addi	t0, zero, 4 !1863
	blt 	t0, a5, bge_else.28025 !1863
	lw  	a1, 8(a0) !476
	slli	t0, a5, 2 !1866
	add 	t0, t0, a1 !1866
	lw  	a1, 0(t0) !1866
	blt 	a1, zero, bge_else.28026 !1866
	lw  	a1, 12(a0) !483
	slli	t0, a5, 2 !1868
	add 	t0, t0, a1 !1868
	lw  	a1, 0(t0) !1868
	sw  	a0, 4(sp) !1868
	sw  	a5, 8(sp) !1868
	bne 	a1, zero, beq_else.28027 !1868
	jal 	zero, beq_cont.28028 !1868
beq_else.28027: !1868
	addi	a1, a5, 0 !1869
	addi	sp, sp, 12 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -12 !1869
beq_cont.28028: !1868
	lw  	a0, 8(sp) !1871
	addi	a0, a0, 1 !1871
	addi	t0, zero, 4 !1863
	blt 	t0, a0, bge_else.28029 !1863
	lw  	a1, 4(sp) !476
	lw  	a2, 8(a1) !476
	slli	t0, a0, 2 !1866
	add 	t0, t0, a2 !1866
	lw  	a2, 0(t0) !1866
	blt 	a2, zero, bge_else.28030 !1866
	lw  	a2, 12(a1) !483
	slli	t0, a0, 2 !1868
	add 	t0, t0, a2 !1868
	lw  	a2, 0(t0) !1868
	bne 	a2, zero, beq_else.28031 !1868
	jal 	zero, beq_cont.28032 !1868
beq_else.28031: !1868
	lw  	a2, 20(a1) !497
	lw  	a3, 28(a1) !520
	lw  	a4, 4(a1) !468
	lw  	a5, 16(a1) !490
	slli	t0, a0, 2 !1831
	add 	t0, t0, a2 !1831
	lw  	a2, 0(t0) !1831
	flw  	fa0, 0(a2) !188
	li  	a6, 1049168 !188
	sw  	fa0, 0(a6) !188
	flw  	fa0, 4(a2) !189
	li  	a6, 1049168 !189
	sw  	fa0, 4(a6) !189
	flw  	fa0, 8(a2) !190
	li  	a2, 1049168 !190
	sw  	fa0, 8(a2) !190
	lw  	a2, 24(a1) !506
	lw  	a2, 0(a2) !508
	slli	t0, a0, 2 !1834
	add 	t0, t0, a3 !1834
	lw  	a3, 0(t0) !1834
	slli	t0, a0, 2 !1835
	add 	t0, t0, a4 !1835
	lw  	a4, 0(t0) !1835
	sw  	a0, 12(sp) !1832
	sw  	a5, 16(sp) !1832
	addi	a1, a3, 0 !1832
	addi	a0, a2, 0 !1832
	addi	a2, a4, 0 !1832
	addi	sp, sp, 20 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -20 !1832
	lw  	a0, 12(sp) !1836
	lw  	a1, 16(sp) !1836
	slli	t0, a0, 2 !1836
	add 	t0, t0, a1 !1836
	lw  	a1, 0(t0) !1836
	li  	a2, 1049180 !241
	lw  	fa0, 0(a2) !241
	flw  	fa1, 0(a1) !241
	li  	a2, 1049168 !241
	lw  	fa2, 0(a2) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a2, 1049180 !241
	sw  	fa0, 0(a2) !241
	li  	a2, 1049180 !242
	lw  	fa0, 4(a2) !242
	flw  	fa1, 4(a1) !242
	li  	a2, 1049168 !242
	lw  	fa2, 4(a2) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a2, 1049180 !242
	sw  	fa0, 4(a2) !242
	li  	a2, 1049180 !243
	lw  	fa0, 8(a2) !243
	flw  	fa1, 8(a1) !243
	li  	a1, 1049168 !243
	lw  	fa2, 8(a1) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a1, 1049180 !243
	sw  	fa0, 8(a1) !243
beq_cont.28032: !1868
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4 !1863
	blt 	t0, a1, bge_else.28033 !1863
	lw  	a0, 4(sp) !476
	lw  	a2, 8(a0) !476
	slli	t0, a1, 2 !1866
	add 	t0, t0, a2 !1866
	lw  	a2, 0(t0) !1866
	blt 	a2, zero, bge_else.28034 !1866
	lw  	a2, 12(a0) !483
	slli	t0, a1, 2 !1868
	add 	t0, t0, a2 !1868
	lw  	a2, 0(t0) !1868
	sw  	a1, 20(sp) !1868
	bne 	a2, zero, beq_else.28035 !1868
	jal 	zero, beq_cont.28036 !1868
beq_else.28035: !1868
	addi	sp, sp, 24 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -24 !1869
beq_cont.28036: !1868
	lw  	a0, 20(sp) !1871
	addi	a1, a0, 1 !1871
	lw  	a0, 4(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.28034: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28033: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28030: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28029: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28026: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28025: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.28024: !1918
	lw  	a6, 12(a6) !483
	slli	t0, a5, 2 !1922
	add 	t0, t0, a6 !1922
	lw  	a6, 0(t0) !1922
	bne 	a6, zero, beq_else.28043 !1922
	jal 	zero, beq_cont.28044 !1922
beq_else.28043: !1922
	slli	t0, a0, 2 !1844
	add 	t0, t0, a2 !1844
	lw  	a6, 0(t0) !1844
	lw  	a6, 20(a6) !497
	addi	a7, a0, -1 !1845
	slli	t0, a7, 2 !1845
	add 	t0, t0, a3 !1845
	lw  	a7, 0(t0) !1845
	lw  	a7, 20(a7) !497
	slli	t0, a0, 2 !1846
	add 	t0, t0, a3 !1846
	lw  	s1, 0(t0) !1846
	lw  	s1, 20(s1) !497
	addi	s2, a0, 1 !1847
	slli	t0, s2, 2 !1847
	add 	t0, t0, a3 !1847
	lw  	s2, 0(t0) !1847
	lw  	s2, 20(s2) !497
	slli	t0, a0, 2 !1848
	add 	t0, t0, a4 !1848
	lw  	s3, 0(t0) !1848
	lw  	s3, 20(s3) !497
	slli	t0, a5, 2 !1850
	add 	t0, t0, a6 !1850
	lw  	a6, 0(t0) !1850
	flw  	fa0, 0(a6) !188
	li  	s4, 1049168 !188
	sw  	fa0, 0(s4) !188
	flw  	fa0, 4(a6) !189
	li  	s4, 1049168 !189
	sw  	fa0, 4(s4) !189
	flw  	fa0, 8(a6) !190
	li  	a6, 1049168 !190
	sw  	fa0, 8(a6) !190
	slli	t0, a5, 2 !1851
	add 	t0, t0, a7 !1851
	lw  	a6, 0(t0) !1851
	li  	a7, 1049168 !225
	lw  	fa0, 0(a7) !225
	flw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	li  	a7, 1049168 !225
	sw  	fa0, 0(a7) !225
	li  	a7, 1049168 !226
	lw  	fa0, 4(a7) !226
	flw  	fa1, 4(a6) !226
	fadd	fa0, fa0, fa1 !226
	li  	a7, 1049168 !226
	sw  	fa0, 4(a7) !226
	li  	a7, 1049168 !227
	lw  	fa0, 8(a7) !227
	flw  	fa1, 8(a6) !227
	fadd	fa0, fa0, fa1 !227
	li  	a6, 1049168 !227
	sw  	fa0, 8(a6) !227
	slli	t0, a5, 2 !1852
	add 	t0, t0, s1 !1852
	lw  	a6, 0(t0) !1852
	li  	a7, 1049168 !225
	lw  	fa0, 0(a7) !225
	flw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	li  	a7, 1049168 !225
	sw  	fa0, 0(a7) !225
	li  	a7, 1049168 !226
	lw  	fa0, 4(a7) !226
	flw  	fa1, 4(a6) !226
	fadd	fa0, fa0, fa1 !226
	li  	a7, 1049168 !226
	sw  	fa0, 4(a7) !226
	li  	a7, 1049168 !227
	lw  	fa0, 8(a7) !227
	flw  	fa1, 8(a6) !227
	fadd	fa0, fa0, fa1 !227
	li  	a6, 1049168 !227
	sw  	fa0, 8(a6) !227
	slli	t0, a5, 2 !1853
	add 	t0, t0, s2 !1853
	lw  	a6, 0(t0) !1853
	li  	a7, 1049168 !225
	lw  	fa0, 0(a7) !225
	flw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	li  	a7, 1049168 !225
	sw  	fa0, 0(a7) !225
	li  	a7, 1049168 !226
	lw  	fa0, 4(a7) !226
	flw  	fa1, 4(a6) !226
	fadd	fa0, fa0, fa1 !226
	li  	a7, 1049168 !226
	sw  	fa0, 4(a7) !226
	li  	a7, 1049168 !227
	lw  	fa0, 8(a7) !227
	flw  	fa1, 8(a6) !227
	fadd	fa0, fa0, fa1 !227
	li  	a6, 1049168 !227
	sw  	fa0, 8(a6) !227
	slli	t0, a5, 2 !1854
	add 	t0, t0, s3 !1854
	lw  	a6, 0(t0) !1854
	li  	a7, 1049168 !225
	lw  	fa0, 0(a7) !225
	flw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	li  	a7, 1049168 !225
	sw  	fa0, 0(a7) !225
	li  	a7, 1049168 !226
	lw  	fa0, 4(a7) !226
	flw  	fa1, 4(a6) !226
	fadd	fa0, fa0, fa1 !226
	li  	a7, 1049168 !226
	sw  	fa0, 4(a7) !226
	li  	a7, 1049168 !227
	lw  	fa0, 8(a7) !227
	flw  	fa1, 8(a6) !227
	fadd	fa0, fa0, fa1 !227
	li  	a6, 1049168 !227
	sw  	fa0, 8(a6) !227
	slli	t0, a0, 2 !1856
	add 	t0, t0, a3 !1856
	lw  	a6, 0(t0) !1856
	lw  	a6, 16(a6) !490
	slli	t0, a5, 2 !1857
	add 	t0, t0, a6 !1857
	lw  	a6, 0(t0) !1857
	li  	a7, 1049180 !241
	lw  	fa0, 0(a7) !241
	flw  	fa1, 0(a6) !241
	li  	a7, 1049168 !241
	lw  	fa2, 0(a7) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a7, 1049180 !241
	sw  	fa0, 0(a7) !241
	li  	a7, 1049180 !242
	lw  	fa0, 4(a7) !242
	flw  	fa1, 4(a6) !242
	li  	a7, 1049168 !242
	lw  	fa2, 4(a7) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a7, 1049180 !242
	sw  	fa0, 4(a7) !242
	li  	a7, 1049180 !243
	lw  	fa0, 8(a7) !243
	flw  	fa1, 8(a6) !243
	li  	a6, 1049168 !243
	lw  	fa2, 8(a6) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a6, 1049180 !243
	sw  	fa0, 8(a6) !243
beq_cont.28044: !1922
	addi	a5, a5, 1 !1927
	slli	t0, a0, 2 !1912
	add 	t0, t0, a3 !1912
	lw  	a6, 0(t0) !1912
	addi	t0, zero, 4 !1913
	blt 	t0, a5, bge_else.28045 !1913
	lw  	a7, 8(a6) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, a7 !1891
	lw  	a7, 0(t0) !1891
	blt 	a7, zero, bge_else.28046 !1916
	slli	t0, a0, 2 !1896
	add 	t0, t0, a3 !1896
	lw  	a7, 0(t0) !1896
	lw  	a7, 8(a7) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, a7 !1891
	lw  	a7, 0(t0) !1891
	slli	t0, a0, 2 !1898
	add 	t0, t0, a2 !1898
	lw  	s1, 0(t0) !1898
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28047 !1898
	slli	t0, a0, 2 !1899
	add 	t0, t0, a4 !1899
	lw  	s1, 0(t0) !1899
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28049 !1899
	addi	s1, a0, -1 !1900
	slli	t0, s1, 2 !1900
	add 	t0, t0, a3 !1900
	lw  	s1, 0(t0) !1900
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28051 !1900
	addi	s1, a0, 1 !1901
	slli	t0, s1, 2 !1901
	add 	t0, t0, a3 !1901
	lw  	s1, 0(t0) !1901
	lw  	s1, 8(s1) !476
	slli	t0, a5, 2 !1891
	add 	t0, t0, s1 !1891
	lw  	s1, 0(t0) !1891
	bne 	s1, a7, beq_else.28053 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.28054 !1901
beq_else.28053: !1901
	addi	a7, zero, 0 !1903
beq_cont.28054: !1901
	jal 	zero, beq_cont.28052 !1900
beq_else.28051: !1900
	addi	a7, zero, 0 !1904
beq_cont.28052: !1900
	jal 	zero, beq_cont.28050 !1899
beq_else.28049: !1899
	addi	a7, zero, 0 !1905
beq_cont.28050: !1899
	jal 	zero, beq_cont.28048 !1898
beq_else.28047: !1898
	addi	a7, zero, 0 !1906
beq_cont.28048: !1898
	bne 	a7, zero, beq_else.28055 !1918
	slli	t0, a0, 2 !1930
	add 	t0, t0, a3 !1930
	lw  	a0, 0(t0) !1930
	addi	t0, zero, 4 !1863
	blt 	t0, a5, bge_else.28056 !1863
	lw  	a1, 8(a0) !476
	slli	t0, a5, 2 !1866
	add 	t0, t0, a1 !1866
	lw  	a1, 0(t0) !1866
	blt 	a1, zero, bge_else.28057 !1866
	lw  	a1, 12(a0) !483
	slli	t0, a5, 2 !1868
	add 	t0, t0, a1 !1868
	lw  	a1, 0(t0) !1868
	sw  	a0, 24(sp) !1868
	sw  	a5, 28(sp) !1868
	bne 	a1, zero, beq_else.28058 !1868
	jal 	zero, beq_cont.28059 !1868
beq_else.28058: !1868
	lw  	a1, 20(a0) !497
	lw  	a2, 28(a0) !520
	lw  	a3, 4(a0) !468
	lw  	a4, 16(a0) !490
	slli	t0, a5, 2 !1831
	add 	t0, t0, a1 !1831
	lw  	a1, 0(t0) !1831
	flw  	fa0, 0(a1) !188
	li  	a6, 1049168 !188
	sw  	fa0, 0(a6) !188
	flw  	fa0, 4(a1) !189
	li  	a6, 1049168 !189
	sw  	fa0, 4(a6) !189
	flw  	fa0, 8(a1) !190
	li  	a1, 1049168 !190
	sw  	fa0, 8(a1) !190
	lw  	a1, 24(a0) !506
	lw  	a1, 0(a1) !508
	slli	t0, a5, 2 !1834
	add 	t0, t0, a2 !1834
	lw  	a2, 0(t0) !1834
	slli	t0, a5, 2 !1835
	add 	t0, t0, a3 !1835
	lw  	a3, 0(t0) !1835
	sw  	a4, 32(sp) !1832
	addi	a0, a1, 0 !1832
	addi	a1, a2, 0 !1832
	addi	a2, a3, 0 !1832
	addi	sp, sp, 36 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -36 !1832
	lw  	a0, 28(sp) !1836
	lw  	a1, 32(sp) !1836
	slli	t0, a0, 2 !1836
	add 	t0, t0, a1 !1836
	lw  	a1, 0(t0) !1836
	li  	a2, 1049180 !241
	lw  	fa0, 0(a2) !241
	flw  	fa1, 0(a1) !241
	li  	a2, 1049168 !241
	lw  	fa2, 0(a2) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a2, 1049180 !241
	sw  	fa0, 0(a2) !241
	li  	a2, 1049180 !242
	lw  	fa0, 4(a2) !242
	flw  	fa1, 4(a1) !242
	li  	a2, 1049168 !242
	lw  	fa2, 4(a2) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a2, 1049180 !242
	sw  	fa0, 4(a2) !242
	li  	a2, 1049180 !243
	lw  	fa0, 8(a2) !243
	flw  	fa1, 8(a1) !243
	li  	a1, 1049168 !243
	lw  	fa2, 8(a1) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a1, 1049180 !243
	sw  	fa0, 8(a1) !243
beq_cont.28059: !1868
	lw  	a0, 28(sp) !1871
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4 !1863
	blt 	t0, a1, bge_else.28060 !1863
	lw  	a0, 24(sp) !476
	lw  	a2, 8(a0) !476
	slli	t0, a1, 2 !1866
	add 	t0, t0, a2 !1866
	lw  	a2, 0(t0) !1866
	blt 	a2, zero, bge_else.28061 !1866
	lw  	a2, 12(a0) !483
	slli	t0, a1, 2 !1868
	add 	t0, t0, a2 !1868
	lw  	a2, 0(t0) !1868
	sw  	a1, 36(sp) !1868
	bne 	a2, zero, beq_else.28062 !1868
	jal 	zero, beq_cont.28063 !1868
beq_else.28062: !1868
	addi	sp, sp, 40 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -40 !1869
beq_cont.28063: !1868
	lw  	a0, 36(sp) !1871
	addi	a1, a0, 1 !1871
	lw  	a0, 24(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.28061: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28060: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28057: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28056: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.28055: !1918
	lw  	a6, 12(a6) !483
	slli	t0, a5, 2 !1922
	add 	t0, t0, a6 !1922
	lw  	a6, 0(t0) !1922
	sw  	a4, 40(sp) !1922
	sw  	a3, 44(sp) !1922
	sw  	a2, 48(sp) !1922
	sw  	a1, 52(sp) !1922
	sw  	a0, 56(sp) !1922
	sw  	a5, 28(sp) !1922
	bne 	a6, zero, beq_else.28068 !1922
	jal 	zero, beq_cont.28069 !1922
beq_else.28068: !1922
	addi	a1, a2, 0 !1923
	addi	a2, a3, 0 !1923
	addi	a3, a4, 0 !1923
	addi	a4, a5, 0 !1923
	addi	sp, sp, 60 !1923
	jal 	ra, calc_diffuse_using_5points.2778 !1923
	addi	sp, sp, -60 !1923
beq_cont.28069: !1922
	lw  	a0, 28(sp) !1927
	addi	a5, a0, 1 !1927
	lw  	a0, 56(sp) !1927
	lw  	a1, 52(sp) !1927
	lw  	a2, 48(sp) !1927
	lw  	a3, 44(sp) !1927
	lw  	a4, 40(sp) !1927
	lw  	ra, 0(sp)
	jal 	zero, try_exploit_neighbors.2800 !1927
bge_else.28046: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28045: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28015: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28014: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
write_rgb.2813:
	sw  	ra, 0(sp)
	addi	t0, zero, 3 !1963
	bne 	a0, t0, beq_else.28074 !1963
	li  	a0, 1049180 !1964
	lw  	fa0, 0(a0) !1964
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1952
	blt 	t0, a0, bge_else.28075 !1952
	blt 	a0, zero, bge_else.28077 !1952
	jal 	zero, bge_cont.28078 !1952
bge_else.28077: !1952
	addi	a0, zero, 0 !1952
bge_cont.28078: !1952
	jal 	zero, bge_cont.28076 !1952
bge_else.28075: !1952
	addi	a0, zero, 255 !1952
bge_cont.28076: !1952
	addi	sp, sp, 4 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -4 !1953
	addi	a0, zero, 32 !1965
	outb	a0
	li  	a0, 1049180 !1966
	lw  	fa0, 4(a0) !1966
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1952
	blt 	t0, a0, bge_else.28079 !1952
	blt 	a0, zero, bge_else.28081 !1952
	jal 	zero, bge_cont.28082 !1952
bge_else.28081: !1952
	addi	a0, zero, 0 !1952
bge_cont.28082: !1952
	jal 	zero, bge_cont.28080 !1952
bge_else.28079: !1952
	addi	a0, zero, 255 !1952
bge_cont.28080: !1952
	addi	sp, sp, 4 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -4 !1953
	addi	a0, zero, 32 !1967
	outb	a0
	li  	a0, 1049180 !1968
	lw  	fa0, 8(a0) !1968
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1952
	blt 	t0, a0, bge_else.28083 !1952
	blt 	a0, zero, bge_else.28085 !1952
	jal 	zero, bge_cont.28086 !1952
bge_else.28085: !1952
	addi	a0, zero, 0 !1952
bge_cont.28086: !1952
	jal 	zero, bge_cont.28084 !1952
bge_else.28083: !1952
	addi	a0, zero, 255 !1952
bge_cont.28084: !1952
	addi	sp, sp, 4 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -4 !1953
	addi	a0, zero, 10 !1969
	outb	a0
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.28074: !1963
	li  	a0, 1049180 !1971
	lw  	fa0, 0(a0) !1971
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1958
	blt 	t0, a0, bge_else.28087 !1958
	blt 	a0, zero, bge_else.28089 !1958
	jal 	zero, bge_cont.28090 !1958
bge_else.28089: !1958
	addi	a0, zero, 0 !1958
bge_cont.28090: !1958
	jal 	zero, bge_cont.28088 !1958
bge_else.28087: !1958
	addi	a0, zero, 255 !1958
bge_cont.28088: !1958
	outb	a0
	li  	a0, 1049180 !1972
	lw  	fa0, 4(a0) !1972
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1958
	blt 	t0, a0, bge_else.28091 !1958
	blt 	a0, zero, bge_else.28093 !1958
	jal 	zero, bge_cont.28094 !1958
bge_else.28093: !1958
	addi	a0, zero, 0 !1958
bge_cont.28094: !1958
	jal 	zero, bge_cont.28092 !1958
bge_else.28091: !1958
	addi	a0, zero, 255 !1958
bge_cont.28092: !1958
	outb	a0
	li  	a0, 1049180 !1973
	lw  	fa0, 8(a0) !1973
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1958
	blt 	t0, a0, bge_else.28095 !1958
	blt 	a0, zero, bge_else.28097 !1958
	jal 	zero, bge_cont.28098 !1958
bge_else.28097: !1958
	addi	a0, zero, 0 !1958
bge_cont.28098: !1958
	jal 	zero, bge_cont.28096 !1958
bge_else.28095: !1958
	addi	a0, zero, 255 !1958
bge_cont.28096: !1958
	outb	a0
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_diffuse_rays.2815:
	sw  	ra, 0(sp)
	addi	t0, zero, 4 !1983
	blt 	t0, a1, bge_else.28099 !1983
	lw  	a2, 8(a0) !476
	slli	t0, a1, 2 !1891
	add 	t0, t0, a2 !1891
	lw  	a2, 0(t0) !1891
	blt 	a2, zero, bge_else.28100 !1987
	lw  	a2, 12(a0) !483
	slli	t0, a1, 2 !1990
	add 	t0, t0, a2 !1990
	lw  	a2, 0(t0) !1990
	sw  	a1, 4(sp) !1990
	bne 	a2, zero, beq_else.28101 !1990
	jal 	zero, beq_cont.28102 !1990
beq_else.28101: !1990
	lw  	a2, 24(a0) !506
	lw  	a2, 0(a2) !508
	li  	fa0, 0.000000 !183
	li  	a3, 1049168 !176
	sw  	fa0, 0(a3) !176
	li  	a3, 1049168 !177
	sw  	fa0, 4(a3) !177
	li  	a3, 1049168 !178
	sw  	fa0, 8(a3) !178
	lw  	a3, 28(a0) !520
	lw  	a4, 4(a0) !468
	li  	a5, 1049292 !1998
	slli	t0, a2, 2 !1998
	add 	t0, t0, a5 !1998
	lw  	a2, 0(t0) !1998
	slli	t0, a1, 2 !1999
	add 	t0, t0, a3 !1999
	lw  	a3, 0(t0) !1999
	slli	t0, a1, 2 !2000
	add 	t0, t0, a4 !2000
	lw  	a4, 0(t0) !2000
	flw  	fa0, 0(a4) !188
	li  	a5, 1049224 !188
	sw  	fa0, 0(a5) !188
	flw  	fa0, 4(a4) !189
	li  	a5, 1049224 !189
	sw  	fa0, 4(a5) !189
	flw  	fa0, 8(a4) !190
	li  	a5, 1049224 !190
	sw  	fa0, 8(a5) !190
	li  	a5, 1048576 !1168
	lw  	a5, 0(a5) !1168
	addi	a5, a5, -1 !1168
	sw  	a0, 8(sp) !1168
	sw  	a4, 12(sp) !1168
	sw  	a3, 16(sp) !1168
	sw  	a2, 20(sp) !1168
	addi	a1, a5, 0 !1168
	addi	a0, a4, 0 !1168
	addi	sp, sp, 24 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -24 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 20(sp) !1795
	lw  	a1, 16(sp) !1795
	lw  	a2, 12(sp) !1795
	addi	sp, sp, 24 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -24 !1795
	lw  	a0, 8(sp) !497
	lw  	a1, 20(a0) !497
	lw  	a2, 4(sp) !2002
	slli	t0, a2, 2 !2002
	add 	t0, t0, a1 !2002
	lw  	a1, 0(t0) !2002
	li  	a3, 1049168 !188
	lw  	fa0, 0(a3) !188
	fsw  	fa0, 0(a1) !188
	li  	a3, 1049168 !189
	lw  	fa0, 4(a3) !189
	fsw  	fa0, 4(a1) !189
	li  	a3, 1049168 !190
	lw  	fa0, 8(a3) !190
	fsw  	fa0, 8(a1) !190
beq_cont.28102: !1990
	lw  	a1, 4(sp) !2004
	addi	a1, a1, 1 !2004
	addi	t0, zero, 4 !1983
	blt 	t0, a1, bge_else.28103 !1983
	lw  	a2, 8(a0) !476
	slli	t0, a1, 2 !1891
	add 	t0, t0, a2 !1891
	lw  	a2, 0(t0) !1891
	blt 	a2, zero, bge_else.28104 !1987
	lw  	a2, 12(a0) !483
	slli	t0, a1, 2 !1990
	add 	t0, t0, a2 !1990
	lw  	a2, 0(t0) !1990
	sw  	a1, 24(sp) !1990
	bne 	a2, zero, beq_else.28105 !1990
	jal 	zero, beq_cont.28106 !1990
beq_else.28105: !1990
	lw  	a2, 24(a0) !506
	lw  	a2, 0(a2) !508
	li  	fa0, 0.000000 !183
	li  	a3, 1049168 !176
	sw  	fa0, 0(a3) !176
	li  	a3, 1049168 !177
	sw  	fa0, 4(a3) !177
	li  	a3, 1049168 !178
	sw  	fa0, 8(a3) !178
	lw  	a3, 28(a0) !520
	lw  	a4, 4(a0) !468
	li  	a5, 1049292 !1998
	slli	t0, a2, 2 !1998
	add 	t0, t0, a5 !1998
	lw  	a2, 0(t0) !1998
	slli	t0, a1, 2 !1999
	add 	t0, t0, a3 !1999
	lw  	a3, 0(t0) !1999
	slli	t0, a1, 2 !2000
	add 	t0, t0, a4 !2000
	lw  	a4, 0(t0) !2000
	flw  	fa0, 0(a4) !188
	li  	a5, 1049224 !188
	sw  	fa0, 0(a5) !188
	flw  	fa0, 4(a4) !189
	li  	a5, 1049224 !189
	sw  	fa0, 4(a5) !189
	flw  	fa0, 8(a4) !190
	li  	a5, 1049224 !190
	sw  	fa0, 8(a5) !190
	li  	a5, 1048576 !1168
	lw  	a5, 0(a5) !1168
	addi	a5, a5, -1 !1168
	sw  	a0, 8(sp) !1168
	sw  	a4, 28(sp) !1168
	sw  	a3, 32(sp) !1168
	sw  	a2, 36(sp) !1168
	addi	a1, a5, 0 !1168
	addi	a0, a4, 0 !1168
	addi	sp, sp, 40 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -40 !1168
	lw  	a0, 36(sp) !1778
	lw  	a1, 472(a0) !1778
	lw  	a1, 0(a1) !529
	flw  	fa0, 0(a1) !208
	lw  	a2, 32(sp) !208
	flw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a1) !208
	flw  	fa2, 4(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a1) !208
	flw  	fa2, 8(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.28107 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.28108 !123
bne_else.28107: !123
	addi	a1, zero, 1 !123
bne_cont.28108: !123
	bne 	a1, zero, beq_else.28109 !1781
	lw  	a1, 472(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a1, 0 !1784
	addi	sp, sp, 40 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -40 !1784
	jal 	zero, beq_cont.28110 !1781
beq_else.28109: !1781
	lw  	a1, 476(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a1, 0 !1782
	addi	sp, sp, 40 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -40 !1782
beq_cont.28110: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 36(sp) !1786
	lw  	a1, 32(sp) !1786
	lw  	a2, 28(sp) !1786
	addi	sp, sp, 40 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -40 !1786
	lw  	a0, 8(sp) !497
	lw  	a1, 20(a0) !497
	lw  	a2, 24(sp) !2002
	slli	t0, a2, 2 !2002
	add 	t0, t0, a1 !2002
	lw  	a1, 0(t0) !2002
	li  	a3, 1049168 !188
	lw  	fa0, 0(a3) !188
	fsw  	fa0, 0(a1) !188
	li  	a3, 1049168 !189
	lw  	fa0, 4(a3) !189
	fsw  	fa0, 4(a1) !189
	li  	a3, 1049168 !190
	lw  	fa0, 8(a3) !190
	fsw  	fa0, 8(a1) !190
beq_cont.28106: !1990
	lw  	a1, 24(sp) !2004
	addi	a1, a1, 1 !2004
	lw  	ra, 0(sp)
	jal 	zero, pretrace_diffuse_rays.2815 !2004
bge_else.28104: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28103: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28100: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28099: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_pixels.2818:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.28115 !2012
	li  	a3, 1049208 !2014
	lw  	fa3, 0(a3) !2014
	li  	a3, 1049200 !2014
	lw  	a3, 0(a3) !2014
	sub 	a3, a1, a3 !2014
	sw  	a2, 4(sp) !2014
	sw  	a1, 8(sp) !2014
	sw  	a0, 12(sp) !2014
	fsw 	fa2, 16(sp) !2014
	fsw 	fa1, 24(sp) !2014
	fsw 	fa0, 32(sp) !2014
	fsw 	fa3, 40(sp) !2014
	addi	a0, a3, 0 !2014
	fcvt.s.w fa0, a0
	flw  	fa1, 40(sp) !2014
	fmul	fa1, fa1, fa0 !2014
	li  	a0, 1049236 !2015
	lw  	fa0, 0(a0) !2015
	fmul	fa0, fa1, fa0 !2015
	flw  	fa2, 32(sp) !2015
	fadd	fa0, fa0, fa2 !2015
	li  	a0, 1049272 !2015
	sw  	fa0, 0(a0) !2015
	li  	a0, 1049236 !2016
	lw  	fa0, 4(a0) !2016
	fmul	fa0, fa1, fa0 !2016
	flw  	fa3, 24(sp) !2016
	fadd	fa0, fa0, fa3 !2016
	li  	a0, 1049272 !2016
	sw  	fa0, 4(a0) !2016
	li  	a0, 1049236 !2017
	lw  	fa0, 8(a0) !2017
	fmul	fa1, fa1, fa0 !2017
	flw  	fa0, 16(sp) !2017
	fadd	fa1, fa1, fa0 !2017
	li  	a0, 1049272 !2017
	sw  	fa1, 8(a0) !2017
	li  	a0, 1049272 !199
	lw  	fa1, 0(a0) !199
	fmul	fa1, fa1, fa1 !126
	li  	a0, 1049272 !199
	lw  	fa4, 4(a0) !199
	fmul	fa4, fa4, fa4 !126
	fadd	fa1, fa1, fa4 !199
	li  	a0, 1049272 !199
	lw  	fa4, 8(a0) !199
	fmul	fa4, fa4, fa4 !126
	fadd	fa1, fa1, fa4 !199
	fsgnj   fa0, fa1, fa1 !199
	fsqrt   fa0, fa0
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.28116 !124
	addi	a0, zero, 1 !124
	jal 	zero, bne_cont.28117 !124
bne_else.28116: !124
	addi	a0, zero, 0 !124
bne_cont.28117: !124
	bne 	a0, zero, beq_else.28118 !200
	li  	fa1, 1.000000 !200
	fdiv	fa1, fa1, fa0 !200
	jal 	zero, beq_cont.28119 !200
beq_else.28118: !200
	li  	fa1, 1.000000 !200
beq_cont.28119: !200
	li  	a0, 1049272 !201
	lw  	fa0, 0(a0) !201
	fmul	fa0, fa0, fa1 !201
	li  	a0, 1049272 !201
	sw  	fa0, 0(a0) !201
	li  	a0, 1049272 !202
	lw  	fa0, 4(a0) !202
	fmul	fa0, fa0, fa1 !202
	li  	a0, 1049272 !202
	sw  	fa0, 4(a0) !202
	li  	a0, 1049272 !203
	lw  	fa0, 8(a0) !203
	fmul	fa0, fa0, fa1 !203
	li  	a0, 1049272 !203
	sw  	fa0, 8(a0) !203
	li  	fa0, 0.000000 !183
	li  	a0, 1049180 !176
	sw  	fa0, 0(a0) !176
	li  	a0, 1049180 !177
	sw  	fa0, 4(a0) !177
	li  	a0, 1049180 !178
	sw  	fa0, 8(a0) !178
	li  	a0, 1048876 !188
	lw  	fa0, 0(a0) !188
	li  	a0, 1049212 !188
	sw  	fa0, 0(a0) !188
	li  	a0, 1048876 !189
	lw  	fa0, 4(a0) !189
	li  	a0, 1049212 !189
	sw  	fa0, 4(a0) !189
	li  	a0, 1048876 !190
	lw  	fa0, 8(a0) !190
	li  	a0, 1049212 !190
	sw  	fa0, 8(a0) !190
	addi	a0, zero, 0 !2023
	li  	fa0, 1.000000 !2023
	lw  	a1, 8(sp) !2023
	lw  	a2, 12(sp) !2023
	slli	t0, a1, 2 !2023
	add 	t0, t0, a2 !2023
	lw  	a3, 0(t0) !2023
	li  	fa1, 0.000000 !2023
	li  	a4, 1049272 !0
	addi	a2, a3, 0 !2023
	addi	a1, a4, 0 !2023
	addi	sp, sp, 48 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -48 !2023
	lw  	a0, 8(sp) !2024
	lw  	a1, 12(sp) !2024
	slli	t0, a0, 2 !2024
	add 	t0, t0, a1 !2024
	lw  	a2, 0(t0) !2024
	lw  	a2, 0(a2) !461
	li  	a3, 1049180 !188
	lw  	fa0, 0(a3) !188
	fsw  	fa0, 0(a2) !188
	li  	a3, 1049180 !189
	lw  	fa0, 4(a3) !189
	fsw  	fa0, 4(a2) !189
	li  	a3, 1049180 !190
	lw  	fa0, 8(a3) !190
	fsw  	fa0, 8(a2) !190
	slli	t0, a0, 2 !2025
	add 	t0, t0, a1 !2025
	lw  	a2, 0(t0) !2025
	lw  	a2, 24(a2) !513
	lw  	a3, 4(sp) !515
	sw  	a3, 0(a2) !515
	slli	t0, a0, 2 !2028
	add 	t0, t0, a1 !2028
	lw  	a2, 0(t0) !2028
	lw  	a4, 8(a2) !476
	lw  	a4, 0(a4) !1891
	blt 	a4, zero, bge_else.28120 !1987
	lw  	a4, 12(a2) !483
	lw  	a4, 0(a4) !1990
	sw  	a2, 48(sp) !1990
	bne 	a4, zero, beq_else.28122 !1990
	jal 	zero, beq_cont.28123 !1990
beq_else.28122: !1990
	lw  	a4, 24(a2) !506
	lw  	a4, 0(a4) !508
	li  	fa0, 0.000000 !183
	li  	a5, 1049168 !176
	sw  	fa0, 0(a5) !176
	li  	a5, 1049168 !177
	sw  	fa0, 4(a5) !177
	li  	a5, 1049168 !178
	sw  	fa0, 8(a5) !178
	lw  	a5, 28(a2) !520
	lw  	a6, 4(a2) !468
	li  	a7, 1049292 !1998
	slli	t0, a4, 2 !1998
	add 	t0, t0, a7 !1998
	lw  	a4, 0(t0) !1998
	lw  	a5, 0(a5) !1999
	lw  	a6, 0(a6) !2000
	flw  	fa0, 0(a6) !188
	li  	a7, 1049224 !188
	sw  	fa0, 0(a7) !188
	flw  	fa0, 4(a6) !189
	li  	a7, 1049224 !189
	sw  	fa0, 4(a7) !189
	flw  	fa0, 8(a6) !190
	li  	a7, 1049224 !190
	sw  	fa0, 8(a7) !190
	li  	a7, 1048576 !1168
	lw  	a7, 0(a7) !1168
	addi	a7, a7, -1 !1168
	sw  	a6, 52(sp) !1168
	sw  	a5, 56(sp) !1168
	sw  	a4, 60(sp) !1168
	addi	a1, a7, 0 !1168
	addi	a0, a6, 0 !1168
	addi	sp, sp, 64 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -64 !1168
	lw  	a0, 60(sp) !1778
	lw  	a1, 472(a0) !1778
	lw  	a1, 0(a1) !529
	flw  	fa0, 0(a1) !208
	lw  	a2, 56(sp) !208
	flw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	flw  	fa1, 4(a1) !208
	flw  	fa2, 4(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flw  	fa1, 8(a1) !208
	flw  	fa2, 8(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 0.000000 !123
	fle 	t0, fa1, fa0 !123
	beq 	zero, t0, bne_else.28124 !123
	addi	a1, zero, 0 !123
	jal 	zero, bne_cont.28125 !123
bne_else.28124: !123
	addi	a1, zero, 1 !123
bne_cont.28125: !123
	bne 	a1, zero, beq_else.28126 !1781
	lw  	a1, 472(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	a0, a1, 0 !1784
	addi	sp, sp, 64 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -64 !1784
	jal 	zero, beq_cont.28127 !1781
beq_else.28126: !1781
	lw  	a1, 476(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	a0, a1, 0 !1782
	addi	sp, sp, 64 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -64 !1782
beq_cont.28127: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 60(sp) !1786
	lw  	a1, 56(sp) !1786
	lw  	a2, 52(sp) !1786
	addi	sp, sp, 64 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -64 !1786
	lw  	a0, 48(sp) !497
	lw  	a1, 20(a0) !497
	lw  	a1, 0(a1) !2002
	li  	a2, 1049168 !188
	lw  	fa0, 0(a2) !188
	fsw  	fa0, 0(a1) !188
	li  	a2, 1049168 !189
	lw  	fa0, 4(a2) !189
	fsw  	fa0, 4(a1) !189
	li  	a2, 1049168 !190
	lw  	fa0, 8(a2) !190
	fsw  	fa0, 8(a1) !190
beq_cont.28123: !1990
	addi	a1, zero, 1 !2004
	lw  	a0, 48(sp) !2004
	addi	sp, sp, 64 !2004
	jal 	ra, pretrace_diffuse_rays.2815 !2004
	addi	sp, sp, -64 !2004
	jal 	zero, bge_cont.28121 !1987
bge_else.28120: !1987
bge_cont.28121: !1987
	lw  	a0, 8(sp) !2030
	addi	a0, a0, -1 !2030
	lw  	a1, 4(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5 !160
	blt 	a1, t0, bge_else.28128 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.28129 !160
bge_else.28128: !160
bge_cont.28129: !160
	blt 	a0, zero, bge_else.28130 !2012
	li  	a2, 1049208 !2014
	lw  	fa0, 0(a2) !2014
	li  	a2, 1049200 !2014
	lw  	a2, 0(a2) !2014
	sub 	a2, a0, a2 !2014
	sw  	a1, 64(sp) !2014
	sw  	a0, 68(sp) !2014
	fsw 	fa0, 72(sp) !2014
	addi	a0, a2, 0 !2014
	fcvt.s.w fa0, a0
	flw  	fa1, 72(sp) !2014
	fmul	fa1, fa1, fa0 !2014
	li  	a0, 1049236 !2015
	lw  	fa0, 0(a0) !2015
	fmul	fa0, fa1, fa0 !2015
	flw  	fa2, 32(sp) !2015
	fadd	fa0, fa0, fa2 !2015
	li  	a0, 1049272 !2015
	sw  	fa0, 0(a0) !2015
	li  	a0, 1049236 !2016
	lw  	fa0, 4(a0) !2016
	fmul	fa0, fa1, fa0 !2016
	flw  	fa3, 24(sp) !2016
	fadd	fa0, fa0, fa3 !2016
	li  	a0, 1049272 !2016
	sw  	fa0, 4(a0) !2016
	li  	a0, 1049236 !2017
	lw  	fa0, 8(a0) !2017
	fmul	fa1, fa1, fa0 !2017
	flw  	fa0, 16(sp) !2017
	fadd	fa1, fa1, fa0 !2017
	li  	a0, 1049272 !2017
	sw  	fa1, 8(a0) !2017
	li  	a0, 1049272 !199
	lw  	fa1, 0(a0) !199
	fmul	fa1, fa1, fa1 !126
	li  	a0, 1049272 !199
	lw  	fa4, 4(a0) !199
	fmul	fa4, fa4, fa4 !126
	fadd	fa1, fa1, fa4 !199
	li  	a0, 1049272 !199
	lw  	fa4, 8(a0) !199
	fmul	fa4, fa4, fa4 !126
	fadd	fa1, fa1, fa4 !199
	fsgnj   fa0, fa1, fa1 !199
	fsqrt   fa0, fa0
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.28131 !124
	addi	a0, zero, 1 !124
	jal 	zero, bne_cont.28132 !124
bne_else.28131: !124
	addi	a0, zero, 0 !124
bne_cont.28132: !124
	bne 	a0, zero, beq_else.28133 !200
	li  	fa1, 1.000000 !200
	fdiv	fa1, fa1, fa0 !200
	jal 	zero, beq_cont.28134 !200
beq_else.28133: !200
	li  	fa1, 1.000000 !200
beq_cont.28134: !200
	li  	a0, 1049272 !201
	lw  	fa0, 0(a0) !201
	fmul	fa0, fa0, fa1 !201
	li  	a0, 1049272 !201
	sw  	fa0, 0(a0) !201
	li  	a0, 1049272 !202
	lw  	fa0, 4(a0) !202
	fmul	fa0, fa0, fa1 !202
	li  	a0, 1049272 !202
	sw  	fa0, 4(a0) !202
	li  	a0, 1049272 !203
	lw  	fa0, 8(a0) !203
	fmul	fa0, fa0, fa1 !203
	li  	a0, 1049272 !203
	sw  	fa0, 8(a0) !203
	li  	fa0, 0.000000 !183
	li  	a0, 1049180 !176
	sw  	fa0, 0(a0) !176
	li  	a0, 1049180 !177
	sw  	fa0, 4(a0) !177
	li  	a0, 1049180 !178
	sw  	fa0, 8(a0) !178
	li  	a0, 1048876 !188
	lw  	fa0, 0(a0) !188
	li  	a0, 1049212 !188
	sw  	fa0, 0(a0) !188
	li  	a0, 1048876 !189
	lw  	fa0, 4(a0) !189
	li  	a0, 1049212 !189
	sw  	fa0, 4(a0) !189
	li  	a0, 1048876 !190
	lw  	fa0, 8(a0) !190
	li  	a0, 1049212 !190
	sw  	fa0, 8(a0) !190
	addi	a0, zero, 0 !2023
	li  	fa0, 1.000000 !2023
	lw  	a1, 68(sp) !2023
	lw  	a2, 12(sp) !2023
	slli	t0, a1, 2 !2023
	add 	t0, t0, a2 !2023
	lw  	a3, 0(t0) !2023
	li  	fa1, 0.000000 !2023
	li  	a4, 1049272 !0
	addi	a2, a3, 0 !2023
	addi	a1, a4, 0 !2023
	addi	sp, sp, 80 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -80 !2023
	lw  	a0, 68(sp) !2024
	lw  	a1, 12(sp) !2024
	slli	t0, a0, 2 !2024
	add 	t0, t0, a1 !2024
	lw  	a2, 0(t0) !2024
	lw  	a2, 0(a2) !461
	li  	a3, 1049180 !188
	lw  	fa0, 0(a3) !188
	fsw  	fa0, 0(a2) !188
	li  	a3, 1049180 !189
	lw  	fa0, 4(a3) !189
	fsw  	fa0, 4(a2) !189
	li  	a3, 1049180 !190
	lw  	fa0, 8(a3) !190
	fsw  	fa0, 8(a2) !190
	slli	t0, a0, 2 !2025
	add 	t0, t0, a1 !2025
	lw  	a2, 0(t0) !2025
	lw  	a2, 24(a2) !513
	lw  	a3, 64(sp) !515
	sw  	a3, 0(a2) !515
	slli	t0, a0, 2 !2028
	add 	t0, t0, a1 !2028
	lw  	a2, 0(t0) !2028
	addi	a4, zero, 0 !2028
	addi	a1, a4, 0 !2028
	addi	a0, a2, 0 !2028
	addi	sp, sp, 80 !2028
	jal 	ra, pretrace_diffuse_rays.2815 !2028
	addi	sp, sp, -80 !2028
	lw  	a0, 68(sp) !2030
	addi	a1, a0, -1 !2030
	lw  	a0, 64(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5 !160
	blt 	a0, t0, bge_else.28135 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.28136 !160
bge_else.28135: !160
	addi	a2, a0, 0 !160
bge_cont.28136: !160
	flw  	fa0, 32(sp) !2030
	flw  	fa1, 24(sp) !2030
	flw  	fa2, 16(sp) !2030
	lw  	a0, 12(sp) !2030
	lw  	ra, 0(sp)
	jal 	zero, pretrace_pixels.2818 !2030
bge_else.28130: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28115: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_line.2825:
	sw  	ra, 0(sp)
	li  	a3, 1049208 !2037
	lw  	fa0, 0(a3) !2037
	li  	a3, 1049200 !2037
	lw  	a3, 4(a3) !2037
	sub 	a1, a1, a3 !2037
	sw  	a2, 4(sp) !2037
	sw  	a0, 8(sp) !2037
	fsw 	fa0, 16(sp) !2037
	addi	a0, a1, 0 !2037
	fcvt.s.w fa0, a0
	flw  	fa1, 16(sp) !2037
	fmul	fa1, fa1, fa0 !2037
	li  	a0, 1049248 !2040
	lw  	fa0, 0(a0) !2040
	fmul	fa0, fa1, fa0 !2040
	li  	a0, 1049260 !2040
	lw  	fa2, 0(a0) !2040
	fadd	fa0, fa0, fa2 !2040
	li  	a0, 1049248 !2041
	lw  	fa2, 4(a0) !2041
	fmul	fa2, fa1, fa2 !2041
	li  	a0, 1049260 !2041
	lw  	fa3, 4(a0) !2041
	fadd	fa2, fa2, fa3 !2041
	li  	a0, 1049248 !2042
	lw  	fa3, 8(a0) !2042
	fmul	fa1, fa1, fa3 !2042
	li  	a0, 1049260 !2042
	lw  	fa3, 8(a0) !2042
	fadd	fa1, fa1, fa3 !2042
	li  	a0, 1049192 !2043
	lw  	a0, 0(a0) !2043
	addi	a0, a0, -1 !2043
	blt 	a0, zero, bge_else.28140 !2012
	li  	a1, 1049208 !2014
	lw  	fa3, 0(a1) !2014
	li  	a1, 1049200 !2014
	lw  	a1, 0(a1) !2014
	sub 	a1, a0, a1 !2014
	sw  	a0, 24(sp) !2014
	fsw 	fa1, 32(sp) !2014
	fsw 	fa2, 40(sp) !2014
	fsw 	fa0, 48(sp) !2014
	fsw 	fa3, 56(sp) !2014
	addi	a0, a1, 0 !2014
	fcvt.s.w fa0, a0
	flw  	fa1, 56(sp) !2014
	fmul	fa1, fa1, fa0 !2014
	li  	a0, 1049236 !2015
	lw  	fa0, 0(a0) !2015
	fmul	fa0, fa1, fa0 !2015
	flw  	fa2, 48(sp) !2015
	fadd	fa0, fa0, fa2 !2015
	li  	a0, 1049272 !2015
	sw  	fa0, 0(a0) !2015
	li  	a0, 1049236 !2016
	lw  	fa0, 4(a0) !2016
	fmul	fa0, fa1, fa0 !2016
	flw  	fa3, 40(sp) !2016
	fadd	fa0, fa0, fa3 !2016
	li  	a0, 1049272 !2016
	sw  	fa0, 4(a0) !2016
	li  	a0, 1049236 !2017
	lw  	fa0, 8(a0) !2017
	fmul	fa1, fa1, fa0 !2017
	flw  	fa0, 32(sp) !2017
	fadd	fa1, fa1, fa0 !2017
	li  	a0, 1049272 !2017
	sw  	fa1, 8(a0) !2017
	li  	a0, 1049272 !199
	lw  	fa1, 0(a0) !199
	fmul	fa1, fa1, fa1 !126
	li  	a0, 1049272 !199
	lw  	fa4, 4(a0) !199
	fmul	fa4, fa4, fa4 !126
	fadd	fa1, fa1, fa4 !199
	li  	a0, 1049272 !199
	lw  	fa4, 8(a0) !199
	fmul	fa4, fa4, fa4 !126
	fadd	fa1, fa1, fa4 !199
	fsgnj   fa0, fa1, fa1 !199
	fsqrt   fa0, fa0
	li  	fa1, 0.000000 !124
	feq	t0, fa0, fa1 !124
	beq 	zero, t0, bne_else.28142 !124
	addi	a0, zero, 1 !124
	jal 	zero, bne_cont.28143 !124
bne_else.28142: !124
	addi	a0, zero, 0 !124
bne_cont.28143: !124
	bne 	a0, zero, beq_else.28144 !200
	li  	fa1, 1.000000 !200
	fdiv	fa1, fa1, fa0 !200
	jal 	zero, beq_cont.28145 !200
beq_else.28144: !200
	li  	fa1, 1.000000 !200
beq_cont.28145: !200
	li  	a0, 1049272 !201
	lw  	fa0, 0(a0) !201
	fmul	fa0, fa0, fa1 !201
	li  	a0, 1049272 !201
	sw  	fa0, 0(a0) !201
	li  	a0, 1049272 !202
	lw  	fa0, 4(a0) !202
	fmul	fa0, fa0, fa1 !202
	li  	a0, 1049272 !202
	sw  	fa0, 4(a0) !202
	li  	a0, 1049272 !203
	lw  	fa0, 8(a0) !203
	fmul	fa0, fa0, fa1 !203
	li  	a0, 1049272 !203
	sw  	fa0, 8(a0) !203
	li  	fa0, 0.000000 !183
	li  	a0, 1049180 !176
	sw  	fa0, 0(a0) !176
	li  	a0, 1049180 !177
	sw  	fa0, 4(a0) !177
	li  	a0, 1049180 !178
	sw  	fa0, 8(a0) !178
	li  	a0, 1048876 !188
	lw  	fa0, 0(a0) !188
	li  	a0, 1049212 !188
	sw  	fa0, 0(a0) !188
	li  	a0, 1048876 !189
	lw  	fa0, 4(a0) !189
	li  	a0, 1049212 !189
	sw  	fa0, 4(a0) !189
	li  	a0, 1048876 !190
	lw  	fa0, 8(a0) !190
	li  	a0, 1049212 !190
	sw  	fa0, 8(a0) !190
	addi	a0, zero, 0 !2023
	li  	fa0, 1.000000 !2023
	lw  	a1, 24(sp) !2023
	lw  	a2, 8(sp) !2023
	slli	t0, a1, 2 !2023
	add 	t0, t0, a2 !2023
	lw  	a3, 0(t0) !2023
	li  	fa1, 0.000000 !2023
	li  	a4, 1049272 !0
	addi	a2, a3, 0 !2023
	addi	a1, a4, 0 !2023
	addi	sp, sp, 64 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -64 !2023
	lw  	a0, 24(sp) !2024
	lw  	a1, 8(sp) !2024
	slli	t0, a0, 2 !2024
	add 	t0, t0, a1 !2024
	lw  	a2, 0(t0) !2024
	lw  	a2, 0(a2) !461
	li  	a3, 1049180 !188
	lw  	fa0, 0(a3) !188
	fsw  	fa0, 0(a2) !188
	li  	a3, 1049180 !189
	lw  	fa0, 4(a3) !189
	fsw  	fa0, 4(a2) !189
	li  	a3, 1049180 !190
	lw  	fa0, 8(a3) !190
	fsw  	fa0, 8(a2) !190
	slli	t0, a0, 2 !2025
	add 	t0, t0, a1 !2025
	lw  	a2, 0(t0) !2025
	lw  	a2, 24(a2) !513
	lw  	a3, 4(sp) !515
	sw  	a3, 0(a2) !515
	slli	t0, a0, 2 !2028
	add 	t0, t0, a1 !2028
	lw  	a2, 0(t0) !2028
	addi	a4, zero, 0 !2028
	addi	a1, a4, 0 !2028
	addi	a0, a2, 0 !2028
	addi	sp, sp, 64 !2028
	jal 	ra, pretrace_diffuse_rays.2815 !2028
	addi	sp, sp, -64 !2028
	lw  	a0, 24(sp) !2030
	addi	a1, a0, -1 !2030
	lw  	a0, 4(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5 !160
	blt 	a0, t0, bge_else.28146 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.28147 !160
bge_else.28146: !160
	addi	a2, a0, 0 !160
bge_cont.28147: !160
	flw  	fa0, 48(sp) !2030
	flw  	fa1, 40(sp) !2030
	flw  	fa2, 32(sp) !2030
	lw  	a0, 8(sp) !2030
	lw  	ra, 0(sp)
	jal 	zero, pretrace_pixels.2818 !2030
bge_else.28140: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
scan_pixel.2829:
	sw  	ra, 0(sp)
	li  	a6, 1049192 !2051
	lw  	a6, 0(a6) !2051
	blt 	a0, a6, bge_else.28149 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28149: !2051
	slli	t0, a0, 2 !2054
	add 	t0, t0, a3 !2054
	lw  	a6, 0(t0) !2054
	lw  	a6, 0(a6) !461
	flw  	fa0, 0(a6) !188
	li  	a7, 1049180 !188
	sw  	fa0, 0(a7) !188
	flw  	fa0, 4(a6) !189
	li  	a7, 1049180 !189
	sw  	fa0, 4(a7) !189
	flw  	fa0, 8(a6) !190
	li  	a6, 1049180 !190
	sw  	fa0, 8(a6) !190
	li  	a6, 1049192 !1878
	lw  	a6, 4(a6) !1878
	addi	a7, a1, 1 !1878
	blt 	a7, a6, bge_else.28151 !1878
	addi	a6, zero, 0 !1886
	jal 	zero, bge_cont.28152 !1878
bge_else.28151: !1878
	blt 	zero, a1, bge_else.28153 !1879
	addi	a6, zero, 0 !1885
	jal 	zero, bge_cont.28154 !1879
bge_else.28153: !1879
	li  	a6, 1049192 !1880
	lw  	a6, 0(a6) !1880
	addi	a7, a0, 1 !1880
	blt 	a7, a6, bge_else.28155 !1880
	addi	a6, zero, 0 !1884
	jal 	zero, bge_cont.28156 !1880
bge_else.28155: !1880
	blt 	zero, a0, bge_else.28157 !1881
	addi	a6, zero, 0 !1883
	jal 	zero, bge_cont.28158 !1881
bge_else.28157: !1881
	addi	a6, zero, 1 !1882
bge_cont.28158: !1881
bge_cont.28156: !1880
bge_cont.28154: !1879
bge_cont.28152: !1878
	sw  	a4, 4(sp) !2057
	sw  	a2, 8(sp) !2057
	sw  	a1, 12(sp) !2057
	sw  	a3, 16(sp) !2057
	sw  	a0, 20(sp) !2057
	sw  	a5, 24(sp) !2057
	bne 	a6, zero, beq_else.28159 !2057
	slli	t0, a0, 2 !2060
	add 	t0, t0, a3 !2060
	lw  	a6, 0(t0) !2060
	addi	a7, zero, 0 !2060
	lw  	s1, 8(a6) !476
	lw  	s1, 0(s1) !1866
	blt 	s1, zero, bge_else.28161 !1866
	lw  	s1, 12(a6) !483
	lw  	s1, 0(s1) !1868
	sw  	a6, 28(sp) !1868
	bne 	s1, zero, beq_else.28163 !1868
	jal 	zero, beq_cont.28164 !1868
beq_else.28163: !1868
	addi	a1, a7, 0 !1869
	addi	a0, a6, 0 !1869
	addi	sp, sp, 32 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -32 !1869
beq_cont.28164: !1868
	lw  	a0, 28(sp) !476
	lw  	a1, 8(a0) !476
	lw  	a1, 4(a1) !1866
	blt 	a1, zero, bge_else.28165 !1866
	lw  	a1, 12(a0) !483
	lw  	a1, 4(a1) !1868
	bne 	a1, zero, beq_else.28167 !1868
	jal 	zero, beq_cont.28168 !1868
beq_else.28167: !1868
	lw  	a1, 20(a0) !497
	lw  	a2, 28(a0) !520
	lw  	a3, 4(a0) !468
	lw  	a4, 16(a0) !490
	lw  	a1, 4(a1) !1831
	flw  	fa0, 0(a1) !188
	li  	a5, 1049168 !188
	sw  	fa0, 0(a5) !188
	flw  	fa0, 4(a1) !189
	li  	a5, 1049168 !189
	sw  	fa0, 4(a5) !189
	flw  	fa0, 8(a1) !190
	li  	a1, 1049168 !190
	sw  	fa0, 8(a1) !190
	lw  	a1, 24(a0) !506
	lw  	a1, 0(a1) !508
	lw  	a2, 4(a2) !1834
	lw  	a3, 4(a3) !1835
	sw  	a4, 32(sp) !1832
	addi	a0, a1, 0 !1832
	addi	a1, a2, 0 !1832
	addi	a2, a3, 0 !1832
	addi	sp, sp, 36 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -36 !1832
	lw  	a0, 32(sp) !1836
	lw  	a0, 4(a0) !1836
	li  	a1, 1049180 !241
	lw  	fa0, 0(a1) !241
	flw  	fa1, 0(a0) !241
	li  	a1, 1049168 !241
	lw  	fa2, 0(a1) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a1, 1049180 !241
	sw  	fa0, 0(a1) !241
	li  	a1, 1049180 !242
	lw  	fa0, 4(a1) !242
	flw  	fa1, 4(a0) !242
	li  	a1, 1049168 !242
	lw  	fa2, 4(a1) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a1, 1049180 !242
	sw  	fa0, 4(a1) !242
	li  	a1, 1049180 !243
	lw  	fa0, 8(a1) !243
	flw  	fa1, 8(a0) !243
	li  	a0, 1049168 !243
	lw  	fa2, 8(a0) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a0, 1049180 !243
	sw  	fa0, 8(a0) !243
beq_cont.28168: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 28(sp) !476
	lw  	a2, 8(a0) !476
	lw  	a2, 8(a2) !1866
	blt 	a2, zero, bge_else.28169 !1866
	lw  	a2, 12(a0) !483
	lw  	a2, 8(a2) !1868
	bne 	a2, zero, beq_else.28171 !1868
	jal 	zero, beq_cont.28172 !1868
beq_else.28171: !1868
	addi	sp, sp, 36 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -36 !1869
beq_cont.28172: !1868
	addi	a1, zero, 3 !1871
	lw  	a0, 28(sp) !1871
	addi	sp, sp, 36 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -36 !1871
	jal 	zero, bge_cont.28170 !1866
bge_else.28169: !1866
bge_cont.28170: !1866
	jal 	zero, bge_cont.28166 !1866
bge_else.28165: !1866
bge_cont.28166: !1866
	jal 	zero, bge_cont.28162 !1866
bge_else.28161: !1866
bge_cont.28162: !1866
	jal 	zero, beq_cont.28160 !2057
beq_else.28159: !2057
	addi	a6, zero, 0 !2058
	slli	t0, a0, 2 !1912
	add 	t0, t0, a3 !1912
	lw  	a7, 0(t0) !1912
	lw  	s1, 8(a7) !476
	lw  	s1, 0(s1) !1891
	blt 	s1, zero, bge_else.28173 !1916
	slli	t0, a0, 2 !1896
	add 	t0, t0, a3 !1896
	lw  	s1, 0(t0) !1896
	lw  	s1, 8(s1) !476
	lw  	s1, 0(s1) !1891
	slli	t0, a0, 2 !1898
	add 	t0, t0, a2 !1898
	lw  	s2, 0(t0) !1898
	lw  	s2, 8(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.28175 !1898
	slli	t0, a0, 2 !1899
	add 	t0, t0, a4 !1899
	lw  	s2, 0(t0) !1899
	lw  	s2, 8(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.28177 !1899
	addi	s2, a0, -1 !1900
	slli	t0, s2, 2 !1900
	add 	t0, t0, a3 !1900
	lw  	s2, 0(t0) !1900
	lw  	s2, 8(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.28179 !1900
	addi	s2, a0, 1 !1901
	slli	t0, s2, 2 !1901
	add 	t0, t0, a3 !1901
	lw  	s2, 0(t0) !1901
	lw  	s2, 8(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.28181 !1901
	addi	s1, zero, 1 !1902
	jal 	zero, beq_cont.28182 !1901
beq_else.28181: !1901
	addi	s1, zero, 0 !1903
beq_cont.28182: !1901
	jal 	zero, beq_cont.28180 !1900
beq_else.28179: !1900
	addi	s1, zero, 0 !1904
beq_cont.28180: !1900
	jal 	zero, beq_cont.28178 !1899
beq_else.28177: !1899
	addi	s1, zero, 0 !1905
beq_cont.28178: !1899
	jal 	zero, beq_cont.28176 !1898
beq_else.28175: !1898
	addi	s1, zero, 0 !1906
beq_cont.28176: !1898
	bne 	s1, zero, beq_else.28183 !1918
	slli	t0, a0, 2 !1930
	add 	t0, t0, a3 !1930
	lw  	a6, 0(t0) !1930
	lw  	a7, 8(a6) !476
	lw  	a7, 0(a7) !1866
	blt 	a7, zero, bge_else.28185 !1866
	lw  	a7, 12(a6) !483
	lw  	a7, 0(a7) !1868
	sw  	a6, 36(sp) !1868
	bne 	a7, zero, beq_else.28187 !1868
	jal 	zero, beq_cont.28188 !1868
beq_else.28187: !1868
	lw  	a7, 20(a6) !497
	lw  	s1, 28(a6) !520
	lw  	s2, 4(a6) !468
	lw  	s3, 16(a6) !490
	lw  	a7, 0(a7) !1831
	flw  	fa0, 0(a7) !188
	li  	s4, 1049168 !188
	sw  	fa0, 0(s4) !188
	flw  	fa0, 4(a7) !189
	li  	s4, 1049168 !189
	sw  	fa0, 4(s4) !189
	flw  	fa0, 8(a7) !190
	li  	a7, 1049168 !190
	sw  	fa0, 8(a7) !190
	lw  	a7, 24(a6) !506
	lw  	a7, 0(a7) !508
	lw  	s1, 0(s1) !1834
	lw  	s2, 0(s2) !1835
	sw  	s3, 40(sp) !1832
	addi	a2, s2, 0 !1832
	addi	a1, s1, 0 !1832
	addi	a0, a7, 0 !1832
	addi	sp, sp, 44 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -44 !1832
	lw  	a0, 40(sp) !1836
	lw  	a0, 0(a0) !1836
	li  	a1, 1049180 !241
	lw  	fa0, 0(a1) !241
	flw  	fa1, 0(a0) !241
	li  	a1, 1049168 !241
	lw  	fa2, 0(a1) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a1, 1049180 !241
	sw  	fa0, 0(a1) !241
	li  	a1, 1049180 !242
	lw  	fa0, 4(a1) !242
	flw  	fa1, 4(a0) !242
	li  	a1, 1049168 !242
	lw  	fa2, 4(a1) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a1, 1049180 !242
	sw  	fa0, 4(a1) !242
	li  	a1, 1049180 !243
	lw  	fa0, 8(a1) !243
	flw  	fa1, 8(a0) !243
	li  	a0, 1049168 !243
	lw  	fa2, 8(a0) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a0, 1049180 !243
	sw  	fa0, 8(a0) !243
beq_cont.28188: !1868
	addi	a1, zero, 1 !1871
	lw  	a0, 36(sp) !476
	lw  	a2, 8(a0) !476
	lw  	a2, 4(a2) !1866
	blt 	a2, zero, bge_else.28189 !1866
	lw  	a2, 12(a0) !483
	lw  	a2, 4(a2) !1868
	bne 	a2, zero, beq_else.28191 !1868
	jal 	zero, beq_cont.28192 !1868
beq_else.28191: !1868
	addi	sp, sp, 44 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -44 !1869
beq_cont.28192: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 36(sp) !1871
	addi	sp, sp, 44 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -44 !1871
	jal 	zero, bge_cont.28190 !1866
bge_else.28189: !1866
bge_cont.28190: !1866
	jal 	zero, bge_cont.28186 !1866
bge_else.28185: !1866
bge_cont.28186: !1866
	jal 	zero, beq_cont.28184 !1918
beq_else.28183: !1918
	lw  	a7, 12(a7) !483
	lw  	a7, 0(a7) !1922
	bne 	a7, zero, beq_else.28193 !1922
	jal 	zero, beq_cont.28194 !1922
beq_else.28193: !1922
	addi	a1, a2, 0 !1923
	addi	a2, a3, 0 !1923
	addi	a3, a4, 0 !1923
	addi	a4, a6, 0 !1923
	addi	sp, sp, 44 !1923
	jal 	ra, calc_diffuse_using_5points.2778 !1923
	addi	sp, sp, -44 !1923
beq_cont.28194: !1922
	addi	a5, zero, 1 !1927
	lw  	a0, 20(sp) !1927
	lw  	a1, 12(sp) !1927
	lw  	a2, 8(sp) !1927
	lw  	a3, 16(sp) !1927
	lw  	a4, 4(sp) !1927
	addi	sp, sp, 44 !1927
	jal 	ra, try_exploit_neighbors.2800 !1927
	addi	sp, sp, -44 !1927
beq_cont.28184: !1918
	jal 	zero, bge_cont.28174 !1916
bge_else.28173: !1916
bge_cont.28174: !1916
beq_cont.28160: !2057
	lw  	a0, 24(sp) !1963
	addi	t0, zero, 3 !1963
	bne 	a0, t0, beq_else.28195 !1963
	li  	a1, 1049180 !1964
	lw  	fa0, 0(a1) !1964
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1952
	blt 	t0, a0, bge_else.28197 !1952
	blt 	a0, zero, bge_else.28199 !1952
	jal 	zero, bge_cont.28200 !1952
bge_else.28199: !1952
	addi	a0, zero, 0 !1952
bge_cont.28200: !1952
	jal 	zero, bge_cont.28198 !1952
bge_else.28197: !1952
	addi	a0, zero, 255 !1952
bge_cont.28198: !1952
	addi	sp, sp, 44 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -44 !1953
	addi	a0, zero, 32 !1965
	outb	a0
	li  	a0, 1049180 !1966
	lw  	fa0, 4(a0) !1966
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1952
	blt 	t0, a0, bge_else.28201 !1952
	blt 	a0, zero, bge_else.28203 !1952
	jal 	zero, bge_cont.28204 !1952
bge_else.28203: !1952
	addi	a0, zero, 0 !1952
bge_cont.28204: !1952
	jal 	zero, bge_cont.28202 !1952
bge_else.28201: !1952
	addi	a0, zero, 255 !1952
bge_cont.28202: !1952
	addi	sp, sp, 44 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -44 !1953
	addi	a0, zero, 32 !1967
	outb	a0
	li  	a0, 1049180 !1968
	lw  	fa0, 8(a0) !1968
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1952
	blt 	t0, a0, bge_else.28205 !1952
	blt 	a0, zero, bge_else.28207 !1952
	jal 	zero, bge_cont.28208 !1952
bge_else.28207: !1952
	addi	a0, zero, 0 !1952
bge_cont.28208: !1952
	jal 	zero, bge_cont.28206 !1952
bge_else.28205: !1952
	addi	a0, zero, 255 !1952
bge_cont.28206: !1952
	addi	sp, sp, 44 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -44 !1953
	addi	a0, zero, 10 !1969
	outb	a0
	jal 	zero, beq_cont.28196 !1963
beq_else.28195: !1963
	li  	a1, 1049180 !1971
	lw  	fa0, 0(a1) !1971
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1958
	blt 	t0, a0, bge_else.28209 !1958
	blt 	a0, zero, bge_else.28211 !1958
	jal 	zero, bge_cont.28212 !1958
bge_else.28211: !1958
	addi	a0, zero, 0 !1958
bge_cont.28212: !1958
	jal 	zero, bge_cont.28210 !1958
bge_else.28209: !1958
	addi	a0, zero, 255 !1958
bge_cont.28210: !1958
	outb	a0
	li  	a0, 1049180 !1972
	lw  	fa0, 4(a0) !1972
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1958
	blt 	t0, a0, bge_else.28213 !1958
	blt 	a0, zero, bge_else.28215 !1958
	jal 	zero, bge_cont.28216 !1958
bge_else.28215: !1958
	addi	a0, zero, 0 !1958
bge_cont.28216: !1958
	jal 	zero, bge_cont.28214 !1958
bge_else.28213: !1958
	addi	a0, zero, 255 !1958
bge_cont.28214: !1958
	outb	a0
	li  	a0, 1049180 !1973
	lw  	fa0, 8(a0) !1973
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1958
	blt 	t0, a0, bge_else.28217 !1958
	blt 	a0, zero, bge_else.28219 !1958
	jal 	zero, bge_cont.28220 !1958
bge_else.28219: !1958
	addi	a0, zero, 0 !1958
bge_cont.28220: !1958
	jal 	zero, bge_cont.28218 !1958
bge_else.28217: !1958
	addi	a0, zero, 255 !1958
bge_cont.28218: !1958
	outb	a0
beq_cont.28196: !1963
	lw  	a0, 20(sp) !2065
	addi	a0, a0, 1 !2065
	li  	a1, 1049192 !2051
	lw  	a1, 0(a1) !2051
	blt 	a0, a1, bge_else.28221 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28221: !2051
	lw  	a3, 16(sp) !2054
	slli	t0, a0, 2 !2054
	add 	t0, t0, a3 !2054
	lw  	a1, 0(t0) !2054
	lw  	a1, 0(a1) !461
	flw  	fa0, 0(a1) !188
	li  	a2, 1049180 !188
	sw  	fa0, 0(a2) !188
	flw  	fa0, 4(a1) !189
	li  	a2, 1049180 !189
	sw  	fa0, 4(a2) !189
	flw  	fa0, 8(a1) !190
	li  	a1, 1049180 !190
	sw  	fa0, 8(a1) !190
	li  	a1, 1049192 !1878
	lw  	a1, 4(a1) !1878
	lw  	a2, 12(sp) !1878
	addi	a4, a2, 1 !1878
	blt 	a4, a1, bge_else.28223 !1878
	addi	a1, zero, 0 !1886
	jal 	zero, bge_cont.28224 !1878
bge_else.28223: !1878
	blt 	zero, a2, bge_else.28225 !1879
	addi	a1, zero, 0 !1885
	jal 	zero, bge_cont.28226 !1879
bge_else.28225: !1879
	li  	a1, 1049192 !1880
	lw  	a1, 0(a1) !1880
	addi	a4, a0, 1 !1880
	blt 	a4, a1, bge_else.28227 !1880
	addi	a1, zero, 0 !1884
	jal 	zero, bge_cont.28228 !1880
bge_else.28227: !1880
	blt 	zero, a0, bge_else.28229 !1881
	addi	a1, zero, 0 !1883
	jal 	zero, bge_cont.28230 !1881
bge_else.28229: !1881
	addi	a1, zero, 1 !1882
bge_cont.28230: !1881
bge_cont.28228: !1880
bge_cont.28226: !1879
bge_cont.28224: !1878
	sw  	a0, 44(sp) !2057
	bne 	a1, zero, beq_else.28231 !2057
	slli	t0, a0, 2 !2060
	add 	t0, t0, a3 !2060
	lw  	a1, 0(t0) !2060
	lw  	a4, 8(a1) !476
	lw  	a4, 0(a4) !1866
	blt 	a4, zero, bge_else.28233 !1866
	lw  	a4, 12(a1) !483
	lw  	a4, 0(a4) !1868
	sw  	a1, 48(sp) !1868
	bne 	a4, zero, beq_else.28235 !1868
	jal 	zero, beq_cont.28236 !1868
beq_else.28235: !1868
	lw  	a4, 20(a1) !497
	lw  	a5, 28(a1) !520
	lw  	a6, 4(a1) !468
	lw  	a7, 16(a1) !490
	lw  	a4, 0(a4) !1831
	flw  	fa0, 0(a4) !188
	li  	s1, 1049168 !188
	sw  	fa0, 0(s1) !188
	flw  	fa0, 4(a4) !189
	li  	s1, 1049168 !189
	sw  	fa0, 4(s1) !189
	flw  	fa0, 8(a4) !190
	li  	a4, 1049168 !190
	sw  	fa0, 8(a4) !190
	lw  	a4, 24(a1) !506
	lw  	a4, 0(a4) !508
	lw  	a5, 0(a5) !1834
	lw  	a6, 0(a6) !1835
	sw  	a7, 52(sp) !1832
	addi	a2, a6, 0 !1832
	addi	a1, a5, 0 !1832
	addi	a0, a4, 0 !1832
	addi	sp, sp, 56 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -56 !1832
	lw  	a0, 52(sp) !1836
	lw  	a0, 0(a0) !1836
	li  	a1, 1049180 !241
	lw  	fa0, 0(a1) !241
	flw  	fa1, 0(a0) !241
	li  	a1, 1049168 !241
	lw  	fa2, 0(a1) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a1, 1049180 !241
	sw  	fa0, 0(a1) !241
	li  	a1, 1049180 !242
	lw  	fa0, 4(a1) !242
	flw  	fa1, 4(a0) !242
	li  	a1, 1049168 !242
	lw  	fa2, 4(a1) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a1, 1049180 !242
	sw  	fa0, 4(a1) !242
	li  	a1, 1049180 !243
	lw  	fa0, 8(a1) !243
	flw  	fa1, 8(a0) !243
	li  	a0, 1049168 !243
	lw  	fa2, 8(a0) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a0, 1049180 !243
	sw  	fa0, 8(a0) !243
beq_cont.28236: !1868
	addi	a1, zero, 1 !1871
	lw  	a0, 48(sp) !476
	lw  	a2, 8(a0) !476
	lw  	a2, 4(a2) !1866
	blt 	a2, zero, bge_else.28237 !1866
	lw  	a2, 12(a0) !483
	lw  	a2, 4(a2) !1868
	bne 	a2, zero, beq_else.28239 !1868
	jal 	zero, beq_cont.28240 !1868
beq_else.28239: !1868
	addi	sp, sp, 56 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -56 !1869
beq_cont.28240: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 48(sp) !1871
	addi	sp, sp, 56 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -56 !1871
	jal 	zero, bge_cont.28238 !1866
bge_else.28237: !1866
bge_cont.28238: !1866
	jal 	zero, bge_cont.28234 !1866
bge_else.28233: !1866
bge_cont.28234: !1866
	jal 	zero, beq_cont.28232 !2057
beq_else.28231: !2057
	addi	a5, zero, 0 !2058
	lw  	a1, 8(sp) !2058
	lw  	a4, 4(sp) !2058
	addi	t0, a2, 0 !2058
	addi	a2, a1, 0 !2058
	addi	a1, t0, 0 !2058
	addi	sp, sp, 56 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -56 !2058
beq_cont.28232: !2057
	lw  	a0, 24(sp) !2063
	addi	sp, sp, 56 !2063
	jal 	ra, write_rgb.2813 !2063
	addi	sp, sp, -56 !2063
	lw  	a0, 44(sp) !2065
	addi	a0, a0, 1 !2065
	lw  	a1, 12(sp) !2065
	lw  	a2, 8(sp) !2065
	lw  	a3, 16(sp) !2065
	lw  	a4, 4(sp) !2065
	lw  	a5, 24(sp) !2065
	lw  	ra, 0(sp)
	jal 	zero, scan_pixel.2829 !2065
scan_line.2836:
	sw  	ra, 0(sp)
	li  	a6, 1049192 !2072
	lw  	a6, 4(a6) !2072
	blt 	a0, a6, bge_else.28241 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28241: !2072
	li  	a6, 1049192 !2074
	lw  	a6, 4(a6) !2074
	addi	a6, a6, -1 !2074
	sw  	a4, 4(sp) !2074
	sw  	a5, 8(sp) !2074
	sw  	a3, 12(sp) !2074
	sw  	a1, 16(sp) !2074
	sw  	a0, 20(sp) !2074
	sw  	a2, 24(sp) !2074
	blt 	a0, a6, bge_else.28243 !2074
	jal 	zero, bge_cont.28244 !2074
bge_else.28243: !2074
	addi	a6, a0, 1 !2075
	li  	a7, 1049208 !2037
	lw  	fa0, 0(a7) !2037
	li  	a7, 1049200 !2037
	lw  	a7, 4(a7) !2037
	sub 	a6, a6, a7 !2037
	fsw 	fa0, 32(sp) !2037
	addi	a0, a6, 0 !2037
	fcvt.s.w fa0, a0
	flw  	fa1, 32(sp) !2037
	fmul	fa1, fa1, fa0 !2037
	li  	a0, 1049248 !2040
	lw  	fa0, 0(a0) !2040
	fmul	fa0, fa1, fa0 !2040
	li  	a0, 1049260 !2040
	lw  	fa2, 0(a0) !2040
	fadd	fa0, fa0, fa2 !2040
	li  	a0, 1049248 !2041
	lw  	fa2, 4(a0) !2041
	fmul	fa2, fa1, fa2 !2041
	li  	a0, 1049260 !2041
	lw  	fa3, 4(a0) !2041
	fadd	fa2, fa2, fa3 !2041
	li  	a0, 1049248 !2042
	lw  	fa3, 8(a0) !2042
	fmul	fa1, fa1, fa3 !2042
	li  	a0, 1049260 !2042
	lw  	fa3, 8(a0) !2042
	fadd	fa1, fa1, fa3 !2042
	li  	a0, 1049192 !2043
	lw  	a0, 0(a0) !2043
	addi	a1, a0, -1 !2043
	lw  	a0, 12(sp) !2043
	lw  	a2, 4(sp) !2043
	fsgnj   t0, fa2, fa2 !2043
	fsgnj   fa2, fa1, fa1 !2043
	fsgnj   fa1, t0, t0 !2043
	addi	sp, sp, 40 !2043
	jal 	ra, pretrace_pixels.2818 !2043
	addi	sp, sp, -40 !2043
bge_cont.28244: !2074
	addi	a0, zero, 0 !2077
	li  	a1, 1049192 !2051
	lw  	a1, 0(a1) !2051
	blt 	zero, a1, bge_else.28246 !2051
	jal 	zero, bge_cont.28247 !2051
bge_else.28246: !2051
	lw  	a3, 24(sp) !2054
	lw  	a1, 0(a3) !2054
	lw  	a1, 0(a1) !461
	flw  	fa0, 0(a1) !188
	li  	a2, 1049180 !188
	sw  	fa0, 0(a2) !188
	flw  	fa0, 4(a1) !189
	li  	a2, 1049180 !189
	sw  	fa0, 4(a2) !189
	flw  	fa0, 8(a1) !190
	li  	a1, 1049180 !190
	sw  	fa0, 8(a1) !190
	li  	a1, 1049192 !1878
	lw  	a1, 4(a1) !1878
	lw  	a2, 20(sp) !1878
	addi	a4, a2, 1 !1878
	blt 	a4, a1, bge_else.28248 !1878
	addi	a1, zero, 0 !1886
	jal 	zero, bge_cont.28249 !1878
bge_else.28248: !1878
	blt 	zero, a2, bge_else.28250 !1879
	addi	a1, zero, 0 !1885
	jal 	zero, bge_cont.28251 !1879
bge_else.28250: !1879
	li  	a1, 1049192 !1880
	lw  	a1, 0(a1) !1880
	addi	t0, zero, 1 !1880
	blt 	t0, a1, bge_else.28252 !1880
	addi	a1, zero, 0 !1884
	jal 	zero, bge_cont.28253 !1880
bge_else.28252: !1880
	addi	a1, zero, 0 !1883
bge_cont.28253: !1880
bge_cont.28251: !1879
bge_cont.28249: !1878
	bne 	a1, zero, beq_else.28254 !2057
	lw  	a0, 0(a3) !2060
	lw  	a1, 8(a0) !476
	lw  	a1, 0(a1) !1866
	blt 	a1, zero, bge_else.28256 !1866
	lw  	a1, 12(a0) !483
	lw  	a1, 0(a1) !1868
	sw  	a0, 40(sp) !1868
	bne 	a1, zero, beq_else.28258 !1868
	jal 	zero, beq_cont.28259 !1868
beq_else.28258: !1868
	lw  	a1, 20(a0) !497
	lw  	a4, 28(a0) !520
	lw  	a5, 4(a0) !468
	lw  	a6, 16(a0) !490
	lw  	a1, 0(a1) !1831
	flw  	fa0, 0(a1) !188
	li  	a7, 1049168 !188
	sw  	fa0, 0(a7) !188
	flw  	fa0, 4(a1) !189
	li  	a7, 1049168 !189
	sw  	fa0, 4(a7) !189
	flw  	fa0, 8(a1) !190
	li  	a1, 1049168 !190
	sw  	fa0, 8(a1) !190
	lw  	a1, 24(a0) !506
	lw  	a1, 0(a1) !508
	lw  	a4, 0(a4) !1834
	lw  	a5, 0(a5) !1835
	sw  	a6, 44(sp) !1832
	addi	a2, a5, 0 !1832
	addi	a0, a1, 0 !1832
	addi	a1, a4, 0 !1832
	addi	sp, sp, 48 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -48 !1832
	lw  	a0, 44(sp) !1836
	lw  	a0, 0(a0) !1836
	li  	a1, 1049180 !241
	lw  	fa0, 0(a1) !241
	flw  	fa1, 0(a0) !241
	li  	a1, 1049168 !241
	lw  	fa2, 0(a1) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	li  	a1, 1049180 !241
	sw  	fa0, 0(a1) !241
	li  	a1, 1049180 !242
	lw  	fa0, 4(a1) !242
	flw  	fa1, 4(a0) !242
	li  	a1, 1049168 !242
	lw  	fa2, 4(a1) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	li  	a1, 1049180 !242
	sw  	fa0, 4(a1) !242
	li  	a1, 1049180 !243
	lw  	fa0, 8(a1) !243
	flw  	fa1, 8(a0) !243
	li  	a0, 1049168 !243
	lw  	fa2, 8(a0) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	li  	a0, 1049180 !243
	sw  	fa0, 8(a0) !243
beq_cont.28259: !1868
	addi	a1, zero, 1 !1871
	lw  	a0, 40(sp) !476
	lw  	a2, 8(a0) !476
	lw  	a2, 4(a2) !1866
	blt 	a2, zero, bge_else.28260 !1866
	lw  	a2, 12(a0) !483
	lw  	a2, 4(a2) !1868
	bne 	a2, zero, beq_else.28262 !1868
	jal 	zero, beq_cont.28263 !1868
beq_else.28262: !1868
	addi	sp, sp, 48 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -48 !1869
beq_cont.28263: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 40(sp) !1871
	addi	sp, sp, 48 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -48 !1871
	jal 	zero, bge_cont.28261 !1866
bge_else.28260: !1866
bge_cont.28261: !1866
	jal 	zero, bge_cont.28257 !1866
bge_else.28256: !1866
bge_cont.28257: !1866
	jal 	zero, beq_cont.28255 !2057
beq_else.28254: !2057
	addi	a5, zero, 0 !2058
	lw  	a1, 16(sp) !2058
	lw  	a4, 12(sp) !2058
	addi	t0, a2, 0 !2058
	addi	a2, a1, 0 !2058
	addi	a1, t0, 0 !2058
	addi	sp, sp, 48 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -48 !2058
beq_cont.28255: !2057
	lw  	a0, 8(sp) !2063
	addi	sp, sp, 48 !2063
	jal 	ra, write_rgb.2813 !2063
	addi	sp, sp, -48 !2063
	addi	a0, zero, 1 !2065
	lw  	a1, 20(sp) !2065
	lw  	a2, 16(sp) !2065
	lw  	a3, 24(sp) !2065
	lw  	a4, 12(sp) !2065
	lw  	a5, 8(sp) !2065
	addi	sp, sp, 48 !2065
	jal 	ra, scan_pixel.2829 !2065
	addi	sp, sp, -48 !2065
bge_cont.28247: !2051
	lw  	a0, 20(sp) !2078
	addi	a1, a0, 1 !2078
	lw  	a0, 4(sp) !159
	addi	a0, a0, 2 !159
	addi	t0, zero, 5 !160
	blt 	a0, t0, bge_else.28264 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.28265 !160
bge_else.28264: !160
	addi	a2, a0, 0 !160
bge_cont.28265: !160
	li  	a0, 1049192 !2072
	lw  	a0, 4(a0) !2072
	blt 	a1, a0, bge_else.28266 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28266: !2072
	li  	a0, 1049192 !2074
	lw  	a0, 4(a0) !2074
	addi	a0, a0, -1 !2074
	sw  	a2, 48(sp) !2074
	sw  	a1, 52(sp) !2074
	blt 	a1, a0, bge_else.28268 !2074
	jal 	zero, bge_cont.28269 !2074
bge_else.28268: !2074
	addi	a0, a1, 1 !2075
	lw  	a3, 16(sp) !2075
	addi	a1, a0, 0 !2075
	addi	a0, a3, 0 !2075
	addi	sp, sp, 56 !2075
	jal 	ra, pretrace_line.2825 !2075
	addi	sp, sp, -56 !2075
bge_cont.28269: !2074
	addi	a0, zero, 0 !2077
	lw  	a1, 52(sp) !2077
	lw  	a2, 24(sp) !2077
	lw  	a3, 12(sp) !2077
	lw  	a4, 16(sp) !2077
	lw  	a5, 8(sp) !2077
	addi	sp, sp, 56 !2077
	jal 	ra, scan_pixel.2829 !2077
	addi	sp, sp, -56 !2077
	lw  	a0, 52(sp) !2078
	addi	a0, a0, 1 !2078
	lw  	a1, 48(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5 !160
	blt 	a1, t0, bge_else.28270 !160
	addi	a4, a1, -5 !160
	jal 	zero, bge_cont.28271 !160
bge_else.28270: !160
	addi	a4, a1, 0 !160
bge_cont.28271: !160
	lw  	a1, 12(sp) !2078
	lw  	a2, 16(sp) !2078
	lw  	a3, 24(sp) !2078
	lw  	a5, 8(sp) !2078
	lw  	ra, 0(sp)
	jal 	zero, scan_line.2836 !2078
create_pixel.2845:
	sw  	ra, 0(sp)
	addi	a0, zero, 3 !2099
	li  	fa0, 0.000000 !2099
	addi	sp, sp, 4 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -4 !2099
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 4(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 8 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -8 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 8 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -8 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 8(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 12 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -12 !2089
	lw  	a1, 8(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 12 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -12 !2090
	lw  	a1, 8(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 12 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -12 !2091
	lw  	a1, 8(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 12 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -12 !2092
	lw  	a1, 8(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a2, zero, 0 !2101
	addi	a1, a2, 0 !2101
	addi	sp, sp, 12 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -12 !2101
	addi	a1, zero, 5 !2102
	addi	a2, zero, 0 !2102
	sw  	a0, 12(sp) !2102
	addi	a0, a1, 0 !2102
	addi	a1, a2, 0 !2102
	addi	sp, sp, 16 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -16 !2102
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 16(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 20 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -20 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 20 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -20 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 20(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 24 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -24 !2089
	lw  	a1, 20(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 24 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -24 !2090
	lw  	a1, 20(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 24 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -24 !2091
	lw  	a1, 20(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 24 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -24 !2092
	lw  	a1, 20(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	addi	sp, sp, 24 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -24 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 24 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -24 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 24(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 28 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -28 !2089
	lw  	a1, 24(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 28 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -28 !2090
	lw  	a1, 24(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 28 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -28 !2091
	lw  	a1, 24(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 28 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -28 !2092
	lw  	a1, 24(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a2, zero, 0 !2105
	addi	a1, a2, 0 !2105
	addi	sp, sp, 28 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -28 !2105
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 28(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 32 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -32 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 32 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -32 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 32(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 36 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -36 !2089
	lw  	a1, 32(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 36 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -36 !2090
	lw  	a1, 32(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 36 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -36 !2091
	lw  	a1, 32(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 36 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -36 !2092
	lw  	a1, 32(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 32 !2107
	sw  	a1, 28(a0) !2107
	lw  	a1, 28(sp) !2107
	sw  	a1, 24(a0) !2107
	lw  	a1, 24(sp) !2107
	sw  	a1, 20(a0) !2107
	lw  	a1, 20(sp) !2107
	sw  	a1, 16(a0) !2107
	lw  	a1, 16(sp) !2107
	sw  	a1, 12(a0) !2107
	lw  	a1, 12(sp) !2107
	sw  	a1, 8(a0) !2107
	lw  	a1, 8(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 4(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_line_elements.2847:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.28272 !2112
	addi	a2, zero, 3 !2099
	li  	fa0, 0.000000 !2099
	sw  	a1, 4(sp) !2099
	sw  	a0, 8(sp) !2099
	addi	a0, a2, 0 !2099
	addi	sp, sp, 12 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -12 !2099
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 12(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 16 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -16 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 16 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -16 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 16(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 20 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -20 !2089
	lw  	a1, 16(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 20 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -20 !2090
	lw  	a1, 16(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 20 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -20 !2091
	lw  	a1, 16(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 20 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -20 !2092
	lw  	a1, 16(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a2, zero, 0 !2101
	addi	a1, a2, 0 !2101
	addi	sp, sp, 20 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -20 !2101
	addi	a1, zero, 5 !2102
	addi	a2, zero, 0 !2102
	sw  	a0, 20(sp) !2102
	addi	a0, a1, 0 !2102
	addi	a1, a2, 0 !2102
	addi	sp, sp, 24 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -24 !2102
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 24(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 28 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -28 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 28 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -28 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 28(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 32 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -32 !2089
	lw  	a1, 28(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 32 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -32 !2090
	lw  	a1, 28(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 32 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -32 !2091
	lw  	a1, 28(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 32 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -32 !2092
	lw  	a1, 28(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	addi	sp, sp, 32 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -32 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 32 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -32 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 32(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 36 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -36 !2089
	lw  	a1, 32(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 36 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -36 !2090
	lw  	a1, 32(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 36 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -36 !2091
	lw  	a1, 32(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 36 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -36 !2092
	lw  	a1, 32(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a2, zero, 0 !2105
	addi	a1, a2, 0 !2105
	addi	sp, sp, 36 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -36 !2105
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 36(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 40 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -40 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 40 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -40 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 40(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 44 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -44 !2089
	lw  	a1, 40(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 44 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -44 !2090
	lw  	a1, 40(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 44 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -44 !2091
	lw  	a1, 40(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 44 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -44 !2092
	lw  	a1, 40(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 32 !2107
	sw  	a1, 28(a0) !2107
	lw  	a1, 36(sp) !2107
	sw  	a1, 24(a0) !2107
	lw  	a1, 32(sp) !2107
	sw  	a1, 20(a0) !2107
	lw  	a1, 28(sp) !2107
	sw  	a1, 16(a0) !2107
	lw  	a1, 24(sp) !2107
	sw  	a1, 12(a0) !2107
	lw  	a1, 20(sp) !2107
	sw  	a1, 8(a0) !2107
	lw  	a1, 16(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 12(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	a1, 4(sp) !2113
	lw  	a2, 8(sp) !2113
	slli	t0, a1, 2 !2113
	add 	t0, t0, a2 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	blt 	a1, zero, bge_else.28273 !2112
	sw  	a1, 44(sp) !2113
	addi	sp, sp, 48 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -48 !2113
	lw  	a1, 44(sp) !2113
	lw  	a2, 8(sp) !2113
	slli	t0, a1, 2 !2113
	add 	t0, t0, a2 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	blt 	a1, zero, bge_else.28274 !2112
	addi	a0, zero, 3 !2099
	li  	fa0, 0.000000 !2099
	sw  	a1, 48(sp) !2099
	addi	sp, sp, 52 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -52 !2099
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 52(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 56 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -56 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 56 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -56 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 56(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 60 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -60 !2089
	lw  	a1, 56(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 60 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -60 !2090
	lw  	a1, 56(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 60 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -60 !2091
	lw  	a1, 56(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 60 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -60 !2092
	lw  	a1, 56(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a2, zero, 0 !2101
	addi	a1, a2, 0 !2101
	addi	sp, sp, 60 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -60 !2101
	addi	a1, zero, 5 !2102
	addi	a2, zero, 0 !2102
	sw  	a0, 60(sp) !2102
	addi	a0, a1, 0 !2102
	addi	a1, a2, 0 !2102
	addi	sp, sp, 64 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -64 !2102
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 64(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 68 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -68 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 68 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -68 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 68(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 72 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -72 !2089
	lw  	a1, 68(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 72 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -72 !2090
	lw  	a1, 68(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 72 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -72 !2091
	lw  	a1, 68(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 72 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -72 !2092
	lw  	a1, 68(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	addi	sp, sp, 72 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -72 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 72 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -72 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 72(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 76 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -76 !2089
	lw  	a1, 72(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 76 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -76 !2090
	lw  	a1, 72(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 76 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -76 !2091
	lw  	a1, 72(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 76 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -76 !2092
	lw  	a1, 72(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a2, zero, 0 !2105
	addi	a1, a2, 0 !2105
	addi	sp, sp, 76 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -76 !2105
	addi	a1, zero, 3 !2087
	li  	fa0, 0.000000 !2087
	sw  	a0, 76(sp) !2087
	addi	a0, a1, 0 !2087
	addi	sp, sp, 80 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -80 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 80 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -80 !2088
	addi	a1, zero, 3 !2089
	li  	fa0, 0.000000 !2089
	sw  	a0, 80(sp) !2089
	addi	a0, a1, 0 !2089
	addi	sp, sp, 84 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -84 !2089
	lw  	a1, 80(sp) !2089
	sw  	a0, 4(a1) !2089
	addi	a0, zero, 3 !2090
	li  	fa0, 0.000000 !2090
	addi	sp, sp, 84 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -84 !2090
	lw  	a1, 80(sp) !2090
	sw  	a0, 8(a1) !2090
	addi	a0, zero, 3 !2091
	li  	fa0, 0.000000 !2091
	addi	sp, sp, 84 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -84 !2091
	lw  	a1, 80(sp) !2091
	sw  	a0, 12(a1) !2091
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 84 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -84 !2092
	lw  	a1, 80(sp) !2092
	sw  	a0, 16(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 32 !2107
	sw  	a1, 28(a0) !2107
	lw  	a1, 76(sp) !2107
	sw  	a1, 24(a0) !2107
	lw  	a1, 72(sp) !2107
	sw  	a1, 20(a0) !2107
	lw  	a1, 68(sp) !2107
	sw  	a1, 16(a0) !2107
	lw  	a1, 64(sp) !2107
	sw  	a1, 12(a0) !2107
	lw  	a1, 60(sp) !2107
	sw  	a1, 8(a0) !2107
	lw  	a1, 56(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 52(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	a1, 48(sp) !2113
	lw  	a2, 8(sp) !2113
	slli	t0, a1, 2 !2113
	add 	t0, t0, a2 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	blt 	a1, zero, bge_else.28275 !2112
	sw  	a1, 84(sp) !2113
	addi	sp, sp, 88 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -88 !2113
	lw  	a1, 84(sp) !2113
	lw  	a2, 8(sp) !2113
	slli	t0, a1, 2 !2113
	add 	t0, t0, a2 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	lw  	ra, 0(sp)
	jal 	zero, init_line_elements.2847 !2114
bge_else.28275: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28274: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28273: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28272: !2112
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec.2857:
	sw  	ra, 0(sp)
	addi	t0, zero, 5 !2144
	blt 	a0, t0, bge_else.28276 !2144
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !2145
	li  	fa3, 1.000000 !2145
	fadd	fa2, fa2, fa3 !2145
	sw  	a2, 4(sp) !2145
	sw  	a1, 8(sp) !2145
	fsw 	fa1, 16(sp) !2145
	fsw 	fa0, 24(sp) !2145
	fsgnj   fa0, fa2, fa2 !2145
	fsqrt   fa0, fa0
	flw  	fa1, 24(sp) !2146
	fdiv	fa1, fa1, fa0 !2146
	flw  	fa2, 16(sp) !2147
	fdiv	fa2, fa2, fa0 !2147
	li  	fa3, 1.000000 !2148
	fdiv	fa0, fa3, fa0 !2148
	li  	a0, 1049292 !2151
	lw  	a1, 8(sp) !2151
	slli	t0, a1, 2 !2151
	add 	t0, t0, a0 !2151
	lw  	a0, 0(t0) !2151
	lw  	a1, 4(sp) !2152
	slli	t0, a1, 2 !2152
	add 	t0, t0, a0 !2152
	lw  	a2, 0(t0) !2152
	lw  	a2, 0(a2) !529
	fsw  	fa1, 0(a2) !169
	fsw  	fa2, 4(a2) !170
	fsw  	fa0, 8(a2) !171
	addi	a2, a1, 40 !2153
	slli	t0, a2, 2 !2153
	add 	t0, t0, a0 !2153
	lw  	a2, 0(t0) !2153
	lw  	a2, 0(a2) !529
	fsw 	fa2, 32(sp) !2153
	sw  	a0, 40(sp) !2153
	fsw 	fa0, 48(sp) !2153
	sw  	a2, 56(sp) !2153
	fsw 	fa1, 64(sp) !2153
	fsgnj   fa0, fa2, fa2 !2153
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 56(sp) !169
	flw  	fa1, 64(sp) !169
	fsw  	fa1, 0(a0) !169
	flw  	fa2, 48(sp) !170
	fsw  	fa2, 4(a0) !170
	fsw  	fa0, 8(a0) !171
	lw  	a0, 4(sp) !2154
	addi	a1, a0, 80 !2154
	lw  	a2, 40(sp) !2154
	slli	t0, a1, 2 !2154
	add 	t0, t0, a2 !2154
	lw  	a1, 0(t0) !2154
	lw  	a1, 0(a1) !529
	sw  	a1, 72(sp) !2154
	fsgnj   fa0, fa1, fa1 !2154
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 32(sp) !2154
	fsw 	fa0, 80(sp) !2154
	fsgnj   fa0, fa1, fa1 !2154
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 72(sp) !169
	flw  	fa1, 48(sp) !169
	fsw  	fa1, 0(a0) !169
	flw  	fa2, 80(sp) !170
	fsw  	fa2, 4(a0) !170
	fsw  	fa0, 8(a0) !171
	lw  	a0, 4(sp) !2155
	addi	a1, a0, 1 !2155
	lw  	a2, 40(sp) !2155
	slli	t0, a1, 2 !2155
	add 	t0, t0, a2 !2155
	lw  	a1, 0(t0) !2155
	lw  	a1, 0(a1) !529
	flw  	fa0, 64(sp) !2155
	sw  	a1, 88(sp) !2155
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 32(sp) !2155
	fsw 	fa0, 96(sp) !2155
	fsgnj   fa0, fa1, fa1 !2155
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 48(sp) !2155
	fsw 	fa0, 104(sp) !2155
	fsgnj   fa0, fa1, fa1 !2155
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 88(sp) !169
	flw  	fa1, 96(sp) !169
	fsw  	fa1, 0(a0) !169
	flw  	fa1, 104(sp) !170
	fsw  	fa1, 4(a0) !170
	fsw  	fa0, 8(a0) !171
	lw  	a0, 4(sp) !2156
	addi	a1, a0, 41 !2156
	lw  	a2, 40(sp) !2156
	slli	t0, a1, 2 !2156
	add 	t0, t0, a2 !2156
	lw  	a1, 0(t0) !2156
	lw  	a1, 0(a1) !529
	flw  	fa0, 64(sp) !2156
	sw  	a1, 112(sp) !2156
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 48(sp) !2156
	fsw 	fa0, 120(sp) !2156
	fsgnj   fa0, fa1, fa1 !2156
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 112(sp) !169
	flw  	fa1, 120(sp) !169
	fsw  	fa1, 0(a0) !169
	fsw  	fa0, 4(a0) !170
	flw  	fa0, 32(sp) !171
	fsw  	fa0, 8(a0) !171
	lw  	a0, 4(sp) !2157
	addi	a0, a0, 81 !2157
	lw  	a1, 40(sp) !2157
	slli	t0, a0, 2 !2157
	add 	t0, t0, a1 !2157
	lw  	a0, 0(t0) !2157
	lw  	a0, 0(a0) !529
	flw  	fa1, 48(sp) !2157
	sw  	a0, 128(sp) !2157
	fsgnj   fa0, fa1, fa1 !2157
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 128(sp) !169
	fsw  	fa0, 0(a0) !169
	flw  	fa0, 64(sp) !170
	fsw  	fa0, 4(a0) !170
	flw  	fa0, 32(sp) !171
	fsw  	fa0, 8(a0) !171
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28276: !2144
	fmul	fa1, fa1, fa1 !2135
	li  	fa0, 0.100000 !2135
	fadd	fa0, fa1, fa0 !2135
	sw  	a2, 4(sp) !2135
	sw  	a1, 8(sp) !2135
	fsw 	fa3, 136(sp) !2135
	sw  	a0, 144(sp) !2135
	fsw 	fa2, 152(sp) !2135
	fsqrt   fa0, fa0
	li  	fa1, 1.000000 !2136
	fdiv	fa1, fa1, fa0 !2136
	fsw 	fa0, 160(sp) !2137
	fsgnj   fa0, fa1, fa1 !2137
	addi	sp, sp, 168 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -168 !2137
	flw  	fa1, 152(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	fsw 	fa0, 168(sp) !2130
	addi	sp, sp, 176 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -176 !2130
	flw  	fa1, 168(sp) !2130
	fsw 	fa0, 176(sp) !2130
	fsgnj   fa0, fa1, fa1 !2130
	addi	sp, sp, 184 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -184 !2130
	flw  	fa1, 176(sp) !2130
	fdiv	fa1, fa1, fa0 !2130
	flw  	fa0, 160(sp) !2139
	fmul	fa1, fa1, fa0 !2139
	lw  	a0, 144(sp) !2160
	addi	a0, a0, 1 !2160
	fmul	fa0, fa1, fa1 !2135
	li  	fa2, 0.100000 !2135
	fadd	fa0, fa0, fa2 !2135
	fsw 	fa1, 184(sp) !2135
	sw  	a0, 192(sp) !2135
	fsqrt   fa0, fa0
	li  	fa1, 1.000000 !2136
	fdiv	fa1, fa1, fa0 !2136
	fsw 	fa0, 200(sp) !2137
	fsgnj   fa0, fa1, fa1 !2137
	addi	sp, sp, 208 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -208 !2137
	flw  	fa1, 136(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	fsw 	fa0, 208(sp) !2130
	addi	sp, sp, 216 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -216 !2130
	flw  	fa1, 208(sp) !2130
	fsw 	fa0, 216(sp) !2130
	fsgnj   fa0, fa1, fa1 !2130
	addi	sp, sp, 224 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -224 !2130
	flw  	fa1, 216(sp) !2130
	fdiv	fa1, fa1, fa0 !2130
	flw  	fa0, 200(sp) !2139
	fmul	fa1, fa1, fa0 !2139
	flw  	fa0, 184(sp) !2160
	flw  	fa2, 152(sp) !2160
	flw  	fa3, 136(sp) !2160
	lw  	a0, 192(sp) !2160
	lw  	a1, 8(sp) !2160
	lw  	a2, 4(sp) !2160
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec.2857 !2160
calc_dirvecs.2865:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.28287 !2165
	sw  	a0, 4(sp) !2167
	fsw 	fa0, 8(sp) !2167
	sw  	a2, 16(sp) !2167
	sw  	a1, 20(sp) !2167
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa2, fa0, fa1 !2167
	addi	a0, zero, 0 !2168
	li  	fa0, 0.000000 !2168
	li  	fa1, 0.000000 !2168
	flw  	fa3, 8(sp) !2168
	lw  	a1, 20(sp) !2168
	lw  	a2, 16(sp) !2168
	addi	sp, sp, 24 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -24 !2168
	lw  	a0, 4(sp) !2170
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	li  	fa0, 0.000000 !2171
	li  	fa1, 0.000000 !2171
	lw  	a1, 16(sp) !2171
	addi	a2, a1, 2 !2171
	flw  	fa3, 8(sp) !2171
	lw  	a3, 20(sp) !2171
	addi	a1, a3, 0 !2171
	addi	sp, sp, 24 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -24 !2171
	lw  	a0, 4(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 20(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5 !160
	blt 	a1, t0, bge_else.28288 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.28289 !160
bge_else.28288: !160
bge_cont.28289: !160
	blt 	a0, zero, bge_else.28290 !2165
	sw  	a0, 24(sp) !2167
	sw  	a1, 28(sp) !2167
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa2, fa0, fa1 !2167
	addi	a0, zero, 0 !2168
	li  	fa0, 0.000000 !2168
	li  	fa1, 0.000000 !2168
	flw  	fa3, 8(sp) !2168
	lw  	a1, 28(sp) !2168
	lw  	a2, 16(sp) !2168
	addi	sp, sp, 32 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -32 !2168
	lw  	a0, 24(sp) !2170
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	li  	fa0, 0.000000 !2171
	li  	fa1, 0.000000 !2171
	lw  	a1, 16(sp) !2171
	addi	a2, a1, 2 !2171
	flw  	fa3, 8(sp) !2171
	lw  	a3, 28(sp) !2171
	addi	a1, a3, 0 !2171
	addi	sp, sp, 32 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -32 !2171
	lw  	a0, 24(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 28(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5 !160
	blt 	a1, t0, bge_else.28291 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.28292 !160
bge_else.28291: !160
bge_cont.28292: !160
	flw  	fa0, 8(sp) !2173
	lw  	a2, 16(sp) !2173
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvecs.2865 !2173
bge_else.28290: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28287: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec_rows.2870:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.28295 !2179
	sw  	a0, 4(sp) !2180
	sw  	a2, 8(sp) !2180
	sw  	a1, 12(sp) !2180
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa3, fa0, fa1 !2180
	addi	a0, zero, 4 !2181
	sw  	a0, 16(sp) !2167
	fsw 	fa3, 24(sp) !2167
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa2, fa0, fa1 !2167
	addi	a0, zero, 0 !2168
	li  	fa0, 0.000000 !2168
	li  	fa1, 0.000000 !2168
	flw  	fa3, 24(sp) !2168
	lw  	a1, 12(sp) !2168
	lw  	a2, 8(sp) !2168
	addi	sp, sp, 32 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -32 !2168
	lw  	a0, 16(sp) !2170
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	li  	fa0, 0.000000 !2171
	li  	fa1, 0.000000 !2171
	lw  	a1, 8(sp) !2171
	addi	a2, a1, 2 !2171
	flw  	fa3, 24(sp) !2171
	lw  	a3, 12(sp) !2171
	addi	a1, a3, 0 !2171
	addi	sp, sp, 32 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -32 !2171
	addi	a0, zero, 3 !2173
	lw  	a1, 12(sp) !159
	addi	a2, a1, 1 !159
	addi	t0, zero, 5 !160
	blt 	a2, t0, bge_else.28297 !160
	addi	a2, a2, -5 !160
	jal 	zero, bge_cont.28298 !160
bge_else.28297: !160
bge_cont.28298: !160
	flw  	fa0, 24(sp) !2173
	lw  	a3, 8(sp) !2173
	addi	a1, a2, 0 !2173
	addi	a2, a3, 0 !2173
	addi	sp, sp, 32 !2173
	jal 	ra, calc_dirvecs.2865 !2173
	addi	sp, sp, -32 !2173
	lw  	a0, 4(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 12(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5 !160
	blt 	a1, t0, bge_else.28299 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.28300 !160
bge_else.28299: !160
bge_cont.28300: !160
	lw  	a2, 8(sp) !2182
	addi	a2, a2, 4 !2182
	blt 	a0, zero, bge_else.28301 !2179
	sw  	a0, 32(sp) !2180
	sw  	a2, 36(sp) !2180
	sw  	a1, 40(sp) !2180
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa0, fa0, fa1 !2180
	addi	a0, zero, 4 !2181
	lw  	a1, 40(sp) !2181
	lw  	a2, 36(sp) !2181
	addi	sp, sp, 44 !2181
	jal 	ra, calc_dirvecs.2865 !2181
	addi	sp, sp, -44 !2181
	lw  	a0, 32(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 40(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5 !160
	blt 	a1, t0, bge_else.28302 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.28303 !160
bge_else.28302: !160
bge_cont.28303: !160
	lw  	a2, 36(sp) !2182
	addi	a2, a2, 4 !2182
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec_rows.2870 !2182
bge_else.28301: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28295: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec_elements.2876:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.28306 !2196
	addi	a2, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a1, 4(sp) !2190
	sw  	a0, 8(sp) !2190
	addi	a0, a2, 0 !2190
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 12(sp) !2191
	addi	sp, sp, 16 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -16 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 12(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 4(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a0, a0, -1 !2198
	blt 	a0, zero, bge_else.28307 !2196
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 16(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 20(sp) !2191
	addi	sp, sp, 24 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -24 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 20(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a0, a0, -1 !2198
	blt 	a0, zero, bge_else.28308 !2196
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 24(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 28 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -28 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 28(sp) !2191
	addi	sp, sp, 32 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -32 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 28(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 24(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a0, a0, -1 !2198
	blt 	a0, zero, bge_else.28309 !2196
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 32(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 36 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -36 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 36(sp) !2191
	addi	sp, sp, 40 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -40 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 36(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 32(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a0, a0, -1 !2198
	blt 	a0, zero, bge_else.28310 !2196
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 40(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 44 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -44 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 44(sp) !2191
	addi	sp, sp, 48 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -48 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 44(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 40(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a0, a0, -1 !2198
	blt 	a0, zero, bge_else.28311 !2196
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 48(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 52 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -52 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 52(sp) !2191
	addi	sp, sp, 56 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -56 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 52(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 48(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a0, a0, -1 !2198
	blt 	a0, zero, bge_else.28312 !2196
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 56(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 60 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -60 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 60(sp) !2191
	addi	sp, sp, 64 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -64 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 60(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 56(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a0, a0, -1 !2198
	blt 	a0, zero, bge_else.28313 !2196
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 64(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 68 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -68 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 68(sp) !2191
	addi	sp, sp, 72 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -72 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 68(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 64(sp) !2197
	lw  	a2, 8(sp) !2197
	slli	t0, a0, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a1, 0(t0) !2197
	addi	a1, a0, -1 !2198
	addi	a0, a2, 0 !2198
	lw  	ra, 0(sp)
	jal 	zero, create_dirvec_elements.2876 !2198
bge_else.28313: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28312: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28311: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28310: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28309: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28308: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28307: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28306: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvecs.2879:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.28322 !2203
	addi	a1, zero, 120 !2204
	addi	a2, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 4(sp) !2190
	sw  	a1, 8(sp) !2190
	addi	a0, a2, 0 !2190
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 12(sp) !2191
	addi	sp, sp, 16 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -16 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 12(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 8(sp) !2204
	addi	sp, sp, 16 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -16 !2204
	li  	a1, 1049292 !2204
	lw  	a2, 4(sp) !2204
	slli	t0, a2, 2 !2204
	add 	t0, t0, a1 !2204
	sw  	a0, 0(t0) !2204
	li  	a0, 1049292 !2205
	slli	t0, a2, 2 !2205
	add 	t0, t0, a0 !2205
	lw  	a0, 0(t0) !2205
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 16(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 20(sp) !2191
	addi	sp, sp, 24 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -24 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 20(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	sw  	a1, 472(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 24 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -24 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 24(sp) !2191
	addi	sp, sp, 28 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -28 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 24(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	sw  	a1, 468(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 28 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -28 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 28(sp) !2191
	addi	sp, sp, 32 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -32 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 28(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	sw  	a1, 464(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 32 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -32 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 32(sp) !2191
	addi	sp, sp, 36 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -36 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 32(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	sw  	a1, 460(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 36 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -36 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 36(sp) !2191
	addi	sp, sp, 40 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -40 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 36(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	sw  	a1, 456(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 40 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -40 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 40(sp) !2191
	addi	sp, sp, 44 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -44 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 40(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	sw  	a1, 452(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 44 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -44 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 44(sp) !2191
	addi	sp, sp, 48 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -48 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 44(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 16(sp) !2197
	sw  	a1, 448(a0) !2197
	addi	a1, zero, 111 !2198
	addi	sp, sp, 48 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -48 !2198
	lw  	a0, 4(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.28323 !2203
	addi	a1, zero, 120 !2204
	addi	a2, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 48(sp) !2190
	sw  	a1, 52(sp) !2190
	addi	a0, a2, 0 !2190
	addi	sp, sp, 56 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -56 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 56(sp) !2191
	addi	sp, sp, 60 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -60 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 56(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 52(sp) !2204
	addi	sp, sp, 60 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -60 !2204
	li  	a1, 1049292 !2204
	lw  	a2, 48(sp) !2204
	slli	t0, a2, 2 !2204
	add 	t0, t0, a1 !2204
	sw  	a0, 0(t0) !2204
	li  	a0, 1049292 !2205
	slli	t0, a2, 2 !2205
	add 	t0, t0, a0 !2205
	lw  	a0, 0(t0) !2205
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 60(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 64 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -64 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 64(sp) !2191
	addi	sp, sp, 68 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -68 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 64(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 60(sp) !2197
	sw  	a1, 472(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 68 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -68 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 68(sp) !2191
	addi	sp, sp, 72 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -72 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 68(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 60(sp) !2197
	sw  	a1, 468(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 72 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -72 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 72(sp) !2191
	addi	sp, sp, 76 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -76 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 72(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 60(sp) !2197
	sw  	a1, 464(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 76 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -76 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 76(sp) !2191
	addi	sp, sp, 80 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -80 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 76(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 60(sp) !2197
	sw  	a1, 460(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 80 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -80 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 80(sp) !2191
	addi	sp, sp, 84 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -84 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 80(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 60(sp) !2197
	sw  	a1, 456(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 84 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -84 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 84(sp) !2191
	addi	sp, sp, 88 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -88 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 84(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 60(sp) !2197
	sw  	a1, 452(a0) !2197
	addi	a1, zero, 112 !2198
	addi	sp, sp, 88 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -88 !2198
	lw  	a0, 48(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.28324 !2203
	addi	a1, zero, 120 !2204
	addi	a2, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 88(sp) !2190
	sw  	a1, 92(sp) !2190
	addi	a0, a2, 0 !2190
	addi	sp, sp, 96 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -96 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 96(sp) !2191
	addi	sp, sp, 100 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -100 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 96(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 92(sp) !2204
	addi	sp, sp, 100 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -100 !2204
	li  	a1, 1049292 !2204
	lw  	a2, 88(sp) !2204
	slli	t0, a2, 2 !2204
	add 	t0, t0, a1 !2204
	sw  	a0, 0(t0) !2204
	li  	a0, 1049292 !2205
	slli	t0, a2, 2 !2205
	add 	t0, t0, a0 !2205
	lw  	a0, 0(t0) !2205
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 100(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 104 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -104 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 104(sp) !2191
	addi	sp, sp, 108 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -108 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 104(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 100(sp) !2197
	sw  	a1, 472(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 108 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -108 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 108(sp) !2191
	addi	sp, sp, 112 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -112 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 108(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 100(sp) !2197
	sw  	a1, 468(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 112 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -112 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 112(sp) !2191
	addi	sp, sp, 116 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -116 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 112(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 100(sp) !2197
	sw  	a1, 464(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 116 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -116 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 116(sp) !2191
	addi	sp, sp, 120 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -120 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 116(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 100(sp) !2197
	sw  	a1, 460(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 120 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -120 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 120(sp) !2191
	addi	sp, sp, 124 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -124 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 120(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 100(sp) !2197
	sw  	a1, 456(a0) !2197
	addi	a1, zero, 113 !2198
	addi	sp, sp, 124 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -124 !2198
	lw  	a0, 88(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.28325 !2203
	addi	a1, zero, 120 !2204
	addi	a2, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 124(sp) !2190
	sw  	a1, 128(sp) !2190
	addi	a0, a2, 0 !2190
	addi	sp, sp, 132 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -132 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 132(sp) !2191
	addi	sp, sp, 136 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -136 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 132(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 128(sp) !2204
	addi	sp, sp, 136 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -136 !2204
	li  	a1, 1049292 !2204
	lw  	a2, 124(sp) !2204
	slli	t0, a2, 2 !2204
	add 	t0, t0, a1 !2204
	sw  	a0, 0(t0) !2204
	li  	a0, 1049292 !2205
	slli	t0, a2, 2 !2205
	add 	t0, t0, a0 !2205
	lw  	a0, 0(t0) !2205
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	sw  	a0, 136(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 140 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -140 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 140(sp) !2191
	addi	sp, sp, 144 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -144 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 140(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 136(sp) !2197
	sw  	a1, 472(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 144 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -144 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 144(sp) !2191
	addi	sp, sp, 148 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -148 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 144(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 136(sp) !2197
	sw  	a1, 468(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 148 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -148 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 148(sp) !2191
	addi	sp, sp, 152 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -152 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 148(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 136(sp) !2197
	sw  	a1, 464(a0) !2197
	addi	a1, zero, 3 !2190
	li  	fa0, 0.000000 !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 152 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -152 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 152(sp) !2191
	addi	sp, sp, 156 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -156 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 152(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 136(sp) !2197
	sw  	a1, 460(a0) !2197
	addi	a1, zero, 114 !2198
	addi	sp, sp, 156 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -156 !2198
	lw  	a0, 124(sp) !2206
	addi	a0, a0, -1 !2206
	lw  	ra, 0(sp)
	jal 	zero, create_dirvecs.2879 !2206
bge_else.28325: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28324: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28323: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28322: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvec_constants.2881:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.28330 !2213
	slli	t0, a1, 2 !2214
	add 	t0, t0, a0 !2214
	lw  	a2, 0(t0) !2214
	li  	a3, 1048576 !1142
	lw  	a3, 0(a3) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 4(sp) !1142
	sw  	a1, 8(sp) !1142
	addi	a1, a3, 0 !1142
	addi	a0, a2, 0 !1142
	addi	sp, sp, 12 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -12 !1142
	lw  	a0, 8(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.28331 !2213
	lw  	a1, 4(sp) !2214
	slli	t0, a0, 2 !2214
	add 	t0, t0, a1 !2214
	lw  	a2, 0(t0) !2214
	li  	a3, 1048576 !1142
	lw  	a3, 0(a3) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 12(sp) !1125
	blt 	a3, zero, bge_else.28332 !1125
	li  	a4, 1048624 !1126
	slli	t0, a3, 2 !1126
	add 	t0, t0, a4 !1126
	lw  	a4, 0(t0) !1126
	lw  	a5, 4(a2) !535
	lw  	a6, 0(a2) !529
	lw  	a7, 4(a4) !260
	sw  	a2, 16(sp) !1130
	addi	t0, zero, 1 !1130
	bne 	a7, t0, beq_else.28334 !1130
	sw  	a3, 20(sp) !1131
	sw  	a5, 24(sp) !1131
	addi	a1, a4, 0 !1131
	addi	a0, a6, 0 !1131
	addi	sp, sp, 28 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -28 !1131
	lw  	a1, 20(sp) !1131
	lw  	a2, 24(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.28335 !1130
beq_else.28334: !1130
	addi	t0, zero, 2 !1132
	bne 	a7, t0, beq_else.28336 !1132
	sw  	a3, 20(sp) !1133
	sw  	a5, 24(sp) !1133
	addi	a1, a4, 0 !1133
	addi	a0, a6, 0 !1133
	addi	sp, sp, 28 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -28 !1133
	lw  	a1, 20(sp) !1133
	lw  	a2, 24(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.28337 !1132
beq_else.28336: !1132
	sw  	a3, 20(sp) !1135
	sw  	a5, 24(sp) !1135
	addi	a1, a4, 0 !1135
	addi	a0, a6, 0 !1135
	addi	sp, sp, 28 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -28 !1135
	lw  	a1, 20(sp) !1135
	lw  	a2, 24(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.28337: !1132
beq_cont.28335: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 16(sp) !1137
	addi	sp, sp, 28 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -28 !1137
	jal 	zero, bge_cont.28333 !1125
bge_else.28332: !1125
bge_cont.28333: !1125
	lw  	a0, 12(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.28338 !2213
	lw  	a1, 4(sp) !2214
	slli	t0, a0, 2 !2214
	add 	t0, t0, a1 !2214
	lw  	a2, 0(t0) !2214
	li  	a3, 1048576 !1142
	lw  	a3, 0(a3) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 28(sp) !1142
	addi	a1, a3, 0 !1142
	addi	a0, a2, 0 !1142
	addi	sp, sp, 32 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -32 !1142
	lw  	a0, 28(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.28339 !2213
	lw  	a1, 4(sp) !2214
	slli	t0, a0, 2 !2214
	add 	t0, t0, a1 !2214
	lw  	a2, 0(t0) !2214
	li  	a3, 1048576 !1142
	lw  	a3, 0(a3) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 32(sp) !1125
	blt 	a3, zero, bge_else.28340 !1125
	li  	a4, 1048624 !1126
	slli	t0, a3, 2 !1126
	add 	t0, t0, a4 !1126
	lw  	a4, 0(t0) !1126
	lw  	a5, 4(a2) !535
	lw  	a6, 0(a2) !529
	lw  	a7, 4(a4) !260
	sw  	a2, 36(sp) !1130
	addi	t0, zero, 1 !1130
	bne 	a7, t0, beq_else.28342 !1130
	sw  	a3, 40(sp) !1131
	sw  	a5, 44(sp) !1131
	addi	a1, a4, 0 !1131
	addi	a0, a6, 0 !1131
	addi	sp, sp, 48 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -48 !1131
	lw  	a1, 40(sp) !1131
	lw  	a2, 44(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.28343 !1130
beq_else.28342: !1130
	addi	t0, zero, 2 !1132
	bne 	a7, t0, beq_else.28344 !1132
	sw  	a3, 40(sp) !1133
	sw  	a5, 44(sp) !1133
	addi	a1, a4, 0 !1133
	addi	a0, a6, 0 !1133
	addi	sp, sp, 48 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -48 !1133
	lw  	a1, 40(sp) !1133
	lw  	a2, 44(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.28345 !1132
beq_else.28344: !1132
	sw  	a3, 40(sp) !1135
	sw  	a5, 44(sp) !1135
	addi	a1, a4, 0 !1135
	addi	a0, a6, 0 !1135
	addi	sp, sp, 48 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -48 !1135
	lw  	a1, 40(sp) !1135
	lw  	a2, 44(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.28345: !1132
beq_cont.28343: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 36(sp) !1137
	addi	sp, sp, 48 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -48 !1137
	jal 	zero, bge_cont.28341 !1125
bge_else.28340: !1125
bge_cont.28341: !1125
	lw  	a0, 32(sp) !2215
	addi	a1, a0, -1 !2215
	lw  	a0, 4(sp) !2215
	lw  	ra, 0(sp)
	jal 	zero, init_dirvec_constants.2881 !2215
bge_else.28339: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28338: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28331: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28330: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_vecset_constants.2884:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.28350 !2220
	li  	a1, 1049292 !2221
	slli	t0, a0, 2 !2221
	add 	t0, t0, a1 !2221
	lw  	a1, 0(t0) !2221
	lw  	a2, 476(a1) !2214
	li  	a3, 1048576 !1142
	lw  	a3, 0(a3) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 4(sp) !1125
	sw  	a1, 8(sp) !1125
	blt 	a3, zero, bge_else.28351 !1125
	li  	a4, 1048624 !1126
	slli	t0, a3, 2 !1126
	add 	t0, t0, a4 !1126
	lw  	a4, 0(t0) !1126
	lw  	a5, 4(a2) !535
	lw  	a6, 0(a2) !529
	lw  	a7, 4(a4) !260
	sw  	a2, 12(sp) !1130
	addi	t0, zero, 1 !1130
	bne 	a7, t0, beq_else.28353 !1130
	sw  	a3, 16(sp) !1131
	sw  	a5, 20(sp) !1131
	addi	a1, a4, 0 !1131
	addi	a0, a6, 0 !1131
	addi	sp, sp, 24 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -24 !1131
	lw  	a1, 16(sp) !1131
	lw  	a2, 20(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.28354 !1130
beq_else.28353: !1130
	addi	t0, zero, 2 !1132
	bne 	a7, t0, beq_else.28355 !1132
	sw  	a3, 16(sp) !1133
	sw  	a5, 20(sp) !1133
	addi	a1, a4, 0 !1133
	addi	a0, a6, 0 !1133
	addi	sp, sp, 24 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -24 !1133
	lw  	a1, 16(sp) !1133
	lw  	a2, 20(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.28356 !1132
beq_else.28355: !1132
	sw  	a3, 16(sp) !1135
	sw  	a5, 20(sp) !1135
	addi	a1, a4, 0 !1135
	addi	a0, a6, 0 !1135
	addi	sp, sp, 24 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -24 !1135
	lw  	a1, 16(sp) !1135
	lw  	a2, 20(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.28356: !1132
beq_cont.28354: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 12(sp) !1137
	addi	sp, sp, 24 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -24 !1137
	jal 	zero, bge_cont.28352 !1125
bge_else.28351: !1125
bge_cont.28352: !1125
	lw  	a0, 8(sp) !2214
	lw  	a1, 472(a0) !2214
	li  	a2, 1048576 !1142
	lw  	a2, 0(a2) !1142
	addi	a2, a2, -1 !1142
	addi	a0, a1, 0 !1142
	addi	a1, a2, 0 !1142
	addi	sp, sp, 24 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -24 !1142
	lw  	a0, 8(sp) !2214
	lw  	a1, 468(a0) !2214
	li  	a2, 1048576 !1142
	lw  	a2, 0(a2) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_else.28357 !1125
	li  	a3, 1048624 !1126
	slli	t0, a2, 2 !1126
	add 	t0, t0, a3 !1126
	lw  	a3, 0(t0) !1126
	lw  	a4, 4(a1) !535
	lw  	a5, 0(a1) !529
	lw  	a6, 4(a3) !260
	sw  	a1, 24(sp) !1130
	addi	t0, zero, 1 !1130
	bne 	a6, t0, beq_else.28359 !1130
	sw  	a2, 28(sp) !1131
	sw  	a4, 32(sp) !1131
	addi	a1, a3, 0 !1131
	addi	a0, a5, 0 !1131
	addi	sp, sp, 36 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -36 !1131
	lw  	a1, 28(sp) !1131
	lw  	a2, 32(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.28360 !1130
beq_else.28359: !1130
	addi	t0, zero, 2 !1132
	bne 	a6, t0, beq_else.28361 !1132
	sw  	a2, 28(sp) !1133
	sw  	a4, 32(sp) !1133
	addi	a1, a3, 0 !1133
	addi	a0, a5, 0 !1133
	addi	sp, sp, 36 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -36 !1133
	lw  	a1, 28(sp) !1133
	lw  	a2, 32(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.28362 !1132
beq_else.28361: !1132
	sw  	a2, 28(sp) !1135
	sw  	a4, 32(sp) !1135
	addi	a1, a3, 0 !1135
	addi	a0, a5, 0 !1135
	addi	sp, sp, 36 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -36 !1135
	lw  	a1, 28(sp) !1135
	lw  	a2, 32(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.28362: !1132
beq_cont.28360: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 24(sp) !1137
	addi	sp, sp, 36 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -36 !1137
	jal 	zero, bge_cont.28358 !1125
bge_else.28357: !1125
bge_cont.28358: !1125
	addi	a1, zero, 116 !2215
	lw  	a0, 8(sp) !2215
	addi	sp, sp, 36 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -36 !2215
	lw  	a0, 4(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.28363 !2220
	li  	a1, 1049292 !2221
	slli	t0, a0, 2 !2221
	add 	t0, t0, a1 !2221
	lw  	a1, 0(t0) !2221
	lw  	a2, 476(a1) !2214
	li  	a3, 1048576 !1142
	lw  	a3, 0(a3) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 36(sp) !1142
	sw  	a1, 40(sp) !1142
	addi	a1, a3, 0 !1142
	addi	a0, a2, 0 !1142
	addi	sp, sp, 44 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -44 !1142
	lw  	a0, 40(sp) !2214
	lw  	a1, 472(a0) !2214
	li  	a2, 1048576 !1142
	lw  	a2, 0(a2) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_else.28364 !1125
	li  	a3, 1048624 !1126
	slli	t0, a2, 2 !1126
	add 	t0, t0, a3 !1126
	lw  	a3, 0(t0) !1126
	lw  	a4, 4(a1) !535
	lw  	a5, 0(a1) !529
	lw  	a6, 4(a3) !260
	sw  	a1, 44(sp) !1130
	addi	t0, zero, 1 !1130
	bne 	a6, t0, beq_else.28366 !1130
	sw  	a2, 48(sp) !1131
	sw  	a4, 52(sp) !1131
	addi	a1, a3, 0 !1131
	addi	a0, a5, 0 !1131
	addi	sp, sp, 56 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -56 !1131
	lw  	a1, 48(sp) !1131
	lw  	a2, 52(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.28367 !1130
beq_else.28366: !1130
	addi	t0, zero, 2 !1132
	bne 	a6, t0, beq_else.28368 !1132
	sw  	a2, 48(sp) !1133
	sw  	a4, 52(sp) !1133
	addi	a1, a3, 0 !1133
	addi	a0, a5, 0 !1133
	addi	sp, sp, 56 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -56 !1133
	lw  	a1, 48(sp) !1133
	lw  	a2, 52(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.28369 !1132
beq_else.28368: !1132
	sw  	a2, 48(sp) !1135
	sw  	a4, 52(sp) !1135
	addi	a1, a3, 0 !1135
	addi	a0, a5, 0 !1135
	addi	sp, sp, 56 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -56 !1135
	lw  	a1, 48(sp) !1135
	lw  	a2, 52(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.28369: !1132
beq_cont.28367: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 44(sp) !1137
	addi	sp, sp, 56 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -56 !1137
	jal 	zero, bge_cont.28365 !1125
bge_else.28364: !1125
bge_cont.28365: !1125
	addi	a1, zero, 117 !2215
	lw  	a0, 40(sp) !2215
	addi	sp, sp, 56 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -56 !2215
	lw  	a0, 36(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.28370 !2220
	li  	a1, 1049292 !2221
	slli	t0, a0, 2 !2221
	add 	t0, t0, a1 !2221
	lw  	a1, 0(t0) !2221
	lw  	a2, 476(a1) !2214
	li  	a3, 1048576 !1142
	lw  	a3, 0(a3) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 56(sp) !1125
	sw  	a1, 60(sp) !1125
	blt 	a3, zero, bge_else.28371 !1125
	li  	a4, 1048624 !1126
	slli	t0, a3, 2 !1126
	add 	t0, t0, a4 !1126
	lw  	a4, 0(t0) !1126
	lw  	a5, 4(a2) !535
	lw  	a6, 0(a2) !529
	lw  	a7, 4(a4) !260
	sw  	a2, 64(sp) !1130
	addi	t0, zero, 1 !1130
	bne 	a7, t0, beq_else.28373 !1130
	sw  	a3, 68(sp) !1131
	sw  	a5, 72(sp) !1131
	addi	a1, a4, 0 !1131
	addi	a0, a6, 0 !1131
	addi	sp, sp, 76 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -76 !1131
	lw  	a1, 68(sp) !1131
	lw  	a2, 72(sp) !1131
	slli	t0, a1, 2 !1131
	add 	t0, t0, a2 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.28374 !1130
beq_else.28373: !1130
	addi	t0, zero, 2 !1132
	bne 	a7, t0, beq_else.28375 !1132
	sw  	a3, 68(sp) !1133
	sw  	a5, 72(sp) !1133
	addi	a1, a4, 0 !1133
	addi	a0, a6, 0 !1133
	addi	sp, sp, 76 !1133
	jal 	ra, setup_surface_table.2653 !1133
	addi	sp, sp, -76 !1133
	lw  	a1, 68(sp) !1133
	lw  	a2, 72(sp) !1133
	slli	t0, a1, 2 !1133
	add 	t0, t0, a2 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.28376 !1132
beq_else.28375: !1132
	sw  	a3, 68(sp) !1135
	sw  	a5, 72(sp) !1135
	addi	a1, a4, 0 !1135
	addi	a0, a6, 0 !1135
	addi	sp, sp, 76 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -76 !1135
	lw  	a1, 68(sp) !1135
	lw  	a2, 72(sp) !1135
	slli	t0, a1, 2 !1135
	add 	t0, t0, a2 !1135
	sw  	a0, 0(t0) !1135
beq_cont.28376: !1132
beq_cont.28374: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 64(sp) !1137
	addi	sp, sp, 76 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -76 !1137
	jal 	zero, bge_cont.28372 !1125
bge_else.28371: !1125
bge_cont.28372: !1125
	addi	a1, zero, 118 !2215
	lw  	a0, 60(sp) !2215
	addi	sp, sp, 76 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -76 !2215
	lw  	a0, 56(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.28377 !2220
	li  	a1, 1049292 !2221
	slli	t0, a0, 2 !2221
	add 	t0, t0, a1 !2221
	lw  	a1, 0(t0) !2221
	addi	a2, zero, 119 !2221
	sw  	a0, 76(sp) !2221
	addi	a0, a1, 0 !2221
	addi	a1, a2, 0 !2221
	addi	sp, sp, 80 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -80 !2221
	lw  	a0, 76(sp) !2222
	addi	a0, a0, -1 !2222
	lw  	ra, 0(sp)
	jal 	zero, init_vecset_constants.2884 !2222
bge_else.28377: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28370: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28363: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28350: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_reflections.2901:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.28382 !2274
	li  	a1, 1048624 !2275
	slli	t0, a0, 2 !2275
	add 	t0, t0, a1 !2275
	lw  	a1, 0(t0) !2275
	lw  	a2, 8(a1) !270
	addi	t0, zero, 2 !2276
	bne 	a2, t0, beq_else.28383 !2276
	lw  	a2, 28(a1) !368
	flw  	fa0, 0(a2) !373
	li  	fa1, 1.000000 !2277
	fle 	t0, fa1, fa0 !121
	beq 	zero, t0, bne_else.28384 !121
	addi	a2, zero, 0 !121
	jal 	zero, bne_cont.28385 !121
bne_else.28384: !121
	addi	a2, zero, 1 !121
bne_cont.28385: !121
	bne 	a2, zero, beq_else.28386 !2277
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.28386: !2277
	lw  	a2, 4(a1) !260
	addi	t0, zero, 1 !2280
	bne 	a2, t0, beq_else.28388 !2280
	slli	a0, a0, 2 !2245
	li  	a2, 1050312 !2246
	lw  	a2, 0(a2) !2246
	li  	fa0, 1.000000 !2247
	lw  	a1, 28(a1) !368
	flw  	fa1, 0(a1) !373
	fsub	fa0, fa0, fa1 !2247
	li  	a1, 1048888 !2248
	lw  	fa1, 0(a1) !2248
	sw  	a2, 4(sp) !2248
	fsw 	fa0, 8(sp) !2248
	sw  	a0, 16(sp) !2248
	fsgnj   fa0, fa1, fa1 !2248
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1048888 !2249
	lw  	fa1, 4(a0) !2249
	fsw 	fa0, 24(sp) !2249
	fsgnj   fa0, fa1, fa1 !2249
	fsgnjn  fa0, fa0, fa0
	li  	a0, 1048888 !2250
	lw  	fa1, 8(a0) !2250
	fsw 	fa0, 32(sp) !2250
	fsgnj   fa0, fa1, fa1 !2250
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 16(sp) !2251
	addi	a1, a0, 1 !2251
	li  	a2, 1048888 !2251
	lw  	fa1, 0(a2) !2251
	addi	a2, zero, 3 !2190
	li  	fa2, 0.000000 !2190
	sw  	a1, 40(sp) !2190
	fsw 	fa0, 48(sp) !2190
	fsw 	fa1, 56(sp) !2190
	addi	a0, a2, 0 !2190
	fsgnj   fa0, fa2, fa2 !2190
	addi	sp, sp, 64 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -64 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 64(sp) !2191
	addi	sp, sp, 68 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -68 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 64(sp) !2192
	sw  	a0, 0(a1) !2192
	flw  	fa0, 56(sp) !169
	fsw  	fa0, 0(a0) !169
	flw  	fa0, 32(sp) !170
	fsw  	fa0, 4(a0) !170
	flw  	fa1, 48(sp) !171
	fsw  	fa1, 8(a0) !171
	li  	a0, 1048576 !1142
	lw  	a0, 0(a0) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 68(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 72 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -72 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 12 !2240
	flw  	fa0, 8(sp) !2240
	fsw  	fa0, 8(a0) !2240
	lw  	a1, 68(sp) !2240
	sw  	a1, 4(a0) !2240
	lw  	a1, 40(sp) !2240
	sw  	a1, 0(a0) !2240
	li  	a1, 1049592 !2240
	lw  	a2, 4(sp) !2240
	slli	t0, a2, 2 !2240
	add 	t0, t0, a1 !2240
	sw  	a0, 0(t0) !2240
	addi	a0, a2, 1 !2252
	lw  	a1, 16(sp) !2252
	addi	a3, a1, 2 !2252
	li  	a4, 1048888 !2252
	lw  	fa1, 4(a4) !2252
	addi	a4, zero, 3 !2190
	li  	fa2, 0.000000 !2190
	sw  	a0, 72(sp) !2190
	sw  	a3, 76(sp) !2190
	fsw 	fa1, 80(sp) !2190
	addi	a0, a4, 0 !2190
	fsgnj   fa0, fa2, fa2 !2190
	addi	sp, sp, 88 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -88 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 88(sp) !2191
	addi	sp, sp, 92 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -92 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 88(sp) !2192
	sw  	a0, 0(a1) !2192
	flw  	fa0, 24(sp) !169
	fsw  	fa0, 0(a0) !169
	flw  	fa1, 80(sp) !170
	fsw  	fa1, 4(a0) !170
	flw  	fa1, 48(sp) !171
	fsw  	fa1, 8(a0) !171
	li  	a0, 1048576 !1142
	lw  	a0, 0(a0) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 92(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 96 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -96 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 12 !2240
	flw  	fa0, 8(sp) !2240
	fsw  	fa0, 8(a0) !2240
	lw  	a1, 92(sp) !2240
	sw  	a1, 4(a0) !2240
	lw  	a1, 76(sp) !2240
	sw  	a1, 0(a0) !2240
	li  	a1, 1049592 !2240
	lw  	a2, 72(sp) !2240
	slli	t0, a2, 2 !2240
	add 	t0, t0, a1 !2240
	sw  	a0, 0(t0) !2240
	lw  	a0, 4(sp) !2253
	addi	a1, a0, 2 !2253
	lw  	a2, 16(sp) !2253
	addi	a2, a2, 3 !2253
	li  	a3, 1048888 !2253
	lw  	fa1, 8(a3) !2253
	addi	a3, zero, 3 !2190
	li  	fa2, 0.000000 !2190
	sw  	a1, 96(sp) !2190
	sw  	a2, 100(sp) !2190
	fsw 	fa1, 104(sp) !2190
	addi	a0, a3, 0 !2190
	fsgnj   fa0, fa2, fa2 !2190
	addi	sp, sp, 112 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -112 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 112(sp) !2191
	addi	sp, sp, 116 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -116 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 112(sp) !2192
	sw  	a0, 0(a1) !2192
	flw  	fa0, 24(sp) !169
	fsw  	fa0, 0(a0) !169
	flw  	fa0, 32(sp) !170
	fsw  	fa0, 4(a0) !170
	flw  	fa0, 104(sp) !171
	fsw  	fa0, 8(a0) !171
	li  	a0, 1048576 !1142
	lw  	a0, 0(a0) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 116(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 120 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -120 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 12 !2240
	flw  	fa0, 8(sp) !2240
	fsw  	fa0, 8(a0) !2240
	lw  	a1, 116(sp) !2240
	sw  	a1, 4(a0) !2240
	lw  	a1, 100(sp) !2240
	sw  	a1, 0(a0) !2240
	li  	a1, 1049592 !2240
	lw  	a2, 96(sp) !2240
	slli	t0, a2, 2 !2240
	add 	t0, t0, a1 !2240
	sw  	a0, 0(t0) !2240
	lw  	a0, 4(sp) !2254
	addi	a0, a0, 3 !2254
	li  	a1, 1050312 !2254
	sw  	a0, 0(a1) !2254
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.28388: !2280
	addi	t0, zero, 2 !2282
	bne 	a2, t0, beq_else.28392 !2282
	slli	a0, a0, 2 !2259
	addi	a0, a0, 1 !2259
	li  	a2, 1050312 !2260
	lw  	a2, 0(a2) !2260
	li  	fa0, 1.000000 !2261
	lw  	a3, 28(a1) !368
	flw  	fa1, 0(a3) !373
	fsub	fa0, fa0, fa1 !2261
	lw  	a3, 16(a1) !328
	li  	a4, 1048888 !208
	lw  	fa1, 0(a4) !208
	flw  	fa2, 0(a3) !208
	fmul	fa1, fa1, fa2 !208
	li  	a4, 1048888 !208
	lw  	fa2, 4(a4) !208
	flw  	fa3, 4(a3) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	li  	a4, 1048888 !208
	lw  	fa2, 8(a4) !208
	flw  	fa3, 8(a3) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	li  	fa2, 2.000000 !2265
	lw  	a3, 16(a1) !298
	flw  	fa3, 0(a3) !303
	fmul	fa2, fa2, fa3 !2265
	fmul	fa2, fa2, fa1 !2265
	li  	a3, 1048888 !2265
	lw  	fa3, 0(a3) !2265
	fsub	fa2, fa2, fa3 !2265
	li  	fa3, 2.000000 !2266
	lw  	a3, 16(a1) !308
	flw  	fa4, 4(a3) !313
	fmul	fa3, fa3, fa4 !2266
	fmul	fa3, fa3, fa1 !2266
	li  	a3, 1048888 !2266
	lw  	fa4, 4(a3) !2266
	fsub	fa3, fa3, fa4 !2266
	li  	fa4, 2.000000 !2267
	lw  	a1, 16(a1) !318
	flw  	fa5, 8(a1) !323
	fmul	fa4, fa4, fa5 !2267
	fmul	fa4, fa4, fa1 !2267
	li  	a1, 1048888 !2267
	lw  	fa1, 8(a1) !2267
	fsub	fa4, fa4, fa1 !2267
	addi	a1, zero, 3 !2190
	li  	fa1, 0.000000 !2190
	sw  	a2, 120(sp) !2190
	sw  	a0, 124(sp) !2190
	fsw 	fa0, 128(sp) !2190
	fsw 	fa4, 136(sp) !2190
	fsw 	fa3, 144(sp) !2190
	fsw 	fa2, 152(sp) !2190
	addi	a0, a1, 0 !2190
	fsgnj   fa0, fa1, fa1 !2190
	addi	sp, sp, 160 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -160 !2190
	addi	a1, a0, 0 !2190
	li  	a0, 1048576 !2191
	lw  	a0, 0(a0) !2191
	sw  	a1, 160(sp) !2191
	addi	sp, sp, 164 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -164 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 8 !2192
	sw  	a0, 4(a1) !2192
	lw  	a0, 160(sp) !2192
	sw  	a0, 0(a1) !2192
	flw  	fa0, 152(sp) !169
	fsw  	fa0, 0(a0) !169
	flw  	fa0, 144(sp) !170
	fsw  	fa0, 4(a0) !170
	flw  	fa0, 136(sp) !171
	fsw  	fa0, 8(a0) !171
	li  	a0, 1048576 !1142
	lw  	a0, 0(a0) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 164(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 168 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -168 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 12 !2240
	flw  	fa0, 128(sp) !2240
	fsw  	fa0, 8(a0) !2240
	lw  	a1, 164(sp) !2240
	sw  	a1, 4(a0) !2240
	lw  	a1, 124(sp) !2240
	sw  	a1, 0(a0) !2240
	li  	a1, 1049592 !2240
	lw  	a2, 120(sp) !2240
	slli	t0, a2, 2 !2240
	add 	t0, t0, a1 !2240
	sw  	a0, 0(t0) !2240
	addi	a2, a2, 1 !2268
	li  	a0, 1050312 !2268
	sw  	a2, 0(a0) !2268
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.28392: !2282
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.28383: !2276
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.28382: !2274
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
_min_caml_finish: