_min_caml_start:
	li  	ra, _min_caml_finish
	li  	sp, 262144
	li  	gp, 0
	sw  	ra, 0(sp)
	addi	sp, sp, 1
	addi	a0, zero, 1 !6
	addi	a1, zero, 0 !6
	jal 	ra, create_array !6
	addi	a0, zero, 0 !11
	addi	fa0, zero, 0
	jal 	ra, create_float_array !11
	addi	a1, zero, 60 !12
	addi	a2, zero, 0 !12
	addi	a3, zero, 0 !12
	addi	a4, zero, 0 !12
	addi	a5, zero, 0 !12
	addi	a6, zero, 0 !12
	addi	a7, gp, 0 !12
	addi	gp, gp, 11 !12
	sw  	a0, 10(a7) !12
	sw  	a0, 9(a7) !12
	sw  	a0, 8(a7) !12
	sw  	a0, 7(a7) !12
	sw  	a6, 6(a7) !12
	sw  	a0, 5(a7) !12
	sw  	a0, 4(a7) !12
	sw  	a5, 3(a7) !12
	sw  	a4, 2(a7) !12
	sw  	a3, 1(a7) !12
	sw  	a2, 0(a7) !12
	addi	a0, a7, 0 !12
	addi	t0, a1, 0 !12
	addi	a1, a0, 0 !12
	addi	a0, t0, 0 !12
	jal 	ra, create_array !12
	addi	a0, zero, 3 !16
	addi	fa0, zero, 0
	jal 	ra, create_float_array !16
	addi	a0, zero, 3 !19
	addi	fa0, zero, 0
	jal 	ra, create_float_array !19
	addi	a0, zero, 3 !22
	addi	fa0, zero, 0
	jal 	ra, create_float_array !22
	addi	a0, zero, 1 !25
	li  	fa0, 255.000000 !25
	jal 	ra, create_float_array !25
	addi	a0, zero, 50 !28
	sw  	a0, 0(sp) !28
	addi	a0, zero, 1 !28
	addi	a1, zero, -1 !28
	addi	sp, sp, 4 !28
	jal 	ra, create_array !28
	addi	sp, sp, -4 !28
	addi	a1, a0, 0 !28
	lw  	a0, 0(sp) !28
	addi	sp, sp, 4 !28
	jal 	ra, create_array !28
	addi	sp, sp, -4 !28
	addi	a0, zero, 1 !31
	sw  	a0, 1(sp) !31
	addi	a0, zero, 1 !31
	lw  	a1, 83(zero) !31
	addi	sp, sp, 4 !31
	jal 	ra, create_array !31
	addi	sp, sp, -4 !31
	addi	a1, a0, 0 !31
	lw  	a0, 1(sp) !31
	addi	sp, sp, 4 !31
	jal 	ra, create_array !31
	addi	sp, sp, -4 !31
	addi	a0, zero, 1 !36
	addi	fa0, zero, 0
	addi	sp, sp, 4 !36
	jal 	ra, create_float_array !36
	addi	sp, sp, -4 !36
	addi	a0, zero, 1 !39
	addi	a1, zero, 0 !39
	addi	sp, sp, 4 !39
	jal 	ra, create_array !39
	addi	sp, sp, -4 !39
	addi	a0, zero, 1 !42
	li  	fa0, 1000000000.000000 !42
	addi	sp, sp, 4 !42
	jal 	ra, create_float_array !42
	addi	sp, sp, -4 !42
	addi	a0, zero, 3 !45
	addi	fa0, zero, 0
	addi	sp, sp, 4 !45
	jal 	ra, create_float_array !45
	addi	sp, sp, -4 !45
	addi	a0, zero, 1 !48
	addi	a1, zero, 0 !48
	addi	sp, sp, 4 !48
	jal 	ra, create_array !48
	addi	sp, sp, -4 !48
	addi	a0, zero, 3 !51
	addi	fa0, zero, 0
	addi	sp, sp, 4 !51
	jal 	ra, create_float_array !51
	addi	sp, sp, -4 !51
	addi	a0, zero, 3 !54
	addi	fa0, zero, 0
	addi	sp, sp, 4 !54
	jal 	ra, create_float_array !54
	addi	sp, sp, -4 !54
	addi	a0, zero, 3 !58
	addi	fa0, zero, 0
	addi	sp, sp, 4 !58
	jal 	ra, create_float_array !58
	addi	sp, sp, -4 !58
	addi	a0, zero, 3 !61
	addi	fa0, zero, 0
	addi	sp, sp, 4 !61
	jal 	ra, create_float_array !61
	addi	sp, sp, -4 !61
	addi	a0, zero, 2 !65
	addi	a1, zero, 0 !65
	addi	sp, sp, 4 !65
	jal 	ra, create_array !65
	addi	sp, sp, -4 !65
	addi	a0, zero, 2 !68
	addi	a1, zero, 0 !68
	addi	sp, sp, 4 !68
	jal 	ra, create_array !68
	addi	sp, sp, -4 !68
	addi	a0, zero, 1 !71
	addi	fa0, zero, 0
	addi	sp, sp, 4 !71
	jal 	ra, create_float_array !71
	addi	sp, sp, -4 !71
	addi	a0, zero, 3 !75
	addi	fa0, zero, 0
	addi	sp, sp, 4 !75
	jal 	ra, create_float_array !75
	addi	sp, sp, -4 !75
	addi	a0, zero, 3 !78
	addi	fa0, zero, 0
	addi	sp, sp, 4 !78
	jal 	ra, create_float_array !78
	addi	sp, sp, -4 !78
	addi	a0, zero, 3 !82
	addi	fa0, zero, 0
	addi	sp, sp, 4 !82
	jal 	ra, create_float_array !82
	addi	sp, sp, -4 !82
	addi	a0, zero, 3 !84
	addi	fa0, zero, 0
	addi	sp, sp, 4 !84
	jal 	ra, create_float_array !84
	addi	sp, sp, -4 !84
	addi	a0, zero, 3 !86
	addi	fa0, zero, 0
	addi	sp, sp, 4 !86
	jal 	ra, create_float_array !86
	addi	sp, sp, -4 !86
	addi	a0, zero, 3 !90
	addi	fa0, zero, 0
	addi	sp, sp, 4 !90
	jal 	ra, create_float_array !90
	addi	sp, sp, -4 !90
	addi	a0, zero, 0 !95
	addi	fa0, zero, 0
	addi	sp, sp, 4 !95
	jal 	ra, create_float_array !95
	addi	sp, sp, -4 !95
	addi	a1, a0, 0 !95
	addi	a0, zero, 0 !96
	sw  	a1, 2(sp) !96
	addi	sp, sp, 4 !96
	jal 	ra, create_array !96
	addi	sp, sp, -4 !96
	addi	a1, zero, 0 !97
	addi	a2, gp, 0 !97
	addi	gp, gp, 2 !97
	sw  	a0, 1(a2) !97
	lw  	a0, 2(sp) !97
	sw  	a0, 0(a2) !97
	addi	a0, a2, 0 !97
	addi	t0, a1, 0 !97
	addi	a1, a0, 0 !97
	addi	a0, t0, 0 !97
	addi	sp, sp, 4 !97
	jal 	ra, create_array !97
	addi	sp, sp, -4 !97
	addi	a1, a0, 0 !97
	addi	a0, zero, 5 !98
	addi	sp, sp, 4 !98
	jal 	ra, create_array !98
	addi	sp, sp, -4 !98
	addi	a0, zero, 0 !103
	addi	fa0, zero, 0
	addi	sp, sp, 4 !103
	jal 	ra, create_float_array !103
	addi	sp, sp, -4 !103
	sw  	a0, 3(sp) !104
	addi	a0, zero, 3 !104
	addi	fa0, zero, 0
	addi	sp, sp, 4 !104
	jal 	ra, create_float_array !104
	addi	sp, sp, -4 !104
	sw  	a0, 4(sp) !105
	addi	a0, zero, 60 !105
	lw  	a1, 3(sp) !105
	addi	sp, sp, 8 !105
	jal 	ra, create_array !105
	addi	sp, sp, -8 !105
	addi	a1, gp, 0 !106
	addi	gp, gp, 2 !106
	sw  	a0, 1(a1) !106
	lw  	a0, 4(sp) !106
	sw  	a0, 0(a1) !106
	addi	a0, a1, 0 !106
	addi	a0, zero, 0 !111
	addi	fa0, zero, 0
	addi	sp, sp, 8 !111
	jal 	ra, create_float_array !111
	addi	sp, sp, -8 !111
	addi	a1, a0, 0 !111
	addi	a0, zero, 0 !112
	sw  	a1, 5(sp) !112
	addi	sp, sp, 8 !112
	jal 	ra, create_array !112
	addi	sp, sp, -8 !112
	addi	a1, gp, 0 !113
	addi	gp, gp, 2 !113
	sw  	a0, 1(a1) !113
	lw  	a0, 5(sp) !113
	sw  	a0, 0(a1) !113
	addi	a0, a1, 0 !113
	addi	a1, zero, 180 !114
	addi	a2, zero, 0 !114
	addi	fa0, zero, 0
	addi	a3, gp, 0 !114
	addi	gp, gp, 3 !114
	sw  	fa0, 2(a3) !114
	sw  	a0, 1(a3) !114
	sw  	a2, 0(a3) !114
	addi	a0, a3, 0 !114
	addi	t0, a1, 0 !114
	addi	a1, a0, 0 !114
	addi	a0, t0, 0 !114
	addi	sp, sp, 8 !114
	jal 	ra, create_array !114
	addi	sp, sp, -8 !114
	addi	a0, zero, 1 !118
	addi	a1, zero, 0 !118
	addi	sp, sp, 8 !118
	jal 	ra, create_array !118
	addi	sp, sp, -8 !118
	addi	a0, zero, 128 !2314
	addi	a1, zero, 128 !2314
	addi	a2, zero, 6 !2314
	sw  	a0, 154(zero) !2294
	sw  	a1, 155(zero) !2295
	addi	a0, zero, 64 !2296
	sw  	a0, 156(zero) !2296
	addi	a0, zero, 64 !2297
	sw  	a0, 157(zero) !2297
	li  	fa0, 1.000000 !2298
	sw  	fa0, 158(zero) !2298
	lw  	a0, 154(zero) !2121
	sw  	a0, 6(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	sw  	a2, 7(sp) !2099
	addi	sp, sp, 8 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -8 !2099
	sw  	a0, 8(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -12 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 12 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -12 !2088
	sw  	a0, 9(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -12 !2089
	lw  	a1, 9(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -12 !2090
	lw  	a1, 9(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -12 !2091
	lw  	a1, 9(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -12 !2092
	lw  	a1, 9(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 12 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -12 !2101
	sw  	a0, 10(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 12 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -12 !2102
	sw  	a0, 11(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -12 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 12 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -12 !2088
	sw  	a0, 12(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -16 !2089
	lw  	a1, 12(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -16 !2090
	lw  	a1, 12(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -16 !2091
	lw  	a1, 12(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -16 !2092
	lw  	a1, 12(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -16 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 16 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -16 !2088
	sw  	a0, 13(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -16 !2089
	lw  	a1, 13(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -16 !2090
	lw  	a1, 13(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -16 !2091
	lw  	a1, 13(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -16 !2092
	lw  	a1, 13(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 16 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -16 !2105
	sw  	a0, 14(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -16 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 16 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -16 !2088
	sw  	a0, 15(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -16 !2089
	lw  	a1, 15(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -16 !2090
	lw  	a1, 15(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -16 !2091
	lw  	a1, 15(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -16 !2092
	lw  	a1, 15(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 14(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 13(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 12(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 11(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 10(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 9(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 8(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 6(sp) !2121
	addi	sp, sp, 16 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -16 !2121
	lw  	a1, 154(zero) !2122
	addi	a1, a1, -2 !2122
	blt 	a1, zero, bge_else.40421 !2112
	sw  	a1, 16(sp) !2113
	sw  	a0, 17(sp) !2113
	addi	sp, sp, 20 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -20 !2113
	lw  	a1, 16(sp) !2113
	lw  	a2, 17(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	addi	sp, sp, 20 !2114
	jal 	ra, init_line_elements.2847 !2114
	addi	sp, sp, -20 !2114
	jal 	zero, bge_cont.40422 !2112
bge_else.40421: !2112
bge_cont.40422: !2112
	sw  	a0, 18(sp) !2121
	lw  	a0, 154(zero) !2121
	sw  	a0, 19(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -20 !2099
	sw  	a0, 20(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -24 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 24 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -24 !2088
	sw  	a0, 21(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -24 !2089
	lw  	a1, 21(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -24 !2090
	lw  	a1, 21(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -24 !2091
	lw  	a1, 21(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -24 !2092
	lw  	a1, 21(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 24 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -24 !2101
	sw  	a0, 22(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 24 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -24 !2102
	sw  	a0, 23(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -24 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 24 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -24 !2088
	sw  	a0, 24(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -28 !2089
	lw  	a1, 24(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -28 !2090
	lw  	a1, 24(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -28 !2091
	lw  	a1, 24(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -28 !2092
	lw  	a1, 24(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -28 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 28 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -28 !2088
	sw  	a0, 25(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -28 !2089
	lw  	a1, 25(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -28 !2090
	lw  	a1, 25(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -28 !2091
	lw  	a1, 25(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -28 !2092
	lw  	a1, 25(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 28 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -28 !2105
	sw  	a0, 26(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -28 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 28 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -28 !2088
	sw  	a0, 27(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -28 !2089
	lw  	a1, 27(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -28 !2090
	lw  	a1, 27(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -28 !2091
	lw  	a1, 27(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -28 !2092
	lw  	a1, 27(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 26(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 25(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 24(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 23(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 22(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 21(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 20(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 19(sp) !2121
	addi	sp, sp, 28 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -28 !2121
	lw  	a1, 154(zero) !2122
	addi	a1, a1, -2 !2122
	blt 	a1, zero, bge_else.40423 !2112
	sw  	a1, 28(sp) !2113
	sw  	a0, 29(sp) !2113
	addi	sp, sp, 32 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -32 !2113
	lw  	a1, 28(sp) !2113
	lw  	a2, 29(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	addi	sp, sp, 32 !2114
	jal 	ra, init_line_elements.2847 !2114
	addi	sp, sp, -32 !2114
	jal 	zero, bge_cont.40424 !2112
bge_else.40423: !2112
bge_cont.40424: !2112
	sw  	a0, 30(sp) !2121
	lw  	a0, 154(zero) !2121
	sw  	a0, 31(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -32 !2099
	sw  	a0, 32(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -36 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 36 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -36 !2088
	sw  	a0, 33(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -36 !2089
	lw  	a1, 33(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -36 !2090
	lw  	a1, 33(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -36 !2091
	lw  	a1, 33(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -36 !2092
	lw  	a1, 33(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 36 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -36 !2101
	sw  	a0, 34(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 36 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -36 !2102
	sw  	a0, 35(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -36 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 36 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -36 !2088
	sw  	a0, 36(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -40 !2089
	lw  	a1, 36(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -40 !2090
	lw  	a1, 36(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -40 !2091
	lw  	a1, 36(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -40 !2092
	lw  	a1, 36(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -40 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 40 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -40 !2088
	sw  	a0, 37(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -40 !2089
	lw  	a1, 37(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -40 !2090
	lw  	a1, 37(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -40 !2091
	lw  	a1, 37(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -40 !2092
	lw  	a1, 37(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 40 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -40 !2105
	sw  	a0, 38(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -40 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 40 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -40 !2088
	sw  	a0, 39(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -40 !2089
	lw  	a1, 39(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -40 !2090
	lw  	a1, 39(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -40 !2091
	lw  	a1, 39(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -40 !2092
	lw  	a1, 39(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 38(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 37(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 36(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 35(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 34(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 33(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 32(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 31(sp) !2121
	addi	sp, sp, 40 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -40 !2121
	lw  	a1, 154(zero) !2122
	addi	a1, a1, -2 !2122
	blt 	a1, zero, bge_else.40425 !2112
	sw  	a1, 40(sp) !2113
	sw  	a0, 41(sp) !2113
	addi	sp, sp, 44 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -44 !2113
	lw  	a1, 40(sp) !2113
	lw  	a2, 41(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	addi	sp, sp, 44 !2114
	jal 	ra, init_line_elements.2847 !2114
	addi	sp, sp, -44 !2114
	jal 	zero, bge_cont.40426 !2112
bge_else.40425: !2112
bge_cont.40426: !2112
	sw  	a0, 42(sp) !790
	addi	sp, sp, 44 !790
	jal 	ra, read_screen_settings.2545 !790
	addi	sp, sp, -44 !790
	addi	sp, sp, 44 !602
	jal 	ra, read_int !602
	addi	sp, sp, -44 !602
	addi	sp, sp, 44 !605
	jal 	ra, read_float !605
	addi	sp, sp, -44 !605
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 43(sp) !606
	addi	sp, sp, 44 !606
	jal 	ra, sin !606
	addi	sp, sp, -44 !606
	fsgnjn  fa0, fa0, fa0 !607
	sw  	fa0, 79(zero) !607
	addi	sp, sp, 44 !608
	jal 	ra, read_float !608
	addi	sp, sp, -44 !608
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 44(sp) !609
	lw  	fa0, 43(sp) !609
	addi	sp, sp, 48 !609
	jal 	ra, cos !609
	addi	sp, sp, -48 !609
	sw  	fa0, 45(sp) !610
	lw  	fa0, 44(sp) !610
	addi	sp, sp, 48 !610
	jal 	ra, sin !610
	addi	sp, sp, -48 !610
	lw  	fa1, 45(sp) !611
	fmul	fa0, fa1, fa0 !611
	sw  	fa0, 78(zero) !611
	lw  	fa0, 44(sp) !612
	addi	sp, sp, 48 !612
	jal 	ra, cos !612
	addi	sp, sp, -48 !612
	lw  	fa1, 45(sp) !613
	fmul	fa0, fa1, fa0 !613
	sw  	fa0, 80(zero) !613
	addi	sp, sp, 48 !614
	jal 	ra, read_float !614
	addi	sp, sp, -48 !614
	sw  	fa0, 81(zero) !614
	addi	a0, zero, 0 !756
	sw  	a0, 46(sp) !748
	addi	sp, sp, 48 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -48 !748
	bne 	a0, zero, beq_else.40427 !748
	lw  	a0, 46(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40428 !748
beq_else.40427: !748
	addi	a0, zero, 1 !749
	sw  	a0, 47(sp) !748
	addi	sp, sp, 48 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -48 !748
	bne 	a0, zero, beq_else.40429 !748
	lw  	a0, 47(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40430 !748
beq_else.40429: !748
	addi	a0, zero, 2 !749
	sw  	a0, 48(sp) !748
	addi	sp, sp, 52 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -52 !748
	bne 	a0, zero, beq_else.40431 !748
	lw  	a0, 48(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40432 !748
beq_else.40431: !748
	addi	a0, zero, 3 !749
	sw  	a0, 49(sp) !748
	addi	sp, sp, 52 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -52 !748
	bne 	a0, zero, beq_else.40433 !748
	lw  	a0, 49(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40434 !748
beq_else.40433: !748
	addi	a0, zero, 4 !749
	sw  	a0, 50(sp) !748
	addi	sp, sp, 52 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -52 !748
	bne 	a0, zero, beq_else.40435 !748
	lw  	a0, 50(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40436 !748
beq_else.40435: !748
	addi	a0, zero, 5 !749
	sw  	a0, 51(sp) !748
	addi	sp, sp, 52 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -52 !748
	bne 	a0, zero, beq_else.40437 !748
	lw  	a0, 51(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40438 !748
beq_else.40437: !748
	addi	a0, zero, 6 !749
	sw  	a0, 52(sp) !748
	addi	sp, sp, 56 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -56 !748
	bne 	a0, zero, beq_else.40439 !748
	lw  	a0, 52(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40440 !748
beq_else.40439: !748
	addi	a0, zero, 7 !749
	sw  	a0, 53(sp) !748
	addi	sp, sp, 56 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -56 !748
	bne 	a0, zero, beq_else.40441 !748
	lw  	a0, 53(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40442 !748
beq_else.40441: !748
	addi	a0, zero, 8 !749
	sw  	a0, 54(sp) !748
	addi	sp, sp, 56 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -56 !748
	bne 	a0, zero, beq_else.40443 !748
	lw  	a0, 54(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40444 !748
beq_else.40443: !748
	addi	a0, zero, 9 !749
	sw  	a0, 55(sp) !748
	addi	sp, sp, 56 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -56 !748
	bne 	a0, zero, beq_else.40445 !748
	lw  	a0, 55(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40446 !748
beq_else.40445: !748
	addi	a0, zero, 10 !749
	sw  	a0, 56(sp) !748
	addi	sp, sp, 60 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -60 !748
	bne 	a0, zero, beq_else.40447 !748
	lw  	a0, 56(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40448 !748
beq_else.40447: !748
	addi	a0, zero, 11 !749
	sw  	a0, 57(sp) !748
	addi	sp, sp, 60 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -60 !748
	bne 	a0, zero, beq_else.40449 !748
	lw  	a0, 57(sp) !751
	sw  	a0, 0(zero) !751
	jal 	zero, beq_cont.40450 !748
beq_else.40449: !748
	addi	a0, zero, 12 !749
	addi	sp, sp, 60 !749
	jal 	ra, read_object.2554 !749
	addi	sp, sp, -60 !749
beq_cont.40450: !748
beq_cont.40448: !748
beq_cont.40446: !748
beq_cont.40444: !748
beq_cont.40442: !748
beq_cont.40440: !748
beq_cont.40438: !748
beq_cont.40436: !748
beq_cont.40434: !748
beq_cont.40432: !748
beq_cont.40430: !748
beq_cont.40428: !748
	addi	sp, sp, 60 !763
	jal 	ra, read_int !763
	addi	sp, sp, -60 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40451 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 60 !764
	jal 	ra, create_array !764
	addi	sp, sp, -60 !764
	jal 	zero, beq_cont.40452 !764
beq_else.40451: !764
	sw  	a0, 58(sp) !763
	addi	sp, sp, 60 !763
	jal 	ra, read_int !763
	addi	sp, sp, -60 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40453 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 60 !764
	jal 	ra, create_array !764
	addi	sp, sp, -60 !764
	jal 	zero, beq_cont.40454 !764
beq_else.40453: !764
	sw  	a0, 59(sp) !763
	addi	sp, sp, 60 !763
	jal 	ra, read_int !763
	addi	sp, sp, -60 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40455 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 60 !764
	jal 	ra, create_array !764
	addi	sp, sp, -60 !764
	jal 	zero, beq_cont.40456 !764
beq_else.40455: !764
	sw  	a0, 60(sp) !763
	addi	sp, sp, 64 !763
	jal 	ra, read_int !763
	addi	sp, sp, -64 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40457 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 64 !764
	jal 	ra, create_array !764
	addi	sp, sp, -64 !764
	jal 	zero, beq_cont.40458 !764
beq_else.40457: !764
	sw  	a0, 61(sp) !766
	addi	a0, zero, 4 !766
	addi	sp, sp, 64 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -64 !766
	lw  	a1, 61(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40458: !764
	lw  	a1, 60(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40456: !764
	lw  	a1, 59(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40454: !764
	lw  	a1, 58(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.40452: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.40460 !781
	sw  	a0, 83(zero) !783
	addi	a0, zero, 1 !784
	addi	sp, sp, 64 !784
	jal 	ra, read_and_network.2562 !784
	addi	sp, sp, -64 !784
beq_cont.40460: !781
	addi	sp, sp, 64 !763
	jal 	ra, read_int !763
	addi	sp, sp, -64 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40461 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 64 !764
	jal 	ra, create_array !764
	addi	sp, sp, -64 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.40462 !764
beq_else.40461: !764
	sw  	a0, 62(sp) !763
	addi	sp, sp, 64 !763
	jal 	ra, read_int !763
	addi	sp, sp, -64 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40463 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 64 !764
	jal 	ra, create_array !764
	addi	sp, sp, -64 !764
	jal 	zero, beq_cont.40464 !764
beq_else.40463: !764
	sw  	a0, 63(sp) !763
	addi	sp, sp, 64 !763
	jal 	ra, read_int !763
	addi	sp, sp, -64 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40465 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 64 !764
	jal 	ra, create_array !764
	addi	sp, sp, -64 !764
	jal 	zero, beq_cont.40466 !764
beq_else.40465: !764
	sw  	a0, 64(sp) !763
	addi	sp, sp, 68 !763
	jal 	ra, read_int !763
	addi	sp, sp, -68 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40467 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 68 !764
	jal 	ra, create_array !764
	addi	sp, sp, -68 !764
	jal 	zero, beq_cont.40468 !764
beq_else.40467: !764
	sw  	a0, 65(sp) !766
	addi	a0, zero, 4 !766
	addi	sp, sp, 68 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -68 !766
	lw  	a1, 65(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40468: !764
	lw  	a1, 64(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40466: !764
	lw  	a1, 63(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40464: !764
	lw  	a1, 62(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.40462: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40469 !772
	addi	a0, zero, 1 !773
	addi	sp, sp, 68 !773
	jal 	ra, create_array !773
	addi	sp, sp, -68 !773
	jal 	zero, beq_cont.40470 !772
beq_else.40469: !772
	addi	a0, zero, 1 !775
	sw  	a1, 66(sp) !775
	addi	sp, sp, 68 !775
	jal 	ra, read_or_network.2560 !775
	addi	sp, sp, -68 !775
	lw  	a1, 66(sp) !776
	sw  	a1, 0(a0) !776
beq_cont.40470: !772
	sw  	a0, 134(zero) !794
	addi	a0, zero, 80 !1938
	addi	sp, sp, 68 !1938
	jal 	ra, print_char !1938
	addi	sp, sp, -68 !1938
	addi	a0, zero, 54 !1939
	addi	sp, sp, 68 !1939
	jal 	ra, print_char !1939
	addi	sp, sp, -68 !1939
	addi	a0, zero, 10 !1940
	addi	sp, sp, 68 !1940
	jal 	ra, print_char !1940
	addi	sp, sp, -68 !1940
	lw  	a0, 154(zero) !1941
	addi	sp, sp, 68 !1941
	jal 	ra, print_int !1941
	addi	sp, sp, -68 !1941
	addi	a0, zero, 32 !1942
	addi	sp, sp, 68 !1942
	jal 	ra, print_char !1942
	addi	sp, sp, -68 !1942
	lw  	a0, 155(zero) !1943
	addi	sp, sp, 68 !1943
	jal 	ra, print_int !1943
	addi	sp, sp, -68 !1943
	addi	a0, zero, 32 !1944
	addi	sp, sp, 68 !1944
	jal 	ra, print_char !1944
	addi	sp, sp, -68 !1944
	addi	a0, zero, 255 !1945
	addi	sp, sp, 68 !1945
	jal 	ra, print_int !1945
	addi	sp, sp, -68 !1945
	addi	a0, zero, 10 !1946
	addi	sp, sp, 68 !1946
	jal 	ra, print_char !1946
	addi	sp, sp, -68 !1946
	addi	a0, zero, 120 !2204
	sw  	a0, 67(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 68 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -68 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 68(sp) !2191
	addi	sp, sp, 72 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -72 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 68(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 67(sp) !2204
	addi	sp, sp, 72 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -72 !2204
	sw  	a0, 183(zero) !2204
	lw  	a0, 183(zero) !2205
	sw  	a0, 69(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 72 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -72 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 70(sp) !2191
	addi	sp, sp, 72 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -72 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 70(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 69(sp) !2197
	sw  	a0, 118(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 72 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -72 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 71(sp) !2191
	addi	sp, sp, 72 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -72 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 71(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 69(sp) !2197
	sw  	a0, 117(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 72 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -72 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 72(sp) !2191
	addi	sp, sp, 76 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -76 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 72(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 69(sp) !2197
	sw  	a0, 116(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 76 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -76 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 73(sp) !2191
	addi	sp, sp, 76 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -76 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 73(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 69(sp) !2197
	sw  	a0, 115(a1) !2197
	addi	a0, zero, 114 !2198
	addi	t0, a1, 0 !2198
	addi	a1, a0, 0 !2198
	addi	a0, t0, 0 !2198
	addi	sp, sp, 76 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -76 !2198
	addi	a0, zero, 3 !2206
	addi	sp, sp, 76 !2206
	jal 	ra, create_dirvecs.2879 !2206
	addi	sp, sp, -76 !2206
	addi	a1, zero, 0 !2228
	addi	a2, zero, 0 !2228
	li  	fa0, 0.900000 !2180
	addi	a0, zero, 4 !2181
	addi	sp, sp, 76 !2181
	jal 	ra, calc_dirvecs.2865 !2181
	addi	sp, sp, -76 !2181
	addi	a0, zero, 8 !2182
	addi	a1, zero, 2 !160
	addi	a2, zero, 4 !2182
	addi	sp, sp, 76 !2182
	jal 	ra, calc_dirvec_rows.2870 !2182
	addi	sp, sp, -76 !2182
	lw  	a0, 183(zero) !2221
	sw  	a0, 74(sp) !2214
	lw  	a0, 119(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 76 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -76 !1142
	lw  	a0, 74(sp) !2214
	lw  	a1, 118(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.40472 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 75(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 76(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40473 !1130
	sw  	a2, 77(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 80 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -80 !1131
	lw  	a1, 77(sp) !1131
	lw  	a2, 75(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40474 !1130
beq_else.40473: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40475 !1132
	sw  	a0, 78(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 77(sp) !1078
	sw  	a3, 79(sp) !1078
	addi	sp, sp, 80 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -80 !1078
	lw  	a1, 79(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 78(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40477 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40478 !1082
beq_else.40477: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40478: !1082
	lw  	a1, 77(sp) !1133
	lw  	a2, 75(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40476 !1132
beq_else.40475: !1132
	sw  	a2, 77(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 80 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -80 !1135
	lw  	a1, 77(sp) !1135
	lw  	a2, 75(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40476: !1132
beq_cont.40474: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 76(sp) !1137
	addi	sp, sp, 80 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -80 !1137
bge_cont.40472: !1125
	lw  	a0, 74(sp) !2214
	lw  	a0, 117(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 80 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -80 !1142
	lw  	a0, 74(sp) !2214
	lw  	a1, 116(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.40480 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 80(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 81(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40481 !1130
	sw  	a2, 82(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 84 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -84 !1131
	lw  	a1, 82(sp) !1131
	lw  	a2, 80(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40482 !1130
beq_else.40481: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40483 !1132
	sw  	a0, 83(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 82(sp) !1078
	sw  	a3, 84(sp) !1078
	addi	sp, sp, 88 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -88 !1078
	lw  	a1, 84(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 83(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40485 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40486 !1082
beq_else.40485: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40486: !1082
	lw  	a1, 82(sp) !1133
	lw  	a2, 80(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40484 !1132
beq_else.40483: !1132
	sw  	a2, 82(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 88 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -88 !1135
	lw  	a1, 82(sp) !1135
	lw  	a2, 80(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40484: !1132
beq_cont.40482: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 81(sp) !1137
	addi	sp, sp, 88 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -88 !1137
bge_cont.40480: !1125
	addi	a1, zero, 115 !2215
	lw  	a0, 74(sp) !2215
	addi	sp, sp, 88 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -88 !2215
	lw  	a0, 182(zero) !2221
	lw  	a1, 119(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	sw  	a0, 85(sp) !1125
	blt 	a2, zero, bge_cont.40488 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 86(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 87(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40489 !1130
	sw  	a2, 88(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 92 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -92 !1131
	lw  	a1, 88(sp) !1131
	lw  	a2, 86(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40490 !1130
beq_else.40489: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40491 !1132
	sw  	a0, 89(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 88(sp) !1078
	sw  	a3, 90(sp) !1078
	addi	sp, sp, 92 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -92 !1078
	lw  	a1, 90(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 89(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40493 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40494 !1082
beq_else.40493: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40494: !1082
	lw  	a1, 88(sp) !1133
	lw  	a2, 86(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40492 !1132
beq_else.40491: !1132
	sw  	a2, 88(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 92 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -92 !1135
	lw  	a1, 88(sp) !1135
	lw  	a2, 86(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40492: !1132
beq_cont.40490: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 87(sp) !1137
	addi	sp, sp, 92 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -92 !1137
bge_cont.40488: !1125
	lw  	a0, 85(sp) !2214
	lw  	a0, 118(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 92 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -92 !1142
	lw  	a0, 85(sp) !2214
	lw  	a1, 117(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.40496 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 91(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 92(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40497 !1130
	sw  	a2, 93(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 96 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -96 !1131
	lw  	a1, 93(sp) !1131
	lw  	a2, 91(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40498 !1130
beq_else.40497: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40499 !1132
	sw  	a0, 94(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 93(sp) !1078
	sw  	a3, 95(sp) !1078
	addi	sp, sp, 96 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -96 !1078
	lw  	a1, 95(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 94(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40501 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40502 !1082
beq_else.40501: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40502: !1082
	lw  	a1, 93(sp) !1133
	lw  	a2, 91(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40500 !1132
beq_else.40499: !1132
	sw  	a2, 93(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 96 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -96 !1135
	lw  	a1, 93(sp) !1135
	lw  	a2, 91(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40500: !1132
beq_cont.40498: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 92(sp) !1137
	addi	sp, sp, 96 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -96 !1137
bge_cont.40496: !1125
	addi	a1, zero, 116 !2215
	lw  	a0, 85(sp) !2215
	addi	sp, sp, 96 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -96 !2215
	lw  	a0, 181(zero) !2221
	sw  	a0, 96(sp) !2214
	lw  	a0, 119(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 100 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -100 !1142
	lw  	a0, 96(sp) !2214
	lw  	a1, 118(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.40504 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 97(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 98(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40505 !1130
	sw  	a2, 99(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 100 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -100 !1131
	lw  	a1, 99(sp) !1131
	lw  	a2, 97(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40506 !1130
beq_else.40505: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40507 !1132
	sw  	a0, 100(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 99(sp) !1078
	sw  	a3, 101(sp) !1078
	addi	sp, sp, 104 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -104 !1078
	lw  	a1, 101(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 100(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40509 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40510 !1082
beq_else.40509: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40510: !1082
	lw  	a1, 99(sp) !1133
	lw  	a2, 97(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40508 !1132
beq_else.40507: !1132
	sw  	a2, 99(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 104 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -104 !1135
	lw  	a1, 99(sp) !1135
	lw  	a2, 97(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40508: !1132
beq_cont.40506: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 98(sp) !1137
	addi	sp, sp, 104 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -104 !1137
bge_cont.40504: !1125
	addi	a1, zero, 117 !2215
	lw  	a0, 96(sp) !2215
	addi	sp, sp, 104 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -104 !2215
	lw  	a0, 180(zero) !2221
	lw  	a1, 119(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	sw  	a0, 102(sp) !1125
	blt 	a2, zero, bge_cont.40512 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 103(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 104(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40513 !1130
	sw  	a2, 105(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 108 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -108 !1131
	lw  	a1, 105(sp) !1131
	lw  	a2, 103(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40514 !1130
beq_else.40513: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40515 !1132
	sw  	a0, 106(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 105(sp) !1078
	sw  	a3, 107(sp) !1078
	addi	sp, sp, 108 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -108 !1078
	lw  	a1, 107(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 106(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40517 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40518 !1082
beq_else.40517: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40518: !1082
	lw  	a1, 105(sp) !1133
	lw  	a2, 103(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40516 !1132
beq_else.40515: !1132
	sw  	a2, 105(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 108 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -108 !1135
	lw  	a1, 105(sp) !1135
	lw  	a2, 103(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40516: !1132
beq_cont.40514: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 104(sp) !1137
	addi	sp, sp, 108 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -108 !1137
bge_cont.40512: !1125
	addi	a1, zero, 118 !2215
	lw  	a0, 102(sp) !2215
	addi	sp, sp, 108 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -108 !2215
	lw  	a0, 179(zero) !2221
	addi	a1, zero, 119 !2221
	addi	sp, sp, 108 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -108 !2221
	addi	a0, zero, -1 !2222
	addi	sp, sp, 108 !2222
	jal 	ra, init_vecset_constants.2884 !2222
	addi	sp, sp, -108 !2222
	lw  	fa0, 78(zero) !188
	sw  	fa0, 184(zero) !188
	lw  	fa0, 79(zero) !189
	sw  	fa0, 185(zero) !189
	lw  	fa0, 80(zero) !190
	sw  	fa0, 186(zero) !190
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	blt 	a0, zero, bge_cont.40520 !1125
	lw  	a1, 12(a0) !1126
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.40521 !1130
	sw  	a0, 108(sp) !0
	addi	a0, zero, 184 !0
	addi	sp, sp, 112 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -112 !1131
	lw  	a1, 108(sp) !1131
	li  	t0, 187
	add 	t0, t0, a1
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40522 !1130
beq_else.40521: !1130
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.40523 !1132
	sw  	a0, 108(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a1, 109(sp) !1078
	addi	sp, sp, 112 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -112 !1078
	lw  	fa0, 184(zero) !1080
	lw  	a1, 109(sp) !298
	lw  	a2, 4(a1) !298
	lw  	fa1, 0(a2) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 185(zero) !1080
	lw  	a2, 4(a1) !308
	lw  	fa2, 1(a2) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 186(zero) !1080
	lw  	a2, 4(a1) !318
	lw  	fa2, 2(a2) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a2, zero, fa0 !122
	bne 	a2, zero, beq_else.40525 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40526 !1082
beq_else.40525: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a2, 4(a1) !298
	lw  	fa1, 0(a2) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a2, 4(a1) !308
	lw  	fa1, 1(a2) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a1) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40526: !1082
	lw  	a1, 108(sp) !1133
	li  	t0, 187
	add 	t0, t0, a1
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40524 !1132
beq_else.40523: !1132
	sw  	a0, 108(sp) !0
	addi	a0, zero, 184 !0
	addi	sp, sp, 112 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -112 !1135
	lw  	a1, 108(sp) !1135
	li  	t0, 187
	add 	t0, t0, a1
	sw  	a0, 0(t0) !1135
beq_cont.40524: !1132
beq_cont.40522: !1130
	addi	a1, a1, -1 !1137
	addi	a0, zero, 247 !0
	addi	sp, sp, 112 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -112 !1137
bge_cont.40520: !1125
	lw  	a0, 0(zero) !2307
	addi	a0, a0, -1 !2307
	addi	sp, sp, 112 !2307
	jal 	ra, setup_reflections.2901 !2307
	addi	sp, sp, -112 !2307
	addi	a1, zero, 0 !2308
	addi	a2, zero, 0 !2308
	lw  	a0, 30(sp) !2308
	addi	sp, sp, 112 !2308
	jal 	ra, pretrace_line.2825 !2308
	addi	sp, sp, -112 !2308
	addi	a0, zero, 0 !2309
	addi	a4, zero, 2 !2309
	lw  	a1, 18(sp) !2309
	lw  	a2, 30(sp) !2309
	lw  	a3, 42(sp) !2309
	lw  	a5, 7(sp) !2309
	addi	sp, sp, 112 !2309
	jal 	ra, scan_line.2836 !2309
	addi	sp, sp, -112 !2309
	addi	sp, sp, -1
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_screen_settings.2545:
	sw  	ra, 0(sp)
	addi	sp, sp, 4 !570
	jal 	ra, read_float !570
	addi	sp, sp, -4 !570
	sw  	fa0, 72(zero) !570
	addi	sp, sp, 4 !571
	jal 	ra, read_float !571
	addi	sp, sp, -4 !571
	sw  	fa0, 73(zero) !571
	addi	sp, sp, 4 !572
	jal 	ra, read_float !572
	addi	sp, sp, -4 !572
	sw  	fa0, 74(zero) !572
	addi	sp, sp, 4 !574
	jal 	ra, read_float !574
	addi	sp, sp, -4 !574
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 1(sp) !575
	addi	sp, sp, 4 !575
	jal 	ra, cos !575
	addi	sp, sp, -4 !575
	sw  	fa0, 2(sp) !576
	lw  	fa0, 1(sp) !576
	addi	sp, sp, 4 !576
	jal 	ra, sin !576
	addi	sp, sp, -4 !576
	sw  	fa0, 3(sp) !577
	addi	sp, sp, 4 !577
	jal 	ra, read_float !577
	addi	sp, sp, -4 !577
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 4(sp) !578
	addi	sp, sp, 8 !578
	jal 	ra, cos !578
	addi	sp, sp, -8 !578
	sw  	fa0, 5(sp) !579
	lw  	fa0, 4(sp) !579
	addi	sp, sp, 8 !579
	jal 	ra, sin !579
	addi	sp, sp, -8 !579
	lw  	fa1, 2(sp) !581
	fmul	fa2, fa1, fa0 !581
	li  	fa3, 200.000000 !581
	fmul	fa2, fa2, fa3 !581
	sw  	fa2, 171(zero) !581
	li  	fa2, -200.000000 !582
	lw  	fa3, 3(sp) !582
	fmul	fa2, fa3, fa2 !582
	sw  	fa2, 172(zero) !582
	lw  	fa2, 5(sp) !583
	fmul	fa4, fa1, fa2 !583
	li  	fa5, 200.000000 !583
	fmul	fa4, fa4, fa5 !583
	sw  	fa4, 173(zero) !583
	sw  	fa2, 165(zero) !585
	sw  	zero, 166(zero) !586
	fsgnjn  fa4, fa0, fa0 !587
	sw  	fa4, 167(zero) !587
	fsgnjn  fa4, fa3, fa3 !589
	fmul	fa0, fa4, fa0 !589
	sw  	fa0, 168(zero) !589
	fsgnjn  fa0, fa1, fa1 !590
	sw  	fa0, 169(zero) !590
	fsgnjn  fa0, fa3, fa3 !591
	fmul	fa0, fa0, fa2 !591
	sw  	fa0, 170(zero) !591
	lw  	fa0, 72(zero) !593
	lw  	fa1, 171(zero) !593
	fsub	fa0, fa0, fa1 !593
	sw  	fa0, 75(zero) !593
	lw  	fa0, 73(zero) !594
	lw  	fa1, 172(zero) !594
	fsub	fa0, fa0, fa1 !594
	sw  	fa0, 76(zero) !594
	lw  	fa0, 74(zero) !595
	lw  	fa1, 173(zero) !595
	fsub	fa0, fa0, fa1 !595
	sw  	fa0, 77(zero) !595
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
rotate_quadratic_matrix.2549:
	sw  	ra, 0(sp)
	lw  	fa0, 0(a1) !624
	sw  	a0, 1(sp) !624
	sw  	a1, 2(sp) !624
	addi	sp, sp, 4 !624
	jal 	ra, cos !624
	addi	sp, sp, -4 !624
	sw  	fa0, 3(sp) !625
	lw  	a0, 2(sp) !625
	lw  	fa0, 0(a0) !625
	addi	sp, sp, 4 !625
	jal 	ra, sin !625
	addi	sp, sp, -4 !625
	sw  	fa0, 4(sp) !626
	lw  	a0, 2(sp) !626
	lw  	fa0, 1(a0) !626
	addi	sp, sp, 8 !626
	jal 	ra, cos !626
	addi	sp, sp, -8 !626
	sw  	fa0, 5(sp) !627
	lw  	a0, 2(sp) !627
	lw  	fa0, 1(a0) !627
	addi	sp, sp, 8 !627
	jal 	ra, sin !627
	addi	sp, sp, -8 !627
	sw  	fa0, 6(sp) !628
	lw  	a0, 2(sp) !628
	lw  	fa0, 2(a0) !628
	addi	sp, sp, 8 !628
	jal 	ra, cos !628
	addi	sp, sp, -8 !628
	sw  	fa0, 7(sp) !629
	lw  	a0, 2(sp) !629
	lw  	fa0, 2(a0) !629
	addi	sp, sp, 8 !629
	jal 	ra, sin !629
	addi	sp, sp, -8 !629
	lw  	fa1, 7(sp) !631
	lw  	fa2, 5(sp) !631
	fmul	fa3, fa2, fa1 !631
	lw  	fa4, 6(sp) !632
	lw  	fa5, 4(sp) !632
	fmul	fa6, fa5, fa4 !632
	fmul	fa6, fa6, fa1 !632
	lw  	fa7, 3(sp) !632
	fmul	fs1, fa7, fa0 !632
	fsub	fa6, fa6, fs1 !632
	fmul	fs1, fa7, fa4 !633
	fmul	fs1, fs1, fa1 !633
	fmul	fs2, fa5, fa0 !633
	fadd	fs1, fs1, fs2 !633
	fmul	fs2, fa2, fa0 !635
	fmul	fs3, fa5, fa4 !636
	fmul	fs3, fs3, fa0 !636
	fmul	fs4, fa7, fa1 !636
	fadd	fs3, fs3, fs4 !636
	fmul	fs4, fa7, fa4 !637
	fmul	fa0, fs4, fa0 !637
	fmul	fa1, fa5, fa1 !637
	fsub	fa0, fa0, fa1 !637
	fsgnjn  fa1, fa4, fa4 !639
	fmul	fa4, fa5, fa2 !640
	fmul	fa2, fa7, fa2 !641
	lw  	a0, 1(sp) !644
	lw  	fa5, 0(a0) !644
	lw  	fa7, 1(a0) !645
	lw  	fs4, 2(a0) !646
	fmul	fs5, fa3, fa3 !126
	fmul	fs5, fa5, fs5 !651
	fmul	fs6, fs2, fs2 !126
	fmul	fs6, fa7, fs6 !651
	fadd	fs5, fs5, fs6 !651
	fmul	fs6, fa1, fa1 !126
	fmul	fs6, fs4, fs6 !651
	fadd	fs5, fs5, fs6 !651
	sw  	fs5, 0(a0) !651
	fmul	fs5, fa6, fa6 !126
	fmul	fs5, fa5, fs5 !652
	fmul	fs6, fs3, fs3 !126
	fmul	fs6, fa7, fs6 !652
	fadd	fs5, fs5, fs6 !652
	fmul	fs6, fa4, fa4 !126
	fmul	fs6, fs4, fs6 !652
	fadd	fs5, fs5, fs6 !652
	sw  	fs5, 1(a0) !652
	fmul	fs5, fs1, fs1 !126
	fmul	fs5, fa5, fs5 !653
	fmul	fs6, fa0, fa0 !126
	fmul	fs6, fa7, fs6 !653
	fadd	fs5, fs5, fs6 !653
	fmul	fs6, fa2, fa2 !126
	fmul	fs6, fs4, fs6 !653
	fadd	fs5, fs5, fs6 !653
	sw  	fs5, 2(a0) !653
	li  	fs5, 2.000000 !656
	fmul	fs6, fa5, fa6 !656
	fmul	fs6, fs6, fs1 !656
	fmul	fs7, fa7, fs3 !656
	fmul	fs7, fs7, fa0 !656
	fadd	fs6, fs6, fs7 !656
	fmul	fs7, fs4, fa4 !656
	fmul	fs7, fs7, fa2 !656
	fadd	fs6, fs6, fs7 !656
	fmul	fs5, fs5, fs6 !656
	lw  	a0, 2(sp) !656
	sw  	fs5, 0(a0) !656
	li  	fs5, 2.000000 !657
	fmul	fs6, fa5, fa3 !657
	fmul	fs1, fs6, fs1 !657
	fmul	fs6, fa7, fs2 !657
	fmul	fa0, fs6, fa0 !657
	fadd	fa0, fs1, fa0 !657
	fmul	fs1, fs4, fa1 !657
	fmul	fa2, fs1, fa2 !657
	fadd	fa0, fa0, fa2 !657
	fmul	fa0, fs5, fa0 !657
	sw  	fa0, 1(a0) !657
	li  	fa0, 2.000000 !658
	fmul	fa2, fa5, fa3 !658
	fmul	fa2, fa2, fa6 !658
	fmul	fa3, fa7, fs2 !658
	fmul	fa3, fa3, fs3 !658
	fadd	fa2, fa2, fa3 !658
	fmul	fa1, fs4, fa1 !658
	fmul	fa1, fa1, fa4 !658
	fadd	fa1, fa2, fa1 !658
	fmul	fa0, fa0, fa1 !658
	sw  	fa0, 2(a0) !658
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_nth_object.2552:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !665
	addi	sp, sp, 4 !665
	jal 	ra, read_int !665
	addi	sp, sp, -4 !665
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40529 !666
	addi	a0, zero, 0 !742
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40529: !666
	sw  	a0, 2(sp) !668
	addi	sp, sp, 4 !668
	jal 	ra, read_int !668
	addi	sp, sp, -4 !668
	sw  	a0, 3(sp) !669
	addi	sp, sp, 4 !669
	jal 	ra, read_int !669
	addi	sp, sp, -4 !669
	sw  	a0, 4(sp) !670
	addi	sp, sp, 8 !670
	jal 	ra, read_int !670
	addi	sp, sp, -8 !670
	sw  	a0, 5(sp) !672
	addi	a0, zero, 3 !672
	addi	fa0, zero, 0
	addi	sp, sp, 8 !672
	jal 	ra, create_float_array !672
	addi	sp, sp, -8 !672
	sw  	a0, 6(sp) !673
	addi	sp, sp, 8 !673
	jal 	ra, read_float !673
	addi	sp, sp, -8 !673
	lw  	a0, 6(sp) !673
	sw  	fa0, 0(a0) !673
	addi	sp, sp, 8 !674
	jal 	ra, read_float !674
	addi	sp, sp, -8 !674
	lw  	a0, 6(sp) !674
	sw  	fa0, 1(a0) !674
	addi	sp, sp, 8 !675
	jal 	ra, read_float !675
	addi	sp, sp, -8 !675
	lw  	a0, 6(sp) !675
	sw  	fa0, 2(a0) !675
	addi	a0, zero, 3 !677
	addi	fa0, zero, 0
	addi	sp, sp, 8 !677
	jal 	ra, create_float_array !677
	addi	sp, sp, -8 !677
	sw  	a0, 7(sp) !678
	addi	sp, sp, 8 !678
	jal 	ra, read_float !678
	addi	sp, sp, -8 !678
	lw  	a0, 7(sp) !678
	sw  	fa0, 0(a0) !678
	addi	sp, sp, 8 !679
	jal 	ra, read_float !679
	addi	sp, sp, -8 !679
	lw  	a0, 7(sp) !679
	sw  	fa0, 1(a0) !679
	addi	sp, sp, 8 !680
	jal 	ra, read_float !680
	addi	sp, sp, -8 !680
	lw  	a0, 7(sp) !680
	sw  	fa0, 2(a0) !680
	addi	sp, sp, 8 !682
	jal 	ra, read_float !682
	addi	sp, sp, -8 !682
	flt 	a0, fa0, zero !123
	sw  	a0, 8(sp) !684
	addi	a0, zero, 2 !684
	addi	fa0, zero, 0
	addi	sp, sp, 12 !684
	jal 	ra, create_float_array !684
	addi	sp, sp, -12 !684
	sw  	a0, 9(sp) !685
	addi	sp, sp, 12 !685
	jal 	ra, read_float !685
	addi	sp, sp, -12 !685
	lw  	a0, 9(sp) !685
	sw  	fa0, 0(a0) !685
	addi	sp, sp, 12 !686
	jal 	ra, read_float !686
	addi	sp, sp, -12 !686
	lw  	a0, 9(sp) !686
	sw  	fa0, 1(a0) !686
	addi	a0, zero, 3 !688
	addi	fa0, zero, 0
	addi	sp, sp, 12 !688
	jal 	ra, create_float_array !688
	addi	sp, sp, -12 !688
	sw  	a0, 10(sp) !689
	addi	sp, sp, 12 !689
	jal 	ra, read_float !689
	addi	sp, sp, -12 !689
	lw  	a0, 10(sp) !689
	sw  	fa0, 0(a0) !689
	addi	sp, sp, 12 !690
	jal 	ra, read_float !690
	addi	sp, sp, -12 !690
	lw  	a0, 10(sp) !690
	sw  	fa0, 1(a0) !690
	addi	sp, sp, 12 !691
	jal 	ra, read_float !691
	addi	sp, sp, -12 !691
	lw  	a0, 10(sp) !691
	sw  	fa0, 2(a0) !691
	addi	a0, zero, 3 !693
	addi	fa0, zero, 0
	addi	sp, sp, 12 !693
	jal 	ra, create_float_array !693
	addi	sp, sp, -12 !693
	sw  	a0, 11(sp) !694
	lw  	a0, 5(sp) !694
	beq 	a0, zero, beq_cont.40531 !694
	addi	sp, sp, 12 !696
	jal 	ra, read_float !696
	addi	sp, sp, -12 !696
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 11(sp) !696
	sw  	fa0, 0(a0) !696
	addi	sp, sp, 12 !697
	jal 	ra, read_float !697
	addi	sp, sp, -12 !697
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 11(sp) !697
	sw  	fa0, 1(a0) !697
	addi	sp, sp, 12 !698
	jal 	ra, read_float !698
	addi	sp, sp, -12 !698
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 11(sp) !698
	sw  	fa0, 2(a0) !698
beq_cont.40531: !694
	lw  	a0, 3(sp) !705
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.40532 !705
	addi	a0, zero, 1 !705
	jal 	zero, beq_cont.40533 !705
beq_else.40532: !705
	lw  	a0, 8(sp) !705
beq_cont.40533: !705
	sw  	a0, 12(sp) !706
	addi	a0, zero, 4 !706
	addi	fa0, zero, 0
	addi	sp, sp, 16 !706
	jal 	ra, create_float_array !706
	addi	sp, sp, -16 !706
	addi	a1, gp, 0 !709
	addi	gp, gp, 11 !709
	sw  	a0, 10(a1) !709
	lw  	a0, 11(sp) !709
	sw  	a0, 9(a1) !709
	lw  	a2, 10(sp) !709
	sw  	a2, 8(a1) !709
	lw  	a2, 9(sp) !709
	sw  	a2, 7(a1) !709
	lw  	a2, 12(sp) !709
	sw  	a2, 6(a1) !709
	lw  	a2, 7(sp) !709
	sw  	a2, 5(a1) !709
	lw  	a2, 6(sp) !709
	sw  	a2, 4(a1) !709
	lw  	a3, 5(sp) !709
	sw  	a3, 3(a1) !709
	lw  	a4, 4(sp) !709
	sw  	a4, 2(a1) !709
	lw  	a4, 3(sp) !709
	sw  	a4, 1(a1) !709
	lw  	a5, 2(sp) !709
	sw  	a5, 0(a1) !709
	lw  	a5, 1(sp) !717
	li  	t0, 12
	add 	t0, t0, a5
	sw  	a1, 0(t0) !717
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.40534 !719
	lw  	fa0, 0(a2) !722
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.40536 !723
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.40538 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40540 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.40541 !148
beq_else.40540: !148
	li  	fa1, 1.000000 !148
beq_cont.40541: !148
	jal 	zero, beq_cont.40539 !147
beq_else.40538: !147
	addi	fa1, zero, 0
beq_cont.40539: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !723
	jal 	zero, beq_cont.40537 !723
beq_else.40536: !723
	addi	fa0, zero, 0
beq_cont.40537: !723
	sw  	fa0, 0(a2) !723
	lw  	fa0, 1(a2) !724
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.40542 !725
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.40544 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40546 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.40547 !148
beq_else.40546: !148
	li  	fa1, 1.000000 !148
beq_cont.40547: !148
	jal 	zero, beq_cont.40545 !147
beq_else.40544: !147
	addi	fa1, zero, 0
beq_cont.40545: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !725
	jal 	zero, beq_cont.40543 !725
beq_else.40542: !725
	addi	fa0, zero, 0
beq_cont.40543: !725
	sw  	fa0, 1(a2) !725
	lw  	fa0, 2(a2) !726
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.40548 !727
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.40550 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40552 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.40553 !148
beq_else.40552: !148
	li  	fa1, 1.000000 !148
beq_cont.40553: !148
	jal 	zero, beq_cont.40551 !147
beq_else.40550: !147
	addi	fa1, zero, 0
beq_cont.40551: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !727
	jal 	zero, beq_cont.40549 !727
beq_else.40548: !727
	addi	fa0, zero, 0
beq_cont.40549: !727
	sw  	fa0, 2(a2) !727
	jal 	zero, beq_cont.40535 !719
beq_else.40534: !719
	addi	t0, zero, 2
	bne 	a4, t0, beq_cont.40555 !729
	lw  	a1, 8(sp) !731
	sub 	t0, zero, a1 !731
	addi	a1, t0, 1 !731
	lw  	fa0, 0(a2) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 1(a2) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 2(a2) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a4, fa0, zero !124
	bne 	a4, zero, beq_else.40556 !200
	bne 	a1, zero, beq_else.40558 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.40557 !200
beq_else.40558: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.40559: !200
	jal 	zero, beq_cont.40557 !200
beq_else.40556: !200
	li  	fa0, 1.000000 !200
beq_cont.40557: !200
	lw  	fa1, 0(a2) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 0(a2) !201
	lw  	fa1, 1(a2) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 1(a2) !202
	lw  	fa1, 2(a2) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 2(a2) !203
beq_cont.40555: !729
beq_cont.40535: !719
	beq 	a3, zero, beq_cont.40561 !735
	addi	a1, a0, 0 !736
	addi	a0, a2, 0 !736
	addi	sp, sp, 16 !736
	jal 	ra, rotate_quadratic_matrix.2549 !736
	addi	sp, sp, -16 !736
beq_cont.40561: !735
	addi	a0, zero, 1 !739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_object.2554:
	sw  	ra, 0(sp)
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40562 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40562: !747
	sw  	a0, 1(sp) !748
	addi	sp, sp, 4 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -4 !748
	bne 	a0, zero, beq_else.40564 !748
	lw  	a0, 1(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40564: !748
	lw  	a0, 1(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40566 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40566: !747
	sw  	a0, 2(sp) !748
	addi	sp, sp, 4 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -4 !748
	bne 	a0, zero, beq_else.40568 !748
	lw  	a0, 2(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40568: !748
	lw  	a0, 2(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40570 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40570: !747
	sw  	a0, 3(sp) !748
	addi	sp, sp, 4 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -4 !748
	bne 	a0, zero, beq_else.40572 !748
	lw  	a0, 3(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40572: !748
	lw  	a0, 3(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40574 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40574: !747
	sw  	a0, 4(sp) !748
	addi	sp, sp, 8 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -8 !748
	bne 	a0, zero, beq_else.40576 !748
	lw  	a0, 4(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40576: !748
	lw  	a0, 4(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40578 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40578: !747
	sw  	a0, 5(sp) !748
	addi	sp, sp, 8 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -8 !748
	bne 	a0, zero, beq_else.40580 !748
	lw  	a0, 5(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40580: !748
	lw  	a0, 5(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40582 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40582: !747
	sw  	a0, 6(sp) !748
	addi	sp, sp, 8 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -8 !748
	bne 	a0, zero, beq_else.40584 !748
	lw  	a0, 6(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40584: !748
	lw  	a0, 6(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40586 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40586: !747
	sw  	a0, 7(sp) !748
	addi	sp, sp, 8 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -8 !748
	bne 	a0, zero, beq_else.40588 !748
	lw  	a0, 7(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40588: !748
	lw  	a0, 7(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40590 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40590: !747
	sw  	a0, 8(sp) !748
	addi	sp, sp, 12 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -12 !748
	bne 	a0, zero, beq_else.40592 !748
	lw  	a0, 8(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40592: !748
	lw  	a0, 8(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40594 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40594: !747
	sw  	a0, 9(sp) !748
	addi	sp, sp, 12 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -12 !748
	bne 	a0, zero, beq_else.40596 !748
	lw  	a0, 9(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40596: !748
	lw  	a0, 9(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40598 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40598: !747
	sw  	a0, 10(sp) !748
	addi	sp, sp, 12 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -12 !748
	bne 	a0, zero, beq_else.40600 !748
	lw  	a0, 10(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40600: !748
	lw  	a0, 10(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40602 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40602: !747
	sw  	a0, 11(sp) !748
	addi	sp, sp, 12 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -12 !748
	bne 	a0, zero, beq_else.40604 !748
	lw  	a0, 11(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40604: !748
	lw  	a0, 11(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40606 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40606: !747
	sw  	a0, 12(sp) !748
	addi	sp, sp, 16 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -16 !748
	bne 	a0, zero, beq_else.40608 !748
	lw  	a0, 12(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40608: !748
	lw  	a0, 12(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40610 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40610: !747
	sw  	a0, 13(sp) !748
	addi	sp, sp, 16 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -16 !748
	bne 	a0, zero, beq_else.40612 !748
	lw  	a0, 13(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40612: !748
	lw  	a0, 13(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40614 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40614: !747
	sw  	a0, 14(sp) !748
	addi	sp, sp, 16 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -16 !748
	bne 	a0, zero, beq_else.40616 !748
	lw  	a0, 14(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40616: !748
	lw  	a0, 14(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40618 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40618: !747
	sw  	a0, 15(sp) !748
	addi	sp, sp, 16 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -16 !748
	bne 	a0, zero, beq_else.40620 !748
	lw  	a0, 15(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40620: !748
	lw  	a0, 15(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.40622 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40622: !747
	sw  	a0, 16(sp) !748
	addi	sp, sp, 20 !748
	jal 	ra, read_nth_object.2552 !748
	addi	sp, sp, -20 !748
	bne 	a0, zero, beq_else.40624 !748
	lw  	a0, 16(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40624: !748
	lw  	a0, 16(sp) !749
	addi	a0, a0, 1 !749
	lw  	ra, 0(sp)
	jal 	zero, read_object.2554 !749
read_net_item.2558:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40626 !764
	lw  	a0, 1(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	lw  	ra, 0(sp)
	jal 	zero, create_array !764
beq_else.40626: !764
	sw  	a0, 2(sp) !766
	lw  	a0, 1(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 3(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40627 !764
	lw  	a0, 3(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	jal 	zero, beq_cont.40628 !764
beq_else.40627: !764
	sw  	a0, 4(sp) !766
	lw  	a0, 3(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 5(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40629 !764
	lw  	a0, 5(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40630 !764
beq_else.40629: !764
	sw  	a0, 6(sp) !766
	lw  	a0, 5(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 7(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40631 !764
	lw  	a0, 7(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40632 !764
beq_else.40631: !764
	sw  	a0, 8(sp) !766
	lw  	a0, 7(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 9(sp) !763
	addi	sp, sp, 12 !763
	jal 	ra, read_int !763
	addi	sp, sp, -12 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40633 !764
	lw  	a0, 9(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.40634 !764
beq_else.40633: !764
	sw  	a0, 10(sp) !766
	lw  	a0, 9(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 11(sp) !763
	addi	sp, sp, 12 !763
	jal 	ra, read_int !763
	addi	sp, sp, -12 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40635 !764
	lw  	a0, 11(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.40636 !764
beq_else.40635: !764
	sw  	a0, 12(sp) !766
	lw  	a0, 11(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 13(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40637 !764
	lw  	a0, 13(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40638 !764
beq_else.40637: !764
	sw  	a0, 14(sp) !766
	lw  	a0, 13(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 15(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40639 !764
	lw  	a0, 15(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40640 !764
beq_else.40639: !764
	sw  	a0, 16(sp) !766
	lw  	a0, 15(sp) !766
	addi	a0, a0, 1 !766
	addi	sp, sp, 20 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -20 !766
	lw  	a1, 15(sp) !767
	lw  	a2, 16(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.40640: !764
	lw  	a1, 13(sp) !767
	lw  	a2, 14(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.40638: !764
	lw  	a1, 11(sp) !767
	lw  	a2, 12(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.40636: !764
	lw  	a1, 9(sp) !767
	lw  	a2, 10(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.40634: !764
	lw  	a1, 7(sp) !767
	lw  	a2, 8(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.40632: !764
	lw  	a1, 5(sp) !767
	lw  	a2, 6(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.40630: !764
	lw  	a1, 3(sp) !767
	lw  	a2, 4(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.40628: !764
	lw  	a1, 1(sp) !767
	lw  	a2, 2(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_or_network.2560:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40641 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.40642 !764
beq_else.40641: !764
	sw  	a0, 2(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40643 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	jal 	zero, beq_cont.40644 !764
beq_else.40643: !764
	sw  	a0, 3(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40645 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	jal 	zero, beq_cont.40646 !764
beq_else.40645: !764
	sw  	a0, 4(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40647 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40648 !764
beq_else.40647: !764
	sw  	a0, 5(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40649 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40650 !764
beq_else.40649: !764
	sw  	a0, 6(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40651 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40652 !764
beq_else.40651: !764
	sw  	a0, 7(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40653 !764
	addi	a0, zero, 7 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40654 !764
beq_else.40653: !764
	sw  	a0, 8(sp) !766
	addi	a0, zero, 7 !766
	addi	sp, sp, 12 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -12 !766
	lw  	a1, 8(sp) !767
	sw  	a1, 6(a0) !767
beq_cont.40654: !764
	lw  	a1, 7(sp) !767
	sw  	a1, 5(a0) !767
beq_cont.40652: !764
	lw  	a1, 6(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.40650: !764
	lw  	a1, 5(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40648: !764
	lw  	a1, 4(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40646: !764
	lw  	a1, 3(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40644: !764
	lw  	a1, 2(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.40642: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40655 !772
	lw  	a0, 1(sp) !773
	addi	a0, a0, 1 !773
	lw  	ra, 0(sp)
	jal 	zero, create_array !773
beq_else.40655: !772
	lw  	a0, 1(sp) !775
	addi	a0, a0, 1 !775
	sw  	a1, 9(sp) !763
	sw  	a0, 10(sp) !763
	addi	sp, sp, 12 !763
	jal 	ra, read_int !763
	addi	sp, sp, -12 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40656 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.40657 !764
beq_else.40656: !764
	sw  	a0, 11(sp) !763
	addi	sp, sp, 12 !763
	jal 	ra, read_int !763
	addi	sp, sp, -12 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40658 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.40659 !764
beq_else.40658: !764
	sw  	a0, 12(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40660 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40661 !764
beq_else.40660: !764
	sw  	a0, 13(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40662 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40663 !764
beq_else.40662: !764
	sw  	a0, 14(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40664 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40665 !764
beq_else.40664: !764
	sw  	a0, 15(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40666 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40667 !764
beq_else.40666: !764
	sw  	a0, 16(sp) !766
	addi	a0, zero, 6 !766
	addi	sp, sp, 20 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -20 !766
	lw  	a1, 16(sp) !767
	sw  	a1, 5(a0) !767
beq_cont.40667: !764
	lw  	a1, 15(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.40665: !764
	lw  	a1, 14(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40663: !764
	lw  	a1, 13(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40661: !764
	lw  	a1, 12(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40659: !764
	lw  	a1, 11(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.40657: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40668 !772
	lw  	a0, 10(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 20 !773
	jal 	ra, create_array !773
	addi	sp, sp, -20 !773
	jal 	zero, beq_cont.40669 !772
beq_else.40668: !772
	lw  	a0, 10(sp) !775
	addi	a0, a0, 1 !775
	sw  	a1, 17(sp) !763
	sw  	a0, 18(sp) !763
	addi	sp, sp, 20 !763
	jal 	ra, read_int !763
	addi	sp, sp, -20 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40670 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.40671 !764
beq_else.40670: !764
	sw  	a0, 19(sp) !763
	addi	sp, sp, 20 !763
	jal 	ra, read_int !763
	addi	sp, sp, -20 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40672 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	jal 	zero, beq_cont.40673 !764
beq_else.40672: !764
	sw  	a0, 20(sp) !763
	addi	sp, sp, 24 !763
	jal 	ra, read_int !763
	addi	sp, sp, -24 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40674 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.40675 !764
beq_else.40674: !764
	sw  	a0, 21(sp) !763
	addi	sp, sp, 24 !763
	jal 	ra, read_int !763
	addi	sp, sp, -24 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40676 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.40677 !764
beq_else.40676: !764
	sw  	a0, 22(sp) !763
	addi	sp, sp, 24 !763
	jal 	ra, read_int !763
	addi	sp, sp, -24 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40678 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.40679 !764
beq_else.40678: !764
	sw  	a0, 23(sp) !766
	addi	a0, zero, 5 !766
	addi	sp, sp, 24 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -24 !766
	lw  	a1, 23(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.40679: !764
	lw  	a1, 22(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40677: !764
	lw  	a1, 21(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40675: !764
	lw  	a1, 20(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40673: !764
	lw  	a1, 19(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.40671: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40680 !772
	lw  	a0, 18(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 24 !773
	jal 	ra, create_array !773
	addi	sp, sp, -24 !773
	jal 	zero, beq_cont.40681 !772
beq_else.40680: !772
	lw  	a0, 18(sp) !775
	addi	a0, a0, 1 !775
	sw  	a1, 24(sp) !763
	sw  	a0, 25(sp) !763
	addi	sp, sp, 28 !763
	jal 	ra, read_int !763
	addi	sp, sp, -28 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40682 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 28 !764
	jal 	ra, create_array !764
	addi	sp, sp, -28 !764
	addi	a1, a0, 0 !764
	jal 	zero, beq_cont.40683 !764
beq_else.40682: !764
	sw  	a0, 26(sp) !763
	addi	sp, sp, 28 !763
	jal 	ra, read_int !763
	addi	sp, sp, -28 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40684 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 28 !764
	jal 	ra, create_array !764
	addi	sp, sp, -28 !764
	jal 	zero, beq_cont.40685 !764
beq_else.40684: !764
	sw  	a0, 27(sp) !763
	addi	sp, sp, 28 !763
	jal 	ra, read_int !763
	addi	sp, sp, -28 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40686 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 28 !764
	jal 	ra, create_array !764
	addi	sp, sp, -28 !764
	jal 	zero, beq_cont.40687 !764
beq_else.40686: !764
	sw  	a0, 28(sp) !763
	addi	sp, sp, 32 !763
	jal 	ra, read_int !763
	addi	sp, sp, -32 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40688 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 32 !764
	jal 	ra, create_array !764
	addi	sp, sp, -32 !764
	jal 	zero, beq_cont.40689 !764
beq_else.40688: !764
	sw  	a0, 29(sp) !766
	addi	a0, zero, 4 !766
	addi	sp, sp, 32 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -32 !766
	lw  	a1, 29(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40689: !764
	lw  	a1, 28(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40687: !764
	lw  	a1, 27(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40685: !764
	lw  	a1, 26(sp) !767
	sw  	a1, 0(a0) !767
	addi	a1, a0, 0 !767
beq_cont.40683: !764
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40690 !772
	lw  	a0, 25(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 32 !773
	jal 	ra, create_array !773
	addi	sp, sp, -32 !773
	jal 	zero, beq_cont.40691 !772
beq_else.40690: !772
	lw  	a0, 25(sp) !775
	addi	a0, a0, 1 !775
	sw  	a1, 30(sp) !775
	addi	sp, sp, 32 !775
	jal 	ra, read_or_network.2560 !775
	addi	sp, sp, -32 !775
	lw  	a1, 25(sp) !776
	lw  	a2, 30(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
beq_cont.40691: !772
	lw  	a1, 18(sp) !776
	lw  	a2, 24(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
beq_cont.40681: !772
	lw  	a1, 10(sp) !776
	lw  	a2, 17(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
beq_cont.40669: !772
	lw  	a1, 1(sp) !776
	lw  	a2, 9(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_and_network.2562:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40692 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	jal 	zero, beq_cont.40693 !764
beq_else.40692: !764
	sw  	a0, 2(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40694 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	jal 	zero, beq_cont.40695 !764
beq_else.40694: !764
	sw  	a0, 3(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40696 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	jal 	zero, beq_cont.40697 !764
beq_else.40696: !764
	sw  	a0, 4(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40698 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40699 !764
beq_else.40698: !764
	sw  	a0, 5(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40700 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40701 !764
beq_else.40700: !764
	sw  	a0, 6(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40702 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40703 !764
beq_else.40702: !764
	sw  	a0, 7(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40704 !764
	addi	a0, zero, 7 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.40705 !764
beq_else.40704: !764
	sw  	a0, 8(sp) !766
	addi	a0, zero, 7 !766
	addi	sp, sp, 12 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -12 !766
	lw  	a1, 8(sp) !767
	sw  	a1, 6(a0) !767
beq_cont.40705: !764
	lw  	a1, 7(sp) !767
	sw  	a1, 5(a0) !767
beq_cont.40703: !764
	lw  	a1, 6(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.40701: !764
	lw  	a1, 5(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40699: !764
	lw  	a1, 4(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40697: !764
	lw  	a1, 3(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40695: !764
	lw  	a1, 2(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.40693: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.40706 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40706: !781
	lw  	a1, 1(sp) !783
	li  	t0, 83
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	sw  	a0, 9(sp) !763
	addi	sp, sp, 12 !763
	jal 	ra, read_int !763
	addi	sp, sp, -12 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40708 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.40709 !764
beq_else.40708: !764
	sw  	a0, 10(sp) !763
	addi	sp, sp, 12 !763
	jal 	ra, read_int !763
	addi	sp, sp, -12 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40710 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.40711 !764
beq_else.40710: !764
	sw  	a0, 11(sp) !763
	addi	sp, sp, 12 !763
	jal 	ra, read_int !763
	addi	sp, sp, -12 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40712 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 12 !764
	jal 	ra, create_array !764
	addi	sp, sp, -12 !764
	jal 	zero, beq_cont.40713 !764
beq_else.40712: !764
	sw  	a0, 12(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40714 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40715 !764
beq_else.40714: !764
	sw  	a0, 13(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40716 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40717 !764
beq_else.40716: !764
	sw  	a0, 14(sp) !763
	addi	sp, sp, 16 !763
	jal 	ra, read_int !763
	addi	sp, sp, -16 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40718 !764
	addi	a0, zero, 6 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 16 !764
	jal 	ra, create_array !764
	addi	sp, sp, -16 !764
	jal 	zero, beq_cont.40719 !764
beq_else.40718: !764
	sw  	a0, 15(sp) !766
	addi	a0, zero, 6 !766
	addi	sp, sp, 16 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -16 !766
	lw  	a1, 15(sp) !767
	sw  	a1, 5(a0) !767
beq_cont.40719: !764
	lw  	a1, 14(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.40717: !764
	lw  	a1, 13(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40715: !764
	lw  	a1, 12(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40713: !764
	lw  	a1, 11(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40711: !764
	lw  	a1, 10(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.40709: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.40720 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40720: !781
	lw  	a1, 9(sp) !783
	li  	t0, 83
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	sw  	a0, 16(sp) !763
	addi	sp, sp, 20 !763
	jal 	ra, read_int !763
	addi	sp, sp, -20 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40722 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	jal 	zero, beq_cont.40723 !764
beq_else.40722: !764
	sw  	a0, 17(sp) !763
	addi	sp, sp, 20 !763
	jal 	ra, read_int !763
	addi	sp, sp, -20 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40724 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	jal 	zero, beq_cont.40725 !764
beq_else.40724: !764
	sw  	a0, 18(sp) !763
	addi	sp, sp, 20 !763
	jal 	ra, read_int !763
	addi	sp, sp, -20 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40726 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	jal 	zero, beq_cont.40727 !764
beq_else.40726: !764
	sw  	a0, 19(sp) !763
	addi	sp, sp, 20 !763
	jal 	ra, read_int !763
	addi	sp, sp, -20 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40728 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 20 !764
	jal 	ra, create_array !764
	addi	sp, sp, -20 !764
	jal 	zero, beq_cont.40729 !764
beq_else.40728: !764
	sw  	a0, 20(sp) !763
	addi	sp, sp, 24 !763
	jal 	ra, read_int !763
	addi	sp, sp, -24 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40730 !764
	addi	a0, zero, 5 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.40731 !764
beq_else.40730: !764
	sw  	a0, 21(sp) !766
	addi	a0, zero, 5 !766
	addi	sp, sp, 24 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -24 !766
	lw  	a1, 21(sp) !767
	sw  	a1, 4(a0) !767
beq_cont.40731: !764
	lw  	a1, 20(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40729: !764
	lw  	a1, 19(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40727: !764
	lw  	a1, 18(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40725: !764
	lw  	a1, 17(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.40723: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.40732 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40732: !781
	lw  	a1, 16(sp) !783
	li  	t0, 83
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	sw  	a0, 22(sp) !763
	addi	sp, sp, 24 !763
	jal 	ra, read_int !763
	addi	sp, sp, -24 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40734 !764
	addi	a0, zero, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.40735 !764
beq_else.40734: !764
	sw  	a0, 23(sp) !763
	addi	sp, sp, 24 !763
	jal 	ra, read_int !763
	addi	sp, sp, -24 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40736 !764
	addi	a0, zero, 2 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 24 !764
	jal 	ra, create_array !764
	addi	sp, sp, -24 !764
	jal 	zero, beq_cont.40737 !764
beq_else.40736: !764
	sw  	a0, 24(sp) !763
	addi	sp, sp, 28 !763
	jal 	ra, read_int !763
	addi	sp, sp, -28 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40738 !764
	addi	a0, zero, 3 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 28 !764
	jal 	ra, create_array !764
	addi	sp, sp, -28 !764
	jal 	zero, beq_cont.40739 !764
beq_else.40738: !764
	sw  	a0, 25(sp) !763
	addi	sp, sp, 28 !763
	jal 	ra, read_int !763
	addi	sp, sp, -28 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.40740 !764
	addi	a0, zero, 4 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 28 !764
	jal 	ra, create_array !764
	addi	sp, sp, -28 !764
	jal 	zero, beq_cont.40741 !764
beq_else.40740: !764
	sw  	a0, 26(sp) !766
	addi	a0, zero, 4 !766
	addi	sp, sp, 28 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -28 !766
	lw  	a1, 26(sp) !767
	sw  	a1, 3(a0) !767
beq_cont.40741: !764
	lw  	a1, 25(sp) !767
	sw  	a1, 2(a0) !767
beq_cont.40739: !764
	lw  	a1, 24(sp) !767
	sw  	a1, 1(a0) !767
beq_cont.40737: !764
	lw  	a1, 23(sp) !767
	sw  	a1, 0(a0) !767
beq_cont.40735: !764
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.40742 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40742: !781
	lw  	a1, 22(sp) !783
	li  	t0, 83
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	lw  	ra, 0(sp)
	jal 	zero, read_and_network.2562 !784
solver_rect.2575:
	sw  	ra, 0(sp)
	lw  	fa3, 0(a1) !805
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40744 !805
	lw  	a2, 4(a0) !328
	lw  	a3, 6(a0) !280
	lw  	fa3, 0(a1) !807
	flt 	a4, fa3, zero !123
	bne 	a3, zero, beq_else.40746 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40747 !141
beq_else.40746: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40747: !141
	lw  	fa3, 0(a2) !807
	bne 	a3, zero, beq_else.40748 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.40749 !154
beq_else.40748: !154
beq_cont.40749: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a1) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a1) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a2) !810
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40750 !810
	addi	a2, zero, 0 !814
	jal 	zero, beq_cont.40751 !810
beq_else.40750: !810
	lw  	fa4, 2(a1) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a2) !811
	flt 	a2, fa4, fa5 !121
	bne 	a2, zero, beq_else.40752 !811
	addi	a2, zero, 0 !813
	jal 	zero, beq_cont.40753 !811
beq_else.40752: !811
	sw  	fa3, 135(zero) !812
	addi	a2, zero, 1 !812
beq_cont.40753: !811
beq_cont.40751: !810
	jal 	zero, beq_cont.40745 !805
beq_else.40744: !805
	addi	a2, zero, 0 !805
beq_cont.40745: !805
	bne 	a2, zero, beq_else.40754 !820
	lw  	fa3, 1(a1) !805
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40755 !805
	lw  	a2, 4(a0) !328
	lw  	a3, 6(a0) !280
	lw  	fa3, 1(a1) !807
	flt 	a4, fa3, zero !123
	bne 	a3, zero, beq_else.40757 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40758 !141
beq_else.40757: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40758: !141
	lw  	fa3, 1(a2) !807
	bne 	a3, zero, beq_else.40759 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.40760 !154
beq_else.40759: !154
beq_cont.40760: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a1) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a1) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a2) !810
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40761 !810
	addi	a2, zero, 0 !814
	jal 	zero, beq_cont.40762 !810
beq_else.40761: !810
	lw  	fa4, 0(a1) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a2) !811
	flt 	a2, fa4, fa5 !121
	bne 	a2, zero, beq_else.40763 !811
	addi	a2, zero, 0 !813
	jal 	zero, beq_cont.40764 !811
beq_else.40763: !811
	sw  	fa3, 135(zero) !812
	addi	a2, zero, 1 !812
beq_cont.40764: !811
beq_cont.40762: !810
	jal 	zero, beq_cont.40756 !805
beq_else.40755: !805
	addi	a2, zero, 0 !805
beq_cont.40756: !805
	bne 	a2, zero, beq_else.40765 !821
	lw  	fa3, 2(a1) !805
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40766 !805
	lw  	a2, 4(a0) !328
	lw  	a0, 6(a0) !280
	lw  	fa3, 2(a1) !807
	flt 	a3, fa3, zero !123
	bne 	a0, zero, beq_else.40768 !141
	addi	a0, a3, 0 !141
	jal 	zero, beq_cont.40769 !141
beq_else.40768: !141
	sub 	t0, zero, a3 !141
	addi	a0, t0, 1 !141
beq_cont.40769: !141
	lw  	fa3, 2(a2) !807
	bne 	a0, zero, beq_else.40770 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.40771 !154
beq_else.40770: !154
beq_cont.40771: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a1) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a1) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a2) !810
	flt 	a0, fa0, fa3 !121
	bne 	a0, zero, beq_else.40772 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.40773 !810
beq_else.40772: !810
	lw  	fa0, 1(a1) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a2) !811
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.40774 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.40775 !811
beq_else.40774: !811
	sw  	fa2, 135(zero) !812
	addi	a0, zero, 1 !812
beq_cont.40775: !811
beq_cont.40773: !810
	jal 	zero, beq_cont.40767 !805
beq_else.40766: !805
	addi	a0, zero, 0 !805
beq_cont.40767: !805
	bne 	a0, zero, beq_else.40776 !822
	addi	a0, zero, 0 !823
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40776: !822
	addi	a0, zero, 3 !822
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40765: !821
	addi	a0, zero, 2 !821
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40754: !820
	addi	a0, zero, 1 !820
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second.2600:
	sw  	ra, 0(sp)
	lw  	fa3, 0(a1) !879
	lw  	fa4, 1(a1) !879
	lw  	fa5, 2(a1) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 4(a0) !298
	lw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 4(a0) !308
	lw  	fs1, 1(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 4(a0) !318
	lw  	fs1, 2(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 3(a0) !289
	bne 	a2, zero, beq_else.40777 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.40778 !846
beq_else.40777: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 9(a0) !418
	lw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 9(a0) !428
	lw  	fa7, 1(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 9(a0) !438
	lw  	fa4, 2(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.40778: !846
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40779 !881
	lw  	fa4, 0(a1) !886
	lw  	fa5, 1(a1) !886
	lw  	fa6, 2(a1) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a1, 4(a0) !298
	lw  	fs1, 0(a1) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a1, 4(a0) !308
	lw  	fs2, 1(a1) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a1, 4(a0) !318
	lw  	fs2, 2(a1) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a1, 3(a0) !289
	bne 	a1, zero, beq_else.40780 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.40781 !862
beq_else.40780: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a1, 9(a0) !418
	lw  	fs2, 0(a1) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a1, 9(a0) !428
	lw  	fs2, 1(a1) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a1, 9(a0) !438
	lw  	fa5, 2(a1) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.40781: !862
	fmul	fa5, fa0, fa0 !126
	lw  	a1, 4(a0) !298
	lw  	fa6, 0(a1) !303
	fmul	fa5, fa5, fa6 !844
	fmul	fa6, fa1, fa1 !126
	lw  	a1, 4(a0) !308
	lw  	fa7, 1(a1) !313
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	fmul	fa6, fa2, fa2 !126
	lw  	a1, 4(a0) !318
	lw  	fa7, 2(a1) !323
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	lw  	a1, 3(a0) !289
	bne 	a1, zero, beq_else.40782 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.40783 !846
beq_else.40782: !846
	fmul	fa6, fa1, fa2 !850
	lw  	a1, 9(a0) !418
	lw  	fa7, 0(a1) !423
	fmul	fa6, fa6, fa7 !850
	fadd	fa5, fa5, fa6 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a1, 9(a0) !428
	lw  	fa6, 1(a1) !433
	fmul	fa2, fa2, fa6 !851
	fadd	fa2, fa5, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a1, 9(a0) !438
	lw  	fa1, 2(a1) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40783: !846
	lw  	a1, 1(a0) !260
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.40784 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.40785 !889
beq_else.40784: !889
beq_cont.40785: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40786 !893
	addi	a0, zero, 0 !899
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40786: !893
	fsqrt   fa0, fa0 !894
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.40787 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.40788 !895
beq_else.40787: !895
beq_cont.40788: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a0, zero, 1 !896
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40779: !881
	addi	a0, zero, 0 !882
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver.2606:
	sw  	ra, 0(sp)
	lw  	a0, 12(a0) !905
	lw  	fa0, 0(a2) !907
	lw  	a3, 5(a0) !338
	lw  	fa1, 0(a3) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 1(a2) !908
	lw  	a3, 5(a0) !348
	lw  	fa2, 1(a3) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 2(a2) !909
	lw  	a2, 5(a0) !358
	lw  	fa3, 2(a2) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.40789 !912
	lw  	fa3, 0(a1) !805
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40790 !805
	lw  	a2, 4(a0) !328
	lw  	a3, 6(a0) !280
	lw  	fa3, 0(a1) !807
	flt 	a4, fa3, zero !123
	bne 	a3, zero, beq_else.40792 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40793 !141
beq_else.40792: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40793: !141
	lw  	fa3, 0(a2) !807
	bne 	a3, zero, beq_else.40794 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.40795 !154
beq_else.40794: !154
beq_cont.40795: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a1) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a1) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a2) !810
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40796 !810
	addi	a2, zero, 0 !814
	jal 	zero, beq_cont.40797 !810
beq_else.40796: !810
	lw  	fa4, 2(a1) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a2) !811
	flt 	a2, fa4, fa5 !121
	bne 	a2, zero, beq_else.40798 !811
	addi	a2, zero, 0 !813
	jal 	zero, beq_cont.40799 !811
beq_else.40798: !811
	sw  	fa3, 135(zero) !812
	addi	a2, zero, 1 !812
beq_cont.40799: !811
beq_cont.40797: !810
	jal 	zero, beq_cont.40791 !805
beq_else.40790: !805
	addi	a2, zero, 0 !805
beq_cont.40791: !805
	bne 	a2, zero, beq_else.40800 !820
	lw  	fa3, 1(a1) !805
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40801 !805
	lw  	a2, 4(a0) !328
	lw  	a3, 6(a0) !280
	lw  	fa3, 1(a1) !807
	flt 	a4, fa3, zero !123
	bne 	a3, zero, beq_else.40803 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40804 !141
beq_else.40803: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40804: !141
	lw  	fa3, 1(a2) !807
	bne 	a3, zero, beq_else.40805 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.40806 !154
beq_else.40805: !154
beq_cont.40806: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a1) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a1) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a2) !810
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40807 !810
	addi	a2, zero, 0 !814
	jal 	zero, beq_cont.40808 !810
beq_else.40807: !810
	lw  	fa4, 0(a1) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a2) !811
	flt 	a2, fa4, fa5 !121
	bne 	a2, zero, beq_else.40809 !811
	addi	a2, zero, 0 !813
	jal 	zero, beq_cont.40810 !811
beq_else.40809: !811
	sw  	fa3, 135(zero) !812
	addi	a2, zero, 1 !812
beq_cont.40810: !811
beq_cont.40808: !810
	jal 	zero, beq_cont.40802 !805
beq_else.40801: !805
	addi	a2, zero, 0 !805
beq_cont.40802: !805
	bne 	a2, zero, beq_else.40811 !821
	lw  	fa3, 2(a1) !805
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40812 !805
	lw  	a2, 4(a0) !328
	lw  	a0, 6(a0) !280
	lw  	fa3, 2(a1) !807
	flt 	a3, fa3, zero !123
	bne 	a0, zero, beq_else.40814 !141
	addi	a0, a3, 0 !141
	jal 	zero, beq_cont.40815 !141
beq_else.40814: !141
	sub 	t0, zero, a3 !141
	addi	a0, t0, 1 !141
beq_cont.40815: !141
	lw  	fa3, 2(a2) !807
	bne 	a0, zero, beq_else.40816 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.40817 !154
beq_else.40816: !154
beq_cont.40817: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a1) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a1) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a2) !810
	flt 	a0, fa0, fa3 !121
	bne 	a0, zero, beq_else.40818 !810
	addi	a0, zero, 0 !814
	jal 	zero, beq_cont.40819 !810
beq_else.40818: !810
	lw  	fa0, 1(a1) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a2) !811
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.40820 !811
	addi	a0, zero, 0 !813
	jal 	zero, beq_cont.40821 !811
beq_else.40820: !811
	sw  	fa2, 135(zero) !812
	addi	a0, zero, 1 !812
beq_cont.40821: !811
beq_cont.40819: !810
	jal 	zero, beq_cont.40813 !805
beq_else.40812: !805
	addi	a0, zero, 0 !805
beq_cont.40813: !805
	bne 	a0, zero, beq_else.40822 !822
	addi	a0, zero, 0 !823
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40822: !822
	addi	a0, zero, 3 !822
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40811: !821
	addi	a0, zero, 2 !821
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40800: !820
	addi	a0, zero, 1 !820
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40789: !912
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.40823 !913
	lw  	a0, 4(a0) !328
	lw  	fa3, 0(a1) !208
	lw  	fa4, 0(a0) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a1) !208
	lw  	fa5, 1(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a1) !208
	lw  	fa5, 2(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a1, zero, fa3 !122
	bne 	a1, zero, beq_else.40824 !833
	addi	a0, zero, 0 !836
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40824: !833
	lw  	fa4, 0(a0) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a0) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a0) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a0, zero, 1 !835
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40823: !913
	lw  	fa3, 0(a1) !879
	lw  	fa4, 1(a1) !879
	lw  	fa5, 2(a1) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 4(a0) !298
	lw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 4(a0) !308
	lw  	fs1, 1(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 4(a0) !318
	lw  	fs1, 2(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 3(a0) !289
	bne 	a2, zero, beq_else.40825 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.40826 !846
beq_else.40825: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 9(a0) !418
	lw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 9(a0) !428
	lw  	fa7, 1(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 9(a0) !438
	lw  	fa4, 2(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.40826: !846
	feq 	a2, fa3, zero !124
	bne 	a2, zero, beq_else.40827 !881
	lw  	fa4, 0(a1) !886
	lw  	fa5, 1(a1) !886
	lw  	fa6, 2(a1) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a1, 4(a0) !298
	lw  	fs1, 0(a1) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a1, 4(a0) !308
	lw  	fs2, 1(a1) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a1, 4(a0) !318
	lw  	fs2, 2(a1) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a1, 3(a0) !289
	bne 	a1, zero, beq_else.40828 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.40829 !862
beq_else.40828: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a1, 9(a0) !418
	lw  	fs2, 0(a1) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a1, 9(a0) !428
	lw  	fs2, 1(a1) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a1, 9(a0) !438
	lw  	fa5, 2(a1) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.40829: !862
	fmul	fa5, fa0, fa0 !126
	lw  	a1, 4(a0) !298
	lw  	fa6, 0(a1) !303
	fmul	fa5, fa5, fa6 !844
	fmul	fa6, fa1, fa1 !126
	lw  	a1, 4(a0) !308
	lw  	fa7, 1(a1) !313
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	fmul	fa6, fa2, fa2 !126
	lw  	a1, 4(a0) !318
	lw  	fa7, 2(a1) !323
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	lw  	a1, 3(a0) !289
	bne 	a1, zero, beq_else.40830 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.40831 !846
beq_else.40830: !846
	fmul	fa6, fa1, fa2 !850
	lw  	a1, 9(a0) !418
	lw  	fa7, 0(a1) !423
	fmul	fa6, fa6, fa7 !850
	fadd	fa5, fa5, fa6 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a1, 9(a0) !428
	lw  	fa6, 1(a1) !433
	fmul	fa2, fa2, fa6 !851
	fadd	fa2, fa5, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a1, 9(a0) !438
	lw  	fa1, 2(a1) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40831: !846
	lw  	a1, 1(a0) !260
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.40832 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.40833 !889
beq_else.40832: !889
beq_cont.40833: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40834 !893
	addi	a0, zero, 0 !899
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40834: !893
	fsqrt   fa0, fa0 !894
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.40835 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.40836 !895
beq_else.40835: !895
beq_cont.40836: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a0, zero, 1 !896
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40827: !881
	addi	a0, zero, 0 !882
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_rect_fast.2610:
	sw  	ra, 0(sp)
	lw  	fa3, 0(a2) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a2) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 1(a1) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a3, 4(a0) !308
	lw  	fa5, 1(a3) !313
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40837 !924
	addi	a3, zero, 0 !928
	jal 	zero, beq_cont.40838 !924
beq_else.40837: !924
	lw  	fa4, 2(a1) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a3, 4(a0) !318
	lw  	fa5, 2(a3) !323
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40839 !925
	addi	a3, zero, 0 !927
	jal 	zero, beq_cont.40840 !925
beq_else.40839: !925
	lw  	fa4, 1(a2) !926
	feq 	a3, fa4, zero !124
	sub 	t0, zero, a3 !926
	addi	a3, t0, 1 !926
beq_cont.40840: !925
beq_cont.40838: !924
	bne 	a3, zero, beq_else.40841 !923
	lw  	fa3, 2(a2) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a2) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 0(a1) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a3, 4(a0) !298
	lw  	fa5, 0(a3) !303
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40842 !933
	addi	a3, zero, 0 !937
	jal 	zero, beq_cont.40843 !933
beq_else.40842: !933
	lw  	fa4, 2(a1) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a3, 4(a0) !318
	lw  	fa5, 2(a3) !323
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.40844 !934
	addi	a3, zero, 0 !936
	jal 	zero, beq_cont.40845 !934
beq_else.40844: !934
	lw  	fa4, 3(a2) !935
	feq 	a3, fa4, zero !124
	sub 	t0, zero, a3 !935
	addi	a3, t0, 1 !935
beq_cont.40845: !934
beq_cont.40843: !933
	bne 	a3, zero, beq_else.40846 !932
	lw  	fa3, 4(a2) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a2) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 0(a1) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a3, 4(a0) !298
	lw  	fa3, 0(a3) !303
	flt 	a3, fa0, fa3 !121
	bne 	a3, zero, beq_else.40847 !942
	addi	a0, zero, 0 !946
	jal 	zero, beq_cont.40848 !942
beq_else.40847: !942
	lw  	fa0, 1(a1) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a0, 4(a0) !308
	lw  	fa1, 1(a0) !313
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.40849 !943
	addi	a0, zero, 0 !945
	jal 	zero, beq_cont.40850 !943
beq_else.40849: !943
	lw  	fa0, 5(a2) !944
	feq 	a0, fa0, zero !124
	sub 	t0, zero, a0 !944
	addi	a0, t0, 1 !944
beq_cont.40850: !943
beq_cont.40848: !942
	bne 	a0, zero, beq_else.40851 !941
	addi	a0, zero, 0 !950
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40851: !941
	sw  	fa2, 135(zero) !948
	addi	a0, zero, 3 !948
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40846: !932
	sw  	fa3, 135(zero) !939
	addi	a0, zero, 2 !939
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40841: !923
	sw  	fa3, 135(zero) !930
	addi	a0, zero, 1 !930
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_fast.2629:
	sw  	ra, 0(sp)
	lw  	a3, 12(a0) !984
	lw  	fa0, 0(a2) !985
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !985
	lw  	fa1, 1(a2) !986
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !986
	lw  	fa2, 2(a2) !987
	lw  	a2, 5(a3) !358
	lw  	fa3, 2(a2) !363
	fsub	fa2, fa2, fa3 !987
	lw  	a2, 1(a1) !535
	lwr 	a2, a2, a0 !989
	lw  	a0, 1(a3) !260
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.40852 !991
	lw  	a1, 0(a1) !529
	addi	a0, a3, 0 !992
	lw  	ra, 0(sp)
	jal 	zero, solver_rect_fast.2610 !992
beq_else.40852: !991
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.40853 !993
	lw  	fa3, 0(a2) !955
	flt 	a0, fa3, zero !123
	bne 	a0, zero, beq_else.40854 !955
	addi	a0, zero, 0 !959
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40854: !955
	lw  	fa3, 1(a2) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a2) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a2) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a0, zero, 1 !958
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40853: !993
	lw  	fa3, 0(a2) !965
	feq 	a0, fa3, zero !124
	bne 	a0, zero, beq_else.40855 !966
	lw  	fa4, 1(a2) !969
	fmul	fa4, fa4, fa0 !969
	lw  	fa5, 2(a2) !969
	fmul	fa5, fa5, fa1 !969
	fadd	fa4, fa4, fa5 !969
	lw  	fa5, 3(a2) !969
	fmul	fa5, fa5, fa2 !969
	fadd	fa4, fa4, fa5 !969
	fmul	fa5, fa0, fa0 !126
	lw  	a0, 4(a3) !298
	lw  	fa6, 0(a0) !303
	fmul	fa5, fa5, fa6 !844
	fmul	fa6, fa1, fa1 !126
	lw  	a0, 4(a3) !308
	lw  	fa7, 1(a0) !313
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	fmul	fa6, fa2, fa2 !126
	lw  	a0, 4(a3) !318
	lw  	fa7, 2(a0) !323
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	lw  	a0, 3(a3) !289
	bne 	a0, zero, beq_else.40856 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.40857 !846
beq_else.40856: !846
	fmul	fa6, fa1, fa2 !850
	lw  	a0, 9(a3) !418
	lw  	fa7, 0(a0) !423
	fmul	fa6, fa6, fa7 !850
	fadd	fa5, fa5, fa6 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a0, 9(a3) !428
	lw  	fa6, 1(a0) !433
	fmul	fa2, fa2, fa6 !851
	fadd	fa2, fa5, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a0, 9(a3) !438
	lw  	fa1, 2(a0) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40857: !846
	lw  	a0, 1(a3) !260
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.40858 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.40859 !971
beq_else.40858: !971
beq_cont.40859: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.40860 !973
	addi	a0, zero, 0 !979
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40860: !973
	lw  	a0, 6(a3) !280
	bne 	a0, zero, beq_else.40861 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a2) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.40862 !974
beq_else.40861: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a2) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.40862: !974
	addi	a0, zero, 1 !978
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40855: !966
	addi	a0, zero, 0 !967
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_rect_table.2650:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !1051
	addi	a0, zero, 6 !1051
	addi	fa0, zero, 0
	sw  	a1, 2(sp) !1051
	addi	sp, sp, 4 !1051
	jal 	ra, create_float_array !1051
	addi	sp, sp, -4 !1051
	lw  	a1, 1(sp) !1053
	lw  	fa0, 0(a1) !1053
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.40863 !1053
	lw  	a2, 2(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 0(a1) !1057
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.40865 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40866 !141
beq_else.40865: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40866: !141
	lw  	a4, 4(a2) !298
	lw  	fa0, 0(a4) !303
	bne 	a3, zero, beq_else.40867 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.40868 !154
beq_else.40867: !154
beq_cont.40868: !154
	sw  	fa0, 0(a0) !1057
	li  	fa0, 1.000000 !1059
	lw  	fa1, 0(a1) !1059
	fdiv	fa0, fa0, fa1 !1059
	sw  	fa0, 1(a0) !1059
	jal 	zero, beq_cont.40864 !1053
beq_else.40863: !1053
	sw  	zero, 1(a0) !1054
beq_cont.40864: !1053
	lw  	fa0, 1(a1) !1061
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.40869 !1061
	lw  	a2, 2(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 1(a1) !1064
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.40871 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40872 !141
beq_else.40871: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40872: !141
	lw  	a4, 4(a2) !308
	lw  	fa0, 1(a4) !313
	bne 	a3, zero, beq_else.40873 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.40874 !154
beq_else.40873: !154
beq_cont.40874: !154
	sw  	fa0, 2(a0) !1064
	li  	fa0, 1.000000 !1065
	lw  	fa1, 1(a1) !1065
	fdiv	fa0, fa0, fa1 !1065
	sw  	fa0, 3(a0) !1065
	jal 	zero, beq_cont.40870 !1061
beq_else.40869: !1061
	sw  	zero, 3(a0) !1062
beq_cont.40870: !1061
	lw  	fa0, 2(a1) !1067
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.40875 !1067
	lw  	a2, 2(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 2(a1) !1070
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.40877 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40878 !141
beq_else.40877: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40878: !141
	lw  	a2, 4(a2) !318
	lw  	fa0, 2(a2) !323
	bne 	a3, zero, beq_else.40879 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.40880 !154
beq_else.40879: !154
beq_cont.40880: !154
	sw  	fa0, 4(a0) !1070
	li  	fa0, 1.000000 !1071
	lw  	fa1, 2(a1) !1071
	fdiv	fa0, fa0, fa1 !1071
	sw  	fa0, 5(a0) !1071
	jal 	zero, beq_cont.40876 !1067
beq_else.40875: !1067
	sw  	zero, 5(a0) !1068
beq_cont.40876: !1067
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_second_table.2656:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !1097
	addi	a0, zero, 5 !1097
	addi	fa0, zero, 0
	sw  	a1, 2(sp) !1097
	addi	sp, sp, 4 !1097
	jal 	ra, create_float_array !1097
	addi	sp, sp, -4 !1097
	lw  	a1, 1(sp) !1099
	lw  	fa0, 0(a1) !1099
	lw  	fa1, 1(a1) !1099
	lw  	fa2, 2(a1) !1099
	fmul	fa3, fa0, fa0 !126
	lw  	a2, 2(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa4, 0(a3) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a3, 4(a2) !308
	lw  	fa5, 1(a3) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a3, 4(a2) !318
	lw  	fa5, 2(a3) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.40881 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.40882 !846
beq_else.40881: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a3, 9(a2) !418
	lw  	fa5, 0(a3) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a3, 9(a2) !428
	lw  	fa4, 1(a3) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a3, 9(a2) !438
	lw  	fa1, 2(a3) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40882: !846
	lw  	fa1, 0(a1) !1100
	lw  	a3, 4(a2) !298
	lw  	fa2, 0(a3) !303
	fmul	fa1, fa1, fa2 !1100
	fsgnjn  fa1, fa1, fa1 !1100
	lw  	fa2, 1(a1) !1101
	lw  	a3, 4(a2) !308
	lw  	fa3, 1(a3) !313
	fmul	fa2, fa2, fa3 !1101
	fsgnjn  fa2, fa2, fa2 !1101
	lw  	fa3, 2(a1) !1102
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	fmul	fa3, fa3, fa4 !1102
	fsgnjn  fa3, fa3, fa3 !1102
	sw  	fa0, 0(a0) !1104
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.40883 !1107
	sw  	fa1, 1(a0) !1112
	sw  	fa2, 2(a0) !1113
	sw  	fa3, 3(a0) !1114
	jal 	zero, beq_cont.40884 !1107
beq_else.40883: !1107
	lw  	fa4, 2(a1) !1108
	lw  	a3, 9(a2) !428
	lw  	fa5, 1(a3) !433
	fmul	fa4, fa4, fa5 !1108
	lw  	fa5, 1(a1) !1108
	lw  	a3, 9(a2) !438
	lw  	fa6, 2(a3) !443
	fmul	fa5, fa5, fa6 !1108
	fadd	fa4, fa4, fa5 !1108
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fsub	fa1, fa1, fa4 !1108
	sw  	fa1, 1(a0) !1108
	lw  	fa1, 2(a1) !1109
	lw  	a3, 9(a2) !418
	lw  	fa4, 0(a3) !423
	fmul	fa1, fa1, fa4 !1109
	lw  	fa4, 0(a1) !1109
	lw  	a3, 9(a2) !438
	lw  	fa5, 2(a3) !443
	fmul	fa4, fa4, fa5 !1109
	fadd	fa1, fa1, fa4 !1109
	li  	fa4, 2.000000 !125
	fdiv	fa1, fa1, fa4 !125
	fsub	fa1, fa2, fa1 !1109
	sw  	fa1, 2(a0) !1109
	lw  	fa1, 1(a1) !1110
	lw  	a3, 9(a2) !418
	lw  	fa2, 0(a3) !423
	fmul	fa1, fa1, fa2 !1110
	lw  	fa2, 0(a1) !1110
	lw  	a1, 9(a2) !428
	lw  	fa4, 1(a1) !433
	fmul	fa2, fa2, fa4 !1110
	fadd	fa1, fa1, fa2 !1110
	li  	fa2, 2.000000 !125
	fdiv	fa1, fa1, fa2 !125
	fsub	fa1, fa3, fa1 !1110
	sw  	fa1, 3(a0) !1110
beq_cont.40884: !1107
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_cont.40886 !1116
	li  	fa1, 1.000000 !1117
	fdiv	fa0, fa1, fa0 !1117
	sw  	fa0, 4(a0) !1117
beq_cont.40886: !1116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_setup_dirvec_constants.2659:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.40887 !1125
	lw  	a2, 12(a1) !1126
	lw  	a3, 1(a0) !535
	sw  	a3, 1(sp) !529
	lw  	a3, 0(a0) !529
	lw  	a4, 1(a2) !260
	sw  	a0, 2(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40888 !1130
	addi	a0, zero, 6 !1051
	addi	fa0, zero, 0
	sw  	a1, 3(sp) !1051
	sw  	a2, 4(sp) !1051
	sw  	a3, 5(sp) !1051
	addi	sp, sp, 8 !1051
	jal 	ra, create_float_array !1051
	addi	sp, sp, -8 !1051
	lw  	a1, 5(sp) !1053
	lw  	fa0, 0(a1) !1053
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.40890 !1053
	lw  	a2, 4(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 0(a1) !1057
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.40892 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40893 !141
beq_else.40892: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40893: !141
	lw  	a4, 4(a2) !298
	lw  	fa0, 0(a4) !303
	bne 	a3, zero, beq_else.40894 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.40895 !154
beq_else.40894: !154
beq_cont.40895: !154
	sw  	fa0, 0(a0) !1057
	li  	fa0, 1.000000 !1059
	lw  	fa1, 0(a1) !1059
	fdiv	fa0, fa0, fa1 !1059
	sw  	fa0, 1(a0) !1059
	jal 	zero, beq_cont.40891 !1053
beq_else.40890: !1053
	sw  	zero, 1(a0) !1054
beq_cont.40891: !1053
	lw  	fa0, 1(a1) !1061
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.40896 !1061
	lw  	a2, 4(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 1(a1) !1064
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.40898 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40899 !141
beq_else.40898: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40899: !141
	lw  	a4, 4(a2) !308
	lw  	fa0, 1(a4) !313
	bne 	a3, zero, beq_else.40900 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.40901 !154
beq_else.40900: !154
beq_cont.40901: !154
	sw  	fa0, 2(a0) !1064
	li  	fa0, 1.000000 !1065
	lw  	fa1, 1(a1) !1065
	fdiv	fa0, fa0, fa1 !1065
	sw  	fa0, 3(a0) !1065
	jal 	zero, beq_cont.40897 !1061
beq_else.40896: !1061
	sw  	zero, 3(a0) !1062
beq_cont.40897: !1061
	lw  	fa0, 2(a1) !1067
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.40902 !1067
	lw  	a2, 4(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 2(a1) !1070
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.40904 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.40905 !141
beq_else.40904: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.40905: !141
	lw  	a2, 4(a2) !318
	lw  	fa0, 2(a2) !323
	bne 	a3, zero, beq_else.40906 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.40907 !154
beq_else.40906: !154
beq_cont.40907: !154
	sw  	fa0, 4(a0) !1070
	li  	fa0, 1.000000 !1071
	lw  	fa1, 2(a1) !1071
	fdiv	fa0, fa0, fa1 !1071
	sw  	fa0, 5(a0) !1071
	jal 	zero, beq_cont.40903 !1067
beq_else.40902: !1067
	sw  	zero, 5(a0) !1068
beq_cont.40903: !1067
	lw  	a1, 3(sp) !1131
	lw  	a2, 1(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40889 !1130
beq_else.40888: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40908 !1132
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a1, 3(sp) !1078
	sw  	a2, 4(sp) !1078
	sw  	a3, 5(sp) !1078
	addi	sp, sp, 8 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -8 !1078
	lw  	a1, 5(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 4(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40910 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40911 !1082
beq_else.40910: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40911: !1082
	lw  	a1, 3(sp) !1133
	lw  	a2, 1(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40909 !1132
beq_else.40908: !1132
	sw  	a1, 3(sp) !1135
	addi	a1, a2, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 8 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -8 !1135
	lw  	a1, 3(sp) !1135
	lw  	a2, 1(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40909: !1132
beq_cont.40889: !1130
	addi	a0, a1, -1 !1137
	blt 	a0, zero, bge_else.40912 !1125
	lw  	a1, 12(a0) !1126
	lw  	a2, 2(sp) !535
	lw  	a3, 1(a2) !535
	sw  	a3, 6(sp) !529
	lw  	a3, 0(a2) !529
	lw  	a4, 1(a1) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.40913 !1130
	sw  	a0, 7(sp) !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 8 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -8 !1131
	lw  	a1, 7(sp) !1131
	lw  	a2, 6(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.40914 !1130
beq_else.40913: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40915 !1132
	sw  	a0, 7(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a1, 8(sp) !1078
	sw  	a3, 9(sp) !1078
	addi	sp, sp, 12 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -12 !1078
	lw  	a1, 9(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 8(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.40917 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.40918 !1082
beq_else.40917: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.40918: !1082
	lw  	a1, 7(sp) !1133
	lw  	a2, 6(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.40916 !1132
beq_else.40915: !1132
	sw  	a0, 7(sp) !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 12 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -12 !1135
	lw  	a1, 7(sp) !1135
	lw  	a2, 6(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.40916: !1132
beq_cont.40914: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 2(sp) !1137
	lw  	ra, 0(sp)
	jal 	zero, iter_setup_dirvec_constants.2659 !1137
bge_else.40912: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40887: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp_constants.2664:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.40921 !1148
	lw  	a2, 12(a1) !1149
	lw  	a3, 10(a2) !449
	lw  	a4, 1(a2) !260
	lw  	fa0, 0(a0) !1152
	lw  	a5, 5(a2) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a0) !1153
	lw  	a5, 5(a2) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a0) !1154
	lw  	a5, 5(a2) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40922 !1155
	lw  	a2, 4(a2) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a2) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a2) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a2) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.40923 !1155
beq_else.40922: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.40925 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a2) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a2) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a2) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a2) !289
	bne 	a5, zero, beq_else.40926 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.40927 !846
beq_else.40926: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a2) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a2) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a2, 9(a2) !438
	lw  	fa1, 2(a2) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40927: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.40928 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.40929 !1160
beq_else.40928: !1160
beq_cont.40929: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.40925: !1158
beq_cont.40923: !1155
	addi	a1, a1, -1 !1162
	blt 	a1, zero, bge_else.40930 !1148
	lw  	a2, 12(a1) !1149
	lw  	a3, 10(a2) !449
	lw  	a4, 1(a2) !260
	lw  	fa0, 0(a0) !1152
	lw  	a5, 5(a2) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a0) !1153
	lw  	a5, 5(a2) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a0) !1154
	lw  	a5, 5(a2) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40931 !1155
	lw  	a2, 4(a2) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a2) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a2) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a2) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.40932 !1155
beq_else.40931: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.40934 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a2) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a2) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a2) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a2) !289
	bne 	a5, zero, beq_else.40935 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.40936 !846
beq_else.40935: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a2) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a2) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a2, 9(a2) !438
	lw  	fa1, 2(a2) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40936: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.40937 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.40938 !1160
beq_else.40937: !1160
beq_cont.40938: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.40934: !1158
beq_cont.40932: !1155
	addi	a1, a1, -1 !1162
	lw  	ra, 0(sp)
	jal 	zero, setup_startp_constants.2664 !1162
bge_else.40930: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.40921: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp.2667:
	sw  	ra, 0(sp)
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	blt 	a1, zero, bge_else.40941 !1148
	lw  	a2, 12(a1) !1149
	lw  	a3, 10(a2) !449
	lw  	a4, 1(a2) !260
	lw  	fa0, 0(a0) !1152
	lw  	a5, 5(a2) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a0) !1153
	lw  	a5, 5(a2) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a0) !1154
	lw  	a5, 5(a2) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.40942 !1155
	lw  	a2, 4(a2) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a2) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a2) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a2) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.40943 !1155
beq_else.40942: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.40945 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a2) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a2) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a2) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a2) !289
	bne 	a5, zero, beq_else.40946 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.40947 !846
beq_else.40946: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a2) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a2) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a2, 9(a2) !438
	lw  	fa1, 2(a2) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40947: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.40948 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.40949 !1160
beq_else.40948: !1160
beq_cont.40949: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.40945: !1158
beq_cont.40943: !1155
	addi	a1, a1, -1 !1162
	lw  	ra, 0(sp)
	jal 	zero, setup_startp_constants.2664 !1162
bge_else.40941: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
is_outside.2684:
	sw  	ra, 0(sp)
	lw  	a1, 5(a0) !338
	lw  	fa3, 0(a1) !343
	fsub	fa0, fa0, fa3 !1201
	lw  	a1, 5(a0) !348
	lw  	fa3, 1(a1) !353
	fsub	fa1, fa1, fa3 !1202
	lw  	a1, 5(a0) !358
	lw  	fa3, 2(a1) !363
	fsub	fa2, fa2, fa3 !1203
	lw  	a1, 1(a0) !260
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.40951 !1205
	fsgnjx  fa0, fa0, fa0 !1178
	lw  	a1, 4(a0) !298
	lw  	fa3, 0(a1) !303
	flt 	a1, fa0, fa3 !121
	bne 	a1, zero, beq_else.40952 !1178
	addi	a1, zero, 0 !1182
	jal 	zero, beq_cont.40953 !1178
beq_else.40952: !1178
	fsgnjx  fa0, fa1, fa1 !1179
	lw  	a1, 4(a0) !308
	lw  	fa1, 1(a1) !313
	flt 	a1, fa0, fa1 !121
	bne 	a1, zero, beq_else.40954 !1179
	addi	a1, zero, 0 !1181
	jal 	zero, beq_cont.40955 !1179
beq_else.40954: !1179
	fsgnjx  fa0, fa2, fa2 !1180
	lw  	a1, 4(a0) !318
	lw  	fa1, 2(a1) !323
	flt 	a1, fa0, fa1 !121
beq_cont.40955: !1179
beq_cont.40953: !1178
	bne 	a1, zero, beq_else.40956 !1177
	lw  	a0, 6(a0) !280
	sub 	t0, zero, a0 !1183
	addi	a0, t0, 1 !1183
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40956: !1177
	lw  	a0, 6(a0) !280
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40951: !1205
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.40957 !1207
	lw  	a1, 4(a0) !328
	lw  	fa3, 0(a1) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a1) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a1) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	lw  	a0, 6(a0) !280
	flt 	a1, fa0, zero !123
	bne 	a0, zero, beq_else.40958 !141
	addi	a0, a1, 0 !141
	jal 	zero, beq_cont.40959 !141
beq_else.40958: !141
	sub 	t0, zero, a1 !141
	addi	a0, t0, 1 !141
beq_cont.40959: !141
	sub 	t0, zero, a0 !1189
	addi	a0, t0, 1 !1189
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40957: !1207
	fmul	fa3, fa0, fa0 !126
	lw  	a1, 4(a0) !298
	lw  	fa4, 0(a1) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a1, 4(a0) !308
	lw  	fa5, 1(a1) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a1, 4(a0) !318
	lw  	fa5, 2(a1) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a1, 3(a0) !289
	bne 	a1, zero, beq_else.40960 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.40961 !846
beq_else.40960: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a1, 9(a0) !418
	lw  	fa5, 0(a1) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a1, 9(a0) !428
	lw  	fa4, 1(a1) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a1, 9(a0) !438
	lw  	fa1, 2(a1) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.40961: !846
	lw  	a1, 1(a0) !260
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.40962 !1195
	li  	fa1, 1.000000 !1195
	fsub	fa0, fa0, fa1 !1195
	jal 	zero, beq_cont.40963 !1195
beq_else.40962: !1195
beq_cont.40963: !1195
	lw  	a0, 6(a0) !280
	flt 	a1, fa0, zero !123
	bne 	a0, zero, beq_else.40964 !141
	addi	a0, a1, 0 !141
	jal 	zero, beq_cont.40965 !141
beq_else.40964: !141
	sub 	t0, zero, a1 !141
	addi	a0, t0, 1 !141
beq_cont.40965: !141
	sub 	t0, zero, a0 !1196
	addi	a0, t0, 1 !1196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
check_all_inside.2689:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.40966 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40966: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa3, 0(a3) !343
	fsub	fa3, fa0, fa3 !1201
	lw  	a3, 5(a2) !348
	lw  	fa4, 1(a3) !353
	fsub	fa4, fa1, fa4 !1202
	lw  	a3, 5(a2) !358
	lw  	fa5, 2(a3) !363
	fsub	fa5, fa2, fa5 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.40967 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a3, 4(a2) !298
	lw  	fa6, 0(a3) !303
	flt 	a3, fa3, fa6 !121
	bne 	a3, zero, beq_else.40969 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.40970 !1178
beq_else.40969: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a3, 4(a2) !308
	lw  	fa4, 1(a3) !313
	flt 	a3, fa3, fa4 !121
	bne 	a3, zero, beq_else.40971 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.40972 !1179
beq_else.40971: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	flt 	a3, fa3, fa4 !121
beq_cont.40972: !1179
beq_cont.40970: !1178
	bne 	a3, zero, beq_else.40973 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.40974 !1177
beq_else.40973: !1177
	lw  	a2, 6(a2) !280
beq_cont.40974: !1177
	jal 	zero, beq_cont.40968 !1205
beq_else.40967: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.40975 !1207
	lw  	a3, 4(a2) !328
	lw  	fa6, 0(a3) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a3) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a3) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.40977 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.40978 !141
beq_else.40977: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.40978: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.40976 !1207
beq_else.40975: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !308
	lw  	fs1, 1(a3) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a3, 4(a2) !318
	lw  	fs1, 2(a3) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.40979 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.40980 !846
beq_else.40979: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a3, 9(a2) !418
	lw  	fs1, 0(a3) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a3, 9(a2) !428
	lw  	fa7, 1(a3) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a3, 9(a2) !438
	lw  	fa4, 2(a3) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.40980: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.40981 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.40982 !1195
beq_else.40981: !1195
beq_cont.40982: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.40983 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.40984 !141
beq_else.40983: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.40984: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.40976: !1207
beq_cont.40968: !1205
	bne 	a2, zero, beq_else.40985 !1219
	addi	a0, a0, 1 !1222
	lwr 	a2, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.40986 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40986: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa3, 0(a3) !343
	fsub	fa3, fa0, fa3 !1201
	lw  	a3, 5(a2) !348
	lw  	fa4, 1(a3) !353
	fsub	fa4, fa1, fa4 !1202
	lw  	a3, 5(a2) !358
	lw  	fa5, 2(a3) !363
	fsub	fa5, fa2, fa5 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.40987 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a3, 4(a2) !298
	lw  	fa6, 0(a3) !303
	flt 	a3, fa3, fa6 !121
	bne 	a3, zero, beq_else.40989 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.40990 !1178
beq_else.40989: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a3, 4(a2) !308
	lw  	fa4, 1(a3) !313
	flt 	a3, fa3, fa4 !121
	bne 	a3, zero, beq_else.40991 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.40992 !1179
beq_else.40991: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	flt 	a3, fa3, fa4 !121
beq_cont.40992: !1179
beq_cont.40990: !1178
	bne 	a3, zero, beq_else.40993 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.40994 !1177
beq_else.40993: !1177
	lw  	a2, 6(a2) !280
beq_cont.40994: !1177
	jal 	zero, beq_cont.40988 !1205
beq_else.40987: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.40995 !1207
	lw  	a3, 4(a2) !328
	lw  	fa6, 0(a3) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a3) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a3) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.40997 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.40998 !141
beq_else.40997: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.40998: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.40996 !1207
beq_else.40995: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !308
	lw  	fs1, 1(a3) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a3, 4(a2) !318
	lw  	fs1, 2(a3) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.40999 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.41000 !846
beq_else.40999: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a3, 9(a2) !418
	lw  	fs1, 0(a3) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a3, 9(a2) !428
	lw  	fa7, 1(a3) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a3, 9(a2) !438
	lw  	fa4, 2(a3) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.41000: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.41001 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.41002 !1195
beq_else.41001: !1195
beq_cont.41002: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.41003 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41004 !141
beq_else.41003: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41004: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.40996: !1207
beq_cont.40988: !1205
	bne 	a2, zero, beq_else.41005 !1219
	addi	a0, a0, 1 !1222
	lwr 	a2, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41006 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41006: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa3, 0(a3) !343
	fsub	fa3, fa0, fa3 !1201
	lw  	a3, 5(a2) !348
	lw  	fa4, 1(a3) !353
	fsub	fa4, fa1, fa4 !1202
	lw  	a3, 5(a2) !358
	lw  	fa5, 2(a3) !363
	fsub	fa5, fa2, fa5 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.41007 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a3, 4(a2) !298
	lw  	fa6, 0(a3) !303
	flt 	a3, fa3, fa6 !121
	bne 	a3, zero, beq_else.41009 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.41010 !1178
beq_else.41009: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a3, 4(a2) !308
	lw  	fa4, 1(a3) !313
	flt 	a3, fa3, fa4 !121
	bne 	a3, zero, beq_else.41011 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.41012 !1179
beq_else.41011: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	flt 	a3, fa3, fa4 !121
beq_cont.41012: !1179
beq_cont.41010: !1178
	bne 	a3, zero, beq_else.41013 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.41014 !1177
beq_else.41013: !1177
	lw  	a2, 6(a2) !280
beq_cont.41014: !1177
	jal 	zero, beq_cont.41008 !1205
beq_else.41007: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.41015 !1207
	lw  	a3, 4(a2) !328
	lw  	fa6, 0(a3) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a3) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a3) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.41017 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41018 !141
beq_else.41017: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41018: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.41016 !1207
beq_else.41015: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !308
	lw  	fs1, 1(a3) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a3, 4(a2) !318
	lw  	fs1, 2(a3) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.41019 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.41020 !846
beq_else.41019: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a3, 9(a2) !418
	lw  	fs1, 0(a3) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a3, 9(a2) !428
	lw  	fa7, 1(a3) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a3, 9(a2) !438
	lw  	fa4, 2(a3) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.41020: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.41021 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.41022 !1195
beq_else.41021: !1195
beq_cont.41022: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.41023 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41024 !141
beq_else.41023: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41024: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.41016: !1207
beq_cont.41008: !1205
	bne 	a2, zero, beq_else.41025 !1219
	addi	a0, a0, 1 !1222
	sw  	a0, 1(sp) !1215
	lwr 	a0, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41026 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41026: !1216
	lw  	a0, 12(a0) !1219
	sw  	fa2, 2(sp) !1219
	sw  	fa1, 3(sp) !1219
	sw  	fa0, 4(sp) !1219
	sw  	a1, 5(sp) !1219
	addi	sp, sp, 8 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -8 !1219
	bne 	a0, zero, beq_else.41027 !1219
	lw  	a0, 1(sp) !1222
	addi	a0, a0, 1 !1222
	lw  	fa0, 4(sp) !1222
	lw  	fa1, 3(sp) !1222
	lw  	fa2, 2(sp) !1222
	lw  	a1, 5(sp) !1222
	lw  	ra, 0(sp)
	jal 	zero, check_all_inside.2689 !1222
beq_else.41027: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41025: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41005: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.40985: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_and_group.2695:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41028 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41028: !1233
	lwr 	a2, a1, a0 !1236
	lw  	a3, 12(a2) !984
	lw  	fa0, 138(zero) !985
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !985
	lw  	fa1, 139(zero) !986
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !986
	lw  	fa2, 140(zero) !987
	lw  	a4, 5(a3) !358
	lw  	fa3, 2(a4) !363
	fsub	fa2, fa2, fa3 !987
	lw  	a4, 187(a2) !989
	lw  	a5, 1(a3) !260
	sw  	a1, 1(sp) !991
	sw  	a0, 2(sp) !991
	sw  	a2, 3(sp) !991
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.41029 !991
	addi	a1, zero, 184 !0
	addi	a2, a4, 0 !992
	addi	a0, a3, 0 !992
	addi	sp, sp, 4 !992
	jal 	ra, solver_rect_fast.2610 !992
	addi	sp, sp, -4 !992
	jal 	zero, beq_cont.41030 !991
beq_else.41029: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.41031 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.41033 !955
	addi	a0, zero, 0 !959
	jal 	zero, beq_cont.41034 !955
beq_else.41033: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a0, zero, 1 !958
beq_cont.41034: !955
	jal 	zero, beq_cont.41032 !993
beq_else.41031: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.41035 !966
	lw  	fa4, 1(a4) !969
	fmul	fa4, fa4, fa0 !969
	lw  	fa5, 2(a4) !969
	fmul	fa5, fa5, fa1 !969
	fadd	fa4, fa4, fa5 !969
	lw  	fa5, 3(a4) !969
	fmul	fa5, fa5, fa2 !969
	fadd	fa4, fa4, fa5 !969
	fmul	fa5, fa0, fa0 !126
	lw  	a5, 4(a3) !298
	lw  	fa6, 0(a5) !303
	fmul	fa5, fa5, fa6 !844
	fmul	fa6, fa1, fa1 !126
	lw  	a5, 4(a3) !308
	lw  	fa7, 1(a5) !313
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	fmul	fa6, fa2, fa2 !126
	lw  	a5, 4(a3) !318
	lw  	fa7, 2(a5) !323
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.41037 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.41038 !846
beq_else.41037: !846
	fmul	fa6, fa1, fa2 !850
	lw  	a5, 9(a3) !418
	lw  	fa7, 0(a5) !423
	fmul	fa6, fa6, fa7 !850
	fadd	fa5, fa5, fa6 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a3) !428
	lw  	fa6, 1(a5) !433
	fmul	fa2, fa2, fa6 !851
	fadd	fa2, fa5, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a5, 9(a3) !438
	lw  	fa1, 2(a5) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.41038: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.41039 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.41040 !971
beq_else.41039: !971
beq_cont.41040: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.41041 !973
	addi	a0, zero, 0 !979
	jal 	zero, beq_cont.41042 !973
beq_else.41041: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.41043 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.41044 !974
beq_else.41043: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.41044: !974
	addi	a0, zero, 1 !978
beq_cont.41042: !973
	jal 	zero, beq_cont.41036 !966
beq_else.41035: !966
	addi	a0, zero, 0 !967
beq_cont.41036: !966
beq_cont.41032: !993
beq_cont.41030: !991
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41045 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41046 !1239
beq_else.41045: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41046: !1239
	bne 	a0, zero, beq_else.41047 !1239
	lw  	a0, 3(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41048 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41048: !1255
	lw  	a0, 2(sp) !1256
	addi	a0, a0, 1 !1256
	lw  	a1, 1(sp) !1233
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41049 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41049: !1233
	sw  	a0, 4(sp) !1236
	lwr 	a0, a1, a0 !1236
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	sw  	a0, 5(sp) !1237
	addi	sp, sp, 8 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -8 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41050 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41051 !1239
beq_else.41050: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41051: !1239
	bne 	a0, zero, beq_else.41052 !1239
	lw  	a0, 5(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41053 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41053: !1255
	lw  	a0, 4(sp) !1256
	addi	a0, a0, 1 !1256
	lw  	a1, 1(sp) !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.41052: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	lw  	a1, 1(sp) !1215
	lw  	a0, 0(a1) !1215
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41054 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41055 !1216
beq_else.41054: !1216
	lw  	a0, 12(a0) !1219
	lw  	a2, 5(a0) !338
	lw  	fa3, 0(a2) !343
	fsub	fa3, fa1, fa3 !1201
	lw  	a2, 5(a0) !348
	lw  	fa4, 1(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 5(a0) !358
	lw  	fa5, 2(a2) !363
	fsub	fa5, fa0, fa5 !1203
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.41056 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a2, 4(a0) !298
	lw  	fa6, 0(a2) !303
	flt 	a2, fa3, fa6 !121
	bne 	a2, zero, beq_else.41058 !1178
	addi	a2, zero, 0 !1182
	jal 	zero, beq_cont.41059 !1178
beq_else.41058: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a2, 4(a0) !308
	lw  	fa4, 1(a2) !313
	flt 	a2, fa3, fa4 !121
	bne 	a2, zero, beq_else.41060 !1179
	addi	a2, zero, 0 !1181
	jal 	zero, beq_cont.41061 !1179
beq_else.41060: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a2, 4(a0) !318
	lw  	fa4, 2(a2) !323
	flt 	a2, fa3, fa4 !121
beq_cont.41061: !1179
beq_cont.41059: !1178
	bne 	a2, zero, beq_else.41062 !1177
	lw  	a0, 6(a0) !280
	sub 	t0, zero, a0 !1183
	addi	a0, t0, 1 !1183
	jal 	zero, beq_cont.41063 !1177
beq_else.41062: !1177
	lw  	a0, 6(a0) !280
beq_cont.41063: !1177
	jal 	zero, beq_cont.41057 !1205
beq_else.41056: !1205
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.41064 !1207
	lw  	a2, 4(a0) !328
	lw  	fa6, 0(a2) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a2) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a2) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a0, 6(a0) !280
	flt 	a2, fa3, zero !123
	bne 	a0, zero, beq_else.41066 !141
	addi	a0, a2, 0 !141
	jal 	zero, beq_cont.41067 !141
beq_else.41066: !141
	sub 	t0, zero, a2 !141
	addi	a0, t0, 1 !141
beq_cont.41067: !141
	sub 	t0, zero, a0 !1189
	addi	a0, t0, 1 !1189
	jal 	zero, beq_cont.41065 !1207
beq_else.41064: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 4(a0) !298
	lw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 4(a0) !308
	lw  	fs1, 1(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 4(a0) !318
	lw  	fs1, 2(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 3(a0) !289
	bne 	a2, zero, beq_else.41068 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.41069 !846
beq_else.41068: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 9(a0) !418
	lw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 9(a0) !428
	lw  	fa7, 1(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 9(a0) !438
	lw  	fa4, 2(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.41069: !846
	lw  	a2, 1(a0) !260
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.41070 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.41071 !1195
beq_else.41070: !1195
beq_cont.41071: !1195
	lw  	a0, 6(a0) !280
	flt 	a2, fa3, zero !123
	bne 	a0, zero, beq_else.41072 !141
	addi	a0, a2, 0 !141
	jal 	zero, beq_cont.41073 !141
beq_else.41072: !141
	sub 	t0, zero, a2 !141
	addi	a0, t0, 1 !141
beq_cont.41073: !141
	sub 	t0, zero, a0 !1196
	addi	a0, t0, 1 !1196
beq_cont.41065: !1207
beq_cont.41057: !1205
	bne 	a0, zero, beq_else.41074 !1219
	lw  	a0, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41076 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41077 !1216
beq_else.41076: !1216
	lw  	a0, 12(a0) !1219
	sw  	fa0, 6(sp) !1219
	sw  	fa2, 7(sp) !1219
	sw  	fa1, 8(sp) !1219
	fsgnj   t0, fa2, fa2 !1219
	fsgnj   fa2, fa0, fa0 !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, t0, t0 !1219
	addi	sp, sp, 12 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -12 !1219
	bne 	a0, zero, beq_else.41078 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 8(sp) !1222
	lw  	fa1, 7(sp) !1222
	lw  	fa2, 6(sp) !1222
	lw  	a1, 1(sp) !1222
	addi	sp, sp, 12 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -12 !1222
	jal 	zero, beq_cont.41079 !1219
beq_else.41078: !1219
	addi	a0, zero, 0 !1220
beq_cont.41079: !1219
beq_cont.41077: !1216
	jal 	zero, beq_cont.41075 !1219
beq_else.41074: !1219
	addi	a0, zero, 0 !1220
beq_cont.41075: !1219
beq_cont.41055: !1216
	bne 	a0, zero, beq_else.41080 !1246
	lw  	a0, 4(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 1(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.41080: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41047: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	lw  	a0, 1(sp) !1215
	lw  	a1, 0(a0) !1215
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41081 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41082 !1216
beq_else.41081: !1216
	lw  	a1, 12(a1) !1219
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa3, fa1, fa3 !1201
	lw  	a2, 5(a1) !348
	lw  	fa4, 1(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 5(a1) !358
	lw  	fa5, 2(a2) !363
	fsub	fa5, fa0, fa5 !1203
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.41083 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a2, 4(a1) !298
	lw  	fa6, 0(a2) !303
	flt 	a2, fa3, fa6 !121
	bne 	a2, zero, beq_else.41085 !1178
	addi	a2, zero, 0 !1182
	jal 	zero, beq_cont.41086 !1178
beq_else.41085: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a2, 4(a1) !308
	lw  	fa4, 1(a2) !313
	flt 	a2, fa3, fa4 !121
	bne 	a2, zero, beq_else.41087 !1179
	addi	a2, zero, 0 !1181
	jal 	zero, beq_cont.41088 !1179
beq_else.41087: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a2, 4(a1) !318
	lw  	fa4, 2(a2) !323
	flt 	a2, fa3, fa4 !121
beq_cont.41088: !1179
beq_cont.41086: !1178
	bne 	a2, zero, beq_else.41089 !1177
	lw  	a1, 6(a1) !280
	sub 	t0, zero, a1 !1183
	addi	a1, t0, 1 !1183
	jal 	zero, beq_cont.41090 !1177
beq_else.41089: !1177
	lw  	a1, 6(a1) !280
beq_cont.41090: !1177
	jal 	zero, beq_cont.41084 !1205
beq_else.41083: !1205
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.41091 !1207
	lw  	a2, 4(a1) !328
	lw  	fa6, 0(a2) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a2) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a2) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a1, 6(a1) !280
	flt 	a2, fa3, zero !123
	bne 	a1, zero, beq_else.41093 !141
	addi	a1, a2, 0 !141
	jal 	zero, beq_cont.41094 !141
beq_else.41093: !141
	sub 	t0, zero, a2 !141
	addi	a1, t0, 1 !141
beq_cont.41094: !141
	sub 	t0, zero, a1 !1189
	addi	a1, t0, 1 !1189
	jal 	zero, beq_cont.41092 !1207
beq_else.41091: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 4(a1) !298
	lw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 4(a1) !308
	lw  	fs1, 1(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 4(a1) !318
	lw  	fs1, 2(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 3(a1) !289
	bne 	a2, zero, beq_else.41095 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.41096 !846
beq_else.41095: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 9(a1) !418
	lw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 9(a1) !428
	lw  	fa7, 1(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 9(a1) !438
	lw  	fa4, 2(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.41096: !846
	lw  	a2, 1(a1) !260
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.41097 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.41098 !1195
beq_else.41097: !1195
beq_cont.41098: !1195
	lw  	a1, 6(a1) !280
	flt 	a2, fa3, zero !123
	bne 	a1, zero, beq_else.41099 !141
	addi	a1, a2, 0 !141
	jal 	zero, beq_cont.41100 !141
beq_else.41099: !141
	sub 	t0, zero, a2 !141
	addi	a1, t0, 1 !141
beq_cont.41100: !141
	sub 	t0, zero, a1 !1196
	addi	a1, t0, 1 !1196
beq_cont.41092: !1207
beq_cont.41084: !1205
	bne 	a1, zero, beq_else.41101 !1219
	lw  	a1, 1(a0) !1215
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41103 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41104 !1216
beq_else.41103: !1216
	lw  	a1, 12(a1) !1219
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa3, fa1, fa3 !1201
	lw  	a2, 5(a1) !348
	lw  	fa4, 1(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 5(a1) !358
	lw  	fa5, 2(a2) !363
	fsub	fa5, fa0, fa5 !1203
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.41105 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a2, 4(a1) !298
	lw  	fa6, 0(a2) !303
	flt 	a2, fa3, fa6 !121
	bne 	a2, zero, beq_else.41107 !1178
	addi	a2, zero, 0 !1182
	jal 	zero, beq_cont.41108 !1178
beq_else.41107: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a2, 4(a1) !308
	lw  	fa4, 1(a2) !313
	flt 	a2, fa3, fa4 !121
	bne 	a2, zero, beq_else.41109 !1179
	addi	a2, zero, 0 !1181
	jal 	zero, beq_cont.41110 !1179
beq_else.41109: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a2, 4(a1) !318
	lw  	fa4, 2(a2) !323
	flt 	a2, fa3, fa4 !121
beq_cont.41110: !1179
beq_cont.41108: !1178
	bne 	a2, zero, beq_else.41111 !1177
	lw  	a1, 6(a1) !280
	sub 	t0, zero, a1 !1183
	addi	a1, t0, 1 !1183
	jal 	zero, beq_cont.41112 !1177
beq_else.41111: !1177
	lw  	a1, 6(a1) !280
beq_cont.41112: !1177
	jal 	zero, beq_cont.41106 !1205
beq_else.41105: !1205
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.41113 !1207
	lw  	a2, 4(a1) !328
	lw  	fa6, 0(a2) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a2) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a2) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a1, 6(a1) !280
	flt 	a2, fa3, zero !123
	bne 	a1, zero, beq_else.41115 !141
	addi	a1, a2, 0 !141
	jal 	zero, beq_cont.41116 !141
beq_else.41115: !141
	sub 	t0, zero, a2 !141
	addi	a1, t0, 1 !141
beq_cont.41116: !141
	sub 	t0, zero, a1 !1189
	addi	a1, t0, 1 !1189
	jal 	zero, beq_cont.41114 !1207
beq_else.41113: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 4(a1) !298
	lw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 4(a1) !308
	lw  	fs1, 1(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 4(a1) !318
	lw  	fs1, 2(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 3(a1) !289
	bne 	a2, zero, beq_else.41117 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.41118 !846
beq_else.41117: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 9(a1) !418
	lw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 9(a1) !428
	lw  	fa7, 1(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 9(a1) !438
	lw  	fa4, 2(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.41118: !846
	lw  	a2, 1(a1) !260
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.41119 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.41120 !1195
beq_else.41119: !1195
beq_cont.41120: !1195
	lw  	a1, 6(a1) !280
	flt 	a2, fa3, zero !123
	bne 	a1, zero, beq_else.41121 !141
	addi	a1, a2, 0 !141
	jal 	zero, beq_cont.41122 !141
beq_else.41121: !141
	sub 	t0, zero, a2 !141
	addi	a1, t0, 1 !141
beq_cont.41122: !141
	sub 	t0, zero, a1 !1196
	addi	a1, t0, 1 !1196
beq_cont.41114: !1207
beq_cont.41106: !1205
	bne 	a1, zero, beq_else.41123 !1219
	lw  	a1, 2(a0) !1215
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41125 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41126 !1216
beq_else.41125: !1216
	lw  	a0, 12(a1) !1219
	sw  	fa0, 9(sp) !1219
	sw  	fa2, 10(sp) !1219
	sw  	fa1, 11(sp) !1219
	fsgnj   t0, fa2, fa2 !1219
	fsgnj   fa2, fa0, fa0 !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, t0, t0 !1219
	addi	sp, sp, 12 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -12 !1219
	bne 	a0, zero, beq_else.41127 !1219
	addi	a0, zero, 3 !1222
	lw  	fa0, 11(sp) !1222
	lw  	fa1, 10(sp) !1222
	lw  	fa2, 9(sp) !1222
	lw  	a1, 1(sp) !1222
	addi	sp, sp, 12 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -12 !1222
	jal 	zero, beq_cont.41128 !1219
beq_else.41127: !1219
	addi	a0, zero, 0 !1220
beq_cont.41128: !1219
beq_cont.41126: !1216
	jal 	zero, beq_cont.41124 !1219
beq_else.41123: !1219
	addi	a0, zero, 0 !1220
beq_cont.41124: !1219
beq_cont.41104: !1216
	jal 	zero, beq_cont.41102 !1219
beq_else.41101: !1219
	addi	a0, zero, 0 !1220
beq_cont.41102: !1219
beq_cont.41082: !1216
	bne 	a0, zero, beq_else.41129 !1246
	lw  	a0, 2(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 1(sp) !1233
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41130 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41130: !1233
	sw  	a0, 12(sp) !1236
	lwr 	a0, a1, a0 !1236
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	sw  	a0, 13(sp) !1237
	addi	sp, sp, 16 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -16 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41131 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41132 !1239
beq_else.41131: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41132: !1239
	bne 	a0, zero, beq_else.41133 !1239
	lw  	a0, 13(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41134 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41134: !1255
	lw  	a0, 12(sp) !1256
	addi	a0, a0, 1 !1256
	lw  	a1, 1(sp) !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.41133: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	lw  	a1, 1(sp) !1215
	lw  	a0, 0(a1) !1215
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41135 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41136 !1216
beq_else.41135: !1216
	lw  	a0, 12(a0) !1219
	lw  	a2, 5(a0) !338
	lw  	fa3, 0(a2) !343
	fsub	fa3, fa1, fa3 !1201
	lw  	a2, 5(a0) !348
	lw  	fa4, 1(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 5(a0) !358
	lw  	fa5, 2(a2) !363
	fsub	fa5, fa0, fa5 !1203
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.41137 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a2, 4(a0) !298
	lw  	fa6, 0(a2) !303
	flt 	a2, fa3, fa6 !121
	bne 	a2, zero, beq_else.41139 !1178
	addi	a2, zero, 0 !1182
	jal 	zero, beq_cont.41140 !1178
beq_else.41139: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a2, 4(a0) !308
	lw  	fa4, 1(a2) !313
	flt 	a2, fa3, fa4 !121
	bne 	a2, zero, beq_else.41141 !1179
	addi	a2, zero, 0 !1181
	jal 	zero, beq_cont.41142 !1179
beq_else.41141: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a2, 4(a0) !318
	lw  	fa4, 2(a2) !323
	flt 	a2, fa3, fa4 !121
beq_cont.41142: !1179
beq_cont.41140: !1178
	bne 	a2, zero, beq_else.41143 !1177
	lw  	a0, 6(a0) !280
	sub 	t0, zero, a0 !1183
	addi	a0, t0, 1 !1183
	jal 	zero, beq_cont.41144 !1177
beq_else.41143: !1177
	lw  	a0, 6(a0) !280
beq_cont.41144: !1177
	jal 	zero, beq_cont.41138 !1205
beq_else.41137: !1205
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.41145 !1207
	lw  	a2, 4(a0) !328
	lw  	fa6, 0(a2) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a2) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a2) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a0, 6(a0) !280
	flt 	a2, fa3, zero !123
	bne 	a0, zero, beq_else.41147 !141
	addi	a0, a2, 0 !141
	jal 	zero, beq_cont.41148 !141
beq_else.41147: !141
	sub 	t0, zero, a2 !141
	addi	a0, t0, 1 !141
beq_cont.41148: !141
	sub 	t0, zero, a0 !1189
	addi	a0, t0, 1 !1189
	jal 	zero, beq_cont.41146 !1207
beq_else.41145: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 4(a0) !298
	lw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 4(a0) !308
	lw  	fs1, 1(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 4(a0) !318
	lw  	fs1, 2(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 3(a0) !289
	bne 	a2, zero, beq_else.41149 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.41150 !846
beq_else.41149: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 9(a0) !418
	lw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 9(a0) !428
	lw  	fa7, 1(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 9(a0) !438
	lw  	fa4, 2(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.41150: !846
	lw  	a2, 1(a0) !260
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.41151 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.41152 !1195
beq_else.41151: !1195
beq_cont.41152: !1195
	lw  	a0, 6(a0) !280
	flt 	a2, fa3, zero !123
	bne 	a0, zero, beq_else.41153 !141
	addi	a0, a2, 0 !141
	jal 	zero, beq_cont.41154 !141
beq_else.41153: !141
	sub 	t0, zero, a2 !141
	addi	a0, t0, 1 !141
beq_cont.41154: !141
	sub 	t0, zero, a0 !1196
	addi	a0, t0, 1 !1196
beq_cont.41146: !1207
beq_cont.41138: !1205
	bne 	a0, zero, beq_else.41155 !1219
	lw  	a0, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41157 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41158 !1216
beq_else.41157: !1216
	lw  	a0, 12(a0) !1219
	sw  	fa0, 14(sp) !1219
	sw  	fa2, 15(sp) !1219
	sw  	fa1, 16(sp) !1219
	fsgnj   t0, fa2, fa2 !1219
	fsgnj   fa2, fa0, fa0 !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, t0, t0 !1219
	addi	sp, sp, 20 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -20 !1219
	bne 	a0, zero, beq_else.41159 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 16(sp) !1222
	lw  	fa1, 15(sp) !1222
	lw  	fa2, 14(sp) !1222
	lw  	a1, 1(sp) !1222
	addi	sp, sp, 20 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -20 !1222
	jal 	zero, beq_cont.41160 !1219
beq_else.41159: !1219
	addi	a0, zero, 0 !1220
beq_cont.41160: !1219
beq_cont.41158: !1216
	jal 	zero, beq_cont.41156 !1219
beq_else.41155: !1219
	addi	a0, zero, 0 !1220
beq_cont.41156: !1219
beq_cont.41136: !1216
	bne 	a0, zero, beq_else.41161 !1246
	lw  	a0, 12(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 1(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.41161: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41129: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_group.2698:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41162 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41162: !1264
	lw  	a2, 83(a2) !1267
	lw  	a3, 0(a2) !1233
	sw  	a1, 1(sp) !1233
	sw  	a0, 2(sp) !1233
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41163 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41164 !1233
beq_else.41163: !1233
	lw  	a0, 0(a2) !1236
	sw  	a2, 3(sp) !0
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	sw  	a0, 4(sp) !1237
	addi	sp, sp, 8 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -8 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41165 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41166 !1239
beq_else.41165: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41166: !1239
	bne 	a0, zero, beq_else.41167 !1239
	lw  	a0, 4(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41169 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41170 !1255
beq_else.41169: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 3(sp) !1256
	addi	sp, sp, 8 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -8 !1256
beq_cont.41170: !1255
	jal 	zero, beq_cont.41168 !1239
beq_else.41167: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	lw  	a1, 3(sp) !1215
	lw  	a0, 0(a1) !1215
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41171 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41172 !1216
beq_else.41171: !1216
	lw  	a0, 12(a0) !1219
	lw  	a2, 5(a0) !338
	lw  	fa3, 0(a2) !343
	fsub	fa3, fa1, fa3 !1201
	lw  	a2, 5(a0) !348
	lw  	fa4, 1(a2) !353
	fsub	fa4, fa2, fa4 !1202
	lw  	a2, 5(a0) !358
	lw  	fa5, 2(a2) !363
	fsub	fa5, fa0, fa5 !1203
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.41173 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a2, 4(a0) !298
	lw  	fa6, 0(a2) !303
	flt 	a2, fa3, fa6 !121
	bne 	a2, zero, beq_else.41175 !1178
	addi	a2, zero, 0 !1182
	jal 	zero, beq_cont.41176 !1178
beq_else.41175: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a2, 4(a0) !308
	lw  	fa4, 1(a2) !313
	flt 	a2, fa3, fa4 !121
	bne 	a2, zero, beq_else.41177 !1179
	addi	a2, zero, 0 !1181
	jal 	zero, beq_cont.41178 !1179
beq_else.41177: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a2, 4(a0) !318
	lw  	fa4, 2(a2) !323
	flt 	a2, fa3, fa4 !121
beq_cont.41178: !1179
beq_cont.41176: !1178
	bne 	a2, zero, beq_else.41179 !1177
	lw  	a0, 6(a0) !280
	sub 	t0, zero, a0 !1183
	addi	a0, t0, 1 !1183
	jal 	zero, beq_cont.41180 !1177
beq_else.41179: !1177
	lw  	a0, 6(a0) !280
beq_cont.41180: !1177
	jal 	zero, beq_cont.41174 !1205
beq_else.41173: !1205
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.41181 !1207
	lw  	a2, 4(a0) !328
	lw  	fa6, 0(a2) !213
	fmul	fa3, fa6, fa3 !213
	lw  	fa6, 1(a2) !213
	fmul	fa4, fa6, fa4 !213
	fadd	fa3, fa3, fa4 !213
	lw  	fa4, 2(a2) !213
	fmul	fa4, fa4, fa5 !213
	fadd	fa3, fa3, fa4 !213
	lw  	a0, 6(a0) !280
	flt 	a2, fa3, zero !123
	bne 	a0, zero, beq_else.41183 !141
	addi	a0, a2, 0 !141
	jal 	zero, beq_cont.41184 !141
beq_else.41183: !141
	sub 	t0, zero, a2 !141
	addi	a0, t0, 1 !141
beq_cont.41184: !141
	sub 	t0, zero, a0 !1189
	addi	a0, t0, 1 !1189
	jal 	zero, beq_cont.41182 !1207
beq_else.41181: !1207
	fmul	fa6, fa3, fa3 !126
	lw  	a2, 4(a0) !298
	lw  	fa7, 0(a2) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a2, 4(a0) !308
	lw  	fs1, 1(a2) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a2, 4(a0) !318
	lw  	fs1, 2(a2) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a2, 3(a0) !289
	bne 	a2, zero, beq_else.41185 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.41186 !846
beq_else.41185: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a2, 9(a0) !418
	lw  	fs1, 0(a2) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a2, 9(a0) !428
	lw  	fa7, 1(a2) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a2, 9(a0) !438
	lw  	fa4, 2(a2) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.41186: !846
	lw  	a2, 1(a0) !260
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.41187 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.41188 !1195
beq_else.41187: !1195
beq_cont.41188: !1195
	lw  	a0, 6(a0) !280
	flt 	a2, fa3, zero !123
	bne 	a0, zero, beq_else.41189 !141
	addi	a0, a2, 0 !141
	jal 	zero, beq_cont.41190 !141
beq_else.41189: !141
	sub 	t0, zero, a2 !141
	addi	a0, t0, 1 !141
beq_cont.41190: !141
	sub 	t0, zero, a0 !1196
	addi	a0, t0, 1 !1196
beq_cont.41182: !1207
beq_cont.41174: !1205
	bne 	a0, zero, beq_else.41191 !1219
	lw  	a0, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41193 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41194 !1216
beq_else.41193: !1216
	lw  	a0, 12(a0) !1219
	sw  	fa0, 5(sp) !1219
	sw  	fa2, 6(sp) !1219
	sw  	fa1, 7(sp) !1219
	fsgnj   t0, fa2, fa2 !1219
	fsgnj   fa2, fa0, fa0 !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, t0, t0 !1219
	addi	sp, sp, 8 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -8 !1219
	bne 	a0, zero, beq_else.41195 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 7(sp) !1222
	lw  	fa1, 6(sp) !1222
	lw  	fa2, 5(sp) !1222
	lw  	a1, 3(sp) !1222
	addi	sp, sp, 8 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -8 !1222
	jal 	zero, beq_cont.41196 !1219
beq_else.41195: !1219
	addi	a0, zero, 0 !1220
beq_cont.41196: !1219
beq_cont.41194: !1216
	jal 	zero, beq_cont.41192 !1219
beq_else.41191: !1219
	addi	a0, zero, 0 !1220
beq_cont.41192: !1219
beq_cont.41172: !1216
	bne 	a0, zero, beq_else.41197 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 3(sp) !1249
	addi	sp, sp, 8 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -8 !1249
	jal 	zero, beq_cont.41198 !1246
beq_else.41197: !1246
	addi	a0, zero, 1 !1247
beq_cont.41198: !1246
beq_cont.41168: !1239
beq_cont.41164: !1233
	bne 	a0, zero, beq_else.41199 !1269
	lw  	a0, 2(sp) !1272
	addi	a0, a0, 1 !1272
	sw  	a0, 8(sp) !1263
	lw  	a1, 1(sp) !1263
	lwr 	a0, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41200 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41200: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 12 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -12 !1268
	bne 	a0, zero, beq_else.41201 !1269
	lw  	a0, 8(sp) !1272
	addi	a0, a0, 1 !1272
	lw  	a1, 1(sp) !1263
	lwr 	a2, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41202 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41202: !1264
	lw  	a2, 83(a2) !1267
	lw  	a3, 0(a2) !1233
	sw  	a0, 9(sp) !1233
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41203 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41204 !1233
beq_else.41203: !1233
	lw  	a0, 0(a2) !1236
	sw  	a2, 10(sp) !0
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	sw  	a0, 11(sp) !1237
	addi	sp, sp, 12 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -12 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41205 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41206 !1239
beq_else.41205: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41206: !1239
	bne 	a0, zero, beq_else.41207 !1239
	lw  	a0, 11(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41209 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41210 !1255
beq_else.41209: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 10(sp) !1256
	addi	sp, sp, 12 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -12 !1256
beq_cont.41210: !1255
	jal 	zero, beq_cont.41208 !1239
beq_else.41207: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 10(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 12 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -12 !1246
	bne 	a0, zero, beq_else.41211 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 10(sp) !1249
	addi	sp, sp, 12 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -12 !1249
	jal 	zero, beq_cont.41212 !1246
beq_else.41211: !1246
	addi	a0, zero, 1 !1247
beq_cont.41212: !1246
beq_cont.41208: !1239
beq_cont.41204: !1233
	bne 	a0, zero, beq_else.41213 !1269
	lw  	a0, 9(sp) !1272
	addi	a0, a0, 1 !1272
	sw  	a0, 12(sp) !1263
	lw  	a1, 1(sp) !1263
	lwr 	a0, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41214 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41214: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 16 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -16 !1268
	bne 	a0, zero, beq_else.41215 !1269
	lw  	a0, 12(sp) !1272
	addi	a0, a0, 1 !1272
	lw  	a1, 1(sp) !1272
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_group.2698 !1272
beq_else.41215: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41213: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41201: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41199: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_matrix.2701:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41216 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41216: !1280
	sw  	a2, 1(sp) !1284
	sw  	a1, 2(sp) !1284
	sw  	a0, 3(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.41217 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.41218 !1284
beq_else.41217: !1284
	lw  	a4, 12(a3) !984
	lw  	fa0, 138(zero) !985
	lw  	a5, 5(a4) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !985
	lw  	fa1, 139(zero) !986
	lw  	a5, 5(a4) !348
	lw  	fa2, 1(a5) !353
	fsub	fa1, fa1, fa2 !986
	lw  	fa2, 140(zero) !987
	lw  	a5, 5(a4) !358
	lw  	fa3, 2(a5) !363
	fsub	fa2, fa2, fa3 !987
	lw  	a3, 187(a3) !989
	lw  	a5, 1(a4) !260
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.41219 !991
	addi	a1, zero, 184 !0
	addi	a2, a3, 0 !992
	addi	a0, a4, 0 !992
	addi	sp, sp, 4 !992
	jal 	ra, solver_rect_fast.2610 !992
	addi	sp, sp, -4 !992
	jal 	zero, beq_cont.41220 !991
beq_else.41219: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.41221 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.41223 !955
	addi	a0, zero, 0 !959
	jal 	zero, beq_cont.41224 !955
beq_else.41223: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a0, zero, 1 !958
beq_cont.41224: !955
	jal 	zero, beq_cont.41222 !993
beq_else.41221: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.41225 !966
	lw  	fa4, 1(a3) !969
	fmul	fa4, fa4, fa0 !969
	lw  	fa5, 2(a3) !969
	fmul	fa5, fa5, fa1 !969
	fadd	fa4, fa4, fa5 !969
	lw  	fa5, 3(a3) !969
	fmul	fa5, fa5, fa2 !969
	fadd	fa4, fa4, fa5 !969
	fmul	fa5, fa0, fa0 !126
	lw  	a5, 4(a4) !298
	lw  	fa6, 0(a5) !303
	fmul	fa5, fa5, fa6 !844
	fmul	fa6, fa1, fa1 !126
	lw  	a5, 4(a4) !308
	lw  	fa7, 1(a5) !313
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	fmul	fa6, fa2, fa2 !126
	lw  	a5, 4(a4) !318
	lw  	fa7, 2(a5) !323
	fmul	fa6, fa6, fa7 !844
	fadd	fa5, fa5, fa6 !844
	lw  	a5, 3(a4) !289
	bne 	a5, zero, beq_else.41227 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.41228 !846
beq_else.41227: !846
	fmul	fa6, fa1, fa2 !850
	lw  	a5, 9(a4) !418
	lw  	fa7, 0(a5) !423
	fmul	fa6, fa6, fa7 !850
	fadd	fa5, fa5, fa6 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a4) !428
	lw  	fa6, 1(a5) !433
	fmul	fa2, fa2, fa6 !851
	fadd	fa2, fa5, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a5, 9(a4) !438
	lw  	fa1, 2(a5) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.41228: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.41229 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.41230 !971
beq_else.41229: !971
beq_cont.41230: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.41231 !973
	addi	a0, zero, 0 !979
	jal 	zero, beq_cont.41232 !973
beq_else.41231: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.41233 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.41234 !974
beq_else.41233: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.41234: !974
	addi	a0, zero, 1 !978
beq_cont.41232: !973
	jal 	zero, beq_cont.41226 !966
beq_else.41225: !966
	addi	a0, zero, 0 !967
beq_cont.41226: !966
beq_cont.41222: !993
beq_cont.41220: !991
	bne 	a0, zero, beq_else.41235 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.41236 !1290
beq_else.41235: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.41237 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.41238 !1291
beq_else.41237: !1291
	lw  	a0, 1(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41239 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41240 !1264
beq_else.41239: !1264
	lw  	a1, 83(a1) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 4 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -4 !1268
	bne 	a0, zero, beq_else.41241 !1269
	lw  	a0, 1(sp) !1263
	lw  	a1, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41243 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41244 !1264
beq_else.41243: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41245 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41246 !1233
beq_else.41245: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 4(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 5(sp) !1237
	addi	sp, sp, 8 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -8 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41247 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41248 !1239
beq_else.41247: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41248: !1239
	bne 	a0, zero, beq_else.41249 !1239
	lw  	a0, 5(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41251 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41252 !1255
beq_else.41251: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 4(sp) !1256
	addi	sp, sp, 8 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -8 !1256
beq_cont.41252: !1255
	jal 	zero, beq_cont.41250 !1239
beq_else.41249: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 4(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 8 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -8 !1246
	bne 	a0, zero, beq_else.41253 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 4(sp) !1249
	addi	sp, sp, 8 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -8 !1249
	jal 	zero, beq_cont.41254 !1246
beq_else.41253: !1246
	addi	a0, zero, 1 !1247
beq_cont.41254: !1246
beq_cont.41250: !1239
beq_cont.41246: !1233
	bne 	a0, zero, beq_else.41255 !1269
	lw  	a0, 1(sp) !1263
	lw  	a1, 3(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41257 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41258 !1264
beq_else.41257: !1264
	lw  	a1, 83(a1) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 8 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -8 !1268
	bne 	a0, zero, beq_else.41259 !1269
	addi	a0, zero, 4 !1272
	lw  	a1, 1(sp) !1272
	addi	sp, sp, 8 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -8 !1272
	jal 	zero, beq_cont.41260 !1269
beq_else.41259: !1269
	addi	a0, zero, 1 !1270
beq_cont.41260: !1269
beq_cont.41258: !1264
	jal 	zero, beq_cont.41256 !1269
beq_else.41255: !1269
	addi	a0, zero, 1 !1270
beq_cont.41256: !1269
beq_cont.41244: !1264
	jal 	zero, beq_cont.41242 !1269
beq_else.41241: !1269
	addi	a0, zero, 1 !1270
beq_cont.41242: !1269
beq_cont.41240: !1264
	bne 	a0, zero, beq_else.41261 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.41262 !1292
beq_else.41261: !1292
	addi	a0, zero, 1 !1293
beq_cont.41262: !1292
beq_cont.41238: !1291
beq_cont.41236: !1290
beq_cont.41218: !1284
	bne 	a0, zero, beq_else.41263 !1283
	lw  	a0, 3(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41264 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41264: !1280
	sw  	a2, 6(sp) !1284
	sw  	a0, 7(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.41265 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.41266 !1284
beq_else.41265: !1284
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	addi	a0, a3, 0 !1287
	addi	sp, sp, 8 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -8 !1287
	bne 	a0, zero, beq_else.41267 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.41268 !1290
beq_else.41267: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.41269 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.41270 !1291
beq_else.41269: !1291
	lw  	a0, 6(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41271 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41272 !1264
beq_else.41271: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41273 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41274 !1233
beq_else.41273: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 8(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 9(sp) !1237
	addi	sp, sp, 12 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -12 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41275 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41276 !1239
beq_else.41275: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41276: !1239
	bne 	a0, zero, beq_else.41277 !1239
	lw  	a0, 9(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41279 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41280 !1255
beq_else.41279: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 8(sp) !1256
	addi	sp, sp, 12 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -12 !1256
beq_cont.41280: !1255
	jal 	zero, beq_cont.41278 !1239
beq_else.41277: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 8(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 12 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -12 !1246
	bne 	a0, zero, beq_else.41281 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 8(sp) !1249
	addi	sp, sp, 12 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -12 !1249
	jal 	zero, beq_cont.41282 !1246
beq_else.41281: !1246
	addi	a0, zero, 1 !1247
beq_cont.41282: !1246
beq_cont.41278: !1239
beq_cont.41274: !1233
	bne 	a0, zero, beq_else.41283 !1269
	lw  	a0, 6(sp) !1263
	lw  	a1, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41285 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41286 !1264
beq_else.41285: !1264
	lw  	a1, 83(a1) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 12 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -12 !1268
	bne 	a0, zero, beq_else.41287 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 6(sp) !1272
	addi	sp, sp, 12 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -12 !1272
	jal 	zero, beq_cont.41288 !1269
beq_else.41287: !1269
	addi	a0, zero, 1 !1270
beq_cont.41288: !1269
beq_cont.41286: !1264
	jal 	zero, beq_cont.41284 !1269
beq_else.41283: !1269
	addi	a0, zero, 1 !1270
beq_cont.41284: !1269
beq_cont.41272: !1264
	bne 	a0, zero, beq_else.41289 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.41290 !1292
beq_else.41289: !1292
	addi	a0, zero, 1 !1293
beq_cont.41290: !1292
beq_cont.41270: !1291
beq_cont.41268: !1290
beq_cont.41266: !1284
	bne 	a0, zero, beq_else.41291 !1283
	lw  	a0, 7(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.41291: !1283
	lw  	a0, 6(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41292 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41293 !1264
beq_else.41292: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41294 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41295 !1233
beq_else.41294: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 10(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 11(sp) !1237
	addi	sp, sp, 12 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -12 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41296 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41297 !1239
beq_else.41296: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41297: !1239
	bne 	a0, zero, beq_else.41298 !1239
	lw  	a0, 11(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41300 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41301 !1255
beq_else.41300: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 10(sp) !1256
	addi	sp, sp, 12 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -12 !1256
beq_cont.41301: !1255
	jal 	zero, beq_cont.41299 !1239
beq_else.41298: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 10(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 12 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -12 !1246
	bne 	a0, zero, beq_else.41302 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 10(sp) !1249
	addi	sp, sp, 12 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -12 !1249
	jal 	zero, beq_cont.41303 !1246
beq_else.41302: !1246
	addi	a0, zero, 1 !1247
beq_cont.41303: !1246
beq_cont.41299: !1239
beq_cont.41295: !1233
	bne 	a0, zero, beq_else.41304 !1269
	lw  	a0, 6(sp) !1263
	lw  	a0, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41306 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41307 !1264
beq_else.41306: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 12 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -12 !1268
	bne 	a0, zero, beq_else.41308 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 6(sp) !1272
	addi	sp, sp, 12 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -12 !1272
	jal 	zero, beq_cont.41309 !1269
beq_else.41308: !1269
	addi	a0, zero, 1 !1270
beq_cont.41309: !1269
beq_cont.41307: !1264
	jal 	zero, beq_cont.41305 !1269
beq_else.41304: !1269
	addi	a0, zero, 1 !1270
beq_cont.41305: !1269
beq_cont.41293: !1264
	bne 	a0, zero, beq_else.41310 !1298
	lw  	a0, 7(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.41310: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41263: !1283
	lw  	a0, 1(sp) !1263
	lw  	a0, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41311 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41312 !1264
beq_else.41311: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 12 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -12 !1268
	bne 	a0, zero, beq_else.41313 !1269
	lw  	a0, 1(sp) !1263
	lw  	a1, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41315 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41316 !1264
beq_else.41315: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41317 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41318 !1233
beq_else.41317: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 12(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 13(sp) !1237
	addi	sp, sp, 16 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -16 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41319 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41320 !1239
beq_else.41319: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41320: !1239
	bne 	a0, zero, beq_else.41321 !1239
	lw  	a0, 13(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41323 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41324 !1255
beq_else.41323: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 12(sp) !1256
	addi	sp, sp, 16 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -16 !1256
beq_cont.41324: !1255
	jal 	zero, beq_cont.41322 !1239
beq_else.41321: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 12(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 16 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -16 !1246
	bne 	a0, zero, beq_else.41325 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 12(sp) !1249
	addi	sp, sp, 16 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -16 !1249
	jal 	zero, beq_cont.41326 !1246
beq_else.41325: !1246
	addi	a0, zero, 1 !1247
beq_cont.41326: !1246
beq_cont.41322: !1239
beq_cont.41318: !1233
	bne 	a0, zero, beq_else.41327 !1269
	lw  	a0, 1(sp) !1263
	lw  	a0, 3(a0) !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41329 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41330 !1264
beq_else.41329: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 16 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -16 !1268
	bne 	a0, zero, beq_else.41331 !1269
	addi	a0, zero, 4 !1272
	lw  	a1, 1(sp) !1272
	addi	sp, sp, 16 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -16 !1272
	jal 	zero, beq_cont.41332 !1269
beq_else.41331: !1269
	addi	a0, zero, 1 !1270
beq_cont.41332: !1269
beq_cont.41330: !1264
	jal 	zero, beq_cont.41328 !1269
beq_else.41327: !1269
	addi	a0, zero, 1 !1270
beq_cont.41328: !1269
beq_cont.41316: !1264
	jal 	zero, beq_cont.41314 !1269
beq_else.41313: !1269
	addi	a0, zero, 1 !1270
beq_cont.41314: !1269
beq_cont.41312: !1264
	bne 	a0, zero, beq_else.41333 !1298
	lw  	a0, 3(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41334 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41334: !1280
	sw  	a2, 14(sp) !1284
	sw  	a0, 15(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.41335 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.41336 !1284
beq_else.41335: !1284
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	addi	a0, a3, 0 !1287
	addi	sp, sp, 16 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -16 !1287
	bne 	a0, zero, beq_else.41337 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.41338 !1290
beq_else.41337: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.41339 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.41340 !1291
beq_else.41339: !1291
	lw  	a0, 14(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41341 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41342 !1264
beq_else.41341: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41343 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41344 !1233
beq_else.41343: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 16(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 17(sp) !1237
	addi	sp, sp, 20 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -20 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41345 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41346 !1239
beq_else.41345: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41346: !1239
	bne 	a0, zero, beq_else.41347 !1239
	lw  	a0, 17(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41349 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41350 !1255
beq_else.41349: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 16(sp) !1256
	addi	sp, sp, 20 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -20 !1256
beq_cont.41350: !1255
	jal 	zero, beq_cont.41348 !1239
beq_else.41347: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 16(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 20 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -20 !1246
	bne 	a0, zero, beq_else.41351 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 16(sp) !1249
	addi	sp, sp, 20 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -20 !1249
	jal 	zero, beq_cont.41352 !1246
beq_else.41351: !1246
	addi	a0, zero, 1 !1247
beq_cont.41352: !1246
beq_cont.41348: !1239
beq_cont.41344: !1233
	bne 	a0, zero, beq_else.41353 !1269
	lw  	a0, 14(sp) !1263
	lw  	a1, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41355 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41356 !1264
beq_else.41355: !1264
	lw  	a1, 83(a1) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 20 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -20 !1268
	bne 	a0, zero, beq_else.41357 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 14(sp) !1272
	addi	sp, sp, 20 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -20 !1272
	jal 	zero, beq_cont.41358 !1269
beq_else.41357: !1269
	addi	a0, zero, 1 !1270
beq_cont.41358: !1269
beq_cont.41356: !1264
	jal 	zero, beq_cont.41354 !1269
beq_else.41353: !1269
	addi	a0, zero, 1 !1270
beq_cont.41354: !1269
beq_cont.41342: !1264
	bne 	a0, zero, beq_else.41359 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.41360 !1292
beq_else.41359: !1292
	addi	a0, zero, 1 !1293
beq_cont.41360: !1292
beq_cont.41340: !1291
beq_cont.41338: !1290
beq_cont.41336: !1284
	bne 	a0, zero, beq_else.41361 !1283
	lw  	a0, 15(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.41361: !1283
	lw  	a0, 14(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.41362 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41363 !1264
beq_else.41362: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41364 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.41365 !1233
beq_else.41364: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 18(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 19(sp) !1237
	addi	sp, sp, 20 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -20 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.41366 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.41367 !1239
beq_else.41366: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.41367: !1239
	bne 	a0, zero, beq_else.41368 !1239
	lw  	a0, 19(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41370 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.41371 !1255
beq_else.41370: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 18(sp) !1256
	addi	sp, sp, 20 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -20 !1256
beq_cont.41371: !1255
	jal 	zero, beq_cont.41369 !1239
beq_else.41368: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 18(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 20 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -20 !1246
	bne 	a0, zero, beq_else.41372 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 18(sp) !1249
	addi	sp, sp, 20 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -20 !1249
	jal 	zero, beq_cont.41373 !1246
beq_else.41372: !1246
	addi	a0, zero, 1 !1247
beq_cont.41373: !1246
beq_cont.41369: !1239
beq_cont.41365: !1233
	bne 	a0, zero, beq_else.41374 !1269
	lw  	a0, 14(sp) !1263
	lw  	a0, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41376 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.41377 !1264
beq_else.41376: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 20 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -20 !1268
	bne 	a0, zero, beq_else.41378 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 14(sp) !1272
	addi	sp, sp, 20 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -20 !1272
	jal 	zero, beq_cont.41379 !1269
beq_else.41378: !1269
	addi	a0, zero, 1 !1270
beq_cont.41379: !1269
beq_cont.41377: !1264
	jal 	zero, beq_cont.41375 !1269
beq_else.41374: !1269
	addi	a0, zero, 1 !1270
beq_cont.41375: !1269
beq_cont.41363: !1264
	bne 	a0, zero, beq_else.41380 !1298
	lw  	a0, 15(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.41380: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41333: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_each_element.2704:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41381 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41381: !1313
	lw  	a4, 12(a3) !905
	lw  	fa0, 159(zero) !907
	lw  	a5, 5(a4) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a5, 5(a4) !348
	lw  	fa2, 1(a5) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a5, 5(a4) !358
	lw  	fa3, 2(a5) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a5, 1(a4) !260
	sw  	a2, 1(sp) !912
	sw  	a1, 2(sp) !912
	sw  	a0, 3(sp) !912
	sw  	a3, 4(sp) !912
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.41383 !912
	addi	a1, a2, 0 !912
	addi	a0, a4, 0 !912
	addi	sp, sp, 8 !912
	jal 	ra, solver_rect.2575 !912
	addi	sp, sp, -8 !912
	jal 	zero, beq_cont.41384 !912
beq_else.41383: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.41385 !913
	lw  	a4, 4(a4) !328
	lw  	fa3, 0(a2) !208
	lw  	fa4, 0(a4) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a2) !208
	lw  	fa5, 1(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a2) !208
	lw  	fa5, 2(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.41387 !833
	addi	a0, zero, 0 !836
	jal 	zero, beq_cont.41388 !833
beq_else.41387: !833
	lw  	fa4, 0(a4) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a4) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a4) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a0, zero, 1 !835
beq_cont.41388: !833
	jal 	zero, beq_cont.41386 !913
beq_else.41385: !913
	addi	a1, a2, 0 !914
	addi	a0, a4, 0 !914
	addi	sp, sp, 8 !914
	jal 	ra, solver_second.2600 !914
	addi	sp, sp, -8 !914
beq_cont.41386: !913
beq_cont.41384: !912
	bne 	a0, zero, beq_else.41389 !1316
	lw  	a0, 4(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41390 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41390: !1344
	lw  	a0, 3(sp) !1345
	addi	a0, a0, 1 !1345
	sw  	a0, 5(sp) !1312
	lw  	a1, 2(sp) !1312
	lwr 	a0, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41392 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41392: !1313
	addi	a2, zero, 159 !0
	lw  	a1, 1(sp) !1315
	sw  	a0, 6(sp) !1315
	addi	sp, sp, 8 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -8 !1315
	bne 	a0, zero, beq_else.41394 !1316
	lw  	a0, 6(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41395 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41395: !1344
	lw  	a0, 5(sp) !1345
	addi	a0, a0, 1 !1345
	lw  	a1, 2(sp) !1345
	lw  	a2, 1(sp) !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.41394: !1316
	lw  	fa0, 135(zero) !1320
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41398 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41400 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a2, 1(sp) !1326
	lw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a2) !1328
	fmul	fa3, fa3, fa0 !1328
	lw  	fa4, 161(zero) !1328
	fadd	fa3, fa3, fa4 !1328
	lw  	a1, 2(sp) !1215
	lw  	a3, 0(a1) !1215
	sw  	a0, 7(sp) !1216
	sw  	fa3, 8(sp) !1216
	sw  	fa2, 9(sp) !1216
	sw  	fa1, 10(sp) !1216
	sw  	fa0, 11(sp) !1216
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41401 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41402 !1216
beq_else.41401: !1216
	lw  	a3, 12(a3) !1219
	lw  	a4, 5(a3) !338
	lw  	fa4, 0(a4) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a4, 5(a3) !348
	lw  	fa5, 1(a4) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a4, 5(a3) !358
	lw  	fa6, 2(a4) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.41403 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a4, 4(a3) !298
	lw  	fa7, 0(a4) !303
	flt 	a4, fa4, fa7 !121
	bne 	a4, zero, beq_else.41405 !1178
	addi	a4, zero, 0 !1182
	jal 	zero, beq_cont.41406 !1178
beq_else.41405: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a4, 4(a3) !308
	lw  	fa5, 1(a4) !313
	flt 	a4, fa4, fa5 !121
	bne 	a4, zero, beq_else.41407 !1179
	addi	a4, zero, 0 !1181
	jal 	zero, beq_cont.41408 !1179
beq_else.41407: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a4, 4(a3) !318
	lw  	fa5, 2(a4) !323
	flt 	a4, fa4, fa5 !121
beq_cont.41408: !1179
beq_cont.41406: !1178
	bne 	a4, zero, beq_else.41409 !1177
	lw  	a3, 6(a3) !280
	sub 	t0, zero, a3 !1183
	addi	a3, t0, 1 !1183
	jal 	zero, beq_cont.41410 !1177
beq_else.41409: !1177
	lw  	a3, 6(a3) !280
beq_cont.41410: !1177
	jal 	zero, beq_cont.41404 !1205
beq_else.41403: !1205
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.41411 !1207
	lw  	a4, 4(a3) !328
	lw  	fa7, 0(a4) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a4) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a4) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41413 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41414 !141
beq_else.41413: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41414: !141
	sub 	t0, zero, a3 !1189
	addi	a3, t0, 1 !1189
	jal 	zero, beq_cont.41412 !1207
beq_else.41411: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a4, 4(a3) !298
	lw  	fs1, 0(a4) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a4, 4(a3) !308
	lw  	fs2, 1(a4) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a4, 4(a3) !318
	lw  	fs2, 2(a4) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a4, 3(a3) !289
	bne 	a4, zero, beq_else.41415 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41416 !846
beq_else.41415: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a4, 9(a3) !418
	lw  	fs2, 0(a4) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a4, 9(a3) !428
	lw  	fs1, 1(a4) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a4, 9(a3) !438
	lw  	fa5, 2(a4) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41416: !846
	lw  	a4, 1(a3) !260
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.41417 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41418 !1195
beq_else.41417: !1195
beq_cont.41418: !1195
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41419 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41420 !141
beq_else.41419: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41420: !141
	sub 	t0, zero, a3 !1196
	addi	a3, t0, 1 !1196
beq_cont.41412: !1207
beq_cont.41404: !1205
	bne 	a3, zero, beq_else.41421 !1219
	lw  	a3, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41423 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41424 !1216
beq_else.41423: !1216
	lw  	a0, 12(a3) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 12 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -12 !1219
	bne 	a0, zero, beq_else.41425 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 10(sp) !1222
	lw  	fa1, 9(sp) !1222
	lw  	fa2, 8(sp) !1222
	lw  	a1, 2(sp) !1222
	addi	sp, sp, 12 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -12 !1222
	jal 	zero, beq_cont.41426 !1219
beq_else.41425: !1219
	addi	a0, zero, 0 !1220
beq_cont.41426: !1219
beq_cont.41424: !1216
	jal 	zero, beq_cont.41422 !1219
beq_else.41421: !1219
	addi	a0, zero, 0 !1220
beq_cont.41422: !1219
beq_cont.41402: !1216
	beq 	a0, zero, beq_cont.41428 !1329
	lw  	a0, 11(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 10(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 9(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 8(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 6(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 7(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41428: !1329
beq_cont.41400: !1323
beq_cont.41398: !1322
	lw  	a0, 5(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 2(sp) !1340
	lw  	a2, 1(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
beq_else.41389: !1316
	lw  	fa0, 135(zero) !1320
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41430 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41432 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a1, 1(sp) !1326
	lw  	fa1, 0(a1) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a1) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a1) !1328
	fmul	fa3, fa3, fa0 !1328
	lw  	fa4, 161(zero) !1328
	fadd	fa3, fa3, fa4 !1328
	lw  	a2, 2(sp) !1215
	lw  	a3, 0(a2) !1215
	sw  	a0, 12(sp) !1216
	sw  	fa3, 13(sp) !1216
	sw  	fa2, 14(sp) !1216
	sw  	fa1, 15(sp) !1216
	sw  	fa0, 16(sp) !1216
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41433 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41434 !1216
beq_else.41433: !1216
	lw  	a3, 12(a3) !1219
	lw  	a4, 5(a3) !338
	lw  	fa4, 0(a4) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a4, 5(a3) !348
	lw  	fa5, 1(a4) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a4, 5(a3) !358
	lw  	fa6, 2(a4) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.41435 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a4, 4(a3) !298
	lw  	fa7, 0(a4) !303
	flt 	a4, fa4, fa7 !121
	bne 	a4, zero, beq_else.41437 !1178
	addi	a4, zero, 0 !1182
	jal 	zero, beq_cont.41438 !1178
beq_else.41437: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a4, 4(a3) !308
	lw  	fa5, 1(a4) !313
	flt 	a4, fa4, fa5 !121
	bne 	a4, zero, beq_else.41439 !1179
	addi	a4, zero, 0 !1181
	jal 	zero, beq_cont.41440 !1179
beq_else.41439: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a4, 4(a3) !318
	lw  	fa5, 2(a4) !323
	flt 	a4, fa4, fa5 !121
beq_cont.41440: !1179
beq_cont.41438: !1178
	bne 	a4, zero, beq_else.41441 !1177
	lw  	a3, 6(a3) !280
	sub 	t0, zero, a3 !1183
	addi	a3, t0, 1 !1183
	jal 	zero, beq_cont.41442 !1177
beq_else.41441: !1177
	lw  	a3, 6(a3) !280
beq_cont.41442: !1177
	jal 	zero, beq_cont.41436 !1205
beq_else.41435: !1205
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.41443 !1207
	lw  	a4, 4(a3) !328
	lw  	fa7, 0(a4) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a4) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a4) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41445 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41446 !141
beq_else.41445: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41446: !141
	sub 	t0, zero, a3 !1189
	addi	a3, t0, 1 !1189
	jal 	zero, beq_cont.41444 !1207
beq_else.41443: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a4, 4(a3) !298
	lw  	fs1, 0(a4) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a4, 4(a3) !308
	lw  	fs2, 1(a4) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a4, 4(a3) !318
	lw  	fs2, 2(a4) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a4, 3(a3) !289
	bne 	a4, zero, beq_else.41447 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41448 !846
beq_else.41447: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a4, 9(a3) !418
	lw  	fs2, 0(a4) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a4, 9(a3) !428
	lw  	fs1, 1(a4) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a4, 9(a3) !438
	lw  	fa5, 2(a4) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41448: !846
	lw  	a4, 1(a3) !260
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.41449 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41450 !1195
beq_else.41449: !1195
beq_cont.41450: !1195
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41451 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41452 !141
beq_else.41451: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41452: !141
	sub 	t0, zero, a3 !1196
	addi	a3, t0, 1 !1196
beq_cont.41444: !1207
beq_cont.41436: !1205
	bne 	a3, zero, beq_else.41453 !1219
	lw  	a3, 1(a2) !1215
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41455 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41456 !1216
beq_else.41455: !1216
	lw  	a3, 12(a3) !1219
	lw  	a4, 5(a3) !338
	lw  	fa4, 0(a4) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a4, 5(a3) !348
	lw  	fa5, 1(a4) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a4, 5(a3) !358
	lw  	fa6, 2(a4) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.41457 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a4, 4(a3) !298
	lw  	fa7, 0(a4) !303
	flt 	a4, fa4, fa7 !121
	bne 	a4, zero, beq_else.41459 !1178
	addi	a4, zero, 0 !1182
	jal 	zero, beq_cont.41460 !1178
beq_else.41459: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a4, 4(a3) !308
	lw  	fa5, 1(a4) !313
	flt 	a4, fa4, fa5 !121
	bne 	a4, zero, beq_else.41461 !1179
	addi	a4, zero, 0 !1181
	jal 	zero, beq_cont.41462 !1179
beq_else.41461: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a4, 4(a3) !318
	lw  	fa5, 2(a4) !323
	flt 	a4, fa4, fa5 !121
beq_cont.41462: !1179
beq_cont.41460: !1178
	bne 	a4, zero, beq_else.41463 !1177
	lw  	a3, 6(a3) !280
	sub 	t0, zero, a3 !1183
	addi	a3, t0, 1 !1183
	jal 	zero, beq_cont.41464 !1177
beq_else.41463: !1177
	lw  	a3, 6(a3) !280
beq_cont.41464: !1177
	jal 	zero, beq_cont.41458 !1205
beq_else.41457: !1205
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.41465 !1207
	lw  	a4, 4(a3) !328
	lw  	fa7, 0(a4) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a4) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a4) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41467 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41468 !141
beq_else.41467: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41468: !141
	sub 	t0, zero, a3 !1189
	addi	a3, t0, 1 !1189
	jal 	zero, beq_cont.41466 !1207
beq_else.41465: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a4, 4(a3) !298
	lw  	fs1, 0(a4) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a4, 4(a3) !308
	lw  	fs2, 1(a4) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a4, 4(a3) !318
	lw  	fs2, 2(a4) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a4, 3(a3) !289
	bne 	a4, zero, beq_else.41469 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41470 !846
beq_else.41469: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a4, 9(a3) !418
	lw  	fs2, 0(a4) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a4, 9(a3) !428
	lw  	fs1, 1(a4) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a4, 9(a3) !438
	lw  	fa5, 2(a4) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41470: !846
	lw  	a4, 1(a3) !260
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.41471 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41472 !1195
beq_else.41471: !1195
beq_cont.41472: !1195
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41473 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41474 !141
beq_else.41473: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41474: !141
	sub 	t0, zero, a3 !1196
	addi	a3, t0, 1 !1196
beq_cont.41466: !1207
beq_cont.41458: !1205
	bne 	a3, zero, beq_else.41475 !1219
	lw  	a3, 2(a2) !1215
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41477 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41478 !1216
beq_else.41477: !1216
	lw  	a0, 12(a3) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 20 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -20 !1219
	bne 	a0, zero, beq_else.41479 !1219
	addi	a0, zero, 3 !1222
	lw  	fa0, 15(sp) !1222
	lw  	fa1, 14(sp) !1222
	lw  	fa2, 13(sp) !1222
	lw  	a1, 2(sp) !1222
	addi	sp, sp, 20 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -20 !1222
	jal 	zero, beq_cont.41480 !1219
beq_else.41479: !1219
	addi	a0, zero, 0 !1220
beq_cont.41480: !1219
beq_cont.41478: !1216
	jal 	zero, beq_cont.41476 !1219
beq_else.41475: !1219
	addi	a0, zero, 0 !1220
beq_cont.41476: !1219
beq_cont.41456: !1216
	jal 	zero, beq_cont.41454 !1219
beq_else.41453: !1219
	addi	a0, zero, 0 !1220
beq_cont.41454: !1219
beq_cont.41434: !1216
	beq 	a0, zero, beq_cont.41482 !1329
	lw  	a0, 16(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 15(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 14(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 13(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 4(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 12(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41482: !1329
beq_cont.41432: !1323
beq_cont.41430: !1322
	lw  	a0, 3(sp) !1340
	addi	a0, a0, 1 !1340
	sw  	a0, 17(sp) !1312
	lw  	a1, 2(sp) !1312
	lwr 	a0, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41483 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41483: !1313
	addi	a2, zero, 159 !0
	lw  	a1, 1(sp) !1315
	sw  	a0, 18(sp) !1315
	addi	sp, sp, 20 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -20 !1315
	bne 	a0, zero, beq_else.41485 !1316
	lw  	a0, 18(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41486 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41486: !1344
	lw  	a0, 17(sp) !1345
	addi	a0, a0, 1 !1345
	lw  	a1, 2(sp) !1345
	lw  	a2, 1(sp) !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.41485: !1316
	lw  	fa0, 135(zero) !1320
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41489 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41491 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a2, 1(sp) !1326
	lw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a2) !1328
	fmul	fa3, fa3, fa0 !1328
	lw  	fa4, 161(zero) !1328
	fadd	fa3, fa3, fa4 !1328
	lw  	a1, 2(sp) !1215
	lw  	a3, 0(a1) !1215
	sw  	a0, 19(sp) !1216
	sw  	fa3, 20(sp) !1216
	sw  	fa2, 21(sp) !1216
	sw  	fa1, 22(sp) !1216
	sw  	fa0, 23(sp) !1216
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41492 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41493 !1216
beq_else.41492: !1216
	lw  	a3, 12(a3) !1219
	lw  	a4, 5(a3) !338
	lw  	fa4, 0(a4) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a4, 5(a3) !348
	lw  	fa5, 1(a4) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a4, 5(a3) !358
	lw  	fa6, 2(a4) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.41494 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a4, 4(a3) !298
	lw  	fa7, 0(a4) !303
	flt 	a4, fa4, fa7 !121
	bne 	a4, zero, beq_else.41496 !1178
	addi	a4, zero, 0 !1182
	jal 	zero, beq_cont.41497 !1178
beq_else.41496: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a4, 4(a3) !308
	lw  	fa5, 1(a4) !313
	flt 	a4, fa4, fa5 !121
	bne 	a4, zero, beq_else.41498 !1179
	addi	a4, zero, 0 !1181
	jal 	zero, beq_cont.41499 !1179
beq_else.41498: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a4, 4(a3) !318
	lw  	fa5, 2(a4) !323
	flt 	a4, fa4, fa5 !121
beq_cont.41499: !1179
beq_cont.41497: !1178
	bne 	a4, zero, beq_else.41500 !1177
	lw  	a3, 6(a3) !280
	sub 	t0, zero, a3 !1183
	addi	a3, t0, 1 !1183
	jal 	zero, beq_cont.41501 !1177
beq_else.41500: !1177
	lw  	a3, 6(a3) !280
beq_cont.41501: !1177
	jal 	zero, beq_cont.41495 !1205
beq_else.41494: !1205
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.41502 !1207
	lw  	a4, 4(a3) !328
	lw  	fa7, 0(a4) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a4) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a4) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41504 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41505 !141
beq_else.41504: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41505: !141
	sub 	t0, zero, a3 !1189
	addi	a3, t0, 1 !1189
	jal 	zero, beq_cont.41503 !1207
beq_else.41502: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a4, 4(a3) !298
	lw  	fs1, 0(a4) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a4, 4(a3) !308
	lw  	fs2, 1(a4) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a4, 4(a3) !318
	lw  	fs2, 2(a4) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a4, 3(a3) !289
	bne 	a4, zero, beq_else.41506 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41507 !846
beq_else.41506: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a4, 9(a3) !418
	lw  	fs2, 0(a4) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a4, 9(a3) !428
	lw  	fs1, 1(a4) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a4, 9(a3) !438
	lw  	fa5, 2(a4) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41507: !846
	lw  	a4, 1(a3) !260
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.41508 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41509 !1195
beq_else.41508: !1195
beq_cont.41509: !1195
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41510 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41511 !141
beq_else.41510: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41511: !141
	sub 	t0, zero, a3 !1196
	addi	a3, t0, 1 !1196
beq_cont.41503: !1207
beq_cont.41495: !1205
	bne 	a3, zero, beq_else.41512 !1219
	lw  	a3, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41514 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41515 !1216
beq_else.41514: !1216
	lw  	a0, 12(a3) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 24 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -24 !1219
	bne 	a0, zero, beq_else.41516 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 22(sp) !1222
	lw  	fa1, 21(sp) !1222
	lw  	fa2, 20(sp) !1222
	lw  	a1, 2(sp) !1222
	addi	sp, sp, 24 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -24 !1222
	jal 	zero, beq_cont.41517 !1219
beq_else.41516: !1219
	addi	a0, zero, 0 !1220
beq_cont.41517: !1219
beq_cont.41515: !1216
	jal 	zero, beq_cont.41513 !1219
beq_else.41512: !1219
	addi	a0, zero, 0 !1220
beq_cont.41513: !1219
beq_cont.41493: !1216
	beq 	a0, zero, beq_cont.41519 !1329
	lw  	a0, 23(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 22(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 21(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 20(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 18(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 19(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41519: !1329
beq_cont.41491: !1323
beq_cont.41489: !1322
	lw  	a0, 17(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 2(sp) !1340
	lw  	a2, 1(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
solve_one_or_network.2708:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41520 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41520: !1354
	lw  	a3, 83(a3) !1355
	sw  	a3, 1(sp) !1312
	lw  	a3, 0(a3) !1312
	sw  	a2, 2(sp) !1313
	sw  	a1, 3(sp) !1313
	sw  	a0, 4(sp) !1313
	addi	t0, zero, -1
	beq 	a3, t0, beq_cont.41523 !1313
	addi	a0, zero, 159 !0
	sw  	a3, 5(sp) !1315
	addi	a1, a2, 0 !1315
	addi	a2, a0, 0 !1315
	addi	a0, a3, 0 !1315
	addi	sp, sp, 8 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -8 !1315
	bne 	a0, zero, beq_else.41524 !1316
	lw  	a0, 5(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41527 !1344
	addi	a0, zero, 1 !1345
	lw  	a1, 1(sp) !1345
	lw  	a2, 2(sp) !1345
	addi	sp, sp, 8 !1345
	jal 	ra, solve_each_element.2704 !1345
	addi	sp, sp, -8 !1345
beq_cont.41527: !1344
	jal 	zero, beq_cont.41525 !1316
beq_else.41524: !1316
	lw  	fa0, 135(zero) !1320
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41529 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41531 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a2, 2(sp) !1326
	lw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a2) !1328
	fmul	fa3, fa3, fa0 !1328
	lw  	fa4, 161(zero) !1328
	fadd	fa3, fa3, fa4 !1328
	lw  	a1, 1(sp) !1215
	lw  	a3, 0(a1) !1215
	sw  	a0, 6(sp) !1216
	sw  	fa3, 7(sp) !1216
	sw  	fa2, 8(sp) !1216
	sw  	fa1, 9(sp) !1216
	sw  	fa0, 10(sp) !1216
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41532 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41533 !1216
beq_else.41532: !1216
	lw  	a3, 12(a3) !1219
	lw  	a4, 5(a3) !338
	lw  	fa4, 0(a4) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a4, 5(a3) !348
	lw  	fa5, 1(a4) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a4, 5(a3) !358
	lw  	fa6, 2(a4) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.41534 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a4, 4(a3) !298
	lw  	fa7, 0(a4) !303
	flt 	a4, fa4, fa7 !121
	bne 	a4, zero, beq_else.41536 !1178
	addi	a4, zero, 0 !1182
	jal 	zero, beq_cont.41537 !1178
beq_else.41536: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a4, 4(a3) !308
	lw  	fa5, 1(a4) !313
	flt 	a4, fa4, fa5 !121
	bne 	a4, zero, beq_else.41538 !1179
	addi	a4, zero, 0 !1181
	jal 	zero, beq_cont.41539 !1179
beq_else.41538: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a4, 4(a3) !318
	lw  	fa5, 2(a4) !323
	flt 	a4, fa4, fa5 !121
beq_cont.41539: !1179
beq_cont.41537: !1178
	bne 	a4, zero, beq_else.41540 !1177
	lw  	a3, 6(a3) !280
	sub 	t0, zero, a3 !1183
	addi	a3, t0, 1 !1183
	jal 	zero, beq_cont.41541 !1177
beq_else.41540: !1177
	lw  	a3, 6(a3) !280
beq_cont.41541: !1177
	jal 	zero, beq_cont.41535 !1205
beq_else.41534: !1205
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.41542 !1207
	lw  	a4, 4(a3) !328
	lw  	fa7, 0(a4) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a4) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a4) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41544 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41545 !141
beq_else.41544: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41545: !141
	sub 	t0, zero, a3 !1189
	addi	a3, t0, 1 !1189
	jal 	zero, beq_cont.41543 !1207
beq_else.41542: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a4, 4(a3) !298
	lw  	fs1, 0(a4) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a4, 4(a3) !308
	lw  	fs2, 1(a4) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a4, 4(a3) !318
	lw  	fs2, 2(a4) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a4, 3(a3) !289
	bne 	a4, zero, beq_else.41546 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41547 !846
beq_else.41546: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a4, 9(a3) !418
	lw  	fs2, 0(a4) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a4, 9(a3) !428
	lw  	fs1, 1(a4) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a4, 9(a3) !438
	lw  	fa5, 2(a4) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41547: !846
	lw  	a4, 1(a3) !260
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.41548 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41549 !1195
beq_else.41548: !1195
beq_cont.41549: !1195
	lw  	a3, 6(a3) !280
	flt 	a4, fa4, zero !123
	bne 	a3, zero, beq_else.41550 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.41551 !141
beq_else.41550: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.41551: !141
	sub 	t0, zero, a3 !1196
	addi	a3, t0, 1 !1196
beq_cont.41543: !1207
beq_cont.41535: !1205
	bne 	a3, zero, beq_else.41552 !1219
	lw  	a3, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41554 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41555 !1216
beq_else.41554: !1216
	lw  	a0, 12(a3) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 12 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -12 !1219
	bne 	a0, zero, beq_else.41556 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 9(sp) !1222
	lw  	fa1, 8(sp) !1222
	lw  	fa2, 7(sp) !1222
	lw  	a1, 1(sp) !1222
	addi	sp, sp, 12 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -12 !1222
	jal 	zero, beq_cont.41557 !1219
beq_else.41556: !1219
	addi	a0, zero, 0 !1220
beq_cont.41557: !1219
beq_cont.41555: !1216
	jal 	zero, beq_cont.41553 !1219
beq_else.41552: !1219
	addi	a0, zero, 0 !1220
beq_cont.41553: !1219
beq_cont.41533: !1216
	beq 	a0, zero, beq_cont.41559 !1329
	lw  	a0, 10(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 9(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 8(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 7(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 5(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 6(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41559: !1329
beq_cont.41531: !1323
beq_cont.41529: !1322
	addi	a0, zero, 1 !1340
	lw  	a1, 1(sp) !1340
	lw  	a2, 2(sp) !1340
	addi	sp, sp, 12 !1340
	jal 	ra, solve_each_element.2704 !1340
	addi	sp, sp, -12 !1340
beq_cont.41525: !1316
beq_cont.41523: !1313
	lw  	a0, 4(sp) !1357
	addi	a0, a0, 1 !1357
	sw  	a0, 11(sp) !1353
	lw  	a1, 3(sp) !1353
	lwr 	a0, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41560 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41560: !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 2(sp) !1356
	addi	sp, sp, 12 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -12 !1356
	lw  	a0, 11(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 3(sp) !1353
	lwr 	a2, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41562 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41562: !1354
	lw  	a2, 83(a2) !1355
	sw  	a2, 12(sp) !1312
	lw  	a2, 0(a2) !1312
	sw  	a0, 13(sp) !1313
	addi	t0, zero, -1
	beq 	a2, t0, beq_cont.41565 !1313
	addi	a0, zero, 159 !0
	lw  	a1, 2(sp) !1315
	sw  	a2, 14(sp) !1315
	addi	t0, a2, 0 !1315
	addi	a2, a0, 0 !1315
	addi	a0, t0, 0 !1315
	addi	sp, sp, 16 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -16 !1315
	bne 	a0, zero, beq_else.41566 !1316
	lw  	a0, 14(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41569 !1344
	addi	a0, zero, 1 !1345
	lw  	a1, 12(sp) !1345
	lw  	a2, 2(sp) !1345
	addi	sp, sp, 16 !1345
	jal 	ra, solve_each_element.2704 !1345
	addi	sp, sp, -16 !1345
beq_cont.41569: !1344
	jal 	zero, beq_cont.41567 !1316
beq_else.41566: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a0, 15(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41571 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41573 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a0, 2(sp) !1326
	lw  	fa1, 0(a0) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a0) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a0) !1328
	sw  	fa0, 16(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	lw  	a1, 12(sp) !1329
	sw  	fa0, 17(sp) !1329
	sw  	fa2, 18(sp) !1329
	sw  	fa1, 19(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 20 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -20 !1329
	beq 	a0, zero, beq_cont.41575 !1329
	lw  	a0, 16(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 19(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 18(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 17(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 14(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 15(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41575: !1329
beq_cont.41573: !1323
beq_cont.41571: !1322
	addi	a0, zero, 1 !1340
	lw  	a1, 12(sp) !1340
	lw  	a2, 2(sp) !1340
	addi	sp, sp, 20 !1340
	jal 	ra, solve_each_element.2704 !1340
	addi	sp, sp, -20 !1340
beq_cont.41567: !1316
beq_cont.41565: !1313
	lw  	a0, 13(sp) !1357
	addi	a0, a0, 1 !1357
	sw  	a0, 20(sp) !1353
	lw  	a1, 3(sp) !1353
	lwr 	a0, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41576 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41576: !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 2(sp) !1356
	addi	sp, sp, 24 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -24 !1356
	lw  	a0, 20(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 3(sp) !1357
	lw  	a2, 2(sp) !1357
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network.2708 !1357
trace_or_matrix.2712:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1363
	lw  	a4, 0(a3) !1364
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.41578 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41578: !1365
	sw  	a2, 1(sp) !1368
	sw  	a1, 2(sp) !1368
	sw  	a0, 3(sp) !1368
	addi	t0, zero, 99
	bne 	a4, t0, beq_else.41580 !1368
	sw  	a3, 4(sp) !1353
	lw  	a3, 1(a3) !1353
	addi	t0, zero, -1
	beq 	a3, t0, beq_cont.41583 !1354
	lw  	a1, 83(a3) !1355
	addi	a0, zero, 0 !1356
	addi	sp, sp, 8 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -8 !1356
	lw  	a0, 4(sp) !1353
	lw  	a1, 2(a0) !1353
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41585 !1354
	lw  	a1, 83(a1) !1355
	sw  	a1, 5(sp) !1312
	lw  	a1, 0(a1) !1312
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41587 !1313
	addi	a2, zero, 159 !0
	lw  	a0, 1(sp) !1315
	sw  	a1, 6(sp) !1315
	addi	t0, a1, 0 !1315
	addi	a1, a0, 0 !1315
	addi	a0, t0, 0 !1315
	addi	sp, sp, 8 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -8 !1315
	bne 	a0, zero, beq_else.41588 !1316
	lw  	a0, 6(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41591 !1344
	addi	a0, zero, 1 !1345
	lw  	a1, 5(sp) !1345
	lw  	a2, 1(sp) !1345
	addi	sp, sp, 8 !1345
	jal 	ra, solve_each_element.2704 !1345
	addi	sp, sp, -8 !1345
beq_cont.41591: !1344
	jal 	zero, beq_cont.41589 !1316
beq_else.41588: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a0, 7(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41593 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41595 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a0, 1(sp) !1326
	lw  	fa1, 0(a0) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a0) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a0) !1328
	sw  	fa0, 8(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	lw  	a1, 5(sp) !1329
	sw  	fa0, 9(sp) !1329
	sw  	fa2, 10(sp) !1329
	sw  	fa1, 11(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 12 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -12 !1329
	beq 	a0, zero, beq_cont.41597 !1329
	lw  	a0, 8(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 11(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 10(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 9(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 6(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 7(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41597: !1329
beq_cont.41595: !1323
beq_cont.41593: !1322
	addi	a0, zero, 1 !1340
	lw  	a1, 5(sp) !1340
	lw  	a2, 1(sp) !1340
	addi	sp, sp, 12 !1340
	jal 	ra, solve_each_element.2704 !1340
	addi	sp, sp, -12 !1340
beq_cont.41589: !1316
beq_cont.41587: !1313
	lw  	a0, 4(sp) !1353
	lw  	a0, 3(a0) !1353
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41599 !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 1(sp) !1356
	addi	sp, sp, 12 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -12 !1356
	addi	a0, zero, 4 !1357
	lw  	a1, 4(sp) !1357
	lw  	a2, 1(sp) !1357
	addi	sp, sp, 12 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -12 !1357
beq_cont.41599: !1354
beq_cont.41585: !1354
beq_cont.41583: !1354
	jal 	zero, beq_cont.41581 !1368
beq_else.41580: !1368
	lw  	a4, 12(a4) !905
	lw  	fa0, 159(zero) !907
	lw  	a5, 5(a4) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a5, 5(a4) !348
	lw  	fa2, 1(a5) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a5, 5(a4) !358
	lw  	fa3, 2(a5) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a5, 1(a4) !260
	sw  	a3, 4(sp) !912
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.41600 !912
	addi	a1, a2, 0 !912
	addi	a0, a4, 0 !912
	addi	sp, sp, 12 !912
	jal 	ra, solver_rect.2575 !912
	addi	sp, sp, -12 !912
	jal 	zero, beq_cont.41601 !912
beq_else.41600: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.41602 !913
	lw  	a4, 4(a4) !328
	lw  	fa3, 0(a2) !208
	lw  	fa4, 0(a4) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a2) !208
	lw  	fa5, 1(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a2) !208
	lw  	fa5, 2(a4) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.41604 !833
	addi	a0, zero, 0 !836
	jal 	zero, beq_cont.41605 !833
beq_else.41604: !833
	lw  	fa4, 0(a4) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a4) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a4) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a0, zero, 1 !835
beq_cont.41605: !833
	jal 	zero, beq_cont.41603 !913
beq_else.41602: !913
	addi	a1, a2, 0 !914
	addi	a0, a4, 0 !914
	addi	sp, sp, 12 !914
	jal 	ra, solver_second.2600 !914
	addi	sp, sp, -12 !914
beq_cont.41603: !913
beq_cont.41601: !912
	beq 	a0, zero, beq_cont.41607 !1374
	lw  	fa0, 135(zero) !1375
	lw  	fa1, 137(zero) !1376
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41609 !1376
	lw  	a0, 4(sp) !1353
	lw  	a0, 1(a0) !1353
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41611 !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 1(sp) !1356
	addi	sp, sp, 12 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -12 !1356
	lw  	a0, 4(sp) !1353
	lw  	a1, 2(a0) !1353
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41613 !1354
	lw  	a1, 83(a1) !1355
	sw  	a1, 12(sp) !1312
	lw  	a1, 0(a1) !1312
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41615 !1313
	addi	a2, zero, 159 !0
	lw  	a0, 1(sp) !1315
	sw  	a1, 13(sp) !1315
	addi	t0, a1, 0 !1315
	addi	a1, a0, 0 !1315
	addi	a0, t0, 0 !1315
	addi	sp, sp, 16 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -16 !1315
	bne 	a0, zero, beq_else.41616 !1316
	lw  	a0, 13(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41619 !1344
	addi	a0, zero, 1 !1345
	lw  	a1, 12(sp) !1345
	lw  	a2, 1(sp) !1345
	addi	sp, sp, 16 !1345
	jal 	ra, solve_each_element.2704 !1345
	addi	sp, sp, -16 !1345
beq_cont.41619: !1344
	jal 	zero, beq_cont.41617 !1316
beq_else.41616: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a0, 14(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41621 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41623 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a0, 1(sp) !1326
	lw  	fa1, 0(a0) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a0) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a0) !1328
	sw  	fa0, 15(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	lw  	a1, 12(sp) !1329
	sw  	fa0, 16(sp) !1329
	sw  	fa2, 17(sp) !1329
	sw  	fa1, 18(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 20 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -20 !1329
	beq 	a0, zero, beq_cont.41625 !1329
	lw  	a0, 15(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 18(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 17(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 16(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 13(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 14(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41625: !1329
beq_cont.41623: !1323
beq_cont.41621: !1322
	addi	a0, zero, 1 !1340
	lw  	a1, 12(sp) !1340
	lw  	a2, 1(sp) !1340
	addi	sp, sp, 20 !1340
	jal 	ra, solve_each_element.2704 !1340
	addi	sp, sp, -20 !1340
beq_cont.41617: !1316
beq_cont.41615: !1313
	lw  	a0, 4(sp) !1353
	lw  	a0, 3(a0) !1353
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41627 !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 1(sp) !1356
	addi	sp, sp, 20 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -20 !1356
	addi	a0, zero, 4 !1357
	lw  	a1, 4(sp) !1357
	lw  	a2, 1(sp) !1357
	addi	sp, sp, 20 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -20 !1357
beq_cont.41627: !1354
beq_cont.41613: !1354
beq_cont.41611: !1354
beq_cont.41609: !1376
beq_cont.41607: !1374
beq_cont.41581: !1368
	lw  	a0, 3(sp) !1381
	addi	a0, a0, 1 !1381
	lw  	a1, 2(sp) !1363
	lwr 	a2, a1, a0 !1363
	lw  	a3, 0(a2) !1364
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41628 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41628: !1365
	sw  	a0, 19(sp) !1368
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.41630 !1368
	lw  	a3, 1(a2) !1353
	addi	t0, zero, -1
	beq 	a3, t0, beq_cont.41633 !1354
	lw  	a3, 83(a3) !1355
	sw  	a3, 20(sp) !1312
	lw  	a3, 0(a3) !1312
	sw  	a2, 21(sp) !1313
	addi	t0, zero, -1
	beq 	a3, t0, beq_cont.41635 !1313
	addi	a2, zero, 159 !0
	lw  	a1, 1(sp) !1315
	sw  	a3, 22(sp) !1315
	addi	a0, a3, 0 !1315
	addi	sp, sp, 24 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -24 !1315
	bne 	a0, zero, beq_else.41636 !1316
	lw  	a0, 22(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41639 !1344
	addi	a0, zero, 1 !1345
	lw  	a1, 20(sp) !1345
	lw  	a2, 1(sp) !1345
	addi	sp, sp, 24 !1345
	jal 	ra, solve_each_element.2704 !1345
	addi	sp, sp, -24 !1345
beq_cont.41639: !1344
	jal 	zero, beq_cont.41637 !1316
beq_else.41636: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a0, 23(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41641 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41643 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a0, 1(sp) !1326
	lw  	fa1, 0(a0) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a0) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a0) !1328
	sw  	fa0, 24(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	lw  	a1, 20(sp) !1329
	sw  	fa0, 25(sp) !1329
	sw  	fa2, 26(sp) !1329
	sw  	fa1, 27(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 28 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -28 !1329
	beq 	a0, zero, beq_cont.41645 !1329
	lw  	a0, 24(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 27(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 26(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 25(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 22(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 23(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41645: !1329
beq_cont.41643: !1323
beq_cont.41641: !1322
	addi	a0, zero, 1 !1340
	lw  	a1, 20(sp) !1340
	lw  	a2, 1(sp) !1340
	addi	sp, sp, 28 !1340
	jal 	ra, solve_each_element.2704 !1340
	addi	sp, sp, -28 !1340
beq_cont.41637: !1316
beq_cont.41635: !1313
	lw  	a0, 21(sp) !1353
	lw  	a0, 2(a0) !1353
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41647 !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 1(sp) !1356
	addi	sp, sp, 28 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -28 !1356
	addi	a0, zero, 3 !1357
	lw  	a1, 21(sp) !1357
	lw  	a2, 1(sp) !1357
	addi	sp, sp, 28 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -28 !1357
beq_cont.41647: !1354
beq_cont.41633: !1354
	jal 	zero, beq_cont.41631 !1368
beq_else.41630: !1368
	sw  	a2, 21(sp) !0
	addi	a2, zero, 159 !0
	lw  	a1, 1(sp) !1373
	addi	a0, a3, 0 !1373
	addi	sp, sp, 28 !1373
	jal 	ra, solver.2606 !1373
	addi	sp, sp, -28 !1373
	beq 	a0, zero, beq_cont.41649 !1374
	lw  	fa0, 135(zero) !1375
	lw  	fa1, 137(zero) !1376
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41651 !1376
	lw  	a0, 21(sp) !1353
	lw  	a1, 1(a0) !1353
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41653 !1354
	lw  	a1, 83(a1) !1355
	sw  	a1, 28(sp) !1312
	lw  	a1, 0(a1) !1312
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41655 !1313
	addi	a2, zero, 159 !0
	lw  	a0, 1(sp) !1315
	sw  	a1, 29(sp) !1315
	addi	t0, a1, 0 !1315
	addi	a1, a0, 0 !1315
	addi	a0, t0, 0 !1315
	addi	sp, sp, 32 !1315
	jal 	ra, solver.2606 !1315
	addi	sp, sp, -32 !1315
	bne 	a0, zero, beq_else.41656 !1316
	lw  	a0, 29(sp) !1344
	lw  	a0, 12(a0) !1344
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41659 !1344
	addi	a0, zero, 1 !1345
	lw  	a1, 28(sp) !1345
	lw  	a2, 1(sp) !1345
	addi	sp, sp, 32 !1345
	jal 	ra, solve_each_element.2704 !1345
	addi	sp, sp, -32 !1345
beq_cont.41659: !1344
	jal 	zero, beq_cont.41657 !1316
beq_else.41656: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a0, 30(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41661 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41663 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	a0, 1(sp) !1326
	lw  	fa1, 0(a0) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a0) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a0) !1328
	sw  	fa0, 31(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	lw  	a1, 28(sp) !1329
	sw  	fa0, 32(sp) !1329
	sw  	fa2, 33(sp) !1329
	sw  	fa1, 34(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 36 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -36 !1329
	beq 	a0, zero, beq_cont.41665 !1329
	lw  	a0, 31(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 34(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 33(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 32(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 29(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 30(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.41665: !1329
beq_cont.41663: !1323
beq_cont.41661: !1322
	addi	a0, zero, 1 !1340
	lw  	a1, 28(sp) !1340
	lw  	a2, 1(sp) !1340
	addi	sp, sp, 36 !1340
	jal 	ra, solve_each_element.2704 !1340
	addi	sp, sp, -36 !1340
beq_cont.41657: !1316
beq_cont.41655: !1313
	lw  	a0, 21(sp) !1353
	lw  	a0, 2(a0) !1353
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41667 !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 1(sp) !1356
	addi	sp, sp, 36 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -36 !1356
	addi	a0, zero, 3 !1357
	lw  	a1, 21(sp) !1357
	lw  	a2, 1(sp) !1357
	addi	sp, sp, 36 !1357
	jal 	ra, solve_one_or_network.2708 !1357
	addi	sp, sp, -36 !1357
beq_cont.41667: !1354
beq_cont.41653: !1354
beq_cont.41651: !1376
beq_cont.41649: !1374
beq_cont.41631: !1368
	lw  	a0, 19(sp) !1381
	addi	a0, a0, 1 !1381
	lw  	a1, 2(sp) !1381
	lw  	a2, 1(sp) !1381
	lw  	ra, 0(sp)
	jal 	zero, trace_or_matrix.2712 !1381
solve_each_element_fast.2718:
	sw  	ra, 0(sp)
	lw  	a3, 0(a2) !529
	lwr 	a4, a1, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.41668 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41668: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	sw  	a3, 1(sp) !1039
	sw  	a1, 2(sp) !1039
	sw  	a2, 3(sp) !1039
	sw  	a0, 4(sp) !1039
	sw  	a4, 5(sp) !1039
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.41670 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a7, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 8 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -8 !1040
	jal 	zero, beq_cont.41671 !1039
beq_else.41670: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.41672 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.41674 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41675 !1004
beq_else.41674: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41675: !1004
	jal 	zero, beq_cont.41673 !1041
beq_else.41672: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.41676 !1014
	lw  	fa4, 1(a7) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a7) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a6) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a6, zero, fa1 !122
	bne 	a6, zero, beq_else.41678 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41679 !1020
beq_else.41678: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.41680 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41681 !1021
beq_else.41680: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41681: !1021
	addi	a0, zero, 1 !1025
beq_cont.41679: !1020
	jal 	zero, beq_cont.41677 !1014
beq_else.41676: !1014
	addi	a0, zero, 0 !1015
beq_cont.41677: !1014
beq_cont.41673: !1041
beq_cont.41671: !1039
	bne 	a0, zero, beq_else.41682 !1408
	lw  	a0, 5(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41683 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41683: !1436
	lw  	a0, 4(sp) !1437
	addi	a0, a0, 1 !1437
	lw  	a2, 3(sp) !529
	lw  	a1, 0(a2) !529
	lw  	a3, 2(sp) !1404
	lwr 	a4, a3, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.41685 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41685: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	sw  	a1, 6(sp) !1039
	sw  	a0, 7(sp) !1039
	sw  	a4, 8(sp) !1039
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.41687 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a7, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 12 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -12 !1040
	jal 	zero, beq_cont.41688 !1039
beq_else.41687: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.41689 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.41691 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41692 !1004
beq_else.41691: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41692: !1004
	jal 	zero, beq_cont.41690 !1041
beq_else.41689: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.41693 !1014
	lw  	fa4, 1(a7) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a7) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a6) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a6, zero, fa1 !122
	bne 	a6, zero, beq_else.41695 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41696 !1020
beq_else.41695: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.41697 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41698 !1021
beq_else.41697: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41698: !1021
	addi	a0, zero, 1 !1025
beq_cont.41696: !1020
	jal 	zero, beq_cont.41694 !1014
beq_else.41693: !1014
	addi	a0, zero, 0 !1015
beq_cont.41694: !1014
beq_cont.41690: !1041
beq_cont.41688: !1039
	bne 	a0, zero, beq_else.41699 !1408
	lw  	a0, 8(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41700 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41700: !1436
	lw  	a0, 7(sp) !1437
	addi	a0, a0, 1 !1437
	lw  	a1, 2(sp) !1437
	lw  	a2, 3(sp) !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.41699: !1408
	lw  	fa0, 135(zero) !1412
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41703 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41705 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a1, 6(sp) !1418
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	fmul	fa3, fa3, fa0 !1420
	lw  	fa4, 164(zero) !1420
	fadd	fa3, fa3, fa4 !1420
	lw  	a1, 2(sp) !1215
	lw  	a2, 0(a1) !1215
	sw  	a0, 9(sp) !1216
	sw  	fa3, 10(sp) !1216
	sw  	fa2, 11(sp) !1216
	sw  	fa1, 12(sp) !1216
	sw  	fa0, 13(sp) !1216
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41706 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41707 !1216
beq_else.41706: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa4, 0(a3) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a3, 5(a2) !348
	lw  	fa5, 1(a3) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a3, 5(a2) !358
	lw  	fa6, 2(a3) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.41708 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	flt 	a3, fa4, fa7 !121
	bne 	a3, zero, beq_else.41710 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.41711 !1178
beq_else.41710: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a3, 4(a2) !308
	lw  	fa5, 1(a3) !313
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.41712 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.41713 !1179
beq_else.41712: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a3, 4(a2) !318
	lw  	fa5, 2(a3) !323
	flt 	a3, fa4, fa5 !121
beq_cont.41713: !1179
beq_cont.41711: !1178
	bne 	a3, zero, beq_else.41714 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.41715 !1177
beq_else.41714: !1177
	lw  	a2, 6(a2) !280
beq_cont.41715: !1177
	jal 	zero, beq_cont.41709 !1205
beq_else.41708: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.41716 !1207
	lw  	a3, 4(a2) !328
	lw  	fa7, 0(a3) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a3) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a3) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41718 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41719 !141
beq_else.41718: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41719: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.41717 !1207
beq_else.41716: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !298
	lw  	fs1, 0(a3) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a3, 4(a2) !308
	lw  	fs2, 1(a3) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a3, 4(a2) !318
	lw  	fs2, 2(a3) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.41720 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41721 !846
beq_else.41720: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a3, 9(a2) !418
	lw  	fs2, 0(a3) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a3, 9(a2) !428
	lw  	fs1, 1(a3) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a3, 9(a2) !438
	lw  	fa5, 2(a3) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41721: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.41722 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41723 !1195
beq_else.41722: !1195
beq_cont.41723: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41724 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41725 !141
beq_else.41724: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41725: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.41717: !1207
beq_cont.41709: !1205
	bne 	a2, zero, beq_else.41726 !1219
	lw  	a2, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41728 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41729 !1216
beq_else.41728: !1216
	lw  	a0, 12(a2) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 16 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -16 !1219
	bne 	a0, zero, beq_else.41730 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 12(sp) !1222
	lw  	fa1, 11(sp) !1222
	lw  	fa2, 10(sp) !1222
	lw  	a1, 2(sp) !1222
	addi	sp, sp, 16 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -16 !1222
	jal 	zero, beq_cont.41731 !1219
beq_else.41730: !1219
	addi	a0, zero, 0 !1220
beq_cont.41731: !1219
beq_cont.41729: !1216
	jal 	zero, beq_cont.41727 !1219
beq_else.41726: !1219
	addi	a0, zero, 0 !1220
beq_cont.41727: !1219
beq_cont.41707: !1216
	beq 	a0, zero, beq_cont.41733 !1421
	lw  	a0, 13(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 12(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 11(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 10(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 8(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 9(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.41733: !1421
beq_cont.41705: !1415
beq_cont.41703: !1414
	lw  	a0, 7(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 2(sp) !1432
	lw  	a2, 3(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
beq_else.41682: !1408
	lw  	fa0, 135(zero) !1412
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41735 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41737 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a1, 1(sp) !1418
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	fmul	fa3, fa3, fa0 !1420
	lw  	fa4, 164(zero) !1420
	fadd	fa3, fa3, fa4 !1420
	lw  	a1, 2(sp) !1215
	lw  	a2, 0(a1) !1215
	sw  	a0, 14(sp) !1216
	sw  	fa3, 15(sp) !1216
	sw  	fa2, 16(sp) !1216
	sw  	fa1, 17(sp) !1216
	sw  	fa0, 18(sp) !1216
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41738 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41739 !1216
beq_else.41738: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa4, 0(a3) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a3, 5(a2) !348
	lw  	fa5, 1(a3) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a3, 5(a2) !358
	lw  	fa6, 2(a3) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.41740 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	flt 	a3, fa4, fa7 !121
	bne 	a3, zero, beq_else.41742 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.41743 !1178
beq_else.41742: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a3, 4(a2) !308
	lw  	fa5, 1(a3) !313
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.41744 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.41745 !1179
beq_else.41744: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a3, 4(a2) !318
	lw  	fa5, 2(a3) !323
	flt 	a3, fa4, fa5 !121
beq_cont.41745: !1179
beq_cont.41743: !1178
	bne 	a3, zero, beq_else.41746 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.41747 !1177
beq_else.41746: !1177
	lw  	a2, 6(a2) !280
beq_cont.41747: !1177
	jal 	zero, beq_cont.41741 !1205
beq_else.41740: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.41748 !1207
	lw  	a3, 4(a2) !328
	lw  	fa7, 0(a3) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a3) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a3) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41750 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41751 !141
beq_else.41750: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41751: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.41749 !1207
beq_else.41748: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !298
	lw  	fs1, 0(a3) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a3, 4(a2) !308
	lw  	fs2, 1(a3) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a3, 4(a2) !318
	lw  	fs2, 2(a3) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.41752 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41753 !846
beq_else.41752: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a3, 9(a2) !418
	lw  	fs2, 0(a3) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a3, 9(a2) !428
	lw  	fs1, 1(a3) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a3, 9(a2) !438
	lw  	fa5, 2(a3) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41753: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.41754 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41755 !1195
beq_else.41754: !1195
beq_cont.41755: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41756 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41757 !141
beq_else.41756: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41757: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.41749: !1207
beq_cont.41741: !1205
	bne 	a2, zero, beq_else.41758 !1219
	lw  	a2, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41760 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41761 !1216
beq_else.41760: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa4, 0(a3) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a3, 5(a2) !348
	lw  	fa5, 1(a3) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a3, 5(a2) !358
	lw  	fa6, 2(a3) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.41762 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	flt 	a3, fa4, fa7 !121
	bne 	a3, zero, beq_else.41764 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.41765 !1178
beq_else.41764: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a3, 4(a2) !308
	lw  	fa5, 1(a3) !313
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.41766 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.41767 !1179
beq_else.41766: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a3, 4(a2) !318
	lw  	fa5, 2(a3) !323
	flt 	a3, fa4, fa5 !121
beq_cont.41767: !1179
beq_cont.41765: !1178
	bne 	a3, zero, beq_else.41768 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.41769 !1177
beq_else.41768: !1177
	lw  	a2, 6(a2) !280
beq_cont.41769: !1177
	jal 	zero, beq_cont.41763 !1205
beq_else.41762: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.41770 !1207
	lw  	a3, 4(a2) !328
	lw  	fa7, 0(a3) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a3) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a3) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41772 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41773 !141
beq_else.41772: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41773: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.41771 !1207
beq_else.41770: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !298
	lw  	fs1, 0(a3) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a3, 4(a2) !308
	lw  	fs2, 1(a3) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a3, 4(a2) !318
	lw  	fs2, 2(a3) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.41774 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41775 !846
beq_else.41774: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a3, 9(a2) !418
	lw  	fs2, 0(a3) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a3, 9(a2) !428
	lw  	fs1, 1(a3) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a3, 9(a2) !438
	lw  	fa5, 2(a3) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41775: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.41776 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41777 !1195
beq_else.41776: !1195
beq_cont.41777: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41778 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41779 !141
beq_else.41778: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41779: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.41771: !1207
beq_cont.41763: !1205
	bne 	a2, zero, beq_else.41780 !1219
	lw  	a2, 2(a1) !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41782 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41783 !1216
beq_else.41782: !1216
	lw  	a0, 12(a2) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 20 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -20 !1219
	bne 	a0, zero, beq_else.41784 !1219
	addi	a0, zero, 3 !1222
	lw  	fa0, 17(sp) !1222
	lw  	fa1, 16(sp) !1222
	lw  	fa2, 15(sp) !1222
	lw  	a1, 2(sp) !1222
	addi	sp, sp, 20 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -20 !1222
	jal 	zero, beq_cont.41785 !1219
beq_else.41784: !1219
	addi	a0, zero, 0 !1220
beq_cont.41785: !1219
beq_cont.41783: !1216
	jal 	zero, beq_cont.41781 !1219
beq_else.41780: !1219
	addi	a0, zero, 0 !1220
beq_cont.41781: !1219
beq_cont.41761: !1216
	jal 	zero, beq_cont.41759 !1219
beq_else.41758: !1219
	addi	a0, zero, 0 !1220
beq_cont.41759: !1219
beq_cont.41739: !1216
	beq 	a0, zero, beq_cont.41787 !1421
	lw  	a0, 18(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 17(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 16(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 15(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 5(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 14(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.41787: !1421
beq_cont.41737: !1415
beq_cont.41735: !1414
	lw  	a0, 4(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a2, 3(sp) !529
	lw  	a1, 0(a2) !529
	lw  	a3, 2(sp) !1404
	lwr 	a4, a3, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.41788 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41788: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	sw  	a1, 19(sp) !1039
	sw  	a0, 20(sp) !1039
	sw  	a4, 21(sp) !1039
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.41790 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a7, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 24 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -24 !1040
	jal 	zero, beq_cont.41791 !1039
beq_else.41790: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.41792 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.41794 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41795 !1004
beq_else.41794: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41795: !1004
	jal 	zero, beq_cont.41793 !1041
beq_else.41792: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.41796 !1014
	lw  	fa4, 1(a7) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a7) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a6) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a6, zero, fa1 !122
	bne 	a6, zero, beq_else.41798 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41799 !1020
beq_else.41798: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.41800 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41801 !1021
beq_else.41800: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41801: !1021
	addi	a0, zero, 1 !1025
beq_cont.41799: !1020
	jal 	zero, beq_cont.41797 !1014
beq_else.41796: !1014
	addi	a0, zero, 0 !1015
beq_cont.41797: !1014
beq_cont.41793: !1041
beq_cont.41791: !1039
	bne 	a0, zero, beq_else.41802 !1408
	lw  	a0, 21(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.41803 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41803: !1436
	lw  	a0, 20(sp) !1437
	addi	a0, a0, 1 !1437
	lw  	a1, 2(sp) !1437
	lw  	a2, 3(sp) !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.41802: !1408
	lw  	fa0, 135(zero) !1412
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41806 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41808 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a1, 19(sp) !1418
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	fmul	fa3, fa3, fa0 !1420
	lw  	fa4, 164(zero) !1420
	fadd	fa3, fa3, fa4 !1420
	lw  	a1, 2(sp) !1215
	lw  	a2, 0(a1) !1215
	sw  	a0, 22(sp) !1216
	sw  	fa3, 23(sp) !1216
	sw  	fa2, 24(sp) !1216
	sw  	fa1, 25(sp) !1216
	sw  	fa0, 26(sp) !1216
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41809 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41810 !1216
beq_else.41809: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa4, 0(a3) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a3, 5(a2) !348
	lw  	fa5, 1(a3) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a3, 5(a2) !358
	lw  	fa6, 2(a3) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.41811 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	flt 	a3, fa4, fa7 !121
	bne 	a3, zero, beq_else.41813 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.41814 !1178
beq_else.41813: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a3, 4(a2) !308
	lw  	fa5, 1(a3) !313
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.41815 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.41816 !1179
beq_else.41815: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a3, 4(a2) !318
	lw  	fa5, 2(a3) !323
	flt 	a3, fa4, fa5 !121
beq_cont.41816: !1179
beq_cont.41814: !1178
	bne 	a3, zero, beq_else.41817 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.41818 !1177
beq_else.41817: !1177
	lw  	a2, 6(a2) !280
beq_cont.41818: !1177
	jal 	zero, beq_cont.41812 !1205
beq_else.41811: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.41819 !1207
	lw  	a3, 4(a2) !328
	lw  	fa7, 0(a3) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a3) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a3) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41821 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41822 !141
beq_else.41821: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41822: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.41820 !1207
beq_else.41819: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !298
	lw  	fs1, 0(a3) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a3, 4(a2) !308
	lw  	fs2, 1(a3) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a3, 4(a2) !318
	lw  	fs2, 2(a3) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.41823 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41824 !846
beq_else.41823: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a3, 9(a2) !418
	lw  	fs2, 0(a3) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a3, 9(a2) !428
	lw  	fs1, 1(a3) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a3, 9(a2) !438
	lw  	fa5, 2(a3) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41824: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.41825 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41826 !1195
beq_else.41825: !1195
beq_cont.41826: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41827 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41828 !141
beq_else.41827: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41828: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.41820: !1207
beq_cont.41812: !1205
	bne 	a2, zero, beq_else.41829 !1219
	lw  	a2, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41831 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41832 !1216
beq_else.41831: !1216
	lw  	a0, 12(a2) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 28 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -28 !1219
	bne 	a0, zero, beq_else.41833 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 25(sp) !1222
	lw  	fa1, 24(sp) !1222
	lw  	fa2, 23(sp) !1222
	lw  	a1, 2(sp) !1222
	addi	sp, sp, 28 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -28 !1222
	jal 	zero, beq_cont.41834 !1219
beq_else.41833: !1219
	addi	a0, zero, 0 !1220
beq_cont.41834: !1219
beq_cont.41832: !1216
	jal 	zero, beq_cont.41830 !1219
beq_else.41829: !1219
	addi	a0, zero, 0 !1220
beq_cont.41830: !1219
beq_cont.41810: !1216
	beq 	a0, zero, beq_cont.41836 !1421
	lw  	a0, 26(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 25(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 24(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 23(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 21(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 22(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.41836: !1421
beq_cont.41808: !1415
beq_cont.41806: !1414
	lw  	a0, 20(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 2(sp) !1432
	lw  	a2, 3(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
solve_one_or_network_fast.2722:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41837 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41837: !1445
	lw  	a3, 83(a3) !1446
	lw  	a4, 0(a2) !529
	lw  	a5, 0(a3) !1404
	sw  	a2, 1(sp) !1405
	sw  	a1, 2(sp) !1405
	sw  	a0, 3(sp) !1405
	addi	t0, zero, -1
	beq 	a5, t0, beq_cont.41840 !1405
	lw  	a6, 12(a5) !1031
	lw  	a7, 10(a6) !449
	lw  	fa0, 0(a7) !1033
	lw  	fa1, 1(a7) !1034
	lw  	fa2, 2(a7) !1035
	lw  	s1, 1(a2) !535
	lwr 	s1, s1, a5 !1037
	lw  	s2, 1(a6) !260
	sw  	a4, 4(sp) !1039
	sw  	a3, 5(sp) !1039
	sw  	a5, 6(sp) !1039
	addi	t0, zero, 1
	bne 	s2, t0, beq_else.41841 !1039
	lw  	a1, 0(a2) !529
	addi	a2, s1, 0 !1040
	addi	a0, a6, 0 !1040
	addi	sp, sp, 8 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -8 !1040
	jal 	zero, beq_cont.41842 !1039
beq_else.41841: !1039
	addi	t0, zero, 2
	bne 	s2, t0, beq_else.41843 !1041
	lw  	fa0, 0(s1) !1004
	flt 	a6, fa0, zero !123
	bne 	a6, zero, beq_else.41845 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41846 !1004
beq_else.41845: !1004
	lw  	fa0, 0(s1) !1005
	lw  	fa1, 3(a7) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41846: !1004
	jal 	zero, beq_cont.41844 !1041
beq_else.41843: !1041
	lw  	fa3, 0(s1) !1013
	feq 	s2, fa3, zero !124
	bne 	s2, zero, beq_else.41847 !1014
	lw  	fa4, 1(s1) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(s1) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(s1) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a7, zero, fa1 !122
	bne 	a7, zero, beq_else.41849 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41850 !1020
beq_else.41849: !1020
	lw  	a6, 6(a6) !280
	bne 	a6, zero, beq_else.41851 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(s1) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41852 !1021
beq_else.41851: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(s1) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41852: !1021
	addi	a0, zero, 1 !1025
beq_cont.41850: !1020
	jal 	zero, beq_cont.41848 !1014
beq_else.41847: !1014
	addi	a0, zero, 0 !1015
beq_cont.41848: !1014
beq_cont.41844: !1041
beq_cont.41842: !1039
	bne 	a0, zero, beq_else.41853 !1408
	lw  	a0, 6(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41856 !1436
	addi	a0, zero, 1 !1437
	lw  	a1, 5(sp) !1437
	lw  	a2, 1(sp) !1437
	addi	sp, sp, 8 !1437
	jal 	ra, solve_each_element_fast.2718 !1437
	addi	sp, sp, -8 !1437
beq_cont.41856: !1436
	jal 	zero, beq_cont.41854 !1408
beq_else.41853: !1408
	lw  	fa0, 135(zero) !1412
	flt 	a1, zero, fa0 !121
	beq 	a1, zero, beq_cont.41858 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a1, fa0, fa1 !121
	beq 	a1, zero, beq_cont.41860 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a1, 4(sp) !1418
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	fmul	fa3, fa3, fa0 !1420
	lw  	fa4, 164(zero) !1420
	fadd	fa3, fa3, fa4 !1420
	lw  	a1, 5(sp) !1215
	lw  	a2, 0(a1) !1215
	sw  	a0, 7(sp) !1216
	sw  	fa3, 8(sp) !1216
	sw  	fa2, 9(sp) !1216
	sw  	fa1, 10(sp) !1216
	sw  	fa0, 11(sp) !1216
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41861 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41862 !1216
beq_else.41861: !1216
	lw  	a2, 12(a2) !1219
	lw  	a3, 5(a2) !338
	lw  	fa4, 0(a3) !343
	fsub	fa4, fa1, fa4 !1201
	lw  	a3, 5(a2) !348
	lw  	fa5, 1(a3) !353
	fsub	fa5, fa2, fa5 !1202
	lw  	a3, 5(a2) !358
	lw  	fa6, 2(a3) !363
	fsub	fa6, fa3, fa6 !1203
	lw  	a3, 1(a2) !260
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.41863 !1205
	fsgnjx  fa4, fa4, fa4 !1178
	lw  	a3, 4(a2) !298
	lw  	fa7, 0(a3) !303
	flt 	a3, fa4, fa7 !121
	bne 	a3, zero, beq_else.41865 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.41866 !1178
beq_else.41865: !1178
	fsgnjx  fa4, fa5, fa5 !1179
	lw  	a3, 4(a2) !308
	lw  	fa5, 1(a3) !313
	flt 	a3, fa4, fa5 !121
	bne 	a3, zero, beq_else.41867 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.41868 !1179
beq_else.41867: !1179
	fsgnjx  fa4, fa6, fa6 !1180
	lw  	a3, 4(a2) !318
	lw  	fa5, 2(a3) !323
	flt 	a3, fa4, fa5 !121
beq_cont.41868: !1179
beq_cont.41866: !1178
	bne 	a3, zero, beq_else.41869 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.41870 !1177
beq_else.41869: !1177
	lw  	a2, 6(a2) !280
beq_cont.41870: !1177
	jal 	zero, beq_cont.41864 !1205
beq_else.41863: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.41871 !1207
	lw  	a3, 4(a2) !328
	lw  	fa7, 0(a3) !213
	fmul	fa4, fa7, fa4 !213
	lw  	fa7, 1(a3) !213
	fmul	fa5, fa7, fa5 !213
	fadd	fa4, fa4, fa5 !213
	lw  	fa5, 2(a3) !213
	fmul	fa5, fa5, fa6 !213
	fadd	fa4, fa4, fa5 !213
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41873 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41874 !141
beq_else.41873: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41874: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.41872 !1207
beq_else.41871: !1207
	fmul	fa7, fa4, fa4 !126
	lw  	a3, 4(a2) !298
	lw  	fs1, 0(a3) !303
	fmul	fa7, fa7, fs1 !844
	fmul	fs1, fa5, fa5 !126
	lw  	a3, 4(a2) !308
	lw  	fs2, 1(a3) !313
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	fmul	fs1, fa6, fa6 !126
	lw  	a3, 4(a2) !318
	lw  	fs2, 2(a3) !323
	fmul	fs1, fs1, fs2 !844
	fadd	fa7, fa7, fs1 !844
	lw  	a3, 3(a2) !289
	bne 	a3, zero, beq_else.41875 !846
	fsgnj   fa4, fa7, fa7 !847
	jal 	zero, beq_cont.41876 !846
beq_else.41875: !846
	fmul	fs1, fa5, fa6 !850
	lw  	a3, 9(a2) !418
	lw  	fs2, 0(a3) !423
	fmul	fs1, fs1, fs2 !850
	fadd	fa7, fa7, fs1 !850
	fmul	fa6, fa6, fa4 !851
	lw  	a3, 9(a2) !428
	lw  	fs1, 1(a3) !433
	fmul	fa6, fa6, fs1 !851
	fadd	fa6, fa7, fa6 !851
	fmul	fa4, fa4, fa5 !852
	lw  	a3, 9(a2) !438
	lw  	fa5, 2(a3) !443
	fmul	fa4, fa4, fa5 !852
	fadd	fa4, fa6, fa4 !852
beq_cont.41876: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.41877 !1195
	li  	fa5, 1.000000 !1195
	fsub	fa4, fa4, fa5 !1195
	jal 	zero, beq_cont.41878 !1195
beq_else.41877: !1195
beq_cont.41878: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa4, zero !123
	bne 	a2, zero, beq_else.41879 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.41880 !141
beq_else.41879: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.41880: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.41872: !1207
beq_cont.41864: !1205
	bne 	a2, zero, beq_else.41881 !1219
	lw  	a2, 1(a1) !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41883 !1216
	addi	a0, zero, 1 !1217
	jal 	zero, beq_cont.41884 !1216
beq_else.41883: !1216
	lw  	a0, 12(a2) !1219
	fsgnj   fa0, fa1, fa1 !1219
	fsgnj   fa1, fa2, fa2 !1219
	fsgnj   fa2, fa3, fa3 !1219
	addi	sp, sp, 12 !1219
	jal 	ra, is_outside.2684 !1219
	addi	sp, sp, -12 !1219
	bne 	a0, zero, beq_else.41885 !1219
	addi	a0, zero, 2 !1222
	lw  	fa0, 10(sp) !1222
	lw  	fa1, 9(sp) !1222
	lw  	fa2, 8(sp) !1222
	lw  	a1, 5(sp) !1222
	addi	sp, sp, 12 !1222
	jal 	ra, check_all_inside.2689 !1222
	addi	sp, sp, -12 !1222
	jal 	zero, beq_cont.41886 !1219
beq_else.41885: !1219
	addi	a0, zero, 0 !1220
beq_cont.41886: !1219
beq_cont.41884: !1216
	jal 	zero, beq_cont.41882 !1219
beq_else.41881: !1219
	addi	a0, zero, 0 !1220
beq_cont.41882: !1219
beq_cont.41862: !1216
	beq 	a0, zero, beq_cont.41888 !1421
	lw  	a0, 11(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 10(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 9(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 8(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 6(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 7(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.41888: !1421
beq_cont.41860: !1415
beq_cont.41858: !1414
	addi	a0, zero, 1 !1432
	lw  	a1, 5(sp) !1432
	lw  	a2, 1(sp) !1432
	addi	sp, sp, 12 !1432
	jal 	ra, solve_each_element_fast.2718 !1432
	addi	sp, sp, -12 !1432
beq_cont.41854: !1408
beq_cont.41840: !1405
	lw  	a0, 3(sp) !1448
	addi	a0, a0, 1 !1448
	sw  	a0, 12(sp) !1444
	lw  	a1, 2(sp) !1444
	lwr 	a0, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41889 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41889: !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 16 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -16 !1447
	lw  	a0, 12(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 2(sp) !1444
	lwr 	a2, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.41891 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41891: !1445
	lw  	a2, 83(a2) !1446
	lw  	a3, 1(sp) !529
	lw  	a4, 0(a3) !529
	lw  	a5, 0(a2) !1404
	sw  	a0, 13(sp) !1405
	addi	t0, zero, -1
	beq 	a5, t0, beq_cont.41894 !1405
	lw  	a6, 12(a5) !1031
	lw  	a7, 10(a6) !449
	lw  	fa0, 0(a7) !1033
	lw  	fa1, 1(a7) !1034
	lw  	fa2, 2(a7) !1035
	lw  	s1, 1(a3) !535
	lwr 	s1, s1, a5 !1037
	lw  	s2, 1(a6) !260
	sw  	a4, 14(sp) !1039
	sw  	a2, 15(sp) !1039
	sw  	a5, 16(sp) !1039
	addi	t0, zero, 1
	bne 	s2, t0, beq_else.41895 !1039
	lw  	a1, 0(a3) !529
	addi	a2, s1, 0 !1040
	addi	a0, a6, 0 !1040
	addi	sp, sp, 20 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -20 !1040
	jal 	zero, beq_cont.41896 !1039
beq_else.41895: !1039
	addi	t0, zero, 2
	bne 	s2, t0, beq_else.41897 !1041
	lw  	fa0, 0(s1) !1004
	flt 	a6, fa0, zero !123
	bne 	a6, zero, beq_else.41899 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41900 !1004
beq_else.41899: !1004
	lw  	fa0, 0(s1) !1005
	lw  	fa1, 3(a7) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41900: !1004
	jal 	zero, beq_cont.41898 !1041
beq_else.41897: !1041
	lw  	fa3, 0(s1) !1013
	feq 	s2, fa3, zero !124
	bne 	s2, zero, beq_else.41901 !1014
	lw  	fa4, 1(s1) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(s1) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(s1) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a7, zero, fa1 !122
	bne 	a7, zero, beq_else.41903 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41904 !1020
beq_else.41903: !1020
	lw  	a6, 6(a6) !280
	bne 	a6, zero, beq_else.41905 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(s1) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41906 !1021
beq_else.41905: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(s1) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41906: !1021
	addi	a0, zero, 1 !1025
beq_cont.41904: !1020
	jal 	zero, beq_cont.41902 !1014
beq_else.41901: !1014
	addi	a0, zero, 0 !1015
beq_cont.41902: !1014
beq_cont.41898: !1041
beq_cont.41896: !1039
	bne 	a0, zero, beq_else.41907 !1408
	lw  	a0, 16(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41910 !1436
	addi	a0, zero, 1 !1437
	lw  	a1, 15(sp) !1437
	lw  	a2, 1(sp) !1437
	addi	sp, sp, 20 !1437
	jal 	ra, solve_each_element_fast.2718 !1437
	addi	sp, sp, -20 !1437
beq_cont.41910: !1436
	jal 	zero, beq_cont.41908 !1408
beq_else.41907: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a0, 17(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41912 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41914 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a0, 14(sp) !1418
	lw  	fa1, 0(a0) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a0) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a0) !1420
	sw  	fa0, 18(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	lw  	a1, 15(sp) !1421
	sw  	fa0, 19(sp) !1421
	sw  	fa2, 20(sp) !1421
	sw  	fa1, 21(sp) !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 24 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -24 !1421
	beq 	a0, zero, beq_cont.41916 !1421
	lw  	a0, 18(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 21(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 20(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 19(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 16(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 17(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.41916: !1421
beq_cont.41914: !1415
beq_cont.41912: !1414
	addi	a0, zero, 1 !1432
	lw  	a1, 15(sp) !1432
	lw  	a2, 1(sp) !1432
	addi	sp, sp, 24 !1432
	jal 	ra, solve_each_element_fast.2718 !1432
	addi	sp, sp, -24 !1432
beq_cont.41908: !1408
beq_cont.41894: !1405
	lw  	a0, 13(sp) !1448
	addi	a0, a0, 1 !1448
	sw  	a0, 22(sp) !1444
	lw  	a1, 2(sp) !1444
	lwr 	a0, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.41917 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41917: !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 24 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -24 !1447
	lw  	a0, 22(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 2(sp) !1448
	lw  	a2, 1(sp) !1448
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network_fast.2722 !1448
trace_or_matrix_fast.2726:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1454
	lw  	a4, 0(a3) !1455
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.41919 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41919: !1456
	sw  	a2, 1(sp) !1459
	sw  	a1, 2(sp) !1459
	sw  	a0, 3(sp) !1459
	addi	t0, zero, 99
	bne 	a4, t0, beq_else.41921 !1459
	sw  	a3, 4(sp) !1444
	lw  	a3, 1(a3) !1444
	addi	t0, zero, -1
	beq 	a3, t0, beq_cont.41924 !1445
	lw  	a1, 83(a3) !1446
	addi	a0, zero, 0 !1447
	addi	sp, sp, 8 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -8 !1447
	lw  	a0, 4(sp) !1444
	lw  	a1, 2(a0) !1444
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41926 !1445
	lw  	a1, 83(a1) !1446
	lw  	a2, 1(sp) !529
	lw  	a3, 0(a2) !529
	lw  	a4, 0(a1) !1404
	addi	t0, zero, -1
	beq 	a4, t0, beq_cont.41928 !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	sw  	a3, 5(sp) !1039
	sw  	a1, 6(sp) !1039
	sw  	a4, 7(sp) !1039
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.41929 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a7, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 8 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -8 !1040
	jal 	zero, beq_cont.41930 !1039
beq_else.41929: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.41931 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.41933 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41934 !1004
beq_else.41933: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41934: !1004
	jal 	zero, beq_cont.41932 !1041
beq_else.41931: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.41935 !1014
	lw  	fa4, 1(a7) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a7) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a6) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a6, zero, fa1 !122
	bne 	a6, zero, beq_else.41937 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41938 !1020
beq_else.41937: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.41939 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41940 !1021
beq_else.41939: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41940: !1021
	addi	a0, zero, 1 !1025
beq_cont.41938: !1020
	jal 	zero, beq_cont.41936 !1014
beq_else.41935: !1014
	addi	a0, zero, 0 !1015
beq_cont.41936: !1014
beq_cont.41932: !1041
beq_cont.41930: !1039
	bne 	a0, zero, beq_else.41941 !1408
	lw  	a0, 7(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41944 !1436
	addi	a0, zero, 1 !1437
	lw  	a1, 6(sp) !1437
	lw  	a2, 1(sp) !1437
	addi	sp, sp, 8 !1437
	jal 	ra, solve_each_element_fast.2718 !1437
	addi	sp, sp, -8 !1437
beq_cont.41944: !1436
	jal 	zero, beq_cont.41942 !1408
beq_else.41941: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a0, 8(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41946 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41948 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a0, 5(sp) !1418
	lw  	fa1, 0(a0) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a0) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a0) !1420
	sw  	fa0, 9(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	lw  	a1, 6(sp) !1421
	sw  	fa0, 10(sp) !1421
	sw  	fa2, 11(sp) !1421
	sw  	fa1, 12(sp) !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 16 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -16 !1421
	beq 	a0, zero, beq_cont.41950 !1421
	lw  	a0, 9(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 12(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 11(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 10(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 7(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 8(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.41950: !1421
beq_cont.41948: !1415
beq_cont.41946: !1414
	addi	a0, zero, 1 !1432
	lw  	a1, 6(sp) !1432
	lw  	a2, 1(sp) !1432
	addi	sp, sp, 16 !1432
	jal 	ra, solve_each_element_fast.2718 !1432
	addi	sp, sp, -16 !1432
beq_cont.41942: !1408
beq_cont.41928: !1405
	lw  	a0, 4(sp) !1444
	lw  	a0, 3(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41952 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 16 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -16 !1447
	addi	a0, zero, 4 !1448
	lw  	a1, 4(sp) !1448
	lw  	a2, 1(sp) !1448
	addi	sp, sp, 16 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -16 !1448
beq_cont.41952: !1445
beq_cont.41926: !1445
beq_cont.41924: !1445
	jal 	zero, beq_cont.41922 !1459
beq_else.41921: !1459
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a4, a7, a4 !1037
	lw  	a7, 1(a5) !260
	sw  	a3, 4(sp) !1039
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.41953 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a4, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 16 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -16 !1040
	jal 	zero, beq_cont.41954 !1039
beq_else.41953: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.41955 !1041
	lw  	fa0, 0(a4) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.41957 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41958 !1004
beq_else.41957: !1004
	lw  	fa0, 0(a4) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41958: !1004
	jal 	zero, beq_cont.41956 !1041
beq_else.41955: !1041
	lw  	fa3, 0(a4) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.41959 !1014
	lw  	fa4, 1(a4) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a4) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a4) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a6) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a6, zero, fa1 !122
	bne 	a6, zero, beq_else.41961 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41962 !1020
beq_else.41961: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.41963 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a4) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41964 !1021
beq_else.41963: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a4) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41964: !1021
	addi	a0, zero, 1 !1025
beq_cont.41962: !1020
	jal 	zero, beq_cont.41960 !1014
beq_else.41959: !1014
	addi	a0, zero, 0 !1015
beq_cont.41960: !1014
beq_cont.41956: !1041
beq_cont.41954: !1039
	beq 	a0, zero, beq_cont.41966 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41968 !1467
	lw  	a0, 4(sp) !1444
	lw  	a0, 1(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41970 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 16 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -16 !1447
	lw  	a0, 4(sp) !1444
	lw  	a1, 2(a0) !1444
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.41972 !1445
	lw  	a1, 83(a1) !1446
	lw  	a2, 1(sp) !529
	lw  	a3, 0(a2) !529
	lw  	a4, 0(a1) !1404
	addi	t0, zero, -1
	beq 	a4, t0, beq_cont.41974 !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	sw  	a3, 13(sp) !1039
	sw  	a1, 14(sp) !1039
	sw  	a4, 15(sp) !1039
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.41975 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a7, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 16 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -16 !1040
	jal 	zero, beq_cont.41976 !1039
beq_else.41975: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.41977 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.41979 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.41980 !1004
beq_else.41979: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.41980: !1004
	jal 	zero, beq_cont.41978 !1041
beq_else.41977: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.41981 !1014
	lw  	fa4, 1(a7) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a7) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a6) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a6, zero, fa1 !122
	bne 	a6, zero, beq_else.41983 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.41984 !1020
beq_else.41983: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.41985 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.41986 !1021
beq_else.41985: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.41986: !1021
	addi	a0, zero, 1 !1025
beq_cont.41984: !1020
	jal 	zero, beq_cont.41982 !1014
beq_else.41981: !1014
	addi	a0, zero, 0 !1015
beq_cont.41982: !1014
beq_cont.41978: !1041
beq_cont.41976: !1039
	bne 	a0, zero, beq_else.41987 !1408
	lw  	a0, 15(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.41990 !1436
	addi	a0, zero, 1 !1437
	lw  	a1, 14(sp) !1437
	lw  	a2, 1(sp) !1437
	addi	sp, sp, 16 !1437
	jal 	ra, solve_each_element_fast.2718 !1437
	addi	sp, sp, -16 !1437
beq_cont.41990: !1436
	jal 	zero, beq_cont.41988 !1408
beq_else.41987: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a0, 16(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.41992 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.41994 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a0, 13(sp) !1418
	lw  	fa1, 0(a0) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a0) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a0) !1420
	sw  	fa0, 17(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	lw  	a1, 14(sp) !1421
	sw  	fa0, 18(sp) !1421
	sw  	fa2, 19(sp) !1421
	sw  	fa1, 20(sp) !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 24 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -24 !1421
	beq 	a0, zero, beq_cont.41996 !1421
	lw  	a0, 17(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 20(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 19(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 18(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 15(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 16(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.41996: !1421
beq_cont.41994: !1415
beq_cont.41992: !1414
	addi	a0, zero, 1 !1432
	lw  	a1, 14(sp) !1432
	lw  	a2, 1(sp) !1432
	addi	sp, sp, 24 !1432
	jal 	ra, solve_each_element_fast.2718 !1432
	addi	sp, sp, -24 !1432
beq_cont.41988: !1408
beq_cont.41974: !1405
	lw  	a0, 4(sp) !1444
	lw  	a0, 3(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.41998 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 24 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -24 !1447
	addi	a0, zero, 4 !1448
	lw  	a1, 4(sp) !1448
	lw  	a2, 1(sp) !1448
	addi	sp, sp, 24 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -24 !1448
beq_cont.41998: !1445
beq_cont.41972: !1445
beq_cont.41970: !1445
beq_cont.41968: !1467
beq_cont.41966: !1465
beq_cont.41922: !1459
	lw  	a0, 3(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1454
	lwr 	a2, a1, a0 !1454
	lw  	a3, 0(a2) !1455
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.41999 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.41999: !1456
	sw  	a0, 21(sp) !1459
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.42001 !1459
	lw  	a3, 1(a2) !1444
	addi	t0, zero, -1
	beq 	a3, t0, beq_cont.42004 !1445
	lw  	a3, 83(a3) !1446
	lw  	a4, 1(sp) !529
	lw  	a5, 0(a4) !529
	lw  	a6, 0(a3) !1404
	sw  	a2, 22(sp) !1405
	addi	t0, zero, -1
	beq 	a6, t0, beq_cont.42006 !1405
	lw  	a7, 12(a6) !1031
	lw  	s1, 10(a7) !449
	lw  	fa0, 0(s1) !1033
	lw  	fa1, 1(s1) !1034
	lw  	fa2, 2(s1) !1035
	lw  	s2, 1(a4) !535
	lwr 	s2, s2, a6 !1037
	lw  	s3, 1(a7) !260
	sw  	a5, 23(sp) !1039
	sw  	a3, 24(sp) !1039
	sw  	a6, 25(sp) !1039
	addi	t0, zero, 1
	bne 	s3, t0, beq_else.42007 !1039
	lw  	a1, 0(a4) !529
	addi	a2, s2, 0 !1040
	addi	a0, a7, 0 !1040
	addi	sp, sp, 28 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -28 !1040
	jal 	zero, beq_cont.42008 !1039
beq_else.42007: !1039
	addi	t0, zero, 2
	bne 	s3, t0, beq_else.42009 !1041
	lw  	fa0, 0(s2) !1004
	flt 	a7, fa0, zero !123
	bne 	a7, zero, beq_else.42011 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42012 !1004
beq_else.42011: !1004
	lw  	fa0, 0(s2) !1005
	lw  	fa1, 3(s1) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42012: !1004
	jal 	zero, beq_cont.42010 !1041
beq_else.42009: !1041
	lw  	fa3, 0(s2) !1013
	feq 	s3, fa3, zero !124
	bne 	s3, zero, beq_else.42013 !1014
	lw  	fa4, 1(s2) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(s2) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(s2) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(s1) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	s1, zero, fa1 !122
	bne 	s1, zero, beq_else.42015 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42016 !1020
beq_else.42015: !1020
	lw  	a7, 6(a7) !280
	bne 	a7, zero, beq_else.42017 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(s2) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42018 !1021
beq_else.42017: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(s2) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42018: !1021
	addi	a0, zero, 1 !1025
beq_cont.42016: !1020
	jal 	zero, beq_cont.42014 !1014
beq_else.42013: !1014
	addi	a0, zero, 0 !1015
beq_cont.42014: !1014
beq_cont.42010: !1041
beq_cont.42008: !1039
	bne 	a0, zero, beq_else.42019 !1408
	lw  	a0, 25(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.42022 !1436
	addi	a0, zero, 1 !1437
	lw  	a1, 24(sp) !1437
	lw  	a2, 1(sp) !1437
	addi	sp, sp, 28 !1437
	jal 	ra, solve_each_element_fast.2718 !1437
	addi	sp, sp, -28 !1437
beq_cont.42022: !1436
	jal 	zero, beq_cont.42020 !1408
beq_else.42019: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a0, 26(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.42024 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42026 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a0, 23(sp) !1418
	lw  	fa1, 0(a0) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a0) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a0) !1420
	sw  	fa0, 27(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	lw  	a1, 24(sp) !1421
	sw  	fa0, 28(sp) !1421
	sw  	fa2, 29(sp) !1421
	sw  	fa1, 30(sp) !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 32 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -32 !1421
	beq 	a0, zero, beq_cont.42028 !1421
	lw  	a0, 27(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 30(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 29(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 28(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 25(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 26(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.42028: !1421
beq_cont.42026: !1415
beq_cont.42024: !1414
	addi	a0, zero, 1 !1432
	lw  	a1, 24(sp) !1432
	lw  	a2, 1(sp) !1432
	addi	sp, sp, 32 !1432
	jal 	ra, solve_each_element_fast.2718 !1432
	addi	sp, sp, -32 !1432
beq_cont.42020: !1408
beq_cont.42006: !1405
	lw  	a0, 22(sp) !1444
	lw  	a0, 2(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.42030 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 32 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -32 !1447
	addi	a0, zero, 3 !1448
	lw  	a1, 22(sp) !1448
	lw  	a2, 1(sp) !1448
	addi	sp, sp, 32 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -32 !1448
beq_cont.42030: !1445
beq_cont.42004: !1445
	jal 	zero, beq_cont.42002 !1459
beq_else.42001: !1459
	lw  	a4, 12(a3) !1031
	lw  	a5, 10(a4) !449
	lw  	fa0, 0(a5) !1033
	lw  	fa1, 1(a5) !1034
	lw  	fa2, 2(a5) !1035
	lw  	a6, 1(sp) !535
	lw  	a7, 1(a6) !535
	lwr 	a3, a7, a3 !1037
	lw  	a7, 1(a4) !260
	sw  	a2, 22(sp) !1039
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.42031 !1039
	lw  	a1, 0(a6) !529
	addi	a2, a3, 0 !1040
	addi	a0, a4, 0 !1040
	addi	sp, sp, 32 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -32 !1040
	jal 	zero, beq_cont.42032 !1039
beq_else.42031: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.42033 !1041
	lw  	fa0, 0(a3) !1004
	flt 	a4, fa0, zero !123
	bne 	a4, zero, beq_else.42035 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42036 !1004
beq_else.42035: !1004
	lw  	fa0, 0(a3) !1005
	lw  	fa1, 3(a5) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42036: !1004
	jal 	zero, beq_cont.42034 !1041
beq_else.42033: !1041
	lw  	fa3, 0(a3) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.42037 !1014
	lw  	fa4, 1(a3) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a3) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a3) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a5) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a5, zero, fa1 !122
	bne 	a5, zero, beq_else.42039 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42040 !1020
beq_else.42039: !1020
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.42041 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a3) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42042 !1021
beq_else.42041: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a3) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42042: !1021
	addi	a0, zero, 1 !1025
beq_cont.42040: !1020
	jal 	zero, beq_cont.42038 !1014
beq_else.42037: !1014
	addi	a0, zero, 0 !1015
beq_cont.42038: !1014
beq_cont.42034: !1041
beq_cont.42032: !1039
	beq 	a0, zero, beq_cont.42044 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42046 !1467
	lw  	a0, 22(sp) !1444
	lw  	a1, 1(a0) !1444
	addi	t0, zero, -1
	beq 	a1, t0, beq_cont.42048 !1445
	lw  	a1, 83(a1) !1446
	lw  	a2, 1(sp) !529
	lw  	a3, 0(a2) !529
	lw  	a4, 0(a1) !1404
	addi	t0, zero, -1
	beq 	a4, t0, beq_cont.42050 !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	sw  	a3, 31(sp) !1039
	sw  	a1, 32(sp) !1039
	sw  	a4, 33(sp) !1039
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.42051 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a7, 0 !1040
	addi	a0, a5, 0 !1040
	addi	sp, sp, 36 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -36 !1040
	jal 	zero, beq_cont.42052 !1039
beq_else.42051: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.42053 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.42055 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42056 !1004
beq_else.42055: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42056: !1004
	jal 	zero, beq_cont.42054 !1041
beq_else.42053: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.42057 !1014
	lw  	fa4, 1(a7) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a7) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a7) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a6) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a6, zero, fa1 !122
	bne 	a6, zero, beq_else.42059 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42060 !1020
beq_else.42059: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.42061 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42062 !1021
beq_else.42061: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42062: !1021
	addi	a0, zero, 1 !1025
beq_cont.42060: !1020
	jal 	zero, beq_cont.42058 !1014
beq_else.42057: !1014
	addi	a0, zero, 0 !1015
beq_cont.42058: !1014
beq_cont.42054: !1041
beq_cont.42052: !1039
	bne 	a0, zero, beq_else.42063 !1408
	lw  	a0, 33(sp) !1436
	lw  	a0, 12(a0) !1436
	lw  	a0, 6(a0) !280
	beq 	a0, zero, beq_cont.42066 !1436
	addi	a0, zero, 1 !1437
	lw  	a1, 32(sp) !1437
	lw  	a2, 1(sp) !1437
	addi	sp, sp, 36 !1437
	jal 	ra, solve_each_element_fast.2718 !1437
	addi	sp, sp, -36 !1437
beq_cont.42066: !1436
	jal 	zero, beq_cont.42064 !1408
beq_else.42063: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a0, 34(sp) !121
	flt 	a0, zero, fa0 !121
	beq 	a0, zero, beq_cont.42068 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42070 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	a0, 31(sp) !1418
	lw  	fa1, 0(a0) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a0) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a0) !1420
	sw  	fa0, 35(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	lw  	a1, 32(sp) !1421
	sw  	fa0, 36(sp) !1421
	sw  	fa2, 37(sp) !1421
	sw  	fa1, 38(sp) !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 40 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -40 !1421
	beq 	a0, zero, beq_cont.42072 !1421
	lw  	a0, 35(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 38(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 37(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 36(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 33(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 34(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.42072: !1421
beq_cont.42070: !1415
beq_cont.42068: !1414
	addi	a0, zero, 1 !1432
	lw  	a1, 32(sp) !1432
	lw  	a2, 1(sp) !1432
	addi	sp, sp, 40 !1432
	jal 	ra, solve_each_element_fast.2718 !1432
	addi	sp, sp, -40 !1432
beq_cont.42064: !1408
beq_cont.42050: !1405
	lw  	a0, 22(sp) !1444
	lw  	a0, 2(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.42074 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 40 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -40 !1447
	addi	a0, zero, 3 !1448
	lw  	a1, 22(sp) !1448
	lw  	a2, 1(sp) !1448
	addi	sp, sp, 40 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -40 !1448
beq_cont.42074: !1445
beq_cont.42048: !1445
beq_cont.42046: !1467
beq_cont.42044: !1465
beq_cont.42002: !1459
	lw  	a0, 21(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1454
	lwr 	a2, a1, a0 !1454
	lw  	a3, 0(a2) !1455
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.42075 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42075: !1456
	sw  	a0, 39(sp) !1459
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.42077 !1459
	sw  	a2, 40(sp) !1444
	lw  	a2, 1(a2) !1444
	addi	t0, zero, -1
	beq 	a2, t0, beq_cont.42080 !1445
	lw  	a1, 83(a2) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	addi	a0, zero, 2 !1448
	lw  	a1, 40(sp) !1448
	lw  	a2, 1(sp) !1448
	addi	sp, sp, 44 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -44 !1448
beq_cont.42080: !1445
	jal 	zero, beq_cont.42078 !1459
beq_else.42077: !1459
	lw  	a4, 12(a3) !1031
	lw  	a5, 10(a4) !449
	lw  	fa0, 0(a5) !1033
	lw  	fa1, 1(a5) !1034
	lw  	fa2, 2(a5) !1035
	lw  	a6, 1(sp) !535
	lw  	a7, 1(a6) !535
	lwr 	a3, a7, a3 !1037
	lw  	a7, 1(a4) !260
	sw  	a2, 40(sp) !1039
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.42081 !1039
	lw  	a1, 0(a6) !529
	addi	a2, a3, 0 !1040
	addi	a0, a4, 0 !1040
	addi	sp, sp, 44 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -44 !1040
	jal 	zero, beq_cont.42082 !1039
beq_else.42081: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.42083 !1041
	lw  	fa0, 0(a3) !1004
	flt 	a4, fa0, zero !123
	bne 	a4, zero, beq_else.42085 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42086 !1004
beq_else.42085: !1004
	lw  	fa0, 0(a3) !1005
	lw  	fa1, 3(a5) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42086: !1004
	jal 	zero, beq_cont.42084 !1041
beq_else.42083: !1041
	lw  	fa3, 0(a3) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.42087 !1014
	lw  	fa4, 1(a3) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a3) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a3) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a5) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a5, zero, fa1 !122
	bne 	a5, zero, beq_else.42089 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42090 !1020
beq_else.42089: !1020
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.42091 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a3) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42092 !1021
beq_else.42091: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a3) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42092: !1021
	addi	a0, zero, 1 !1025
beq_cont.42090: !1020
	jal 	zero, beq_cont.42088 !1014
beq_else.42087: !1014
	addi	a0, zero, 0 !1015
beq_cont.42088: !1014
beq_cont.42084: !1041
beq_cont.42082: !1039
	beq 	a0, zero, beq_cont.42094 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42096 !1467
	lw  	a0, 40(sp) !1444
	lw  	a0, 1(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.42098 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 1(sp) !1447
	addi	sp, sp, 44 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -44 !1447
	addi	a0, zero, 2 !1448
	lw  	a1, 40(sp) !1448
	lw  	a2, 1(sp) !1448
	addi	sp, sp, 44 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -44 !1448
beq_cont.42098: !1445
beq_cont.42096: !1467
beq_cont.42094: !1465
beq_cont.42078: !1459
	lw  	a0, 39(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1454
	lwr 	a2, a1, a0 !1454
	lw  	a3, 0(a2) !1455
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.42099 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42099: !1456
	sw  	a0, 41(sp) !1459
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.42101 !1459
	addi	a0, zero, 1 !1460
	lw  	a1, 1(sp) !1460
	addi	t0, a2, 0 !1460
	addi	a2, a1, 0 !1460
	addi	a1, t0, 0 !1460
	addi	sp, sp, 44 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -44 !1460
	jal 	zero, beq_cont.42102 !1459
beq_else.42101: !1459
	lw  	a4, 12(a3) !1031
	lw  	a5, 10(a4) !449
	lw  	fa0, 0(a5) !1033
	lw  	fa1, 1(a5) !1034
	lw  	fa2, 2(a5) !1035
	lw  	a6, 1(sp) !535
	lw  	a7, 1(a6) !535
	lwr 	a3, a7, a3 !1037
	lw  	a7, 1(a4) !260
	sw  	a2, 42(sp) !1039
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.42103 !1039
	lw  	a1, 0(a6) !529
	addi	a2, a3, 0 !1040
	addi	a0, a4, 0 !1040
	addi	sp, sp, 44 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -44 !1040
	jal 	zero, beq_cont.42104 !1039
beq_else.42103: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.42105 !1041
	lw  	fa0, 0(a3) !1004
	flt 	a4, fa0, zero !123
	bne 	a4, zero, beq_else.42107 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42108 !1004
beq_else.42107: !1004
	lw  	fa0, 0(a3) !1005
	lw  	fa1, 3(a5) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42108: !1004
	jal 	zero, beq_cont.42106 !1041
beq_else.42105: !1041
	lw  	fa3, 0(a3) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.42109 !1014
	lw  	fa4, 1(a3) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a3) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a3) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a5) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a5, zero, fa1 !122
	bne 	a5, zero, beq_else.42111 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42112 !1020
beq_else.42111: !1020
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.42113 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a3) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42114 !1021
beq_else.42113: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a3) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42114: !1021
	addi	a0, zero, 1 !1025
beq_cont.42112: !1020
	jal 	zero, beq_cont.42110 !1014
beq_else.42109: !1014
	addi	a0, zero, 0 !1015
beq_cont.42110: !1014
beq_cont.42106: !1041
beq_cont.42104: !1039
	beq 	a0, zero, beq_cont.42116 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42118 !1467
	addi	a0, zero, 1 !1468
	lw  	a1, 42(sp) !1468
	lw  	a2, 1(sp) !1468
	addi	sp, sp, 44 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -44 !1468
beq_cont.42118: !1467
beq_cont.42116: !1465
beq_cont.42102: !1459
	lw  	a0, 41(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1472
	lw  	a2, 1(sp) !1472
	lw  	ra, 0(sp)
	jal 	zero, trace_or_matrix_fast.2726 !1472
get_nvector_second.2736:
	sw  	ra, 0(sp)
	lw  	fa0, 138(zero) !1513
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1513
	lw  	fa1, 139(zero) !1514
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1514
	lw  	fa2, 140(zero) !1515
	lw  	a1, 5(a0) !358
	lw  	fa3, 2(a1) !363
	fsub	fa2, fa2, fa3 !1515
	lw  	a1, 4(a0) !298
	lw  	fa3, 0(a1) !303
	fmul	fa3, fa0, fa3 !1517
	lw  	a1, 4(a0) !308
	lw  	fa4, 1(a1) !313
	fmul	fa4, fa1, fa4 !1518
	lw  	a1, 4(a0) !318
	lw  	fa5, 2(a1) !323
	fmul	fa5, fa2, fa5 !1519
	lw  	a1, 3(a0) !289
	bne 	a1, zero, beq_else.42119 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.42120 !1521
beq_else.42119: !1521
	lw  	a1, 9(a0) !438
	lw  	fa6, 2(a1) !443
	fmul	fa6, fa1, fa6 !1526
	lw  	a1, 9(a0) !428
	lw  	fa7, 1(a1) !433
	fmul	fa7, fa2, fa7 !1526
	fadd	fa6, fa6, fa7 !1526
	li  	fa7, 2.000000 !125
	fdiv	fa6, fa6, fa7 !125
	fadd	fa3, fa3, fa6 !1526
	sw  	fa3, 142(zero) !1526
	lw  	a1, 9(a0) !438
	lw  	fa3, 2(a1) !443
	fmul	fa3, fa0, fa3 !1527
	lw  	a1, 9(a0) !418
	lw  	fa6, 0(a1) !423
	fmul	fa2, fa2, fa6 !1527
	fadd	fa2, fa3, fa2 !1527
	li  	fa3, 2.000000 !125
	fdiv	fa2, fa2, fa3 !125
	fadd	fa2, fa4, fa2 !1527
	sw  	fa2, 143(zero) !1527
	lw  	a1, 9(a0) !428
	lw  	fa2, 1(a1) !433
	fmul	fa0, fa0, fa2 !1528
	lw  	a1, 9(a0) !418
	lw  	fa2, 0(a1) !423
	fmul	fa1, fa1, fa2 !1528
	fadd	fa0, fa0, fa1 !1528
	li  	fa1, 2.000000 !125
	fdiv	fa0, fa0, fa1 !125
	fadd	fa0, fa5, fa0 !1528
	sw  	fa0, 144(zero) !1528
beq_cont.42120: !1521
	lw  	a0, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.42121 !200
	bne 	a0, zero, beq_else.42123 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.42122 !200
beq_else.42123: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.42124: !200
	jal 	zero, beq_cont.42122 !200
beq_else.42121: !200
	li  	fa0, 1.000000 !200
beq_cont.42122: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
get_nvector.2738:
	sw  	ra, 0(sp)
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.42126 !1536
	lw  	a0, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a2, a0, -1 !1500
	addi	a0, a0, -1 !1500
	lwr 	fa0, a1, a0 !1500
	feq 	a0, fa0, zero !124
	bne 	a0, zero, beq_else.42127 !147
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.42129 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.42130 !148
beq_else.42129: !148
	li  	fa0, 1.000000 !148
beq_cont.42130: !148
	jal 	zero, beq_cont.42128 !147
beq_else.42127: !147
	addi	fa0, zero, 0
beq_cont.42128: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a2
	sw  	fa0, 0(t0) !1500
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42126: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.42132 !1538
	lw  	a1, 4(a0) !298
	lw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0 !1506
	sw  	fa0, 142(zero) !1506
	lw  	a1, 4(a0) !308
	lw  	fa0, 1(a1) !313
	fsgnjn  fa0, fa0, fa0 !1507
	sw  	fa0, 143(zero) !1507
	lw  	a0, 4(a0) !318
	lw  	fa0, 2(a0) !323
	fsgnjn  fa0, fa0, fa0 !1508
	sw  	fa0, 144(zero) !1508
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42132: !1538
	lw  	fa0, 138(zero) !1513
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1513
	lw  	fa1, 139(zero) !1514
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1514
	lw  	fa2, 140(zero) !1515
	lw  	a1, 5(a0) !358
	lw  	fa3, 2(a1) !363
	fsub	fa2, fa2, fa3 !1515
	lw  	a1, 4(a0) !298
	lw  	fa3, 0(a1) !303
	fmul	fa3, fa0, fa3 !1517
	lw  	a1, 4(a0) !308
	lw  	fa4, 1(a1) !313
	fmul	fa4, fa1, fa4 !1518
	lw  	a1, 4(a0) !318
	lw  	fa5, 2(a1) !323
	fmul	fa5, fa2, fa5 !1519
	lw  	a1, 3(a0) !289
	bne 	a1, zero, beq_else.42134 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.42135 !1521
beq_else.42134: !1521
	lw  	a1, 9(a0) !438
	lw  	fa6, 2(a1) !443
	fmul	fa6, fa1, fa6 !1526
	lw  	a1, 9(a0) !428
	lw  	fa7, 1(a1) !433
	fmul	fa7, fa2, fa7 !1526
	fadd	fa6, fa6, fa7 !1526
	li  	fa7, 2.000000 !125
	fdiv	fa6, fa6, fa7 !125
	fadd	fa3, fa3, fa6 !1526
	sw  	fa3, 142(zero) !1526
	lw  	a1, 9(a0) !438
	lw  	fa3, 2(a1) !443
	fmul	fa3, fa0, fa3 !1527
	lw  	a1, 9(a0) !418
	lw  	fa6, 0(a1) !423
	fmul	fa2, fa2, fa6 !1527
	fadd	fa2, fa3, fa2 !1527
	li  	fa3, 2.000000 !125
	fdiv	fa2, fa2, fa3 !125
	fadd	fa2, fa4, fa2 !1527
	sw  	fa2, 143(zero) !1527
	lw  	a1, 9(a0) !428
	lw  	fa2, 1(a1) !433
	fmul	fa0, fa0, fa2 !1528
	lw  	a1, 9(a0) !418
	lw  	fa2, 0(a1) !423
	fmul	fa1, fa1, fa2 !1528
	fadd	fa0, fa0, fa1 !1528
	li  	fa1, 2.000000 !125
	fdiv	fa0, fa0, fa1 !125
	fadd	fa0, fa5, fa0 !1528
	sw  	fa0, 144(zero) !1528
beq_cont.42135: !1521
	lw  	a0, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.42136 !200
	bne 	a0, zero, beq_else.42138 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.42137 !200
beq_else.42138: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.42139: !200
	jal 	zero, beq_cont.42137 !200
beq_else.42136: !200
	li  	fa0, 1.000000 !200
beq_cont.42137: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
utexture.2741:
	sw  	ra, 0(sp)
	lw  	a2, 0(a0) !250
	lw  	a3, 8(a0) !388
	lw  	fa0, 0(a3) !393
	sw  	fa0, 145(zero) !1551
	lw  	a3, 8(a0) !398
	lw  	fa0, 1(a3) !403
	sw  	fa0, 146(zero) !1552
	lw  	a3, 8(a0) !408
	lw  	fa0, 2(a3) !413
	sw  	fa0, 147(zero) !1553
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.42141 !1554
	lw  	fa0, 0(a1) !1557
	lw  	a2, 5(a0) !338
	lw  	fa1, 0(a2) !343
	fsub	fa0, fa0, fa1 !1557
	li  	fa1, 0.050000 !1559
	fmul	fa1, fa0, fa1 !1559
	ftoi	t0, fa1 !1559
	itof	ft0, t0
	flt 	t0, fa1, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	li  	fa2, 20.000000 !1559
	fmul	fa1, fa1, fa2 !1559
	fsub	fa0, fa0, fa1 !1560
	li  	fa1, 10.000000 !1560
	flt 	a2, fa0, fa1 !121
	lw  	fa0, 2(a1) !1562
	lw  	a0, 5(a0) !358
	lw  	fa1, 2(a0) !363
	fsub	fa0, fa0, fa1 !1562
	li  	fa1, 0.050000 !1564
	fmul	fa1, fa0, fa1 !1564
	ftoi	t0, fa1 !1564
	itof	ft0, t0
	flt 	t0, fa1, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	li  	fa2, 20.000000 !1564
	fmul	fa1, fa1, fa2 !1564
	fsub	fa0, fa0, fa1 !1565
	li  	fa1, 10.000000 !1565
	flt 	a0, fa0, fa1 !121
	bne 	a2, zero, beq_else.42142 !1570
	bne 	a0, zero, beq_else.42144 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.42143 !1570
beq_else.42144: !1570
	addi	fa0, zero, 0
beq_cont.42145: !1570
	jal 	zero, beq_cont.42143 !1570
beq_else.42142: !1570
	bne 	a0, zero, beq_else.42146 !1569
	addi	fa0, zero, 0
	jal 	zero, beq_cont.42147 !1569
beq_else.42146: !1569
	li  	fa0, 255.000000 !1569
beq_cont.42147: !1569
beq_cont.42143: !1570
	sw  	fa0, 146(zero) !1567
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42141: !1554
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.42149 !1572
	lw  	fa0, 1(a1) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 4 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -4 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42149: !1572
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.42151 !1579
	lw  	fa0, 0(a1) !1582
	lw  	a2, 5(a0) !338
	lw  	fa1, 0(a2) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 2(a1) !1583
	lw  	a0, 5(a0) !358
	lw  	fa2, 2(a0) !363
	fsub	fa1, fa1, fa2 !1583
	fmul	fa0, fa0, fa0 !126
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !1584
	fsqrt   fa0, fa0 !1584
	li  	fa1, 10.000000 !1584
	fdiv	fa0, fa0, fa1 !1584
	ftoi	t0, fa0 !1585
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1585
	li  	fa1, 3.141593 !1585
	fmul	fa0, fa0, fa1 !1585
	addi	sp, sp, 4 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -4 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42151: !1579
	addi	t0, zero, 4
	bne 	a2, t0, beq_else.42153 !1590
	lw  	fa0, 0(a1) !1592
	lw  	a2, 5(a0) !338
	lw  	fa1, 0(a2) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a2, 4(a0) !298
	lw  	fa1, 0(a2) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lw  	fa1, 2(a1) !1593
	lw  	a2, 5(a0) !358
	lw  	fa2, 2(a2) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a2, 4(a0) !318
	lw  	fa2, 2(a2) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsgnjx  fa3, fa0, fa0 !1596
	li  	fa4, 0.000100 !1596
	flt 	a2, fa3, fa4 !121
	sw  	fa2, 1(sp) !1596
	sw  	a0, 2(sp) !1596
	sw  	a1, 3(sp) !1596
	bne 	a2, zero, beq_else.42154 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 4 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -4 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.42155 !1596
beq_else.42154: !1596
	li  	fa0, 15.000000 !1597
beq_cont.42155: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	a0, 3(sp) !1605
	lw  	fa1, 1(a0) !1605
	lw  	a0, 2(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a0, 4(a0) !308
	lw  	fa2, 1(a0) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 1(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a0, fa3, fa4 !121
	sw  	fa0, 4(sp) !1607
	bne 	a0, zero, beq_else.42156 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 8 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -8 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.42157 !1607
beq_else.42156: !1607
	li  	fa0, 15.000000 !1608
beq_cont.42157: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 4(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.42158 !1615
	jal 	zero, beq_cont.42159 !1615
beq_else.42158: !1615
	addi	fa0, zero, 0
beq_cont.42159: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42153: !1590
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_reflections.2748:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.42162 !1643
	lw  	a2, 254(a0) !1644
	lw  	a3, 1(a2) !549
	li  	fa2, 1000000000.000000 !1479
	sw  	fa2, 137(zero) !1479
	lw  	a4, 134(zero) !1480
	lw  	a5, 0(a4) !1454
	lw  	a6, 0(a5) !1455
	sw  	a0, 1(sp) !1456
	sw  	fa1, 2(sp) !1456
	sw  	a1, 3(sp) !1456
	sw  	fa0, 4(sp) !1456
	sw  	a3, 5(sp) !1456
	sw  	a2, 6(sp) !1456
	addi	t0, zero, -1
	beq 	a6, t0, beq_cont.42164 !1456
	sw  	a4, 7(sp) !1459
	addi	t0, zero, 99
	bne 	a6, t0, beq_else.42165 !1459
	sw  	a5, 8(sp) !1444
	lw  	a5, 1(a5) !1444
	addi	t0, zero, -1
	beq 	a5, t0, beq_cont.42168 !1445
	lw  	a1, 83(a5) !1446
	addi	a0, zero, 0 !1447
	addi	a2, a3, 0 !1447
	addi	sp, sp, 12 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -12 !1447
	addi	a0, zero, 2 !1448
	lw  	a1, 8(sp) !1448
	lw  	a2, 5(sp) !1448
	addi	sp, sp, 12 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -12 !1448
beq_cont.42168: !1445
	jal 	zero, beq_cont.42166 !1459
beq_else.42165: !1459
	lw  	a7, 12(a6) !1031
	lw  	s1, 10(a7) !449
	lw  	fa2, 0(s1) !1033
	lw  	fa3, 1(s1) !1034
	lw  	fa4, 2(s1) !1035
	lw  	s2, 1(a3) !535
	lwr 	a6, s2, a6 !1037
	lw  	s2, 1(a7) !260
	sw  	a5, 8(sp) !1039
	addi	t0, zero, 1
	bne 	s2, t0, beq_else.42169 !1039
	lw  	a1, 0(a3) !529
	addi	a2, a6, 0 !1040
	addi	a0, a7, 0 !1040
	fsgnj   fa1, fa3, fa3 !1040
	fsgnj   fa0, fa2, fa2 !1040
	fsgnj   fa2, fa4, fa4 !1040
	addi	sp, sp, 12 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -12 !1040
	jal 	zero, beq_cont.42170 !1039
beq_else.42169: !1039
	addi	t0, zero, 2
	bne 	s2, t0, beq_else.42171 !1041
	lw  	fa2, 0(a6) !1004
	flt 	a7, fa2, zero !123
	bne 	a7, zero, beq_else.42173 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42174 !1004
beq_else.42173: !1004
	lw  	fa2, 0(a6) !1005
	lw  	fa3, 3(s1) !1005
	fmul	fa2, fa2, fa3 !1005
	sw  	fa2, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42174: !1004
	jal 	zero, beq_cont.42172 !1041
beq_else.42171: !1041
	lw  	fa5, 0(a6) !1013
	feq 	s2, fa5, zero !124
	bne 	s2, zero, beq_else.42175 !1014
	lw  	fa6, 1(a6) !1017
	fmul	fa2, fa6, fa2 !1017
	lw  	fa6, 2(a6) !1017
	fmul	fa3, fa6, fa3 !1017
	fadd	fa2, fa2, fa3 !1017
	lw  	fa3, 3(a6) !1017
	fmul	fa3, fa3, fa4 !1017
	fadd	fa2, fa2, fa3 !1017
	lw  	fa3, 3(s1) !1018
	fmul	fa4, fa2, fa2 !126
	fmul	fa3, fa5, fa3 !1019
	fsub	fa3, fa4, fa3 !1019
	flt 	s1, zero, fa3 !122
	bne 	s1, zero, beq_else.42177 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42178 !1020
beq_else.42177: !1020
	lw  	a7, 6(a7) !280
	bne 	a7, zero, beq_else.42179 !1021
	fsqrt   fa3, fa3 !1024
	fsub	fa2, fa2, fa3 !1024
	lw  	fa3, 4(a6) !1024
	fmul	fa2, fa2, fa3 !1024
	sw  	fa2, 135(zero) !1024
	jal 	zero, beq_cont.42180 !1021
beq_else.42179: !1021
	fsqrt   fa3, fa3 !1022
	fadd	fa2, fa2, fa3 !1022
	lw  	fa3, 4(a6) !1022
	fmul	fa2, fa2, fa3 !1022
	sw  	fa2, 135(zero) !1022
beq_cont.42180: !1021
	addi	a0, zero, 1 !1025
beq_cont.42178: !1020
	jal 	zero, beq_cont.42176 !1014
beq_else.42175: !1014
	addi	a0, zero, 0 !1015
beq_cont.42176: !1014
beq_cont.42172: !1041
beq_cont.42170: !1039
	beq 	a0, zero, beq_cont.42182 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42184 !1467
	lw  	a0, 8(sp) !1444
	lw  	a0, 1(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.42186 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 5(sp) !1447
	addi	sp, sp, 12 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -12 !1447
	addi	a0, zero, 2 !1448
	lw  	a1, 8(sp) !1448
	lw  	a2, 5(sp) !1448
	addi	sp, sp, 12 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -12 !1448
beq_cont.42186: !1445
beq_cont.42184: !1467
beq_cont.42182: !1465
beq_cont.42166: !1459
	lw  	a1, 7(sp) !1454
	lw  	a0, 1(a1) !1454
	lw  	a2, 0(a0) !1455
	addi	t0, zero, -1
	beq 	a2, t0, beq_cont.42188 !1456
	addi	t0, zero, 99
	bne 	a2, t0, beq_else.42189 !1459
	addi	a1, zero, 1 !1460
	lw  	a2, 5(sp) !1460
	addi	t0, a1, 0 !1460
	addi	a1, a0, 0 !1460
	addi	a0, t0, 0 !1460
	addi	sp, sp, 12 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -12 !1460
	jal 	zero, beq_cont.42190 !1459
beq_else.42189: !1459
	lw  	a3, 12(a2) !1031
	lw  	a4, 10(a3) !449
	lw  	fa0, 0(a4) !1033
	lw  	fa1, 1(a4) !1034
	lw  	fa2, 2(a4) !1035
	lw  	a5, 5(sp) !535
	lw  	a6, 1(a5) !535
	lwr 	a2, a6, a2 !1037
	lw  	a6, 1(a3) !260
	sw  	a0, 9(sp) !1039
	addi	t0, zero, 1
	bne 	a6, t0, beq_else.42191 !1039
	lw  	a1, 0(a5) !529
	addi	a0, a3, 0 !1040
	addi	sp, sp, 12 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -12 !1040
	jal 	zero, beq_cont.42192 !1039
beq_else.42191: !1039
	addi	t0, zero, 2
	bne 	a6, t0, beq_else.42193 !1041
	lw  	fa0, 0(a2) !1004
	flt 	a3, fa0, zero !123
	bne 	a3, zero, beq_else.42195 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42196 !1004
beq_else.42195: !1004
	lw  	fa0, 0(a2) !1005
	lw  	fa1, 3(a4) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42196: !1004
	jal 	zero, beq_cont.42194 !1041
beq_else.42193: !1041
	lw  	fa3, 0(a2) !1013
	feq 	a6, fa3, zero !124
	bne 	a6, zero, beq_else.42197 !1014
	lw  	fa4, 1(a2) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a2) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a2) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a4) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a4, zero, fa1 !122
	bne 	a4, zero, beq_else.42199 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42200 !1020
beq_else.42199: !1020
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.42201 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a2) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42202 !1021
beq_else.42201: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a2) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42202: !1021
	addi	a0, zero, 1 !1025
beq_cont.42200: !1020
	jal 	zero, beq_cont.42198 !1014
beq_else.42197: !1014
	addi	a0, zero, 0 !1015
beq_cont.42198: !1014
beq_cont.42194: !1041
beq_cont.42192: !1039
	beq 	a0, zero, beq_cont.42204 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42206 !1467
	addi	a0, zero, 1 !1468
	lw  	a1, 9(sp) !1468
	lw  	a2, 5(sp) !1468
	addi	sp, sp, 12 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -12 !1468
beq_cont.42206: !1467
beq_cont.42204: !1465
beq_cont.42190: !1459
	addi	a0, zero, 2 !1472
	lw  	a1, 7(sp) !1472
	lw  	a2, 5(sp) !1472
	addi	sp, sp, 12 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -12 !1472
beq_cont.42188: !1456
beq_cont.42164: !1456
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.42207 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.42208 !1483
beq_else.42207: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.42208: !1483
	beq 	a0, zero, beq_cont.42210 !1648
	lw  	a0, 141(zero) !1649
	slli	a0, a0, 2 !1649
	lw  	a1, 136(zero) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 6(sp) !543
	lw  	a2, 0(a1) !543
	bne 	a0, a2, beq_cont.42212 !1650
	lw  	a0, 134(zero) !1652
	lw  	a2, 0(a0) !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.42213 !1280
	addi	a0, zero, 0 !1281
	jal 	zero, beq_cont.42214 !1280
beq_else.42213: !1280
	sw  	a2, 10(sp) !1284
	sw  	a0, 11(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.42215 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.42216 !1284
beq_else.42215: !1284
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	addi	a0, a3, 0 !1287
	addi	sp, sp, 12 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -12 !1287
	bne 	a0, zero, beq_else.42217 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.42218 !1290
beq_else.42217: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.42219 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.42220 !1291
beq_else.42219: !1291
	lw  	a0, 10(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42221 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42222 !1264
beq_else.42221: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.42223 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.42224 !1233
beq_else.42223: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 12(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 13(sp) !1237
	addi	sp, sp, 16 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -16 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.42225 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.42226 !1239
beq_else.42225: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.42226: !1239
	bne 	a0, zero, beq_else.42227 !1239
	lw  	a0, 13(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42229 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.42230 !1255
beq_else.42229: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 12(sp) !1256
	addi	sp, sp, 16 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -16 !1256
beq_cont.42230: !1255
	jal 	zero, beq_cont.42228 !1239
beq_else.42227: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 12(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 16 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -16 !1246
	bne 	a0, zero, beq_else.42231 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 12(sp) !1249
	addi	sp, sp, 16 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -16 !1249
	jal 	zero, beq_cont.42232 !1246
beq_else.42231: !1246
	addi	a0, zero, 1 !1247
beq_cont.42232: !1246
beq_cont.42228: !1239
beq_cont.42224: !1233
	bne 	a0, zero, beq_else.42233 !1269
	lw  	a0, 10(sp) !1263
	lw  	a1, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42235 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42236 !1264
beq_else.42235: !1264
	lw  	a1, 83(a1) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 16 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -16 !1268
	bne 	a0, zero, beq_else.42237 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 10(sp) !1272
	addi	sp, sp, 16 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -16 !1272
	jal 	zero, beq_cont.42238 !1269
beq_else.42237: !1269
	addi	a0, zero, 1 !1270
beq_cont.42238: !1269
beq_cont.42236: !1264
	jal 	zero, beq_cont.42234 !1269
beq_else.42233: !1269
	addi	a0, zero, 1 !1270
beq_cont.42234: !1269
beq_cont.42222: !1264
	bne 	a0, zero, beq_else.42239 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.42240 !1292
beq_else.42239: !1292
	addi	a0, zero, 1 !1293
beq_cont.42240: !1292
beq_cont.42220: !1291
beq_cont.42218: !1290
beq_cont.42216: !1284
	bne 	a0, zero, beq_else.42241 !1283
	addi	a0, zero, 1 !1303
	lw  	a1, 11(sp) !1303
	addi	sp, sp, 16 !1303
	jal 	ra, shadow_check_one_or_matrix.2701 !1303
	addi	sp, sp, -16 !1303
	jal 	zero, beq_cont.42242 !1283
beq_else.42241: !1283
	lw  	a0, 10(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42243 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42244 !1264
beq_else.42243: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.42245 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.42246 !1233
beq_else.42245: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 14(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 15(sp) !1237
	addi	sp, sp, 16 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -16 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.42247 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.42248 !1239
beq_else.42247: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.42248: !1239
	bne 	a0, zero, beq_else.42249 !1239
	lw  	a0, 15(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42251 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.42252 !1255
beq_else.42251: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 14(sp) !1256
	addi	sp, sp, 16 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -16 !1256
beq_cont.42252: !1255
	jal 	zero, beq_cont.42250 !1239
beq_else.42249: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 14(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 16 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -16 !1246
	bne 	a0, zero, beq_else.42253 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 14(sp) !1249
	addi	sp, sp, 16 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -16 !1249
	jal 	zero, beq_cont.42254 !1246
beq_else.42253: !1246
	addi	a0, zero, 1 !1247
beq_cont.42254: !1246
beq_cont.42250: !1239
beq_cont.42246: !1233
	bne 	a0, zero, beq_else.42255 !1269
	lw  	a0, 10(sp) !1263
	lw  	a0, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.42257 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42258 !1264
beq_else.42257: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 16 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -16 !1268
	bne 	a0, zero, beq_else.42259 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 10(sp) !1272
	addi	sp, sp, 16 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -16 !1272
	jal 	zero, beq_cont.42260 !1269
beq_else.42259: !1269
	addi	a0, zero, 1 !1270
beq_cont.42260: !1269
beq_cont.42258: !1264
	jal 	zero, beq_cont.42256 !1269
beq_else.42255: !1269
	addi	a0, zero, 1 !1270
beq_cont.42256: !1269
beq_cont.42244: !1264
	bne 	a0, zero, beq_else.42261 !1298
	addi	a0, zero, 1 !1301
	lw  	a1, 11(sp) !1301
	addi	sp, sp, 16 !1301
	jal 	ra, shadow_check_one_or_matrix.2701 !1301
	addi	sp, sp, -16 !1301
	jal 	zero, beq_cont.42262 !1298
beq_else.42261: !1298
	addi	a0, zero, 1 !1299
beq_cont.42262: !1298
beq_cont.42242: !1283
beq_cont.42214: !1280
	bne 	a0, zero, beq_cont.42264 !1652
	lw  	a0, 5(sp) !529
	lw  	a1, 0(a0) !529
	lw  	fa0, 142(zero) !208
	lw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 143(zero) !208
	lw  	fa2, 1(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 144(zero) !208
	lw  	fa2, 2(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	a1, 6(sp) !555
	lw  	fa1, 2(a1) !555
	lw  	fa2, 4(sp) !1656
	fmul	fa3, fa1, fa2 !1656
	fmul	fa0, fa3, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 3(sp) !208
	lw  	fa3, 0(a1) !208
	lw  	fa4, 0(a0) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a1) !208
	lw  	fa5, 1(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a1) !208
	lw  	fa5, 2(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	fmul	fa1, fa1, fa3 !1657
	flt 	a0, zero, fa0 !122
	beq 	a0, zero, beq_cont.42266 !1627
	lw  	fa3, 151(zero) !218
	lw  	fa4, 145(zero) !218
	fmul	fa4, fa0, fa4 !218
	fadd	fa3, fa3, fa4 !218
	sw  	fa3, 151(zero) !218
	lw  	fa3, 152(zero) !219
	lw  	fa4, 146(zero) !219
	fmul	fa4, fa0, fa4 !219
	fadd	fa3, fa3, fa4 !219
	sw  	fa3, 152(zero) !219
	lw  	fa3, 153(zero) !220
	lw  	fa4, 147(zero) !220
	fmul	fa0, fa0, fa4 !220
	fadd	fa0, fa3, fa0 !220
	sw  	fa0, 153(zero) !220
beq_cont.42266: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.42268 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 2(sp) !1633
	fmul	fa0, fa0, fa1 !1633
	lw  	fa3, 151(zero) !1634
	fadd	fa3, fa3, fa0 !1634
	sw  	fa3, 151(zero) !1634
	lw  	fa3, 152(zero) !1635
	fadd	fa3, fa3, fa0 !1635
	sw  	fa3, 152(zero) !1635
	lw  	fa3, 153(zero) !1636
	fadd	fa0, fa3, fa0 !1636
	sw  	fa0, 153(zero) !1636
beq_cont.42268: !1632
beq_cont.42264: !1652
beq_cont.42212: !1650
beq_cont.42210: !1648
	lw  	a0, 1(sp) !1662
	addi	a0, a0, -1 !1662
	blt 	a0, zero, bge_else.42269 !1643
	lw  	a1, 254(a0) !1644
	lw  	a2, 1(a1) !549
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	lw  	a3, 134(zero) !1480
	lw  	a4, 0(a3) !1454
	lw  	a5, 0(a4) !1455
	sw  	a0, 16(sp) !1456
	sw  	a2, 17(sp) !1456
	sw  	a1, 18(sp) !1456
	addi	t0, zero, -1
	beq 	a5, t0, beq_cont.42271 !1456
	sw  	a3, 19(sp) !1459
	addi	t0, zero, 99
	bne 	a5, t0, beq_else.42272 !1459
	addi	a0, zero, 1 !1460
	addi	a1, a4, 0 !1460
	addi	sp, sp, 20 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -20 !1460
	jal 	zero, beq_cont.42273 !1459
beq_else.42272: !1459
	lw  	a0, 12(a5) !1031
	lw  	a1, 10(a0) !449
	lw  	fa0, 0(a1) !1033
	lw  	fa1, 1(a1) !1034
	lw  	fa2, 2(a1) !1035
	lw  	a6, 1(a2) !535
	lwr 	a5, a6, a5 !1037
	lw  	a6, 1(a0) !260
	sw  	a4, 20(sp) !1039
	addi	t0, zero, 1
	bne 	a6, t0, beq_else.42274 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a5, 0 !1040
	addi	sp, sp, 24 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -24 !1040
	jal 	zero, beq_cont.42275 !1039
beq_else.42274: !1039
	addi	t0, zero, 2
	bne 	a6, t0, beq_else.42276 !1041
	lw  	fa0, 0(a5) !1004
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.42278 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42279 !1004
beq_else.42278: !1004
	lw  	fa0, 0(a5) !1005
	lw  	fa1, 3(a1) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42279: !1004
	jal 	zero, beq_cont.42277 !1041
beq_else.42276: !1041
	lw  	fa3, 0(a5) !1013
	feq 	a6, fa3, zero !124
	bne 	a6, zero, beq_else.42280 !1014
	lw  	fa4, 1(a5) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a5) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a5) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a1) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a1, zero, fa1 !122
	bne 	a1, zero, beq_else.42282 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42283 !1020
beq_else.42282: !1020
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42284 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a5) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42285 !1021
beq_else.42284: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a5) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42285: !1021
	addi	a0, zero, 1 !1025
beq_cont.42283: !1020
	jal 	zero, beq_cont.42281 !1014
beq_else.42280: !1014
	addi	a0, zero, 0 !1015
beq_cont.42281: !1014
beq_cont.42277: !1041
beq_cont.42275: !1039
	beq 	a0, zero, beq_cont.42287 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42289 !1467
	addi	a0, zero, 1 !1468
	lw  	a1, 20(sp) !1468
	lw  	a2, 17(sp) !1468
	addi	sp, sp, 24 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -24 !1468
beq_cont.42289: !1467
beq_cont.42287: !1465
beq_cont.42273: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 19(sp) !1472
	lw  	a2, 17(sp) !1472
	addi	sp, sp, 24 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -24 !1472
beq_cont.42271: !1456
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.42290 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.42291 !1483
beq_else.42290: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.42291: !1483
	beq 	a0, zero, beq_cont.42293 !1648
	lw  	a0, 141(zero) !1649
	slli	a0, a0, 2 !1649
	lw  	a1, 136(zero) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 18(sp) !543
	lw  	a1, 0(a1) !543
	bne 	a0, a1, beq_cont.42295 !1650
	addi	a0, zero, 0 !1652
	lw  	a1, 134(zero) !1652
	addi	sp, sp, 24 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -24 !1652
	bne 	a0, zero, beq_cont.42297 !1652
	lw  	a0, 17(sp) !529
	lw  	a1, 0(a0) !529
	lw  	fa0, 142(zero) !208
	lw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 143(zero) !208
	lw  	fa2, 1(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 144(zero) !208
	lw  	fa2, 2(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	a1, 18(sp) !555
	lw  	fa1, 2(a1) !555
	lw  	fa2, 4(sp) !1656
	fmul	fa3, fa1, fa2 !1656
	fmul	fa0, fa3, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 3(sp) !208
	lw  	fa3, 0(a1) !208
	lw  	fa4, 0(a0) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a1) !208
	lw  	fa5, 1(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a1) !208
	lw  	fa5, 2(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	fmul	fa1, fa1, fa3 !1657
	flt 	a0, zero, fa0 !122
	beq 	a0, zero, beq_cont.42299 !1627
	lw  	fa3, 151(zero) !218
	lw  	fa4, 145(zero) !218
	fmul	fa4, fa0, fa4 !218
	fadd	fa3, fa3, fa4 !218
	sw  	fa3, 151(zero) !218
	lw  	fa3, 152(zero) !219
	lw  	fa4, 146(zero) !219
	fmul	fa4, fa0, fa4 !219
	fadd	fa3, fa3, fa4 !219
	sw  	fa3, 152(zero) !219
	lw  	fa3, 153(zero) !220
	lw  	fa4, 147(zero) !220
	fmul	fa0, fa0, fa4 !220
	fadd	fa0, fa3, fa0 !220
	sw  	fa0, 153(zero) !220
beq_cont.42299: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.42301 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 2(sp) !1633
	fmul	fa0, fa0, fa1 !1633
	lw  	fa3, 151(zero) !1634
	fadd	fa3, fa3, fa0 !1634
	sw  	fa3, 151(zero) !1634
	lw  	fa3, 152(zero) !1635
	fadd	fa3, fa3, fa0 !1635
	sw  	fa3, 152(zero) !1635
	lw  	fa3, 153(zero) !1636
	fadd	fa0, fa3, fa0 !1636
	sw  	fa0, 153(zero) !1636
beq_cont.42301: !1632
beq_cont.42297: !1652
beq_cont.42295: !1650
beq_cont.42293: !1648
	lw  	a0, 16(sp) !1662
	addi	a0, a0, -1 !1662
	lw  	fa0, 4(sp) !1662
	lw  	fa1, 2(sp) !1662
	lw  	a1, 3(sp) !1662
	lw  	ra, 0(sp)
	jal 	zero, trace_reflections.2748 !1662
bge_else.42269: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42162: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_ray.2753:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.42304 !1669
	sw  	a0, 1(sp) !476
	lw  	a0, 2(a2) !476
	sw  	fa0, 2(sp) !1390
	li  	fa0, 1000000000.000000 !1390
	sw  	fa0, 137(zero) !1390
	sw  	a0, 3(sp) !1391
	addi	a0, zero, 0 !1391
	sw  	a2, 4(sp) !1391
	lw  	a2, 134(zero) !1391
	sw  	fa1, 5(sp) !1391
	sw  	a1, 6(sp) !1391
	addi	t0, a2, 0 !1391
	addi	a2, a1, 0 !1391
	addi	a1, t0, 0 !1391
	addi	sp, sp, 8 !1391
	jal 	ra, trace_or_matrix.2712 !1391
	addi	sp, sp, -8 !1391
	lw  	fa0, 137(zero) !1392
	li  	fa1, -0.100000 !1394
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.42305 !1394
	addi	a0, zero, 0 !1396
	jal 	zero, beq_cont.42306 !1394
beq_else.42305: !1394
	li  	fa1, 100000000.000000 !1395
	flt 	a0, fa0, fa1 !121
beq_cont.42306: !1394
	bne 	a0, zero, beq_else.42307 !1671
	addi	a0, zero, -1 !1734
	lw  	a1, 1(sp) !1734
	lw  	a2, 3(sp) !1734
	add 	t0, a2, a1 !1734
	sw  	a0, 0(t0) !1734
	bne 	a1, zero, beq_else.42308 !1736
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42308: !1736
	lw  	a0, 6(sp) !208
	lw  	fa0, 0(a0) !208
	lw  	fa1, 78(zero) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a0) !208
	lw  	fa2, 79(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a0) !208
	lw  	fa2, 80(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1737
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.42310 !1739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42310: !1739
	fmul	fa1, fa0, fa0 !126
	fmul	fa0, fa1, fa0 !1742
	lw  	fa1, 2(sp) !1742
	fmul	fa0, fa0, fa1 !1742
	lw  	fa1, 81(zero) !1742
	fmul	fa0, fa0, fa1 !1742
	lw  	fa1, 151(zero) !1743
	fadd	fa1, fa1, fa0 !1743
	sw  	fa1, 151(zero) !1743
	lw  	fa1, 152(zero) !1744
	fadd	fa1, fa1, fa0 !1744
	sw  	fa1, 152(zero) !1744
	lw  	fa1, 153(zero) !1745
	fadd	fa0, fa1, fa0 !1745
	sw  	fa0, 153(zero) !1745
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42307: !1671
	lw  	a0, 141(zero) !1673
	sw  	a0, 7(sp) !1674
	lw  	a0, 12(a0) !1674
	lw  	a1, 2(a0) !270
	sw  	a1, 8(sp) !368
	lw  	a1, 7(a0) !368
	lw  	fa0, 0(a1) !373
	lw  	fa1, 2(sp) !1676
	fmul	fa0, fa0, fa1 !1676
	lw  	a1, 1(a0) !260
	sw  	fa0, 9(sp) !1536
	sw  	a0, 10(sp) !1536
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.42313 !1536
	lw  	a1, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a2, a1, -1 !1500
	addi	a1, a1, -1 !1500
	lw  	a3, 6(sp) !1500
	lwr 	fa0, a3, a1 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.42315 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.42317 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.42318 !148
beq_else.42317: !148
	li  	fa0, 1.000000 !148
beq_cont.42318: !148
	jal 	zero, beq_cont.42316 !147
beq_else.42315: !147
	addi	fa0, zero, 0
beq_cont.42316: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a2
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.42314 !1536
beq_else.42313: !1536
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.42319 !1538
	lw  	a1, 4(a0) !298
	lw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0 !1506
	sw  	fa0, 142(zero) !1506
	lw  	a1, 4(a0) !308
	lw  	fa0, 1(a1) !313
	fsgnjn  fa0, fa0, fa0 !1507
	sw  	fa0, 143(zero) !1507
	lw  	a1, 4(a0) !318
	lw  	fa0, 2(a1) !323
	fsgnjn  fa0, fa0, fa0 !1508
	sw  	fa0, 144(zero) !1508
	jal 	zero, beq_cont.42320 !1538
beq_else.42319: !1538
	addi	sp, sp, 12 !1541
	jal 	ra, get_nvector_second.2736 !1541
	addi	sp, sp, -12 !1541
beq_cont.42320: !1538
beq_cont.42314: !1536
	lw  	fa0, 138(zero) !188
	sw  	fa0, 159(zero) !188
	lw  	fa0, 139(zero) !189
	sw  	fa0, 160(zero) !189
	lw  	fa0, 140(zero) !190
	sw  	fa0, 161(zero) !190
	addi	a1, zero, 138 !0
	lw  	a0, 10(sp) !1680
	addi	sp, sp, 12 !1680
	jal 	ra, utexture.2741 !1680
	addi	sp, sp, -12 !1680
	lw  	a0, 7(sp) !1683
	slli	a0, a0, 2 !1683
	lw  	a1, 136(zero) !1683
	add 	a0, a0, a1 !1683
	lw  	a1, 1(sp) !1683
	lw  	a2, 3(sp) !1683
	add 	t0, a2, a1 !1683
	sw  	a0, 0(t0) !1683
	lw  	a0, 4(sp) !468
	lw  	a2, 1(a0) !468
	lwr 	a2, a2, a1 !1685
	lw  	fa0, 138(zero) !188
	sw  	fa0, 0(a2) !188
	lw  	fa0, 139(zero) !189
	sw  	fa0, 1(a2) !189
	lw  	fa0, 140(zero) !190
	sw  	fa0, 2(a2) !190
	lw  	a2, 3(a0) !483
	lw  	a3, 10(sp) !368
	lw  	a4, 7(a3) !368
	lw  	fa0, 0(a4) !373
	li  	fa1, 0.500000 !1689
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.42321 !1689
	addi	a4, zero, 1 !1692
	add 	t0, a2, a1 !1692
	sw  	a4, 0(t0) !1692
	lw  	a2, 4(a0) !490
	lwr 	a4, a2, a1 !1694
	lw  	fa0, 145(zero) !188
	sw  	fa0, 0(a4) !188
	lw  	fa0, 146(zero) !189
	sw  	fa0, 1(a4) !189
	lw  	fa0, 147(zero) !190
	sw  	fa0, 2(a4) !190
	lwr 	a2, a2, a1 !1695
	li  	fa0, 0.003906 !1695
	lw  	fa1, 9(sp) !1695
	fmul	fa0, fa0, fa1 !1695
	lw  	fa2, 0(a2) !234
	fmul	fa2, fa2, fa0 !234
	sw  	fa2, 0(a2) !234
	lw  	fa2, 1(a2) !235
	fmul	fa2, fa2, fa0 !235
	sw  	fa2, 1(a2) !235
	lw  	fa2, 2(a2) !236
	fmul	fa0, fa2, fa0 !236
	sw  	fa0, 2(a2) !236
	lw  	a0, 7(a0) !520
	lwr 	a0, a0, a1 !1697
	lw  	fa0, 142(zero) !188
	sw  	fa0, 0(a0) !188
	lw  	fa0, 143(zero) !189
	sw  	fa0, 1(a0) !189
	lw  	fa0, 144(zero) !190
	sw  	fa0, 2(a0) !190
	jal 	zero, beq_cont.42322 !1689
beq_else.42321: !1689
	addi	a0, zero, 0 !1690
	add 	t0, a2, a1 !1690
	sw  	a0, 0(t0) !1690
beq_cont.42322: !1689
	li  	fa0, -2.000000 !1700
	lw  	a0, 6(sp) !208
	lw  	fa1, 0(a0) !208
	lw  	fa2, 142(zero) !208
	fmul	fa1, fa1, fa2 !208
	lw  	fa2, 1(a0) !208
	lw  	fa3, 143(zero) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	lw  	fa2, 2(a0) !208
	lw  	fa3, 144(zero) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	fmul	fa0, fa0, fa1 !1700
	lw  	fa1, 0(a0) !218
	lw  	fa2, 142(zero) !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	sw  	fa1, 0(a0) !218
	lw  	fa1, 1(a0) !219
	lw  	fa2, 143(zero) !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	sw  	fa1, 1(a0) !219
	lw  	fa1, 2(a0) !220
	lw  	fa2, 144(zero) !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa0, fa1, fa0 !220
	sw  	fa0, 2(a0) !220
	lw  	a1, 7(a3) !378
	lw  	fa0, 1(a1) !383
	lw  	fa1, 2(sp) !1704
	fmul	fa0, fa1, fa0 !1704
	lw  	a1, 134(zero) !1707
	lw  	a2, 0(a1) !1278
	lw  	a3, 0(a2) !1279
	sw  	fa0, 11(sp) !1280
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.42323 !1280
	addi	a0, zero, 0 !1281
	jal 	zero, beq_cont.42324 !1280
beq_else.42323: !1280
	sw  	a2, 12(sp) !1284
	sw  	a1, 13(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.42325 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.42326 !1284
beq_else.42325: !1284
	addi	a2, zero, 138 !0
	addi	a1, zero, 247 !0
	addi	a0, a3, 0 !1287
	addi	sp, sp, 16 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -16 !1287
	bne 	a0, zero, beq_else.42327 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.42328 !1290
beq_else.42327: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.42329 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.42330 !1291
beq_else.42329: !1291
	lw  	a0, 12(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42331 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42332 !1264
beq_else.42331: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.42333 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.42334 !1233
beq_else.42333: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 14(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 15(sp) !1237
	addi	sp, sp, 16 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -16 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.42335 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.42336 !1239
beq_else.42335: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.42336: !1239
	bne 	a0, zero, beq_else.42337 !1239
	lw  	a0, 15(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42339 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.42340 !1255
beq_else.42339: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 14(sp) !1256
	addi	sp, sp, 16 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -16 !1256
beq_cont.42340: !1255
	jal 	zero, beq_cont.42338 !1239
beq_else.42337: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 14(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 16 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -16 !1246
	bne 	a0, zero, beq_else.42341 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 14(sp) !1249
	addi	sp, sp, 16 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -16 !1249
	jal 	zero, beq_cont.42342 !1246
beq_else.42341: !1246
	addi	a0, zero, 1 !1247
beq_cont.42342: !1246
beq_cont.42338: !1239
beq_cont.42334: !1233
	bne 	a0, zero, beq_else.42343 !1269
	lw  	a0, 12(sp) !1263
	lw  	a1, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42345 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42346 !1264
beq_else.42345: !1264
	lw  	a1, 83(a1) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 16 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -16 !1268
	bne 	a0, zero, beq_else.42347 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 12(sp) !1272
	addi	sp, sp, 16 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -16 !1272
	jal 	zero, beq_cont.42348 !1269
beq_else.42347: !1269
	addi	a0, zero, 1 !1270
beq_cont.42348: !1269
beq_cont.42346: !1264
	jal 	zero, beq_cont.42344 !1269
beq_else.42343: !1269
	addi	a0, zero, 1 !1270
beq_cont.42344: !1269
beq_cont.42332: !1264
	bne 	a0, zero, beq_else.42349 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.42350 !1292
beq_else.42349: !1292
	addi	a0, zero, 1 !1293
beq_cont.42350: !1292
beq_cont.42330: !1291
beq_cont.42328: !1290
beq_cont.42326: !1284
	bne 	a0, zero, beq_else.42351 !1283
	addi	a0, zero, 1 !1303
	lw  	a1, 13(sp) !1303
	addi	sp, sp, 16 !1303
	jal 	ra, shadow_check_one_or_matrix.2701 !1303
	addi	sp, sp, -16 !1303
	jal 	zero, beq_cont.42352 !1283
beq_else.42351: !1283
	lw  	a0, 12(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42353 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42354 !1264
beq_else.42353: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.42355 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.42356 !1233
beq_else.42355: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 16(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 17(sp) !1237
	addi	sp, sp, 20 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -20 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.42357 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.42358 !1239
beq_else.42357: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.42358: !1239
	bne 	a0, zero, beq_else.42359 !1239
	lw  	a0, 17(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42361 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.42362 !1255
beq_else.42361: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 16(sp) !1256
	addi	sp, sp, 20 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -20 !1256
beq_cont.42362: !1255
	jal 	zero, beq_cont.42360 !1239
beq_else.42359: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 16(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 20 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -20 !1246
	bne 	a0, zero, beq_else.42363 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 16(sp) !1249
	addi	sp, sp, 20 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -20 !1249
	jal 	zero, beq_cont.42364 !1246
beq_else.42363: !1246
	addi	a0, zero, 1 !1247
beq_cont.42364: !1246
beq_cont.42360: !1239
beq_cont.42356: !1233
	bne 	a0, zero, beq_else.42365 !1269
	lw  	a0, 12(sp) !1263
	lw  	a0, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.42367 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42368 !1264
beq_else.42367: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 20 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -20 !1268
	bne 	a0, zero, beq_else.42369 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 12(sp) !1272
	addi	sp, sp, 20 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -20 !1272
	jal 	zero, beq_cont.42370 !1269
beq_else.42369: !1269
	addi	a0, zero, 1 !1270
beq_cont.42370: !1269
beq_cont.42368: !1264
	jal 	zero, beq_cont.42366 !1269
beq_else.42365: !1269
	addi	a0, zero, 1 !1270
beq_cont.42366: !1269
beq_cont.42354: !1264
	bne 	a0, zero, beq_else.42371 !1298
	addi	a0, zero, 1 !1301
	lw  	a1, 13(sp) !1301
	addi	sp, sp, 20 !1301
	jal 	ra, shadow_check_one_or_matrix.2701 !1301
	addi	sp, sp, -20 !1301
	jal 	zero, beq_cont.42372 !1298
beq_else.42371: !1298
	addi	a0, zero, 1 !1299
beq_cont.42372: !1298
beq_cont.42352: !1283
beq_cont.42324: !1280
	bne 	a0, zero, beq_cont.42374 !1707
	lw  	fa0, 142(zero) !208
	lw  	fa1, 78(zero) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 143(zero) !208
	lw  	fa2, 79(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 144(zero) !208
	lw  	fa2, 80(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1708
	lw  	fa1, 9(sp) !1708
	fmul	fa0, fa0, fa1 !1708
	lw  	a0, 6(sp) !208
	lw  	fa1, 0(a0) !208
	lw  	fa2, 78(zero) !208
	fmul	fa1, fa1, fa2 !208
	lw  	fa2, 1(a0) !208
	lw  	fa3, 79(zero) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	lw  	fa2, 2(a0) !208
	lw  	fa3, 80(zero) !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	fsgnjn  fa1, fa1, fa1 !1709
	flt 	a0, zero, fa0 !122
	beq 	a0, zero, beq_cont.42376 !1627
	lw  	fa2, 151(zero) !218
	lw  	fa3, 145(zero) !218
	fmul	fa3, fa0, fa3 !218
	fadd	fa2, fa2, fa3 !218
	sw  	fa2, 151(zero) !218
	lw  	fa2, 152(zero) !219
	lw  	fa3, 146(zero) !219
	fmul	fa3, fa0, fa3 !219
	fadd	fa2, fa2, fa3 !219
	sw  	fa2, 152(zero) !219
	lw  	fa2, 153(zero) !220
	lw  	fa3, 147(zero) !220
	fmul	fa0, fa0, fa3 !220
	fadd	fa0, fa2, fa0 !220
	sw  	fa0, 153(zero) !220
beq_cont.42376: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.42378 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 11(sp) !1633
	fmul	fa0, fa0, fa1 !1633
	lw  	fa1, 151(zero) !1634
	fadd	fa1, fa1, fa0 !1634
	sw  	fa1, 151(zero) !1634
	lw  	fa1, 152(zero) !1635
	fadd	fa1, fa1, fa0 !1635
	sw  	fa1, 152(zero) !1635
	lw  	fa1, 153(zero) !1636
	fadd	fa0, fa1, fa0 !1636
	sw  	fa0, 153(zero) !1636
beq_cont.42378: !1632
beq_cont.42374: !1707
	lw  	fa0, 138(zero) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 139(zero) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 140(zero) !190
	sw  	fa0, 164(zero) !190
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, zero, 138 !0
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	lw  	a0, 434(zero) !1715
	addi	a0, a0, -1 !1715
	blt 	a0, zero, bge_cont.42380 !1643
	lw  	a1, 254(a0) !1644
	lw  	a2, 1(a1) !549
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	lw  	a3, 134(zero) !1480
	lw  	a4, 0(a3) !1454
	lw  	a5, 0(a4) !1455
	sw  	a0, 18(sp) !1456
	sw  	a2, 19(sp) !1456
	sw  	a1, 20(sp) !1456
	addi	t0, zero, -1
	beq 	a5, t0, beq_cont.42382 !1456
	sw  	a3, 21(sp) !1459
	addi	t0, zero, 99
	bne 	a5, t0, beq_else.42383 !1459
	addi	a0, zero, 1 !1460
	addi	a1, a4, 0 !1460
	addi	sp, sp, 24 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -24 !1460
	jal 	zero, beq_cont.42384 !1459
beq_else.42383: !1459
	lw  	a0, 12(a5) !1031
	lw  	a1, 10(a0) !449
	lw  	fa0, 0(a1) !1033
	lw  	fa1, 1(a1) !1034
	lw  	fa2, 2(a1) !1035
	lw  	a6, 1(a2) !535
	lwr 	a5, a6, a5 !1037
	lw  	a6, 1(a0) !260
	sw  	a4, 22(sp) !1039
	addi	t0, zero, 1
	bne 	a6, t0, beq_else.42385 !1039
	lw  	a1, 0(a2) !529
	addi	a2, a5, 0 !1040
	addi	sp, sp, 24 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -24 !1040
	jal 	zero, beq_cont.42386 !1039
beq_else.42385: !1039
	addi	t0, zero, 2
	bne 	a6, t0, beq_else.42387 !1041
	lw  	fa0, 0(a5) !1004
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.42389 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42390 !1004
beq_else.42389: !1004
	lw  	fa0, 0(a5) !1005
	lw  	fa1, 3(a1) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42390: !1004
	jal 	zero, beq_cont.42388 !1041
beq_else.42387: !1041
	lw  	fa3, 0(a5) !1013
	feq 	a6, fa3, zero !124
	bne 	a6, zero, beq_else.42391 !1014
	lw  	fa4, 1(a5) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a5) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a5) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a1) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a1, zero, fa1 !122
	bne 	a1, zero, beq_else.42393 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42394 !1020
beq_else.42393: !1020
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42395 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a5) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42396 !1021
beq_else.42395: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a5) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42396: !1021
	addi	a0, zero, 1 !1025
beq_cont.42394: !1020
	jal 	zero, beq_cont.42392 !1014
beq_else.42391: !1014
	addi	a0, zero, 0 !1015
beq_cont.42392: !1014
beq_cont.42388: !1041
beq_cont.42386: !1039
	beq 	a0, zero, beq_cont.42398 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42400 !1467
	addi	a0, zero, 1 !1468
	lw  	a1, 22(sp) !1468
	lw  	a2, 19(sp) !1468
	addi	sp, sp, 24 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -24 !1468
beq_cont.42400: !1467
beq_cont.42398: !1465
beq_cont.42384: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 21(sp) !1472
	lw  	a2, 19(sp) !1472
	addi	sp, sp, 24 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -24 !1472
beq_cont.42382: !1456
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.42401 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.42402 !1483
beq_else.42401: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.42402: !1483
	beq 	a0, zero, beq_cont.42404 !1648
	lw  	a0, 141(zero) !1649
	slli	a0, a0, 2 !1649
	lw  	a1, 136(zero) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 20(sp) !543
	lw  	a1, 0(a1) !543
	bne 	a0, a1, beq_cont.42406 !1650
	addi	a0, zero, 0 !1652
	lw  	a1, 134(zero) !1652
	addi	sp, sp, 24 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -24 !1652
	bne 	a0, zero, beq_cont.42408 !1652
	lw  	a0, 19(sp) !529
	lw  	a1, 0(a0) !529
	lw  	fa0, 142(zero) !208
	lw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 143(zero) !208
	lw  	fa2, 1(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 144(zero) !208
	lw  	fa2, 2(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	a1, 20(sp) !555
	lw  	fa1, 2(a1) !555
	lw  	fa2, 9(sp) !1656
	fmul	fa3, fa1, fa2 !1656
	fmul	fa0, fa3, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 6(sp) !208
	lw  	fa3, 0(a1) !208
	lw  	fa4, 0(a0) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a1) !208
	lw  	fa5, 1(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a1) !208
	lw  	fa5, 2(a0) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	fmul	fa1, fa1, fa3 !1657
	flt 	a0, zero, fa0 !122
	beq 	a0, zero, beq_cont.42410 !1627
	lw  	fa3, 151(zero) !218
	lw  	fa4, 145(zero) !218
	fmul	fa4, fa0, fa4 !218
	fadd	fa3, fa3, fa4 !218
	sw  	fa3, 151(zero) !218
	lw  	fa3, 152(zero) !219
	lw  	fa4, 146(zero) !219
	fmul	fa4, fa0, fa4 !219
	fadd	fa3, fa3, fa4 !219
	sw  	fa3, 152(zero) !219
	lw  	fa3, 153(zero) !220
	lw  	fa4, 147(zero) !220
	fmul	fa0, fa0, fa4 !220
	fadd	fa0, fa3, fa0 !220
	sw  	fa0, 153(zero) !220
beq_cont.42410: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.42412 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 11(sp) !1633
	fmul	fa0, fa0, fa1 !1633
	lw  	fa3, 151(zero) !1634
	fadd	fa3, fa3, fa0 !1634
	sw  	fa3, 151(zero) !1634
	lw  	fa3, 152(zero) !1635
	fadd	fa3, fa3, fa0 !1635
	sw  	fa3, 152(zero) !1635
	lw  	fa3, 153(zero) !1636
	fadd	fa0, fa3, fa0 !1636
	sw  	fa0, 153(zero) !1636
beq_cont.42412: !1632
beq_cont.42408: !1652
beq_cont.42406: !1650
beq_cont.42404: !1648
	lw  	a0, 18(sp) !1662
	addi	a0, a0, -1 !1662
	lw  	fa0, 9(sp) !1662
	lw  	fa1, 11(sp) !1662
	lw  	a1, 6(sp) !1662
	addi	sp, sp, 24 !1662
	jal 	ra, trace_reflections.2748 !1662
	addi	sp, sp, -24 !1662
bge_cont.42380: !1643
	li  	fa0, 0.100000 !1718
	lw  	fa1, 2(sp) !121
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.42413 !1718
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42413: !1718
	lw  	a0, 1(sp) !1720
	addi	t0, zero, 4
	bge 	a0, t0, bge_cont.42416 !1720
	addi	a1, a0, 1 !1721
	addi	a2, zero, -1 !1721
	lw  	a3, 3(sp) !1721
	add 	t0, a3, a1 !1721
	sw  	a2, 0(t0) !1721
bge_cont.42416: !1720
	lw  	a1, 8(sp) !1724
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.42417 !1724
	li  	fa0, 1.000000 !1725
	lw  	a1, 10(sp) !368
	lw  	a1, 7(a1) !368
	lw  	fa2, 0(a1) !373
	fsub	fa0, fa0, fa2 !1725
	fmul	fa0, fa1, fa0 !1725
	addi	a0, a0, 1 !1726
	lw  	fa1, 137(zero) !1726
	lw  	fa2, 5(sp) !1726
	fadd	fa1, fa2, fa1 !1726
	lw  	a1, 6(sp) !1726
	lw  	a2, 4(sp) !1726
	lw  	ra, 0(sp)
	jal 	zero, trace_ray.2753 !1726
beq_else.42417: !1724
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42304: !1669
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_ray.2759:
	sw  	ra, 0(sp)
	sw  	fa0, 1(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	lw  	a1, 134(zero) !1480
	lw  	a2, 0(a1) !1454
	lw  	a3, 0(a2) !1455
	sw  	a0, 2(sp) !1456
	addi	t0, zero, -1
	beq 	a3, t0, beq_cont.42421 !1456
	sw  	a1, 3(sp) !1459
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.42422 !1459
	sw  	a2, 4(sp) !1444
	lw  	a2, 1(a2) !1444
	addi	t0, zero, -1
	beq 	a2, t0, beq_cont.42425 !1445
	lw  	a1, 83(a2) !1446
	addi	a2, zero, 0 !1447
	addi	t0, a2, 0 !1447
	addi	a2, a0, 0 !1447
	addi	a0, t0, 0 !1447
	addi	sp, sp, 8 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -8 !1447
	addi	a0, zero, 2 !1448
	lw  	a1, 4(sp) !1448
	lw  	a2, 2(sp) !1448
	addi	sp, sp, 8 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -8 !1448
beq_cont.42425: !1445
	jal 	zero, beq_cont.42423 !1459
beq_else.42422: !1459
	lw  	a4, 12(a3) !1031
	lw  	a5, 10(a4) !449
	lw  	fa0, 0(a5) !1033
	lw  	fa1, 1(a5) !1034
	lw  	fa2, 2(a5) !1035
	lw  	a6, 1(a0) !535
	lwr 	a3, a6, a3 !1037
	lw  	a6, 1(a4) !260
	sw  	a2, 4(sp) !1039
	addi	t0, zero, 1
	bne 	a6, t0, beq_else.42426 !1039
	lw  	a1, 0(a0) !529
	addi	a2, a3, 0 !1040
	addi	a0, a4, 0 !1040
	addi	sp, sp, 8 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -8 !1040
	jal 	zero, beq_cont.42427 !1039
beq_else.42426: !1039
	addi	t0, zero, 2
	bne 	a6, t0, beq_else.42428 !1041
	lw  	fa0, 0(a3) !1004
	flt 	a4, fa0, zero !123
	bne 	a4, zero, beq_else.42430 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42431 !1004
beq_else.42430: !1004
	lw  	fa0, 0(a3) !1005
	lw  	fa1, 3(a5) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42431: !1004
	jal 	zero, beq_cont.42429 !1041
beq_else.42428: !1041
	lw  	fa3, 0(a3) !1013
	feq 	a6, fa3, zero !124
	bne 	a6, zero, beq_else.42432 !1014
	lw  	fa4, 1(a3) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a3) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a3) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a5) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a5, zero, fa1 !122
	bne 	a5, zero, beq_else.42434 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42435 !1020
beq_else.42434: !1020
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.42436 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a3) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42437 !1021
beq_else.42436: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a3) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42437: !1021
	addi	a0, zero, 1 !1025
beq_cont.42435: !1020
	jal 	zero, beq_cont.42433 !1014
beq_else.42432: !1014
	addi	a0, zero, 0 !1015
beq_cont.42433: !1014
beq_cont.42429: !1041
beq_cont.42427: !1039
	beq 	a0, zero, beq_cont.42439 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42441 !1467
	lw  	a0, 4(sp) !1444
	lw  	a0, 1(a0) !1444
	addi	t0, zero, -1
	beq 	a0, t0, beq_cont.42443 !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 2(sp) !1447
	addi	sp, sp, 8 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -8 !1447
	addi	a0, zero, 2 !1448
	lw  	a1, 4(sp) !1448
	lw  	a2, 2(sp) !1448
	addi	sp, sp, 8 !1448
	jal 	ra, solve_one_or_network_fast.2722 !1448
	addi	sp, sp, -8 !1448
beq_cont.42443: !1445
beq_cont.42441: !1467
beq_cont.42439: !1465
beq_cont.42423: !1459
	lw  	a1, 3(sp) !1454
	lw  	a0, 1(a1) !1454
	lw  	a2, 0(a0) !1455
	addi	t0, zero, -1
	beq 	a2, t0, beq_cont.42445 !1456
	addi	t0, zero, 99
	bne 	a2, t0, beq_else.42446 !1459
	addi	a1, zero, 1 !1460
	lw  	a2, 2(sp) !1460
	addi	t0, a1, 0 !1460
	addi	a1, a0, 0 !1460
	addi	a0, t0, 0 !1460
	addi	sp, sp, 8 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -8 !1460
	jal 	zero, beq_cont.42447 !1459
beq_else.42446: !1459
	lw  	a3, 12(a2) !1031
	lw  	a4, 10(a3) !449
	lw  	fa0, 0(a4) !1033
	lw  	fa1, 1(a4) !1034
	lw  	fa2, 2(a4) !1035
	lw  	a5, 2(sp) !535
	lw  	a6, 1(a5) !535
	lwr 	a2, a6, a2 !1037
	lw  	a6, 1(a3) !260
	sw  	a0, 5(sp) !1039
	addi	t0, zero, 1
	bne 	a6, t0, beq_else.42448 !1039
	lw  	a1, 0(a5) !529
	addi	a0, a3, 0 !1040
	addi	sp, sp, 8 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -8 !1040
	jal 	zero, beq_cont.42449 !1039
beq_else.42448: !1039
	addi	t0, zero, 2
	bne 	a6, t0, beq_else.42450 !1041
	lw  	fa0, 0(a2) !1004
	flt 	a3, fa0, zero !123
	bne 	a3, zero, beq_else.42452 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42453 !1004
beq_else.42452: !1004
	lw  	fa0, 0(a2) !1005
	lw  	fa1, 3(a4) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42453: !1004
	jal 	zero, beq_cont.42451 !1041
beq_else.42450: !1041
	lw  	fa3, 0(a2) !1013
	feq 	a6, fa3, zero !124
	bne 	a6, zero, beq_else.42454 !1014
	lw  	fa4, 1(a2) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a2) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a2) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a4) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a4, zero, fa1 !122
	bne 	a4, zero, beq_else.42456 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42457 !1020
beq_else.42456: !1020
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.42458 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a2) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42459 !1021
beq_else.42458: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a2) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42459: !1021
	addi	a0, zero, 1 !1025
beq_cont.42457: !1020
	jal 	zero, beq_cont.42455 !1014
beq_else.42454: !1014
	addi	a0, zero, 0 !1015
beq_cont.42455: !1014
beq_cont.42451: !1041
beq_cont.42449: !1039
	beq 	a0, zero, beq_cont.42461 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42463 !1467
	addi	a0, zero, 1 !1468
	lw  	a1, 5(sp) !1468
	lw  	a2, 2(sp) !1468
	addi	sp, sp, 8 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -8 !1468
beq_cont.42463: !1467
beq_cont.42461: !1465
beq_cont.42447: !1459
	addi	a0, zero, 2 !1472
	lw  	a1, 3(sp) !1472
	lw  	a2, 2(sp) !1472
	addi	sp, sp, 8 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -8 !1472
beq_cont.42445: !1456
beq_cont.42421: !1456
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.42464 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.42465 !1483
beq_else.42464: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.42465: !1483
	bne 	a0, zero, beq_else.42466 !1761
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42466: !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 2(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	sw  	a0, 6(sp) !1536
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.42468 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.42470 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.42472 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.42473 !148
beq_else.42472: !148
	li  	fa0, 1.000000 !148
beq_cont.42473: !148
	jal 	zero, beq_cont.42471 !147
beq_else.42470: !147
	addi	fa0, zero, 0
beq_cont.42471: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.42469 !1536
beq_else.42468: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.42474 !1538
	lw  	a1, 4(a0) !298
	lw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0 !1506
	sw  	fa0, 142(zero) !1506
	lw  	a1, 4(a0) !308
	lw  	fa0, 1(a1) !313
	fsgnjn  fa0, fa0, fa0 !1507
	sw  	fa0, 143(zero) !1507
	lw  	a1, 4(a0) !318
	lw  	fa0, 2(a1) !323
	fsgnjn  fa0, fa0, fa0 !1508
	sw  	fa0, 144(zero) !1508
	jal 	zero, beq_cont.42475 !1538
beq_else.42474: !1538
	addi	sp, sp, 8 !1541
	jal 	ra, get_nvector_second.2736 !1541
	addi	sp, sp, -8 !1541
beq_cont.42475: !1538
beq_cont.42469: !1536
	addi	a1, zero, 138 !0
	lw  	a0, 6(sp) !1764
	addi	sp, sp, 8 !1764
	jal 	ra, utexture.2741 !1764
	addi	sp, sp, -8 !1764
	lw  	a1, 134(zero) !1767
	lw  	a0, 0(a1) !1278
	lw  	a2, 0(a0) !1279
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.42476 !1280
	addi	a0, zero, 0 !1281
	jal 	zero, beq_cont.42477 !1280
beq_else.42476: !1280
	sw  	a0, 7(sp) !1284
	sw  	a1, 8(sp) !1284
	addi	t0, zero, 99
	bne 	a2, t0, beq_else.42478 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.42479 !1284
beq_else.42478: !1284
	addi	a0, zero, 138 !0
	addi	a1, zero, 247 !0
	addi	t0, a2, 0 !1287
	addi	a2, a0, 0 !1287
	addi	a0, t0, 0 !1287
	addi	sp, sp, 12 !1287
	jal 	ra, solver_fast.2629 !1287
	addi	sp, sp, -12 !1287
	bne 	a0, zero, beq_else.42480 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.42481 !1290
beq_else.42480: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.42482 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.42483 !1291
beq_else.42482: !1291
	lw  	a0, 7(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42484 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42485 !1264
beq_else.42484: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.42486 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.42487 !1233
beq_else.42486: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 9(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 10(sp) !1237
	addi	sp, sp, 12 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -12 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.42488 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.42489 !1239
beq_else.42488: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.42489: !1239
	bne 	a0, zero, beq_else.42490 !1239
	lw  	a0, 10(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42492 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.42493 !1255
beq_else.42492: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 9(sp) !1256
	addi	sp, sp, 12 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -12 !1256
beq_cont.42493: !1255
	jal 	zero, beq_cont.42491 !1239
beq_else.42490: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 9(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 12 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -12 !1246
	bne 	a0, zero, beq_else.42494 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 9(sp) !1249
	addi	sp, sp, 12 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -12 !1249
	jal 	zero, beq_cont.42495 !1246
beq_else.42494: !1246
	addi	a0, zero, 1 !1247
beq_cont.42495: !1246
beq_cont.42491: !1239
beq_cont.42487: !1233
	bne 	a0, zero, beq_else.42496 !1269
	lw  	a0, 7(sp) !1263
	lw  	a1, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42498 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42499 !1264
beq_else.42498: !1264
	lw  	a1, 83(a1) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 12 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -12 !1268
	bne 	a0, zero, beq_else.42500 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 7(sp) !1272
	addi	sp, sp, 12 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -12 !1272
	jal 	zero, beq_cont.42501 !1269
beq_else.42500: !1269
	addi	a0, zero, 1 !1270
beq_cont.42501: !1269
beq_cont.42499: !1264
	jal 	zero, beq_cont.42497 !1269
beq_else.42496: !1269
	addi	a0, zero, 1 !1270
beq_cont.42497: !1269
beq_cont.42485: !1264
	bne 	a0, zero, beq_else.42502 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.42503 !1292
beq_else.42502: !1292
	addi	a0, zero, 1 !1293
beq_cont.42503: !1292
beq_cont.42483: !1291
beq_cont.42481: !1290
beq_cont.42479: !1284
	bne 	a0, zero, beq_else.42504 !1283
	addi	a0, zero, 1 !1303
	lw  	a1, 8(sp) !1303
	addi	sp, sp, 12 !1303
	jal 	ra, shadow_check_one_or_matrix.2701 !1303
	addi	sp, sp, -12 !1303
	jal 	zero, beq_cont.42505 !1283
beq_else.42504: !1283
	lw  	a0, 7(sp) !1263
	lw  	a1, 1(a0) !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.42506 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42507 !1264
beq_else.42506: !1264
	lw  	a1, 83(a1) !1267
	lw  	a2, 0(a1) !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.42508 !1233
	addi	a0, zero, 0 !1234
	jal 	zero, beq_cont.42509 !1233
beq_else.42508: !1233
	lw  	a0, 0(a1) !1236
	addi	a2, zero, 138 !0
	sw  	a1, 11(sp) !0
	addi	a1, zero, 247 !0
	sw  	a0, 12(sp) !1237
	addi	sp, sp, 16 !1237
	jal 	ra, solver_fast.2629 !1237
	addi	sp, sp, -16 !1237
	lw  	fa0, 135(zero) !1238
	bne 	a0, zero, beq_else.42510 !1239
	addi	a0, zero, 0 !1239
	jal 	zero, beq_cont.42511 !1239
beq_else.42510: !1239
	li  	fa1, -0.200000 !1239
	flt 	a0, fa0, fa1 !121
beq_cont.42511: !1239
	bne 	a0, zero, beq_else.42512 !1239
	lw  	a0, 12(sp) !1255
	lw  	a0, 12(a0) !1255
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42514 !1255
	addi	a0, zero, 0 !1258
	jal 	zero, beq_cont.42515 !1255
beq_else.42514: !1255
	addi	a0, zero, 1 !1256
	lw  	a1, 11(sp) !1256
	addi	sp, sp, 16 !1256
	jal 	ra, shadow_check_and_group.2695 !1256
	addi	sp, sp, -16 !1256
beq_cont.42515: !1255
	jal 	zero, beq_cont.42513 !1239
beq_else.42512: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lw  	fa1, 78(zero) !1243
	fmul	fa1, fa1, fa0 !1243
	lw  	fa2, 138(zero) !1243
	fadd	fa1, fa1, fa2 !1243
	lw  	fa2, 79(zero) !1244
	fmul	fa2, fa2, fa0 !1244
	lw  	fa3, 139(zero) !1244
	fadd	fa2, fa2, fa3 !1244
	lw  	fa3, 80(zero) !1245
	fmul	fa0, fa3, fa0 !1245
	lw  	fa3, 140(zero) !1245
	fadd	fa0, fa0, fa3 !1245
	addi	a0, zero, 0 !1246
	lw  	a1, 11(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 16 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -16 !1246
	bne 	a0, zero, beq_else.42516 !1246
	addi	a0, zero, 1 !1249
	lw  	a1, 11(sp) !1249
	addi	sp, sp, 16 !1249
	jal 	ra, shadow_check_and_group.2695 !1249
	addi	sp, sp, -16 !1249
	jal 	zero, beq_cont.42517 !1246
beq_else.42516: !1246
	addi	a0, zero, 1 !1247
beq_cont.42517: !1246
beq_cont.42513: !1239
beq_cont.42509: !1233
	bne 	a0, zero, beq_else.42518 !1269
	lw  	a0, 7(sp) !1263
	lw  	a0, 2(a0) !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.42520 !1264
	addi	a0, zero, 0 !1265
	jal 	zero, beq_cont.42521 !1264
beq_else.42520: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 16 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -16 !1268
	bne 	a0, zero, beq_else.42522 !1269
	addi	a0, zero, 3 !1272
	lw  	a1, 7(sp) !1272
	addi	sp, sp, 16 !1272
	jal 	ra, shadow_check_one_or_group.2698 !1272
	addi	sp, sp, -16 !1272
	jal 	zero, beq_cont.42523 !1269
beq_else.42522: !1269
	addi	a0, zero, 1 !1270
beq_cont.42523: !1269
beq_cont.42521: !1264
	jal 	zero, beq_cont.42519 !1269
beq_else.42518: !1269
	addi	a0, zero, 1 !1270
beq_cont.42519: !1269
beq_cont.42507: !1264
	bne 	a0, zero, beq_else.42524 !1298
	addi	a0, zero, 1 !1301
	lw  	a1, 8(sp) !1301
	addi	sp, sp, 16 !1301
	jal 	ra, shadow_check_one_or_matrix.2701 !1301
	addi	sp, sp, -16 !1301
	jal 	zero, beq_cont.42525 !1298
beq_else.42524: !1298
	addi	a0, zero, 1 !1299
beq_cont.42525: !1298
beq_cont.42505: !1283
beq_cont.42477: !1280
	bne 	a0, zero, beq_else.42526 !1767
	lw  	fa0, 142(zero) !208
	lw  	fa1, 78(zero) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 143(zero) !208
	lw  	fa2, 79(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 144(zero) !208
	lw  	fa2, 80(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1768
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.42527 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.42528 !1769
beq_else.42527: !1769
beq_cont.42528: !1769
	lw  	fa1, 1(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 6(sp) !368
	lw  	a0, 7(a0) !368
	lw  	fa1, 0(a0) !373
	fmul	fa0, fa0, fa1 !1770
	lw  	fa1, 148(zero) !218
	lw  	fa2, 145(zero) !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	sw  	fa1, 148(zero) !218
	lw  	fa1, 149(zero) !219
	lw  	fa2, 146(zero) !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	sw  	fa1, 149(zero) !219
	lw  	fa1, 150(zero) !220
	lw  	fa2, 147(zero) !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa0, fa1, fa0 !220
	sw  	fa0, 150(zero) !220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42526: !1767
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_trace_diffuse_rays.2762:
	sw  	ra, 0(sp)
	blt 	a3, zero, bge_else.42531 !1777
	lwr 	a4, a0, a3 !1778
	lw  	a4, 0(a4) !529
	lw  	fa0, 0(a4) !208
	lw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a4) !208
	lw  	fa2, 1(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a4) !208
	lw  	fa2, 2(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a4, fa0, zero !123
	sw  	a2, 1(sp) !1781
	sw  	a1, 2(sp) !1781
	sw  	a0, 3(sp) !1781
	sw  	a3, 4(sp) !1781
	bne 	a4, zero, beq_else.42532 !1781
	lwr 	a4, a0, a3 !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	sw  	fa0, 5(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	lw  	a5, 134(zero) !1480
	lw  	a6, 0(a5) !1454
	lw  	a7, 0(a6) !1455
	sw  	a4, 6(sp) !1456
	addi	t0, zero, -1
	beq 	a7, t0, beq_cont.42535 !1456
	sw  	a5, 7(sp) !1459
	addi	t0, zero, 99
	bne 	a7, t0, beq_else.42536 !1459
	addi	a0, zero, 1 !1460
	addi	a2, a4, 0 !1460
	addi	a1, a6, 0 !1460
	addi	sp, sp, 8 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -8 !1460
	jal 	zero, beq_cont.42537 !1459
beq_else.42536: !1459
	lw  	a0, 12(a7) !1031
	lw  	a1, 10(a0) !449
	lw  	fa0, 0(a1) !1033
	lw  	fa1, 1(a1) !1034
	lw  	fa2, 2(a1) !1035
	lw  	a2, 1(a4) !535
	lwr 	a2, a2, a7 !1037
	lw  	a3, 1(a0) !260
	sw  	a6, 8(sp) !1039
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.42538 !1039
	lw  	a1, 0(a4) !529
	addi	sp, sp, 12 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -12 !1040
	jal 	zero, beq_cont.42539 !1039
beq_else.42538: !1039
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.42540 !1041
	lw  	fa0, 0(a2) !1004
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.42542 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42543 !1004
beq_else.42542: !1004
	lw  	fa0, 0(a2) !1005
	lw  	fa1, 3(a1) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42543: !1004
	jal 	zero, beq_cont.42541 !1041
beq_else.42540: !1041
	lw  	fa3, 0(a2) !1013
	feq 	a3, fa3, zero !124
	bne 	a3, zero, beq_else.42544 !1014
	lw  	fa4, 1(a2) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a2) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a2) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a1) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a1, zero, fa1 !122
	bne 	a1, zero, beq_else.42546 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42547 !1020
beq_else.42546: !1020
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42548 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a2) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42549 !1021
beq_else.42548: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a2) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42549: !1021
	addi	a0, zero, 1 !1025
beq_cont.42547: !1020
	jal 	zero, beq_cont.42545 !1014
beq_else.42544: !1014
	addi	a0, zero, 0 !1015
beq_cont.42545: !1014
beq_cont.42541: !1041
beq_cont.42539: !1039
	beq 	a0, zero, beq_cont.42551 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42553 !1467
	addi	a0, zero, 1 !1468
	lw  	a1, 8(sp) !1468
	lw  	a2, 6(sp) !1468
	addi	sp, sp, 12 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -12 !1468
beq_cont.42553: !1467
beq_cont.42551: !1465
beq_cont.42537: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 7(sp) !1472
	lw  	a2, 6(sp) !1472
	addi	sp, sp, 12 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -12 !1472
beq_cont.42535: !1456
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.42554 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.42555 !1483
beq_else.42554: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.42555: !1483
	beq 	a0, zero, beq_cont.42557 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 6(sp) !529
	lw  	a1, 0(a1) !529
	sw  	a0, 9(sp) !1763
	addi	sp, sp, 12 !1763
	jal 	ra, get_nvector.2738 !1763
	addi	sp, sp, -12 !1763
	addi	a1, zero, 138 !0
	lw  	a0, 9(sp) !1764
	addi	sp, sp, 12 !1764
	jal 	ra, utexture.2741 !1764
	addi	sp, sp, -12 !1764
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 12 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -12 !1767
	bne 	a0, zero, beq_cont.42559 !1767
	lw  	fa0, 142(zero) !208
	lw  	fa1, 78(zero) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 143(zero) !208
	lw  	fa2, 79(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 144(zero) !208
	lw  	fa2, 80(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1768
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.42560 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.42561 !1769
beq_else.42560: !1769
beq_cont.42561: !1769
	lw  	fa1, 5(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 9(sp) !368
	lw  	a0, 7(a0) !368
	lw  	fa1, 0(a0) !373
	fmul	fa0, fa0, fa1 !1770
	lw  	fa1, 148(zero) !218
	lw  	fa2, 145(zero) !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	sw  	fa1, 148(zero) !218
	lw  	fa1, 149(zero) !219
	lw  	fa2, 146(zero) !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	sw  	fa1, 149(zero) !219
	lw  	fa1, 150(zero) !220
	lw  	fa2, 147(zero) !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa0, fa1, fa0 !220
	sw  	fa0, 150(zero) !220
beq_cont.42559: !1767
beq_cont.42557: !1761
	jal 	zero, beq_cont.42533 !1781
beq_else.42532: !1781
	addi	a4, a3, 1 !1782
	lwr 	a4, a0, a4 !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	sw  	fa0, 10(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	lw  	a5, 134(zero) !1480
	lw  	a6, 0(a5) !1454
	lw  	a7, 0(a6) !1455
	sw  	a4, 11(sp) !1456
	addi	t0, zero, -1
	beq 	a7, t0, beq_cont.42563 !1456
	sw  	a5, 12(sp) !1459
	addi	t0, zero, 99
	bne 	a7, t0, beq_else.42564 !1459
	addi	a0, zero, 1 !1460
	addi	a2, a4, 0 !1460
	addi	a1, a6, 0 !1460
	addi	sp, sp, 16 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -16 !1460
	jal 	zero, beq_cont.42565 !1459
beq_else.42564: !1459
	lw  	a0, 12(a7) !1031
	lw  	a1, 10(a0) !449
	lw  	fa0, 0(a1) !1033
	lw  	fa1, 1(a1) !1034
	lw  	fa2, 2(a1) !1035
	lw  	a2, 1(a4) !535
	lwr 	a2, a2, a7 !1037
	lw  	a3, 1(a0) !260
	sw  	a6, 13(sp) !1039
	addi	t0, zero, 1
	bne 	a3, t0, beq_else.42566 !1039
	lw  	a1, 0(a4) !529
	addi	sp, sp, 16 !1040
	jal 	ra, solver_rect_fast.2610 !1040
	addi	sp, sp, -16 !1040
	jal 	zero, beq_cont.42567 !1039
beq_else.42566: !1039
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.42568 !1041
	lw  	fa0, 0(a2) !1004
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.42570 !1004
	addi	a0, zero, 0 !1007
	jal 	zero, beq_cont.42571 !1004
beq_else.42570: !1004
	lw  	fa0, 0(a2) !1005
	lw  	fa1, 3(a1) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a0, zero, 1 !1006
beq_cont.42571: !1004
	jal 	zero, beq_cont.42569 !1041
beq_else.42568: !1041
	lw  	fa3, 0(a2) !1013
	feq 	a3, fa3, zero !124
	bne 	a3, zero, beq_else.42572 !1014
	lw  	fa4, 1(a2) !1017
	fmul	fa0, fa4, fa0 !1017
	lw  	fa4, 2(a2) !1017
	fmul	fa1, fa4, fa1 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a2) !1017
	fmul	fa1, fa1, fa2 !1017
	fadd	fa0, fa0, fa1 !1017
	lw  	fa1, 3(a1) !1018
	fmul	fa2, fa0, fa0 !126
	fmul	fa1, fa3, fa1 !1019
	fsub	fa1, fa2, fa1 !1019
	flt 	a1, zero, fa1 !122
	bne 	a1, zero, beq_else.42574 !1020
	addi	a0, zero, 0 !1026
	jal 	zero, beq_cont.42575 !1020
beq_else.42574: !1020
	lw  	a0, 6(a0) !280
	bne 	a0, zero, beq_else.42576 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a2) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.42577 !1021
beq_else.42576: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a2) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.42577: !1021
	addi	a0, zero, 1 !1025
beq_cont.42575: !1020
	jal 	zero, beq_cont.42573 !1014
beq_else.42572: !1014
	addi	a0, zero, 0 !1015
beq_cont.42573: !1014
beq_cont.42569: !1041
beq_cont.42567: !1039
	beq 	a0, zero, beq_cont.42579 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a0, fa0, fa1 !121
	beq 	a0, zero, beq_cont.42581 !1467
	addi	a0, zero, 1 !1468
	lw  	a1, 13(sp) !1468
	lw  	a2, 11(sp) !1468
	addi	sp, sp, 16 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -16 !1468
beq_cont.42581: !1467
beq_cont.42579: !1465
beq_cont.42565: !1459
	addi	a0, zero, 1 !1472
	lw  	a1, 12(sp) !1472
	lw  	a2, 11(sp) !1472
	addi	sp, sp, 16 !1472
	jal 	ra, trace_or_matrix_fast.2726 !1472
	addi	sp, sp, -16 !1472
beq_cont.42563: !1456
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.42582 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.42583 !1483
beq_else.42582: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.42583: !1483
	beq 	a0, zero, beq_cont.42585 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 11(sp) !529
	lw  	a1, 0(a1) !529
	sw  	a0, 14(sp) !1763
	addi	sp, sp, 16 !1763
	jal 	ra, get_nvector.2738 !1763
	addi	sp, sp, -16 !1763
	addi	a1, zero, 138 !0
	lw  	a0, 14(sp) !1764
	addi	sp, sp, 16 !1764
	jal 	ra, utexture.2741 !1764
	addi	sp, sp, -16 !1764
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 16 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -16 !1767
	bne 	a0, zero, beq_cont.42587 !1767
	lw  	fa0, 142(zero) !208
	lw  	fa1, 78(zero) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 143(zero) !208
	lw  	fa2, 79(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 144(zero) !208
	lw  	fa2, 80(zero) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1768
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.42588 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.42589 !1769
beq_else.42588: !1769
beq_cont.42589: !1769
	lw  	fa1, 10(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 14(sp) !368
	lw  	a0, 7(a0) !368
	lw  	fa1, 0(a0) !373
	fmul	fa0, fa0, fa1 !1770
	lw  	fa1, 148(zero) !218
	lw  	fa2, 145(zero) !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	sw  	fa1, 148(zero) !218
	lw  	fa1, 149(zero) !219
	lw  	fa2, 146(zero) !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	sw  	fa1, 149(zero) !219
	lw  	fa1, 150(zero) !220
	lw  	fa2, 147(zero) !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa0, fa1, fa0 !220
	sw  	fa0, 150(zero) !220
beq_cont.42587: !1767
beq_cont.42585: !1761
beq_cont.42533: !1781
	lw  	a0, 4(sp) !1786
	addi	a0, a0, -2 !1786
	blt 	a0, zero, bge_else.42590 !1777
	lw  	a1, 3(sp) !1778
	lwr 	a2, a1, a0 !1778
	lw  	a2, 0(a2) !529
	lw  	fa0, 0(a2) !208
	lw  	a3, 2(sp) !208
	lw  	fa1, 0(a3) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a2) !208
	lw  	fa2, 1(a3) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a2) !208
	lw  	fa2, 2(a3) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a2, fa0, zero !123
	sw  	a0, 15(sp) !1781
	bne 	a2, zero, beq_else.42591 !1781
	lwr 	a0, a1, a0 !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 16 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -16 !1784
	jal 	zero, beq_cont.42592 !1781
beq_else.42591: !1781
	addi	a0, a0, 1 !1782
	lwr 	a0, a1, a0 !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 16 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -16 !1782
beq_cont.42592: !1781
	lw  	a0, 15(sp) !1786
	addi	a3, a0, -2 !1786
	lw  	a0, 3(sp) !1786
	lw  	a1, 2(sp) !1786
	lw  	a2, 1(sp) !1786
	lw  	ra, 0(sp)
	jal 	zero, iter_trace_diffuse_rays.2762 !1786
bge_else.42590: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42531: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_ray_80percent.2771:
	sw  	ra, 0(sp)
	sw  	a1, 1(sp) !1801
	sw  	a2, 2(sp) !1801
	sw  	a0, 3(sp) !1801
	beq 	a0, zero, beq_cont.42596 !1801
	lw  	a0, 179(zero) !1802
	lw  	fa0, 0(a2) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 164(zero) !190
	lw  	a3, 0(zero) !1168
	addi	a3, a3, -1 !1168
	sw  	a0, 4(sp) !1148
	blt 	a3, zero, bge_cont.42598 !1148
	lw  	a0, 12(a3) !1149
	lw  	a1, 10(a0) !449
	lw  	a4, 1(a0) !260
	lw  	fa0, 0(a2) !1152
	lw  	a5, 5(a0) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a1) !1152
	lw  	fa0, 1(a2) !1153
	lw  	a5, 5(a0) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a1) !1153
	lw  	fa0, 2(a2) !1154
	lw  	a5, 5(a0) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a1) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.42599 !1155
	lw  	a0, 4(a0) !328
	lw  	fa0, 0(a1) !1157
	lw  	fa1, 1(a1) !1157
	lw  	fa2, 2(a1) !1157
	lw  	fa3, 0(a0) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a0) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a0) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a1) !1156
	jal 	zero, beq_cont.42600 !1155
beq_else.42599: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.42602 !1158
	lw  	fa0, 0(a1) !1159
	lw  	fa1, 1(a1) !1159
	lw  	fa2, 2(a1) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a0) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a0) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a0) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a0) !289
	bne 	a5, zero, beq_else.42603 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.42604 !846
beq_else.42603: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a0) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a0) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a0, 9(a0) !438
	lw  	fa1, 2(a0) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.42604: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.42605 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.42606 !1160
beq_else.42605: !1160
beq_cont.42606: !1160
	sw  	fa0, 3(a1) !1160
bge_cont.42602: !1158
beq_cont.42600: !1155
	addi	a1, a3, -1 !1162
	addi	a0, a2, 0 !1162
	addi	sp, sp, 8 !1162
	jal 	ra, setup_startp_constants.2664 !1162
	addi	sp, sp, -8 !1162
bge_cont.42598: !1148
	addi	a3, zero, 118 !1795
	lw  	a0, 4(sp) !1795
	lw  	a1, 1(sp) !1795
	lw  	a2, 2(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
beq_cont.42596: !1801
	lw  	a0, 3(sp) !1805
	addi	t0, zero, 1
	beq 	a0, t0, beq_cont.42608 !1805
	lw  	a0, 180(zero) !1806
	lw  	a2, 2(sp) !188
	lw  	fa0, 0(a2) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 5(sp) !1148
	blt 	a1, zero, bge_cont.42610 !1148
	lw  	a0, 12(a1) !1149
	lw  	a3, 10(a0) !449
	lw  	a4, 1(a0) !260
	lw  	fa0, 0(a2) !1152
	lw  	a5, 5(a0) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a2) !1153
	lw  	a5, 5(a0) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a2) !1154
	lw  	a5, 5(a0) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.42611 !1155
	lw  	a0, 4(a0) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a0) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a0) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a0) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.42612 !1155
beq_else.42611: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.42614 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a0) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a0) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a0) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a0) !289
	bne 	a5, zero, beq_else.42615 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.42616 !846
beq_else.42615: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a0) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a0) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a0, 9(a0) !438
	lw  	fa1, 2(a0) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.42616: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.42617 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.42618 !1160
beq_else.42617: !1160
beq_cont.42618: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.42614: !1158
beq_cont.42612: !1155
	addi	a1, a1, -1 !1162
	addi	a0, a2, 0 !1162
	addi	sp, sp, 8 !1162
	jal 	ra, setup_startp_constants.2664 !1162
	addi	sp, sp, -8 !1162
bge_cont.42610: !1148
	addi	a3, zero, 118 !1795
	lw  	a0, 5(sp) !1795
	lw  	a1, 1(sp) !1795
	lw  	a2, 2(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
beq_cont.42608: !1805
	lw  	a0, 3(sp) !1809
	addi	t0, zero, 2
	beq 	a0, t0, beq_cont.42620 !1809
	lw  	a0, 181(zero) !1810
	lw  	a2, 2(sp) !188
	lw  	fa0, 0(a2) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 6(sp) !1148
	blt 	a1, zero, bge_cont.42622 !1148
	lw  	a0, 12(a1) !1149
	lw  	a3, 10(a0) !449
	lw  	a4, 1(a0) !260
	lw  	fa0, 0(a2) !1152
	lw  	a5, 5(a0) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a2) !1153
	lw  	a5, 5(a0) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a2) !1154
	lw  	a5, 5(a0) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.42623 !1155
	lw  	a0, 4(a0) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a0) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a0) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a0) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.42624 !1155
beq_else.42623: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.42626 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a0) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a0) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a0) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a0) !289
	bne 	a5, zero, beq_else.42627 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.42628 !846
beq_else.42627: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a0) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a0) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a0, 9(a0) !438
	lw  	fa1, 2(a0) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.42628: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.42629 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.42630 !1160
beq_else.42629: !1160
beq_cont.42630: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.42626: !1158
beq_cont.42624: !1155
	addi	a1, a1, -1 !1162
	addi	a0, a2, 0 !1162
	addi	sp, sp, 8 !1162
	jal 	ra, setup_startp_constants.2664 !1162
	addi	sp, sp, -8 !1162
bge_cont.42622: !1148
	addi	a3, zero, 118 !1795
	lw  	a0, 6(sp) !1795
	lw  	a1, 1(sp) !1795
	lw  	a2, 2(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
beq_cont.42620: !1809
	lw  	a0, 3(sp) !1813
	addi	t0, zero, 3
	beq 	a0, t0, beq_cont.42632 !1813
	lw  	a0, 182(zero) !1814
	lw  	a2, 2(sp) !188
	lw  	fa0, 0(a2) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 7(sp) !1148
	blt 	a1, zero, bge_cont.42634 !1148
	lw  	a0, 12(a1) !1149
	lw  	a3, 10(a0) !449
	lw  	a4, 1(a0) !260
	lw  	fa0, 0(a2) !1152
	lw  	a5, 5(a0) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a2) !1153
	lw  	a5, 5(a0) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a2) !1154
	lw  	a5, 5(a0) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.42635 !1155
	lw  	a0, 4(a0) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a0) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a0) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a0) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.42636 !1155
beq_else.42635: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.42638 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a0) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a0) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a0) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a0) !289
	bne 	a5, zero, beq_else.42639 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.42640 !846
beq_else.42639: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a0) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a0) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a0, 9(a0) !438
	lw  	fa1, 2(a0) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.42640: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.42641 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.42642 !1160
beq_else.42641: !1160
beq_cont.42642: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.42638: !1158
beq_cont.42636: !1155
	addi	a1, a1, -1 !1162
	addi	a0, a2, 0 !1162
	addi	sp, sp, 8 !1162
	jal 	ra, setup_startp_constants.2664 !1162
	addi	sp, sp, -8 !1162
bge_cont.42634: !1148
	addi	a3, zero, 118 !1795
	lw  	a0, 7(sp) !1795
	lw  	a1, 1(sp) !1795
	lw  	a2, 2(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
beq_cont.42632: !1813
	lw  	a0, 3(sp) !1817
	addi	t0, zero, 4
	bne 	a0, t0, beq_else.42643 !1817
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42643: !1817
	lw  	a0, 183(zero) !1818
	lw  	a2, 2(sp) !188
	lw  	fa0, 0(a2) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 8(sp) !1148
	blt 	a1, zero, bge_cont.42646 !1148
	lw  	a0, 12(a1) !1149
	lw  	a3, 10(a0) !449
	lw  	a4, 1(a0) !260
	lw  	fa0, 0(a2) !1152
	lw  	a5, 5(a0) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a2) !1153
	lw  	a5, 5(a0) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a2) !1154
	lw  	a5, 5(a0) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.42647 !1155
	lw  	a0, 4(a0) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a0) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a0) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a0) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.42648 !1155
beq_else.42647: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.42650 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a0) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a0) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a0) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a0) !289
	bne 	a5, zero, beq_else.42651 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.42652 !846
beq_else.42651: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a0) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a0) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a0, 9(a0) !438
	lw  	fa1, 2(a0) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.42652: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.42653 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.42654 !1160
beq_else.42653: !1160
beq_cont.42654: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.42650: !1158
beq_cont.42648: !1155
	addi	a1, a1, -1 !1162
	addi	a0, a2, 0 !1162
	addi	sp, sp, 12 !1162
	jal 	ra, setup_startp_constants.2664 !1162
	addi	sp, sp, -12 !1162
bge_cont.42646: !1148
	addi	a3, zero, 118 !1795
	lw  	a0, 8(sp) !1795
	lw  	a1, 1(sp) !1795
	lw  	a2, 2(sp) !1795
	lw  	ra, 0(sp)
	jal 	zero, iter_trace_diffuse_rays.2762 !1795
calc_diffuse_using_1point.2775:
	sw  	ra, 0(sp)
	lw  	a2, 5(a0) !497
	lw  	a3, 7(a0) !520
	lw  	a4, 1(a0) !468
	lw  	a5, 4(a0) !490
	lwr 	a2, a2, a1 !1831
	lw  	fa0, 0(a2) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 150(zero) !190
	lw  	a0, 6(a0) !506
	lw  	a0, 0(a0) !508
	lwr 	a2, a3, a1 !1834
	sw  	a2, 1(sp) !1835
	lwr 	a2, a4, a1 !1835
	sw  	a1, 2(sp) !1801
	sw  	a5, 3(sp) !1801
	sw  	a2, 4(sp) !1801
	sw  	a0, 5(sp) !1801
	beq 	a0, zero, beq_cont.42656 !1801
	lw  	a0, 179(zero) !1802
	lw  	fa0, 0(a2) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 164(zero) !190
	sw  	a0, 6(sp) !1168
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, a2, 0 !1168
	addi	sp, sp, 8 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -8 !1168
	lw  	a0, 6(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 1(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42657 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 8 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -8 !1784
	jal 	zero, beq_cont.42658 !1781
beq_else.42657: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 8 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -8 !1782
beq_cont.42658: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 6(sp) !1786
	lw  	a1, 1(sp) !1786
	lw  	a2, 4(sp) !1786
	addi	sp, sp, 8 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -8 !1786
beq_cont.42656: !1801
	lw  	a0, 5(sp) !1805
	addi	t0, zero, 1
	beq 	a0, t0, beq_cont.42660 !1805
	lw  	a0, 180(zero) !1806
	sw  	a0, 7(sp) !188
	lw  	a0, 4(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 8 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -8 !1168
	lw  	a0, 7(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 1(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42661 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 8 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -8 !1784
	jal 	zero, beq_cont.42662 !1781
beq_else.42661: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 8 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -8 !1782
beq_cont.42662: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 7(sp) !1786
	lw  	a1, 1(sp) !1786
	lw  	a2, 4(sp) !1786
	addi	sp, sp, 8 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -8 !1786
beq_cont.42660: !1805
	lw  	a0, 5(sp) !1809
	addi	t0, zero, 2
	beq 	a0, t0, beq_cont.42664 !1809
	lw  	a0, 181(zero) !1810
	sw  	a0, 8(sp) !188
	lw  	a0, 4(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 12 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -12 !1168
	lw  	a0, 8(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 1(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42665 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 12 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -12 !1784
	jal 	zero, beq_cont.42666 !1781
beq_else.42665: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 12 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -12 !1782
beq_cont.42666: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 8(sp) !1786
	lw  	a1, 1(sp) !1786
	lw  	a2, 4(sp) !1786
	addi	sp, sp, 12 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -12 !1786
beq_cont.42664: !1809
	lw  	a0, 5(sp) !1813
	addi	t0, zero, 3
	beq 	a0, t0, beq_cont.42668 !1813
	lw  	a0, 182(zero) !1814
	sw  	a0, 9(sp) !188
	lw  	a0, 4(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 12 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -12 !1168
	lw  	a0, 9(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 1(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42669 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 12 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -12 !1784
	jal 	zero, beq_cont.42670 !1781
beq_else.42669: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 12 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -12 !1782
beq_cont.42670: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 9(sp) !1786
	lw  	a1, 1(sp) !1786
	lw  	a2, 4(sp) !1786
	addi	sp, sp, 12 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -12 !1786
beq_cont.42668: !1813
	lw  	a0, 5(sp) !1817
	addi	t0, zero, 4
	beq 	a0, t0, beq_cont.42672 !1817
	lw  	a0, 183(zero) !1818
	sw  	a0, 10(sp) !188
	lw  	a0, 4(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 12 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -12 !1168
	lw  	a0, 10(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 1(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42673 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 12 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -12 !1784
	jal 	zero, beq_cont.42674 !1781
beq_else.42673: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 12 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -12 !1782
beq_cont.42674: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 10(sp) !1786
	lw  	a1, 1(sp) !1786
	lw  	a2, 4(sp) !1786
	addi	sp, sp, 12 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -12 !1786
beq_cont.42672: !1817
	lw  	a0, 2(sp) !1836
	lw  	a1, 3(sp) !1836
	lwr 	a0, a1, a0 !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a0) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a0) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a0) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_diffuse_using_5points.2778:
	sw  	ra, 0(sp)
	lwr 	a1, a1, a0 !1844
	lw  	a1, 5(a1) !497
	addi	a5, a0, -1 !1845
	lwr 	a5, a2, a5 !1845
	lw  	a5, 5(a5) !497
	lwr 	a6, a2, a0 !1846
	lw  	a6, 5(a6) !497
	addi	a7, a0, 1 !1847
	lwr 	a7, a2, a7 !1847
	lw  	a7, 5(a7) !497
	lwr 	a3, a3, a0 !1848
	lw  	a3, 5(a3) !497
	lwr 	a1, a1, a4 !1850
	lw  	fa0, 0(a1) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a1) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a1) !190
	sw  	fa0, 150(zero) !190
	lwr 	a1, a5, a4 !1851
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a1) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a1) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a1, a6, a4 !1852
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a1) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a1) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a1, a7, a4 !1853
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a1) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a1) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a1, a3, a4 !1854
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a1) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a1) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a1) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a0, a2, a0 !1856
	lw  	a0, 4(a0) !490
	lwr 	a0, a0, a4 !1857
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a0) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a0) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a0) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
do_without_neighbors.2784:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42677 !1863
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1866
	blt 	a2, zero, bge_else.42678 !1866
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1868
	sw  	a0, 1(sp) !1868
	sw  	a1, 2(sp) !1868
	beq 	a2, zero, beq_cont.42680 !1868
	lw  	a2, 5(a0) !497
	lw  	a3, 7(a0) !520
	lw  	a4, 1(a0) !468
	lw  	a5, 4(a0) !490
	lwr 	a2, a2, a1 !1831
	lw  	fa0, 0(a2) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 150(zero) !190
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	lwr 	a3, a3, a1 !1834
	sw  	a3, 3(sp) !1835
	lwr 	a3, a4, a1 !1835
	sw  	a5, 4(sp) !1801
	sw  	a3, 5(sp) !1801
	sw  	a2, 6(sp) !1801
	beq 	a2, zero, beq_cont.42682 !1801
	lw  	a0, 179(zero) !1802
	sw  	a0, 7(sp) !1792
	addi	a0, a3, 0 !1792
	addi	sp, sp, 8 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -8 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 7(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
beq_cont.42682: !1801
	lw  	a0, 6(sp) !1805
	addi	t0, zero, 1
	beq 	a0, t0, beq_cont.42684 !1805
	lw  	a0, 180(zero) !1806
	sw  	a0, 8(sp) !1792
	lw  	a0, 5(sp) !1792
	addi	sp, sp, 12 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -12 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 8(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.42684: !1805
	lw  	a0, 6(sp) !1809
	addi	t0, zero, 2
	beq 	a0, t0, beq_cont.42686 !1809
	lw  	a0, 181(zero) !1810
	sw  	a0, 9(sp) !1792
	lw  	a0, 5(sp) !1792
	addi	sp, sp, 12 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -12 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 9(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.42686: !1809
	lw  	a0, 6(sp) !1813
	addi	t0, zero, 3
	beq 	a0, t0, beq_cont.42688 !1813
	lw  	a0, 182(zero) !1814
	sw  	a0, 10(sp) !1792
	lw  	a0, 5(sp) !1792
	addi	sp, sp, 12 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -12 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 10(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.42688: !1813
	lw  	a0, 6(sp) !1817
	addi	t0, zero, 4
	beq 	a0, t0, beq_cont.42690 !1817
	lw  	a0, 183(zero) !1818
	sw  	a0, 11(sp) !1792
	lw  	a0, 5(sp) !1792
	addi	sp, sp, 12 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -12 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 11(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.42690: !1817
	lw  	a0, 2(sp) !1836
	lw  	a1, 4(sp) !1836
	lwr 	a1, a1, a0 !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a1) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a1) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a1) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42680: !1868
	lw  	a0, 2(sp) !1871
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42691 !1863
	lw  	a0, 1(sp) !476
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1866
	blt 	a2, zero, bge_else.42692 !1866
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1868
	sw  	a1, 12(sp) !1868
	beq 	a2, zero, beq_cont.42694 !1868
	addi	sp, sp, 16 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -16 !1869
beq_cont.42694: !1868
	lw  	a0, 12(sp) !1871
	addi	a0, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.42695 !1863
	lw  	a1, 1(sp) !476
	lw  	a2, 2(a1) !476
	lwr 	a2, a2, a0 !1866
	blt 	a2, zero, bge_else.42696 !1866
	lw  	a2, 3(a1) !483
	lwr 	a2, a2, a0 !1868
	beq 	a2, zero, beq_cont.42698 !1868
	lw  	a2, 5(a1) !497
	lw  	a3, 7(a1) !520
	lw  	a4, 1(a1) !468
	lw  	a5, 4(a1) !490
	lwr 	a2, a2, a0 !1831
	lw  	fa0, 0(a2) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 150(zero) !190
	lw  	a1, 6(a1) !506
	lw  	a1, 0(a1) !508
	lwr 	a2, a3, a0 !1834
	sw  	a0, 13(sp) !1835
	lwr 	a0, a4, a0 !1835
	sw  	a5, 14(sp) !1832
	addi	t0, a2, 0 !1832
	addi	a2, a0, 0 !1832
	addi	a0, a1, 0 !1832
	addi	a1, t0, 0 !1832
	addi	sp, sp, 16 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -16 !1832
	lw  	a0, 13(sp) !1836
	lw  	a1, 14(sp) !1836
	lwr 	a1, a1, a0 !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a1) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a1) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a1) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42698: !1868
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42699 !1863
	lw  	a0, 1(sp) !476
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1866
	blt 	a2, zero, bge_else.42700 !1866
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1868
	sw  	a1, 15(sp) !1868
	beq 	a2, zero, beq_cont.42702 !1868
	addi	sp, sp, 16 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -16 !1869
beq_cont.42702: !1868
	lw  	a0, 15(sp) !1871
	addi	a1, a0, 1 !1871
	lw  	a0, 1(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.42700: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42699: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42696: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42695: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42692: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42691: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42678: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42677: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
try_exploit_neighbors.2800:
	sw  	ra, 0(sp)
	lwr 	a6, a3, a0 !1912
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.42711 !1913
	lw  	a7, 2(a6) !476
	lwr 	a7, a7, a5 !1891
	blt 	a7, zero, bge_else.42712 !1916
	lwr 	a7, a3, a0 !1896
	lw  	a7, 2(a7) !476
	lwr 	a7, a7, a5 !1891
	lwr 	s1, a2, a0 !1898
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42713 !1898
	lwr 	s1, a4, a0 !1899
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42715 !1899
	addi	s1, a0, -1 !1900
	lwr 	s1, a3, s1 !1900
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42717 !1900
	addi	s1, a0, 1 !1901
	lwr 	s1, a3, s1 !1901
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42719 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.42720 !1901
beq_else.42719: !1901
	addi	a7, zero, 0 !1903
beq_cont.42720: !1901
	jal 	zero, beq_cont.42718 !1900
beq_else.42717: !1900
	addi	a7, zero, 0 !1904
beq_cont.42718: !1900
	jal 	zero, beq_cont.42716 !1899
beq_else.42715: !1899
	addi	a7, zero, 0 !1905
beq_cont.42716: !1899
	jal 	zero, beq_cont.42714 !1898
beq_else.42713: !1898
	addi	a7, zero, 0 !1906
beq_cont.42714: !1898
	bne 	a7, zero, beq_else.42721 !1918
	lwr 	a0, a3, a0 !1930
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.42722 !1863
	lw  	a1, 2(a0) !476
	lwr 	a1, a1, a5 !1866
	blt 	a1, zero, bge_else.42723 !1866
	lw  	a1, 3(a0) !483
	lwr 	a1, a1, a5 !1868
	sw  	a0, 1(sp) !1868
	sw  	a5, 2(sp) !1868
	beq 	a1, zero, beq_cont.42725 !1868
	addi	a1, a5, 0 !1869
	addi	sp, sp, 4 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -4 !1869
beq_cont.42725: !1868
	lw  	a0, 2(sp) !1871
	addi	a0, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.42726 !1863
	lw  	a1, 1(sp) !476
	lw  	a2, 2(a1) !476
	lwr 	a2, a2, a0 !1866
	blt 	a2, zero, bge_else.42727 !1866
	lw  	a2, 3(a1) !483
	lwr 	a2, a2, a0 !1868
	beq 	a2, zero, beq_cont.42729 !1868
	lw  	a2, 5(a1) !497
	lw  	a3, 7(a1) !520
	lw  	a4, 1(a1) !468
	lw  	a5, 4(a1) !490
	lwr 	a2, a2, a0 !1831
	lw  	fa0, 0(a2) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a2) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a2) !190
	sw  	fa0, 150(zero) !190
	lw  	a1, 6(a1) !506
	lw  	a1, 0(a1) !508
	lwr 	a2, a3, a0 !1834
	sw  	a0, 3(sp) !1835
	lwr 	a0, a4, a0 !1835
	sw  	a5, 4(sp) !1832
	addi	t0, a2, 0 !1832
	addi	a2, a0, 0 !1832
	addi	a0, a1, 0 !1832
	addi	a1, t0, 0 !1832
	addi	sp, sp, 8 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -8 !1832
	lw  	a0, 3(sp) !1836
	lw  	a1, 4(sp) !1836
	lwr 	a1, a1, a0 !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a1) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a1) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a1) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42729: !1868
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42730 !1863
	lw  	a0, 1(sp) !476
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1866
	blt 	a2, zero, bge_else.42731 !1866
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1868
	sw  	a1, 5(sp) !1868
	beq 	a2, zero, beq_cont.42733 !1868
	addi	sp, sp, 8 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -8 !1869
beq_cont.42733: !1868
	lw  	a0, 5(sp) !1871
	addi	a1, a0, 1 !1871
	lw  	a0, 1(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.42731: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42730: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42727: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42726: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42723: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42722: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42721: !1918
	lw  	a6, 3(a6) !483
	lwr 	a6, a6, a5 !1922
	beq 	a6, zero, beq_cont.42741 !1922
	lwr 	a6, a2, a0 !1844
	lw  	a6, 5(a6) !497
	addi	a7, a0, -1 !1845
	lwr 	a7, a3, a7 !1845
	lw  	a7, 5(a7) !497
	lwr 	s1, a3, a0 !1846
	lw  	s1, 5(s1) !497
	addi	s2, a0, 1 !1847
	lwr 	s2, a3, s2 !1847
	lw  	s2, 5(s2) !497
	lwr 	s3, a4, a0 !1848
	lw  	s3, 5(s3) !497
	lwr 	a6, a6, a5 !1850
	lw  	fa0, 0(a6) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a6) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a6) !190
	sw  	fa0, 150(zero) !190
	lwr 	a6, a7, a5 !1851
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a6, s1, a5 !1852
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a6, s2, a5 !1853
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a6, s3, a5 !1854
	lw  	fa0, 148(zero) !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	sw  	fa0, 148(zero) !225
	lw  	fa0, 149(zero) !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	sw  	fa0, 149(zero) !226
	lw  	fa0, 150(zero) !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	sw  	fa0, 150(zero) !227
	lwr 	a6, a3, a0 !1856
	lw  	a6, 4(a6) !490
	lwr 	a6, a6, a5 !1857
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a6) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a6) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a6) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42741: !1922
	addi	a5, a5, 1 !1927
	lwr 	a6, a3, a0 !1912
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.42742 !1913
	lw  	a7, 2(a6) !476
	lwr 	a7, a7, a5 !1891
	blt 	a7, zero, bge_else.42743 !1916
	lwr 	a7, a3, a0 !1896
	lw  	a7, 2(a7) !476
	lwr 	a7, a7, a5 !1891
	lwr 	s1, a2, a0 !1898
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42744 !1898
	lwr 	s1, a4, a0 !1899
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42746 !1899
	addi	s1, a0, -1 !1900
	lwr 	s1, a3, s1 !1900
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42748 !1900
	addi	s1, a0, 1 !1901
	lwr 	s1, a3, s1 !1901
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.42750 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.42751 !1901
beq_else.42750: !1901
	addi	a7, zero, 0 !1903
beq_cont.42751: !1901
	jal 	zero, beq_cont.42749 !1900
beq_else.42748: !1900
	addi	a7, zero, 0 !1904
beq_cont.42749: !1900
	jal 	zero, beq_cont.42747 !1899
beq_else.42746: !1899
	addi	a7, zero, 0 !1905
beq_cont.42747: !1899
	jal 	zero, beq_cont.42745 !1898
beq_else.42744: !1898
	addi	a7, zero, 0 !1906
beq_cont.42745: !1898
	bne 	a7, zero, beq_else.42752 !1918
	lwr 	a0, a3, a0 !1930
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.42753 !1863
	lw  	a1, 2(a0) !476
	lwr 	a1, a1, a5 !1866
	blt 	a1, zero, bge_else.42754 !1866
	lw  	a1, 3(a0) !483
	lwr 	a1, a1, a5 !1868
	sw  	a0, 6(sp) !1868
	sw  	a5, 7(sp) !1868
	beq 	a1, zero, beq_cont.42756 !1868
	lw  	a1, 5(a0) !497
	lw  	a2, 7(a0) !520
	lw  	a3, 1(a0) !468
	lw  	a4, 4(a0) !490
	lwr 	a1, a1, a5 !1831
	lw  	fa0, 0(a1) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a1) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a1) !190
	sw  	fa0, 150(zero) !190
	lw  	a0, 6(a0) !506
	lw  	a0, 0(a0) !508
	lwr 	a1, a2, a5 !1834
	lwr 	a2, a3, a5 !1835
	sw  	a4, 8(sp) !1832
	addi	sp, sp, 12 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -12 !1832
	lw  	a0, 7(sp) !1836
	lw  	a1, 8(sp) !1836
	lwr 	a1, a1, a0 !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a1) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a1) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a1) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42756: !1868
	lw  	a0, 7(sp) !1871
	addi	a1, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42757 !1863
	lw  	a0, 6(sp) !476
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1866
	blt 	a2, zero, bge_else.42758 !1866
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1868
	sw  	a1, 9(sp) !1868
	beq 	a2, zero, beq_cont.42760 !1868
	addi	sp, sp, 12 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -12 !1869
beq_cont.42760: !1868
	lw  	a0, 9(sp) !1871
	addi	a1, a0, 1 !1871
	lw  	a0, 6(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.42758: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42757: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42754: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42753: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.42752: !1918
	lw  	a6, 3(a6) !483
	lwr 	a6, a6, a5 !1922
	sw  	a4, 10(sp) !1922
	sw  	a3, 11(sp) !1922
	sw  	a2, 12(sp) !1922
	sw  	a1, 13(sp) !1922
	sw  	a0, 14(sp) !1922
	sw  	a5, 7(sp) !1922
	beq 	a6, zero, beq_cont.42766 !1922
	addi	a1, a2, 0 !1923
	addi	a2, a3, 0 !1923
	addi	a3, a4, 0 !1923
	addi	a4, a5, 0 !1923
	addi	sp, sp, 16 !1923
	jal 	ra, calc_diffuse_using_5points.2778 !1923
	addi	sp, sp, -16 !1923
beq_cont.42766: !1922
	lw  	a0, 7(sp) !1927
	addi	a5, a0, 1 !1927
	lw  	a0, 14(sp) !1927
	lw  	a1, 13(sp) !1927
	lw  	a2, 12(sp) !1927
	lw  	a3, 11(sp) !1927
	lw  	a4, 10(sp) !1927
	lw  	ra, 0(sp)
	jal 	zero, try_exploit_neighbors.2800 !1927
bge_else.42743: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42742: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42712: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42711: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_diffuse_rays.2815:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42771 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.42772 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 1(sp) !1990
	beq 	a2, zero, beq_cont.42774 !1990
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a3, 7(a0) !520
	sw  	a0, 2(sp) !468
	lw  	a0, 1(a0) !468
	lw  	a2, 179(a2) !1998
	lwr 	a3, a3, a1 !1999
	lwr 	a0, a0, a1 !2000
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 3(sp) !1148
	sw  	a3, 4(sp) !1148
	sw  	a2, 5(sp) !1148
	blt 	a1, zero, bge_cont.42776 !1148
	lw  	a2, 12(a1) !1149
	lw  	a3, 10(a2) !449
	lw  	a4, 1(a2) !260
	lw  	fa0, 0(a0) !1152
	lw  	a5, 5(a2) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !1152
	sw  	fa0, 0(a3) !1152
	lw  	fa0, 1(a0) !1153
	lw  	a5, 5(a2) !348
	lw  	fa1, 1(a5) !353
	fsub	fa0, fa0, fa1 !1153
	sw  	fa0, 1(a3) !1153
	lw  	fa0, 2(a0) !1154
	lw  	a5, 5(a2) !358
	lw  	fa1, 2(a5) !363
	fsub	fa0, fa0, fa1 !1154
	sw  	fa0, 2(a3) !1154
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.42777 !1155
	lw  	a2, 4(a2) !328
	lw  	fa0, 0(a3) !1157
	lw  	fa1, 1(a3) !1157
	lw  	fa2, 2(a3) !1157
	lw  	fa3, 0(a2) !213
	fmul	fa0, fa3, fa0 !213
	lw  	fa3, 1(a2) !213
	fmul	fa1, fa3, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a2) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	sw  	fa0, 3(a3) !1156
	jal 	zero, beq_cont.42778 !1155
beq_else.42777: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.42780 !1158
	lw  	fa0, 0(a3) !1159
	lw  	fa1, 1(a3) !1159
	lw  	fa2, 2(a3) !1159
	fmul	fa3, fa0, fa0 !126
	lw  	a5, 4(a2) !298
	lw  	fa4, 0(a5) !303
	fmul	fa3, fa3, fa4 !844
	fmul	fa4, fa1, fa1 !126
	lw  	a5, 4(a2) !308
	lw  	fa5, 1(a5) !313
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	fmul	fa4, fa2, fa2 !126
	lw  	a5, 4(a2) !318
	lw  	fa5, 2(a5) !323
	fmul	fa4, fa4, fa5 !844
	fadd	fa3, fa3, fa4 !844
	lw  	a5, 3(a2) !289
	bne 	a5, zero, beq_else.42781 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.42782 !846
beq_else.42781: !846
	fmul	fa4, fa1, fa2 !850
	lw  	a5, 9(a2) !418
	lw  	fa5, 0(a5) !423
	fmul	fa4, fa4, fa5 !850
	fadd	fa3, fa3, fa4 !850
	fmul	fa2, fa2, fa0 !851
	lw  	a5, 9(a2) !428
	lw  	fa4, 1(a5) !433
	fmul	fa2, fa2, fa4 !851
	fadd	fa2, fa3, fa2 !851
	fmul	fa0, fa0, fa1 !852
	lw  	a2, 9(a2) !438
	lw  	fa1, 2(a2) !443
	fmul	fa0, fa0, fa1 !852
	fadd	fa0, fa2, fa0 !852
beq_cont.42782: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.42783 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.42784 !1160
beq_else.42783: !1160
beq_cont.42784: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.42780: !1158
beq_cont.42778: !1155
	addi	a1, a1, -1 !1162
	addi	sp, sp, 8 !1162
	jal 	ra, setup_startp_constants.2664 !1162
	addi	sp, sp, -8 !1162
bge_cont.42776: !1148
	addi	a3, zero, 118 !1795
	lw  	a0, 5(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 3(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
	lw  	a0, 2(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a2, 1(sp) !2002
	lwr 	a1, a1, a2 !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42774: !1990
	lw  	a1, 1(sp) !2004
	addi	a1, a1, 1 !2004
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42785 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.42786 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 6(sp) !1990
	beq 	a2, zero, beq_cont.42788 !1990
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a3, 7(a0) !520
	lw  	a0, 1(a0) !468
	lw  	a2, 179(a2) !1998
	sw  	a2, 7(sp) !1999
	lwr 	a2, a3, a1 !1999
	lwr 	a0, a0, a1 !2000
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 8(sp) !1168
	sw  	a2, 9(sp) !1168
	addi	sp, sp, 12 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -12 !1168
	lw  	a0, 7(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 9(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42789 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 12 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -12 !1784
	jal 	zero, beq_cont.42790 !1781
beq_else.42789: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 12 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -12 !1782
beq_cont.42790: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 7(sp) !1786
	lw  	a1, 9(sp) !1786
	lw  	a2, 8(sp) !1786
	addi	sp, sp, 12 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -12 !1786
	lw  	a0, 2(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a2, 6(sp) !2002
	lwr 	a1, a1, a2 !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42788: !1990
	lw  	a1, 6(sp) !2004
	addi	a1, a1, 1 !2004
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42791 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.42792 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 10(sp) !1990
	beq 	a2, zero, beq_cont.42794 !1990
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a3, 7(a0) !520
	lw  	a0, 1(a0) !468
	lw  	a2, 179(a2) !1998
	sw  	a2, 11(sp) !1999
	lwr 	a2, a3, a1 !1999
	lwr 	a0, a0, a1 !2000
	sw  	a0, 12(sp) !1792
	sw  	a2, 13(sp) !1792
	addi	sp, sp, 16 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -16 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 11(sp) !1795
	lw  	a1, 13(sp) !1795
	lw  	a2, 12(sp) !1795
	addi	sp, sp, 16 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -16 !1795
	lw  	a0, 2(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a2, 10(sp) !2002
	lwr 	a1, a1, a2 !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42794: !1990
	lw  	a1, 10(sp) !2004
	addi	a1, a1, 1 !2004
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.42795 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.42796 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 14(sp) !1990
	beq 	a2, zero, beq_cont.42798 !1990
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a3, 7(a0) !520
	lw  	a0, 1(a0) !468
	lw  	a2, 179(a2) !1998
	sw  	a2, 15(sp) !1999
	lwr 	a2, a3, a1 !1999
	lwr 	a0, a0, a1 !2000
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 16(sp) !1168
	sw  	a2, 17(sp) !1168
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	lw  	a0, 15(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 17(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42799 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 20 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -20 !1784
	jal 	zero, beq_cont.42800 !1781
beq_else.42799: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 20 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -20 !1782
beq_cont.42800: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 15(sp) !1786
	lw  	a1, 17(sp) !1786
	lw  	a2, 16(sp) !1786
	addi	sp, sp, 20 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -20 !1786
	lw  	a0, 2(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a2, 14(sp) !2002
	lwr 	a1, a1, a2 !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42798: !1990
	lw  	a1, 14(sp) !2004
	addi	a1, a1, 1 !2004
	lw  	ra, 0(sp)
	jal 	zero, pretrace_diffuse_rays.2815 !2004
bge_else.42796: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42795: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42792: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42791: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42786: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42785: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42772: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42771: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_pixels.2818:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.42809 !2012
	lw  	fa3, 158(zero) !2014
	sw  	a2, 1(sp) !2014
	lw  	a2, 156(zero) !2014
	sub 	a2, a1, a2 !2014
	itof	fa4, a2 !2014
	fmul	fa3, fa3, fa4 !2014
	lw  	fa4, 165(zero) !2015
	fmul	fa4, fa3, fa4 !2015
	sw  	fa0, 2(sp) !2015
	fadd	fa0, fa4, fa0 !2015
	sw  	fa0, 174(zero) !2015
	lw  	fa0, 166(zero) !2016
	fmul	fa0, fa3, fa0 !2016
	fadd	fa0, fa0, fa1 !2016
	sw  	fa0, 175(zero) !2016
	lw  	fa0, 167(zero) !2017
	fmul	fa0, fa3, fa0 !2017
	fadd	fa0, fa0, fa2 !2017
	sw  	fa0, 176(zero) !2017
	lw  	fa0, 174(zero) !199
	fmul	fa0, fa0, fa0 !126
	sw  	fa1, 3(sp) !199
	lw  	fa1, 175(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 176(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.42810 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.42811 !200
beq_else.42810: !200
	li  	fa0, 1.000000 !200
beq_cont.42811: !200
	lw  	fa1, 174(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 174(zero) !201
	lw  	fa1, 175(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 175(zero) !202
	lw  	fa1, 176(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 176(zero) !203
	sw  	zero, 151(zero) !176
	sw  	zero, 152(zero) !177
	sw  	zero, 153(zero) !178
	lw  	fa0, 75(zero) !188
	sw  	fa0, 159(zero) !188
	lw  	fa0, 76(zero) !189
	sw  	fa0, 160(zero) !189
	lw  	fa0, 77(zero) !190
	sw  	fa0, 161(zero) !190
	addi	a2, zero, 0 !2023
	li  	fa0, 1.000000 !2023
	sw  	a0, 4(sp) !2023
	lwr 	a0, a0, a1 !2023
	addi	fa1, zero, 0
	sw  	a1, 5(sp) !0
	addi	a1, zero, 174 !0
	sw  	fa2, 6(sp) !2023
	addi	t0, a2, 0 !2023
	addi	a2, a0, 0 !2023
	addi	a0, t0, 0 !2023
	addi	sp, sp, 8 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -8 !2023
	lw  	a0, 5(sp) !2024
	lw  	a1, 4(sp) !2024
	lwr 	a2, a1, a0 !2024
	lw  	a2, 0(a2) !461
	lw  	fa0, 151(zero) !188
	sw  	fa0, 0(a2) !188
	lw  	fa0, 152(zero) !189
	sw  	fa0, 1(a2) !189
	lw  	fa0, 153(zero) !190
	sw  	fa0, 2(a2) !190
	lwr 	a2, a1, a0 !2025
	lw  	a2, 6(a2) !513
	lw  	a3, 1(sp) !515
	sw  	a3, 0(a2) !515
	lwr 	a2, a1, a0 !2028
	lw  	a4, 2(a2) !476
	lw  	a4, 0(a4) !1891
	blt 	a4, zero, bge_cont.42813 !1987
	lw  	a4, 3(a2) !483
	lw  	a4, 0(a4) !1990
	sw  	a2, 7(sp) !1990
	beq 	a4, zero, beq_cont.42815 !1990
	lw  	a0, 6(a2) !506
	lw  	a0, 0(a0) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a1, 7(a2) !520
	lw  	a2, 1(a2) !468
	lw  	a0, 179(a0) !1998
	sw  	a0, 8(sp) !1999
	lw  	a0, 0(a1) !1999
	sw  	a0, 9(sp) !2000
	lw  	a0, 0(a2) !2000
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 10(sp) !1168
	addi	sp, sp, 12 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -12 !1168
	lw  	a0, 8(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 9(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42816 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 12 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -12 !1784
	jal 	zero, beq_cont.42817 !1781
beq_else.42816: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 12 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -12 !1782
beq_cont.42817: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 8(sp) !1786
	lw  	a1, 9(sp) !1786
	lw  	a2, 10(sp) !1786
	addi	sp, sp, 12 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -12 !1786
	lw  	a0, 7(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a1, 0(a1) !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42815: !1990
	lw  	a0, 7(sp) !476
	lw  	a1, 2(a0) !476
	lw  	a1, 1(a1) !1891
	blt 	a1, zero, bge_cont.42819 !1987
	lw  	a1, 3(a0) !483
	lw  	a1, 1(a1) !1990
	beq 	a1, zero, beq_cont.42821 !1990
	lw  	a1, 6(a0) !506
	lw  	a1, 0(a1) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a2, 7(a0) !520
	lw  	a0, 1(a0) !468
	lw  	a1, 179(a1) !1998
	sw  	a1, 11(sp) !1999
	lw  	a1, 1(a2) !1999
	lw  	a0, 1(a0) !2000
	sw  	a0, 12(sp) !1792
	sw  	a1, 13(sp) !1792
	addi	sp, sp, 16 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -16 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 11(sp) !1795
	lw  	a1, 13(sp) !1795
	lw  	a2, 12(sp) !1795
	addi	sp, sp, 16 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -16 !1795
	lw  	a0, 7(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a1, 1(a1) !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42821: !1990
	lw  	a1, 2(a0) !476
	lw  	a1, 2(a1) !1891
	blt 	a1, zero, bge_cont.42823 !1987
	lw  	a1, 3(a0) !483
	lw  	a1, 2(a1) !1990
	beq 	a1, zero, beq_cont.42825 !1990
	lw  	a1, 6(a0) !506
	lw  	a1, 0(a1) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a2, 7(a0) !520
	lw  	a0, 1(a0) !468
	lw  	a1, 179(a1) !1998
	sw  	a1, 14(sp) !1999
	lw  	a1, 2(a2) !1999
	lw  	a0, 2(a0) !2000
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	sw  	a1, 15(sp) !1168
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 16(sp) !1168
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	lw  	a0, 14(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 15(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42826 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 20 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -20 !1784
	jal 	zero, beq_cont.42827 !1781
beq_else.42826: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 20 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -20 !1782
beq_cont.42827: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 14(sp) !1786
	lw  	a1, 15(sp) !1786
	lw  	a2, 16(sp) !1786
	addi	sp, sp, 20 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -20 !1786
	lw  	a0, 7(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a1, 2(a1) !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42825: !1990
	addi	a1, zero, 3 !2004
	addi	sp, sp, 20 !2004
	jal 	ra, pretrace_diffuse_rays.2815 !2004
	addi	sp, sp, -20 !2004
bge_cont.42823: !1987
bge_cont.42819: !1987
bge_cont.42813: !1987
	lw  	a0, 5(sp) !2030
	addi	a0, a0, -1 !2030
	lw  	a1, 1(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.42828 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.42829 !160
bge_else.42828: !160
bge_cont.42829: !160
	blt 	a0, zero, bge_else.42830 !2012
	lw  	fa0, 158(zero) !2014
	sw  	a1, 17(sp) !2014
	lw  	a1, 156(zero) !2014
	sub 	a1, a0, a1 !2014
	itof	fa1, a1 !2014
	fmul	fa0, fa0, fa1 !2014
	lw  	fa1, 165(zero) !2015
	fmul	fa1, fa0, fa1 !2015
	lw  	fa2, 2(sp) !2015
	fadd	fa1, fa1, fa2 !2015
	sw  	fa1, 174(zero) !2015
	lw  	fa1, 166(zero) !2016
	fmul	fa1, fa0, fa1 !2016
	lw  	fa2, 3(sp) !2016
	fadd	fa1, fa1, fa2 !2016
	sw  	fa1, 175(zero) !2016
	lw  	fa1, 167(zero) !2017
	fmul	fa0, fa0, fa1 !2017
	lw  	fa1, 6(sp) !2017
	fadd	fa0, fa0, fa1 !2017
	sw  	fa0, 176(zero) !2017
	lw  	fa0, 174(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 175(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 176(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.42831 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.42832 !200
beq_else.42831: !200
	li  	fa0, 1.000000 !200
beq_cont.42832: !200
	lw  	fa1, 174(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 174(zero) !201
	lw  	fa1, 175(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 175(zero) !202
	lw  	fa1, 176(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 176(zero) !203
	sw  	zero, 151(zero) !176
	sw  	zero, 152(zero) !177
	sw  	zero, 153(zero) !178
	lw  	fa0, 75(zero) !188
	sw  	fa0, 159(zero) !188
	lw  	fa0, 76(zero) !189
	sw  	fa0, 160(zero) !189
	lw  	fa0, 77(zero) !190
	sw  	fa0, 161(zero) !190
	addi	a1, zero, 0 !2023
	li  	fa0, 1.000000 !2023
	lw  	a2, 4(sp) !2023
	lwr 	a2, a2, a0 !2023
	addi	fa1, zero, 0
	sw  	a0, 18(sp) !0
	addi	a0, zero, 174 !0
	addi	t0, a1, 0 !2023
	addi	a1, a0, 0 !2023
	addi	a0, t0, 0 !2023
	addi	sp, sp, 20 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -20 !2023
	lw  	a0, 18(sp) !2024
	lw  	a1, 4(sp) !2024
	lwr 	a2, a1, a0 !2024
	lw  	a2, 0(a2) !461
	lw  	fa0, 151(zero) !188
	sw  	fa0, 0(a2) !188
	lw  	fa0, 152(zero) !189
	sw  	fa0, 1(a2) !189
	lw  	fa0, 153(zero) !190
	sw  	fa0, 2(a2) !190
	lwr 	a2, a1, a0 !2025
	lw  	a2, 6(a2) !513
	lw  	a3, 17(sp) !515
	sw  	a3, 0(a2) !515
	lwr 	a2, a1, a0 !2028
	lw  	a4, 2(a2) !476
	lw  	a4, 0(a4) !1891
	blt 	a4, zero, bge_cont.42834 !1987
	lw  	a4, 3(a2) !483
	lw  	a4, 0(a4) !1990
	sw  	a2, 19(sp) !1990
	beq 	a4, zero, beq_cont.42836 !1990
	lw  	a0, 6(a2) !506
	lw  	a0, 0(a0) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a1, 7(a2) !520
	lw  	a2, 1(a2) !468
	lw  	a0, 179(a0) !1998
	sw  	a0, 20(sp) !1999
	lw  	a0, 0(a1) !1999
	sw  	a0, 21(sp) !2000
	lw  	a0, 0(a2) !2000
	sw  	a0, 22(sp) !1792
	addi	sp, sp, 24 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -24 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 20(sp) !1795
	lw  	a1, 21(sp) !1795
	lw  	a2, 22(sp) !1795
	addi	sp, sp, 24 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -24 !1795
	lw  	a0, 19(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a1, 0(a1) !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42836: !1990
	lw  	a0, 19(sp) !476
	lw  	a1, 2(a0) !476
	lw  	a1, 1(a1) !1891
	blt 	a1, zero, bge_cont.42838 !1987
	lw  	a1, 3(a0) !483
	lw  	a1, 1(a1) !1990
	beq 	a1, zero, beq_cont.42840 !1990
	lw  	a1, 6(a0) !506
	lw  	a1, 0(a1) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a2, 7(a0) !520
	lw  	a0, 1(a0) !468
	lw  	a1, 179(a1) !1998
	sw  	a1, 23(sp) !1999
	lw  	a1, 1(a2) !1999
	lw  	a0, 1(a0) !2000
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	sw  	a1, 24(sp) !1168
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 25(sp) !1168
	addi	sp, sp, 28 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -28 !1168
	lw  	a0, 23(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 24(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42841 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 28 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -28 !1784
	jal 	zero, beq_cont.42842 !1781
beq_else.42841: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 28 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -28 !1782
beq_cont.42842: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 23(sp) !1786
	lw  	a1, 24(sp) !1786
	lw  	a2, 25(sp) !1786
	addi	sp, sp, 28 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -28 !1786
	lw  	a0, 19(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a1, 1(a1) !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42840: !1990
	addi	a1, zero, 2 !2004
	addi	sp, sp, 28 !2004
	jal 	ra, pretrace_diffuse_rays.2815 !2004
	addi	sp, sp, -28 !2004
bge_cont.42838: !1987
bge_cont.42834: !1987
	lw  	a0, 18(sp) !2030
	addi	a1, a0, -1 !2030
	lw  	a0, 17(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.42843 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.42844 !160
bge_else.42843: !160
	addi	a2, a0, 0 !160
bge_cont.42844: !160
	lw  	fa0, 2(sp) !2030
	lw  	fa1, 3(sp) !2030
	lw  	fa2, 6(sp) !2030
	lw  	a0, 4(sp) !2030
	lw  	ra, 0(sp)
	jal 	zero, pretrace_pixels.2818 !2030
bge_else.42830: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42809: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_line.2825:
	sw  	ra, 0(sp)
	lw  	fa0, 158(zero) !2037
	sw  	a2, 1(sp) !2037
	lw  	a2, 157(zero) !2037
	sub 	a1, a1, a2 !2037
	itof	fa1, a1 !2037
	fmul	fa0, fa0, fa1 !2037
	lw  	fa1, 168(zero) !2040
	fmul	fa1, fa0, fa1 !2040
	lw  	fa2, 171(zero) !2040
	fadd	fa1, fa1, fa2 !2040
	lw  	fa2, 169(zero) !2041
	fmul	fa2, fa0, fa2 !2041
	lw  	fa3, 172(zero) !2041
	fadd	fa2, fa2, fa3 !2041
	lw  	fa3, 170(zero) !2042
	fmul	fa0, fa0, fa3 !2042
	lw  	fa3, 173(zero) !2042
	fadd	fa0, fa0, fa3 !2042
	lw  	a1, 154(zero) !2043
	addi	a1, a1, -1 !2043
	blt 	a1, zero, bge_else.42847 !2012
	lw  	fa3, 158(zero) !2014
	lw  	a2, 156(zero) !2014
	sub 	a2, a1, a2 !2014
	itof	fa4, a2 !2014
	fmul	fa3, fa3, fa4 !2014
	lw  	fa4, 165(zero) !2015
	fmul	fa4, fa3, fa4 !2015
	sw  	fa1, 2(sp) !2015
	fadd	fa1, fa4, fa1 !2015
	sw  	fa1, 174(zero) !2015
	lw  	fa1, 166(zero) !2016
	fmul	fa1, fa3, fa1 !2016
	fadd	fa1, fa1, fa2 !2016
	sw  	fa1, 175(zero) !2016
	lw  	fa1, 167(zero) !2017
	fmul	fa1, fa3, fa1 !2017
	sw  	fa0, 3(sp) !2017
	fadd	fa0, fa1, fa0 !2017
	sw  	fa0, 176(zero) !2017
	lw  	fa0, 174(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 175(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 176(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.42848 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.42849 !200
beq_else.42848: !200
	li  	fa0, 1.000000 !200
beq_cont.42849: !200
	lw  	fa1, 174(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 174(zero) !201
	lw  	fa1, 175(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 175(zero) !202
	lw  	fa1, 176(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 176(zero) !203
	sw  	zero, 151(zero) !176
	sw  	zero, 152(zero) !177
	sw  	zero, 153(zero) !178
	lw  	fa0, 75(zero) !188
	sw  	fa0, 159(zero) !188
	lw  	fa0, 76(zero) !189
	sw  	fa0, 160(zero) !189
	lw  	fa0, 77(zero) !190
	sw  	fa0, 161(zero) !190
	addi	a2, zero, 0 !2023
	li  	fa0, 1.000000 !2023
	sw  	a0, 4(sp) !2023
	lwr 	a0, a0, a1 !2023
	addi	fa1, zero, 0
	sw  	a1, 5(sp) !0
	addi	a1, zero, 174 !0
	sw  	fa2, 6(sp) !2023
	addi	t0, a2, 0 !2023
	addi	a2, a0, 0 !2023
	addi	a0, t0, 0 !2023
	addi	sp, sp, 8 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -8 !2023
	lw  	a0, 5(sp) !2024
	lw  	a1, 4(sp) !2024
	lwr 	a2, a1, a0 !2024
	lw  	a2, 0(a2) !461
	lw  	fa0, 151(zero) !188
	sw  	fa0, 0(a2) !188
	lw  	fa0, 152(zero) !189
	sw  	fa0, 1(a2) !189
	lw  	fa0, 153(zero) !190
	sw  	fa0, 2(a2) !190
	lwr 	a2, a1, a0 !2025
	lw  	a2, 6(a2) !513
	lw  	a3, 1(sp) !515
	sw  	a3, 0(a2) !515
	lwr 	a2, a1, a0 !2028
	lw  	a4, 2(a2) !476
	lw  	a4, 0(a4) !1891
	blt 	a4, zero, bge_cont.42851 !1987
	lw  	a4, 3(a2) !483
	lw  	a4, 0(a4) !1990
	sw  	a2, 7(sp) !1990
	beq 	a4, zero, beq_cont.42853 !1990
	lw  	a0, 6(a2) !506
	lw  	a0, 0(a0) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a1, 7(a2) !520
	lw  	a2, 1(a2) !468
	lw  	a0, 179(a0) !1998
	sw  	a0, 8(sp) !1999
	lw  	a0, 0(a1) !1999
	sw  	a0, 9(sp) !2000
	lw  	a0, 0(a2) !2000
	sw  	a0, 10(sp) !1792
	addi	sp, sp, 12 !1792
	jal 	ra, setup_startp.2667 !1792
	addi	sp, sp, -12 !1792
	addi	a3, zero, 118 !1795
	lw  	a0, 8(sp) !1795
	lw  	a1, 9(sp) !1795
	lw  	a2, 10(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
	lw  	a0, 7(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a1, 0(a1) !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42853: !1990
	lw  	a0, 7(sp) !476
	lw  	a1, 2(a0) !476
	lw  	a1, 1(a1) !1891
	blt 	a1, zero, bge_cont.42855 !1987
	lw  	a1, 3(a0) !483
	lw  	a1, 1(a1) !1990
	beq 	a1, zero, beq_cont.42857 !1990
	lw  	a1, 6(a0) !506
	lw  	a1, 0(a1) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a2, 7(a0) !520
	lw  	a0, 1(a0) !468
	lw  	a1, 179(a1) !1998
	sw  	a1, 11(sp) !1999
	lw  	a1, 1(a2) !1999
	lw  	a0, 1(a0) !2000
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	sw  	a1, 12(sp) !1168
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 13(sp) !1168
	addi	sp, sp, 16 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -16 !1168
	lw  	a0, 11(sp) !1778
	lw  	a1, 118(a0) !1778
	lw  	a1, 0(a1) !529
	lw  	fa0, 0(a1) !208
	lw  	a2, 12(sp) !208
	lw  	fa1, 0(a2) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a1) !208
	lw  	fa2, 1(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a1) !208
	lw  	fa2, 2(a2) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	flt 	a1, fa0, zero !123
	bne 	a1, zero, beq_else.42858 !1781
	lw  	a0, 118(a0) !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	addi	sp, sp, 16 !1784
	jal 	ra, trace_diffuse_ray.2759 !1784
	addi	sp, sp, -16 !1784
	jal 	zero, beq_cont.42859 !1781
beq_else.42858: !1781
	lw  	a0, 119(a0) !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	addi	sp, sp, 16 !1782
	jal 	ra, trace_diffuse_ray.2759 !1782
	addi	sp, sp, -16 !1782
beq_cont.42859: !1781
	addi	a3, zero, 116 !1786
	lw  	a0, 11(sp) !1786
	lw  	a1, 12(sp) !1786
	lw  	a2, 13(sp) !1786
	addi	sp, sp, 16 !1786
	jal 	ra, iter_trace_diffuse_rays.2762 !1786
	addi	sp, sp, -16 !1786
	lw  	a0, 7(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a1, 1(a1) !2002
	lw  	fa0, 148(zero) !188
	sw  	fa0, 0(a1) !188
	lw  	fa0, 149(zero) !189
	sw  	fa0, 1(a1) !189
	lw  	fa0, 150(zero) !190
	sw  	fa0, 2(a1) !190
beq_cont.42857: !1990
	addi	a1, zero, 2 !2004
	addi	sp, sp, 16 !2004
	jal 	ra, pretrace_diffuse_rays.2815 !2004
	addi	sp, sp, -16 !2004
bge_cont.42855: !1987
bge_cont.42851: !1987
	lw  	a0, 5(sp) !2030
	addi	a1, a0, -1 !2030
	lw  	a0, 1(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.42860 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.42861 !160
bge_else.42860: !160
	addi	a2, a0, 0 !160
bge_cont.42861: !160
	lw  	fa0, 2(sp) !2030
	lw  	fa1, 6(sp) !2030
	lw  	fa2, 3(sp) !2030
	lw  	a0, 4(sp) !2030
	lw  	ra, 0(sp)
	jal 	zero, pretrace_pixels.2818 !2030
bge_else.42847: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
scan_pixel.2829:
	sw  	ra, 0(sp)
	lw  	a6, 154(zero) !2051
	blt 	a0, a6, bge_else.42863 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42863: !2051
	lwr 	a6, a3, a0 !2054
	lw  	a6, 0(a6) !461
	lw  	fa0, 0(a6) !188
	sw  	fa0, 151(zero) !188
	lw  	fa0, 1(a6) !189
	sw  	fa0, 152(zero) !189
	lw  	fa0, 2(a6) !190
	sw  	fa0, 153(zero) !190
	lw  	a6, 155(zero) !1878
	addi	a7, a1, 1 !1878
	blt 	a7, a6, bge_else.42865 !1878
	addi	a6, zero, 0 !1886
	jal 	zero, bge_cont.42866 !1878
bge_else.42865: !1878
	blt 	zero, a1, bge_else.42867 !1879
	addi	a6, zero, 0 !1885
	jal 	zero, bge_cont.42868 !1879
bge_else.42867: !1879
	lw  	a6, 154(zero) !1880
	addi	a7, a0, 1 !1880
	blt 	a7, a6, bge_else.42869 !1880
	addi	a6, zero, 0 !1884
	jal 	zero, bge_cont.42870 !1880
bge_else.42869: !1880
	blt 	zero, a0, bge_else.42871 !1881
	addi	a6, zero, 0 !1883
	jal 	zero, bge_cont.42872 !1881
bge_else.42871: !1881
	addi	a6, zero, 1 !1882
bge_cont.42872: !1881
bge_cont.42870: !1880
bge_cont.42868: !1879
bge_cont.42866: !1878
	sw  	a4, 1(sp) !2057
	sw  	a2, 2(sp) !2057
	sw  	a1, 3(sp) !2057
	sw  	a3, 4(sp) !2057
	sw  	a0, 5(sp) !2057
	sw  	a5, 6(sp) !2057
	bne 	a6, zero, beq_else.42873 !2057
	lwr 	a6, a3, a0 !2060
	addi	a7, zero, 0 !2060
	lw  	s1, 2(a6) !476
	lw  	s1, 0(s1) !1866
	blt 	s1, zero, bge_cont.42876 !1866
	lw  	s1, 3(a6) !483
	lw  	s1, 0(s1) !1868
	sw  	a6, 7(sp) !1868
	beq 	s1, zero, beq_cont.42878 !1868
	addi	a1, a7, 0 !1869
	addi	a0, a6, 0 !1869
	addi	sp, sp, 8 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -8 !1869
beq_cont.42878: !1868
	lw  	a0, 7(sp) !476
	lw  	a1, 2(a0) !476
	lw  	a1, 1(a1) !1866
	blt 	a1, zero, bge_cont.42880 !1866
	lw  	a1, 3(a0) !483
	lw  	a1, 1(a1) !1868
	beq 	a1, zero, beq_cont.42882 !1868
	lw  	a1, 5(a0) !497
	lw  	a2, 7(a0) !520
	lw  	a3, 1(a0) !468
	lw  	a4, 4(a0) !490
	lw  	a1, 1(a1) !1831
	lw  	fa0, 0(a1) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a1) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a1) !190
	sw  	fa0, 150(zero) !190
	lw  	a0, 6(a0) !506
	lw  	a0, 0(a0) !508
	lw  	a1, 1(a2) !1834
	lw  	a2, 1(a3) !1835
	sw  	a4, 8(sp) !1832
	addi	sp, sp, 12 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -12 !1832
	lw  	a0, 8(sp) !1836
	lw  	a0, 1(a0) !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a0) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a0) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a0) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42882: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 7(sp) !476
	lw  	a2, 2(a0) !476
	lw  	a2, 2(a2) !1866
	blt 	a2, zero, bge_cont.42884 !1866
	lw  	a2, 3(a0) !483
	lw  	a2, 2(a2) !1868
	beq 	a2, zero, beq_cont.42886 !1868
	addi	sp, sp, 12 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -12 !1869
beq_cont.42886: !1868
	addi	a1, zero, 3 !1871
	lw  	a0, 7(sp) !1871
	addi	sp, sp, 12 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -12 !1871
bge_cont.42884: !1866
bge_cont.42880: !1866
bge_cont.42876: !1866
	jal 	zero, beq_cont.42874 !2057
beq_else.42873: !2057
	addi	a6, zero, 0 !2058
	lwr 	a7, a3, a0 !1912
	lw  	s1, 2(a7) !476
	lw  	s1, 0(s1) !1891
	blt 	s1, zero, bge_cont.42888 !1916
	lwr 	s1, a3, a0 !1896
	lw  	s1, 2(s1) !476
	lw  	s1, 0(s1) !1891
	lwr 	s2, a2, a0 !1898
	lw  	s2, 2(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.42889 !1898
	lwr 	s2, a4, a0 !1899
	lw  	s2, 2(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.42891 !1899
	addi	s2, a0, -1 !1900
	lwr 	s2, a3, s2 !1900
	lw  	s2, 2(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.42893 !1900
	addi	s2, a0, 1 !1901
	lwr 	s2, a3, s2 !1901
	lw  	s2, 2(s2) !476
	lw  	s2, 0(s2) !1891
	bne 	s2, s1, beq_else.42895 !1901
	addi	s1, zero, 1 !1902
	jal 	zero, beq_cont.42896 !1901
beq_else.42895: !1901
	addi	s1, zero, 0 !1903
beq_cont.42896: !1901
	jal 	zero, beq_cont.42894 !1900
beq_else.42893: !1900
	addi	s1, zero, 0 !1904
beq_cont.42894: !1900
	jal 	zero, beq_cont.42892 !1899
beq_else.42891: !1899
	addi	s1, zero, 0 !1905
beq_cont.42892: !1899
	jal 	zero, beq_cont.42890 !1898
beq_else.42889: !1898
	addi	s1, zero, 0 !1906
beq_cont.42890: !1898
	bne 	s1, zero, beq_else.42897 !1918
	lwr 	a6, a3, a0 !1930
	lw  	a7, 2(a6) !476
	lw  	a7, 0(a7) !1866
	blt 	a7, zero, bge_cont.42900 !1866
	lw  	a7, 3(a6) !483
	lw  	a7, 0(a7) !1868
	sw  	a6, 9(sp) !1868
	beq 	a7, zero, beq_cont.42902 !1868
	lw  	a0, 5(a6) !497
	lw  	a1, 7(a6) !520
	lw  	a2, 1(a6) !468
	lw  	a3, 4(a6) !490
	lw  	a0, 0(a0) !1831
	lw  	fa0, 0(a0) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 150(zero) !190
	lw  	a0, 6(a6) !506
	lw  	a0, 0(a0) !508
	lw  	a1, 0(a1) !1834
	lw  	a2, 0(a2) !1835
	sw  	a3, 10(sp) !1832
	addi	sp, sp, 12 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -12 !1832
	lw  	a0, 10(sp) !1836
	lw  	a0, 0(a0) !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a0) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a0) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a0) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42902: !1868
	addi	a1, zero, 1 !1871
	lw  	a0, 9(sp) !476
	lw  	a2, 2(a0) !476
	lw  	a2, 1(a2) !1866
	blt 	a2, zero, bge_cont.42904 !1866
	lw  	a2, 3(a0) !483
	lw  	a2, 1(a2) !1868
	beq 	a2, zero, beq_cont.42906 !1868
	addi	sp, sp, 12 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -12 !1869
beq_cont.42906: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 9(sp) !1871
	addi	sp, sp, 12 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -12 !1871
bge_cont.42904: !1866
bge_cont.42900: !1866
	jal 	zero, beq_cont.42898 !1918
beq_else.42897: !1918
	lw  	a5, 3(a7) !483
	lw  	a5, 0(a5) !1922
	beq 	a5, zero, beq_cont.42908 !1922
	addi	a1, a2, 0 !1923
	addi	a2, a3, 0 !1923
	addi	a3, a4, 0 !1923
	addi	a4, a6, 0 !1923
	addi	sp, sp, 12 !1923
	jal 	ra, calc_diffuse_using_5points.2778 !1923
	addi	sp, sp, -12 !1923
beq_cont.42908: !1922
	addi	a5, zero, 1 !1927
	lw  	a0, 5(sp) !1927
	lw  	a1, 3(sp) !1927
	lw  	a2, 2(sp) !1927
	lw  	a3, 4(sp) !1927
	lw  	a4, 1(sp) !1927
	addi	sp, sp, 12 !1927
	jal 	ra, try_exploit_neighbors.2800 !1927
	addi	sp, sp, -12 !1927
beq_cont.42898: !1918
bge_cont.42888: !1916
beq_cont.42874: !2057
	lw  	a0, 6(sp) !1963
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.42909 !1963
	lw  	fa0, 151(zero) !1964
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42911 !1952
	blt 	a0, zero, bge_else.42913 !1952
	jal 	zero, bge_cont.42912 !1952
bge_else.42913: !1952
	addi	a0, zero, 0 !1952
bge_cont.42914: !1952
	jal 	zero, bge_cont.42912 !1952
bge_else.42911: !1952
	addi	a0, zero, 255 !1952
bge_cont.42912: !1952
	addi	sp, sp, 12 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -12 !1953
	addi	a0, zero, 32 !1965
	addi	sp, sp, 12 !1965
	jal 	ra, print_char !1965
	addi	sp, sp, -12 !1965
	lw  	fa0, 152(zero) !1966
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42915 !1952
	blt 	a0, zero, bge_else.42917 !1952
	jal 	zero, bge_cont.42916 !1952
bge_else.42917: !1952
	addi	a0, zero, 0 !1952
bge_cont.42918: !1952
	jal 	zero, bge_cont.42916 !1952
bge_else.42915: !1952
	addi	a0, zero, 255 !1952
bge_cont.42916: !1952
	addi	sp, sp, 12 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -12 !1953
	addi	a0, zero, 32 !1967
	addi	sp, sp, 12 !1967
	jal 	ra, print_char !1967
	addi	sp, sp, -12 !1967
	lw  	fa0, 153(zero) !1968
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42919 !1952
	blt 	a0, zero, bge_else.42921 !1952
	jal 	zero, bge_cont.42920 !1952
bge_else.42921: !1952
	addi	a0, zero, 0 !1952
bge_cont.42922: !1952
	jal 	zero, bge_cont.42920 !1952
bge_else.42919: !1952
	addi	a0, zero, 255 !1952
bge_cont.42920: !1952
	addi	sp, sp, 12 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -12 !1953
	addi	a0, zero, 10 !1969
	addi	sp, sp, 12 !1969
	jal 	ra, print_char !1969
	addi	sp, sp, -12 !1969
	jal 	zero, beq_cont.42910 !1963
beq_else.42909: !1963
	lw  	fa0, 151(zero) !1971
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42923 !1958
	blt 	a0, zero, bge_else.42925 !1958
	jal 	zero, bge_cont.42924 !1958
bge_else.42925: !1958
	addi	a0, zero, 0 !1958
bge_cont.42926: !1958
	jal 	zero, bge_cont.42924 !1958
bge_else.42923: !1958
	addi	a0, zero, 255 !1958
bge_cont.42924: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
	lw  	fa0, 152(zero) !1972
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42927 !1958
	blt 	a0, zero, bge_else.42929 !1958
	jal 	zero, bge_cont.42928 !1958
bge_else.42929: !1958
	addi	a0, zero, 0 !1958
bge_cont.42930: !1958
	jal 	zero, bge_cont.42928 !1958
bge_else.42927: !1958
	addi	a0, zero, 255 !1958
bge_cont.42928: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
	lw  	fa0, 153(zero) !1973
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42931 !1958
	blt 	a0, zero, bge_else.42933 !1958
	jal 	zero, bge_cont.42932 !1958
bge_else.42933: !1958
	addi	a0, zero, 0 !1958
bge_cont.42934: !1958
	jal 	zero, bge_cont.42932 !1958
bge_else.42931: !1958
	addi	a0, zero, 255 !1958
bge_cont.42932: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
beq_cont.42910: !1963
	lw  	a0, 5(sp) !2065
	addi	a0, a0, 1 !2065
	lw  	a1, 154(zero) !2051
	blt 	a0, a1, bge_else.42935 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42935: !2051
	lw  	a3, 4(sp) !2054
	lwr 	a1, a3, a0 !2054
	lw  	a1, 0(a1) !461
	lw  	fa0, 0(a1) !188
	sw  	fa0, 151(zero) !188
	lw  	fa0, 1(a1) !189
	sw  	fa0, 152(zero) !189
	lw  	fa0, 2(a1) !190
	sw  	fa0, 153(zero) !190
	lw  	a1, 155(zero) !1878
	lw  	a2, 3(sp) !1878
	addi	a4, a2, 1 !1878
	blt 	a4, a1, bge_else.42937 !1878
	addi	a1, zero, 0 !1886
	jal 	zero, bge_cont.42938 !1878
bge_else.42937: !1878
	blt 	zero, a2, bge_else.42939 !1879
	addi	a1, zero, 0 !1885
	jal 	zero, bge_cont.42940 !1879
bge_else.42939: !1879
	lw  	a1, 154(zero) !1880
	addi	a4, a0, 1 !1880
	blt 	a4, a1, bge_else.42941 !1880
	addi	a1, zero, 0 !1884
	jal 	zero, bge_cont.42942 !1880
bge_else.42941: !1880
	blt 	zero, a0, bge_else.42943 !1881
	addi	a1, zero, 0 !1883
	jal 	zero, bge_cont.42944 !1881
bge_else.42943: !1881
	addi	a1, zero, 1 !1882
bge_cont.42944: !1881
bge_cont.42942: !1880
bge_cont.42940: !1879
bge_cont.42938: !1878
	sw  	a0, 11(sp) !2057
	bne 	a1, zero, beq_else.42945 !2057
	lwr 	a1, a3, a0 !2060
	lw  	a4, 2(a1) !476
	lw  	a4, 0(a4) !1866
	blt 	a4, zero, bge_cont.42948 !1866
	lw  	a4, 3(a1) !483
	lw  	a4, 0(a4) !1868
	sw  	a1, 12(sp) !1868
	beq 	a4, zero, beq_cont.42950 !1868
	lw  	a0, 5(a1) !497
	lw  	a2, 7(a1) !520
	lw  	a3, 1(a1) !468
	lw  	a4, 4(a1) !490
	lw  	a0, 0(a0) !1831
	lw  	fa0, 0(a0) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 150(zero) !190
	lw  	a0, 6(a1) !506
	lw  	a0, 0(a0) !508
	lw  	a1, 0(a2) !1834
	lw  	a2, 0(a3) !1835
	sw  	a4, 13(sp) !1832
	addi	sp, sp, 16 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -16 !1832
	lw  	a0, 13(sp) !1836
	lw  	a0, 0(a0) !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a0) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a0) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a0) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42950: !1868
	addi	a1, zero, 1 !1871
	lw  	a0, 12(sp) !476
	lw  	a2, 2(a0) !476
	lw  	a2, 1(a2) !1866
	blt 	a2, zero, bge_cont.42952 !1866
	lw  	a2, 3(a0) !483
	lw  	a2, 1(a2) !1868
	beq 	a2, zero, beq_cont.42954 !1868
	addi	sp, sp, 16 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -16 !1869
beq_cont.42954: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 12(sp) !1871
	addi	sp, sp, 16 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -16 !1871
bge_cont.42952: !1866
bge_cont.42948: !1866
	jal 	zero, beq_cont.42946 !2057
beq_else.42945: !2057
	addi	a5, zero, 0 !2058
	lw  	a1, 2(sp) !2058
	lw  	a4, 1(sp) !2058
	addi	t0, a2, 0 !2058
	addi	a2, a1, 0 !2058
	addi	a1, t0, 0 !2058
	addi	sp, sp, 16 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -16 !2058
beq_cont.42946: !2057
	lw  	a0, 6(sp) !1963
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.42955 !1963
	lw  	fa0, 151(zero) !1964
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42957 !1952
	blt 	a0, zero, bge_else.42959 !1952
	jal 	zero, bge_cont.42958 !1952
bge_else.42959: !1952
	addi	a0, zero, 0 !1952
bge_cont.42960: !1952
	jal 	zero, bge_cont.42958 !1952
bge_else.42957: !1952
	addi	a0, zero, 255 !1952
bge_cont.42958: !1952
	addi	sp, sp, 16 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -16 !1953
	addi	a0, zero, 32 !1965
	addi	sp, sp, 16 !1965
	jal 	ra, print_char !1965
	addi	sp, sp, -16 !1965
	lw  	fa0, 152(zero) !1966
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42961 !1952
	blt 	a0, zero, bge_else.42963 !1952
	jal 	zero, bge_cont.42962 !1952
bge_else.42963: !1952
	addi	a0, zero, 0 !1952
bge_cont.42964: !1952
	jal 	zero, bge_cont.42962 !1952
bge_else.42961: !1952
	addi	a0, zero, 255 !1952
bge_cont.42962: !1952
	addi	sp, sp, 16 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -16 !1953
	addi	a0, zero, 32 !1967
	addi	sp, sp, 16 !1967
	jal 	ra, print_char !1967
	addi	sp, sp, -16 !1967
	lw  	fa0, 153(zero) !1968
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42965 !1952
	blt 	a0, zero, bge_else.42967 !1952
	jal 	zero, bge_cont.42966 !1952
bge_else.42967: !1952
	addi	a0, zero, 0 !1952
bge_cont.42968: !1952
	jal 	zero, bge_cont.42966 !1952
bge_else.42965: !1952
	addi	a0, zero, 255 !1952
bge_cont.42966: !1952
	addi	sp, sp, 16 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -16 !1953
	addi	a0, zero, 10 !1969
	addi	sp, sp, 16 !1969
	jal 	ra, print_char !1969
	addi	sp, sp, -16 !1969
	jal 	zero, beq_cont.42956 !1963
beq_else.42955: !1963
	lw  	fa0, 151(zero) !1971
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42969 !1958
	blt 	a0, zero, bge_else.42971 !1958
	jal 	zero, bge_cont.42970 !1958
bge_else.42971: !1958
	addi	a0, zero, 0 !1958
bge_cont.42972: !1958
	jal 	zero, bge_cont.42970 !1958
bge_else.42969: !1958
	addi	a0, zero, 255 !1958
bge_cont.42970: !1958
	addi	sp, sp, 16 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -16 !1959
	lw  	fa0, 152(zero) !1972
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42973 !1958
	blt 	a0, zero, bge_else.42975 !1958
	jal 	zero, bge_cont.42974 !1958
bge_else.42975: !1958
	addi	a0, zero, 0 !1958
bge_cont.42976: !1958
	jal 	zero, bge_cont.42974 !1958
bge_else.42973: !1958
	addi	a0, zero, 255 !1958
bge_cont.42974: !1958
	addi	sp, sp, 16 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -16 !1959
	lw  	fa0, 153(zero) !1973
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.42977 !1958
	blt 	a0, zero, bge_else.42979 !1958
	jal 	zero, bge_cont.42978 !1958
bge_else.42979: !1958
	addi	a0, zero, 0 !1958
bge_cont.42980: !1958
	jal 	zero, bge_cont.42978 !1958
bge_else.42977: !1958
	addi	a0, zero, 255 !1958
bge_cont.42978: !1958
	addi	sp, sp, 16 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -16 !1959
beq_cont.42956: !1963
	lw  	a0, 11(sp) !2065
	addi	a0, a0, 1 !2065
	lw  	a1, 3(sp) !2065
	lw  	a2, 2(sp) !2065
	lw  	a3, 4(sp) !2065
	lw  	a4, 1(sp) !2065
	lw  	a5, 6(sp) !2065
	lw  	ra, 0(sp)
	jal 	zero, scan_pixel.2829 !2065
scan_line.2836:
	sw  	ra, 0(sp)
	lw  	a6, 155(zero) !2072
	blt 	a0, a6, bge_else.42981 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.42981: !2072
	lw  	a6, 155(zero) !2074
	addi	a6, a6, -1 !2074
	sw  	a4, 1(sp) !2074
	sw  	a5, 2(sp) !2074
	sw  	a3, 3(sp) !2074
	sw  	a1, 4(sp) !2074
	sw  	a0, 5(sp) !2074
	sw  	a2, 6(sp) !2074
	bge 	a0, a6, bge_cont.42984 !2074
	addi	a0, a0, 1 !2075
	lw  	fa0, 158(zero) !2037
	lw  	a1, 157(zero) !2037
	sub 	a0, a0, a1 !2037
	itof	fa1, a0 !2037
	fmul	fa0, fa0, fa1 !2037
	lw  	fa1, 168(zero) !2040
	fmul	fa1, fa0, fa1 !2040
	lw  	fa2, 171(zero) !2040
	fadd	fa1, fa1, fa2 !2040
	lw  	fa2, 169(zero) !2041
	fmul	fa2, fa0, fa2 !2041
	lw  	fa3, 172(zero) !2041
	fadd	fa2, fa2, fa3 !2041
	lw  	fa3, 170(zero) !2042
	fmul	fa0, fa0, fa3 !2042
	lw  	fa3, 173(zero) !2042
	fadd	fa0, fa0, fa3 !2042
	lw  	a0, 154(zero) !2043
	addi	a1, a0, -1 !2043
	addi	a2, a4, 0 !2043
	addi	a0, a3, 0 !2043
	fsgnj   t0, fa2, fa2 !2043
	fsgnj   fa2, fa0, fa0 !2043
	fsgnj   fa0, fa1, fa1 !2043
	fsgnj   fa1, t0, t0 !2043
	addi	sp, sp, 8 !2043
	jal 	ra, pretrace_pixels.2818 !2043
	addi	sp, sp, -8 !2043
bge_cont.42984: !2074
	addi	a0, zero, 0 !2077
	lw  	a1, 154(zero) !2051
	bge 	zero, a1, bge_cont.42986 !2051
	lw  	a3, 6(sp) !2054
	lw  	a1, 0(a3) !2054
	lw  	a1, 0(a1) !461
	lw  	fa0, 0(a1) !188
	sw  	fa0, 151(zero) !188
	lw  	fa0, 1(a1) !189
	sw  	fa0, 152(zero) !189
	lw  	fa0, 2(a1) !190
	sw  	fa0, 153(zero) !190
	lw  	a1, 155(zero) !1878
	lw  	a2, 5(sp) !1878
	addi	a4, a2, 1 !1878
	blt 	a4, a1, bge_else.42987 !1878
	addi	a1, zero, 0 !1886
	jal 	zero, bge_cont.42988 !1878
bge_else.42987: !1878
	blt 	zero, a2, bge_else.42989 !1879
	addi	a1, zero, 0 !1885
	jal 	zero, bge_cont.42990 !1879
bge_else.42989: !1879
	lw  	a1, 154(zero) !1880
	addi	t0, zero, 1
	blt 	t0, a1, bge_else.42991 !1880
	addi	a1, zero, 0 !1884
	jal 	zero, bge_cont.42992 !1880
bge_else.42991: !1880
	addi	a1, zero, 0 !1883
bge_cont.42992: !1880
bge_cont.42990: !1879
bge_cont.42988: !1878
	bne 	a1, zero, beq_else.42993 !2057
	lw  	a0, 0(a3) !2060
	lw  	a1, 2(a0) !476
	lw  	a1, 0(a1) !1866
	blt 	a1, zero, bge_cont.42996 !1866
	lw  	a1, 3(a0) !483
	lw  	a1, 0(a1) !1868
	sw  	a0, 7(sp) !1868
	beq 	a1, zero, beq_cont.42998 !1868
	lw  	a1, 5(a0) !497
	lw  	a2, 7(a0) !520
	lw  	a3, 1(a0) !468
	lw  	a4, 4(a0) !490
	lw  	a1, 0(a1) !1831
	lw  	fa0, 0(a1) !188
	sw  	fa0, 148(zero) !188
	lw  	fa0, 1(a1) !189
	sw  	fa0, 149(zero) !189
	lw  	fa0, 2(a1) !190
	sw  	fa0, 150(zero) !190
	lw  	a0, 6(a0) !506
	lw  	a0, 0(a0) !508
	lw  	a1, 0(a2) !1834
	lw  	a2, 0(a3) !1835
	sw  	a4, 8(sp) !1832
	addi	sp, sp, 12 !1832
	jal 	ra, trace_diffuse_ray_80percent.2771 !1832
	addi	sp, sp, -12 !1832
	lw  	a0, 8(sp) !1836
	lw  	a0, 0(a0) !1836
	lw  	fa0, 151(zero) !241
	lw  	fa1, 0(a0) !241
	lw  	fa2, 148(zero) !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	sw  	fa0, 151(zero) !241
	lw  	fa0, 152(zero) !242
	lw  	fa1, 1(a0) !242
	lw  	fa2, 149(zero) !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	sw  	fa0, 152(zero) !242
	lw  	fa0, 153(zero) !243
	lw  	fa1, 2(a0) !243
	lw  	fa2, 150(zero) !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	sw  	fa0, 153(zero) !243
beq_cont.42998: !1868
	addi	a1, zero, 1 !1871
	lw  	a0, 7(sp) !476
	lw  	a2, 2(a0) !476
	lw  	a2, 1(a2) !1866
	blt 	a2, zero, bge_cont.43000 !1866
	lw  	a2, 3(a0) !483
	lw  	a2, 1(a2) !1868
	beq 	a2, zero, beq_cont.43002 !1868
	addi	sp, sp, 12 !1869
	jal 	ra, calc_diffuse_using_1point.2775 !1869
	addi	sp, sp, -12 !1869
beq_cont.43002: !1868
	addi	a1, zero, 2 !1871
	lw  	a0, 7(sp) !1871
	addi	sp, sp, 12 !1871
	jal 	ra, do_without_neighbors.2784 !1871
	addi	sp, sp, -12 !1871
bge_cont.43000: !1866
bge_cont.42996: !1866
	jal 	zero, beq_cont.42994 !2057
beq_else.42993: !2057
	addi	a5, zero, 0 !2058
	lw  	a1, 4(sp) !2058
	lw  	a4, 3(sp) !2058
	addi	t0, a2, 0 !2058
	addi	a2, a1, 0 !2058
	addi	a1, t0, 0 !2058
	addi	sp, sp, 12 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -12 !2058
beq_cont.42994: !2057
	lw  	a0, 2(sp) !1963
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.43003 !1963
	lw  	fa0, 151(zero) !1964
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.43005 !1952
	blt 	a0, zero, bge_else.43007 !1952
	jal 	zero, bge_cont.43006 !1952
bge_else.43007: !1952
	addi	a0, zero, 0 !1952
bge_cont.43008: !1952
	jal 	zero, bge_cont.43006 !1952
bge_else.43005: !1952
	addi	a0, zero, 255 !1952
bge_cont.43006: !1952
	addi	sp, sp, 12 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -12 !1953
	addi	a0, zero, 32 !1965
	addi	sp, sp, 12 !1965
	jal 	ra, print_char !1965
	addi	sp, sp, -12 !1965
	lw  	fa0, 152(zero) !1966
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.43009 !1952
	blt 	a0, zero, bge_else.43011 !1952
	jal 	zero, bge_cont.43010 !1952
bge_else.43011: !1952
	addi	a0, zero, 0 !1952
bge_cont.43012: !1952
	jal 	zero, bge_cont.43010 !1952
bge_else.43009: !1952
	addi	a0, zero, 255 !1952
bge_cont.43010: !1952
	addi	sp, sp, 12 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -12 !1953
	addi	a0, zero, 32 !1967
	addi	sp, sp, 12 !1967
	jal 	ra, print_char !1967
	addi	sp, sp, -12 !1967
	lw  	fa0, 153(zero) !1968
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.43013 !1952
	blt 	a0, zero, bge_else.43015 !1952
	jal 	zero, bge_cont.43014 !1952
bge_else.43015: !1952
	addi	a0, zero, 0 !1952
bge_cont.43016: !1952
	jal 	zero, bge_cont.43014 !1952
bge_else.43013: !1952
	addi	a0, zero, 255 !1952
bge_cont.43014: !1952
	addi	sp, sp, 12 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -12 !1953
	addi	a0, zero, 10 !1969
	addi	sp, sp, 12 !1969
	jal 	ra, print_char !1969
	addi	sp, sp, -12 !1969
	jal 	zero, beq_cont.43004 !1963
beq_else.43003: !1963
	lw  	fa0, 151(zero) !1971
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.43017 !1958
	blt 	a0, zero, bge_else.43019 !1958
	jal 	zero, bge_cont.43018 !1958
bge_else.43019: !1958
	addi	a0, zero, 0 !1958
bge_cont.43020: !1958
	jal 	zero, bge_cont.43018 !1958
bge_else.43017: !1958
	addi	a0, zero, 255 !1958
bge_cont.43018: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
	lw  	fa0, 152(zero) !1972
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.43021 !1958
	blt 	a0, zero, bge_else.43023 !1958
	jal 	zero, bge_cont.43022 !1958
bge_else.43023: !1958
	addi	a0, zero, 0 !1958
bge_cont.43024: !1958
	jal 	zero, bge_cont.43022 !1958
bge_else.43021: !1958
	addi	a0, zero, 255 !1958
bge_cont.43022: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
	lw  	fa0, 153(zero) !1973
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.43025 !1958
	blt 	a0, zero, bge_else.43027 !1958
	jal 	zero, bge_cont.43026 !1958
bge_else.43027: !1958
	addi	a0, zero, 0 !1958
bge_cont.43028: !1958
	jal 	zero, bge_cont.43026 !1958
bge_else.43025: !1958
	addi	a0, zero, 255 !1958
bge_cont.43026: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
beq_cont.43004: !1963
	addi	a0, zero, 1 !2065
	lw  	a1, 5(sp) !2065
	lw  	a2, 4(sp) !2065
	lw  	a3, 6(sp) !2065
	lw  	a4, 3(sp) !2065
	lw  	a5, 2(sp) !2065
	addi	sp, sp, 12 !2065
	jal 	ra, scan_pixel.2829 !2065
	addi	sp, sp, -12 !2065
bge_cont.42986: !2051
	lw  	a0, 5(sp) !2078
	addi	a1, a0, 1 !2078
	lw  	a0, 1(sp) !159
	addi	a0, a0, 2 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.43029 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.43030 !160
bge_else.43029: !160
	addi	a2, a0, 0 !160
bge_cont.43030: !160
	lw  	a0, 155(zero) !2072
	blt 	a1, a0, bge_else.43031 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43031: !2072
	lw  	a0, 155(zero) !2074
	addi	a0, a0, -1 !2074
	sw  	a2, 9(sp) !2074
	sw  	a1, 10(sp) !2074
	bge 	a1, a0, bge_cont.43034 !2074
	addi	a1, a1, 1 !2075
	lw  	a0, 4(sp) !2075
	addi	sp, sp, 12 !2075
	jal 	ra, pretrace_line.2825 !2075
	addi	sp, sp, -12 !2075
bge_cont.43034: !2074
	addi	a0, zero, 0 !2077
	lw  	a1, 10(sp) !2077
	lw  	a2, 6(sp) !2077
	lw  	a3, 3(sp) !2077
	lw  	a4, 4(sp) !2077
	lw  	a5, 2(sp) !2077
	addi	sp, sp, 12 !2077
	jal 	ra, scan_pixel.2829 !2077
	addi	sp, sp, -12 !2077
	lw  	a0, 10(sp) !2078
	addi	a0, a0, 1 !2078
	lw  	a1, 9(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43035 !160
	addi	a4, a1, -5 !160
	jal 	zero, bge_cont.43036 !160
bge_else.43035: !160
	addi	a4, a1, 0 !160
bge_cont.43036: !160
	lw  	a1, 3(sp) !2078
	lw  	a2, 4(sp) !2078
	lw  	a3, 6(sp) !2078
	lw  	a5, 2(sp) !2078
	lw  	ra, 0(sp)
	jal 	zero, scan_line.2836 !2078
create_pixel.2845:
	sw  	ra, 0(sp)
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -4 !2099
	sw  	a0, 1(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -4 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 4 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -4 !2088
	sw  	a0, 2(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -4 !2089
	lw  	a1, 2(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -4 !2090
	lw  	a1, 2(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -4 !2091
	lw  	a1, 2(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -4 !2092
	lw  	a1, 2(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 4 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -4 !2101
	sw  	a0, 3(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 4 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -4 !2102
	sw  	a0, 4(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -8 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 8 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -8 !2088
	sw  	a0, 5(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -8 !2089
	lw  	a1, 5(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -8 !2090
	lw  	a1, 5(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -8 !2091
	lw  	a1, 5(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -8 !2092
	lw  	a1, 5(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -8 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 8 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -8 !2088
	sw  	a0, 6(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -8 !2089
	lw  	a1, 6(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -8 !2090
	lw  	a1, 6(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -8 !2091
	lw  	a1, 6(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -8 !2092
	lw  	a1, 6(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 8 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -8 !2105
	sw  	a0, 7(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -8 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 8 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -8 !2088
	sw  	a0, 8(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -12 !2089
	lw  	a1, 8(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -12 !2090
	lw  	a1, 8(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -12 !2091
	lw  	a1, 8(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -12 !2092
	lw  	a1, 8(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 7(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 6(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 5(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 4(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 3(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 2(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 1(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_line_elements.2847:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.43037 !2112
	sw  	a0, 1(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	sw  	a1, 2(sp) !2099
	addi	sp, sp, 4 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -4 !2099
	sw  	a0, 3(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -4 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 4 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -4 !2088
	sw  	a0, 4(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -8 !2089
	lw  	a1, 4(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -8 !2090
	lw  	a1, 4(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -8 !2091
	lw  	a1, 4(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -8 !2092
	lw  	a1, 4(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 8 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -8 !2101
	sw  	a0, 5(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 8 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -8 !2102
	sw  	a0, 6(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -8 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 8 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -8 !2088
	sw  	a0, 7(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -8 !2089
	lw  	a1, 7(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -8 !2090
	lw  	a1, 7(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -8 !2091
	lw  	a1, 7(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -8 !2092
	lw  	a1, 7(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -8 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 8 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -8 !2088
	sw  	a0, 8(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -12 !2089
	lw  	a1, 8(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -12 !2090
	lw  	a1, 8(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -12 !2091
	lw  	a1, 8(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -12 !2092
	lw  	a1, 8(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 12 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -12 !2105
	sw  	a0, 9(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -12 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 12 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -12 !2088
	sw  	a0, 10(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -12 !2089
	lw  	a1, 10(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -12 !2090
	lw  	a1, 10(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -12 !2091
	lw  	a1, 10(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -12 !2092
	lw  	a1, 10(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 9(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 8(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 7(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 6(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 5(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 4(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 3(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	a1, 2(sp) !2113
	lw  	a2, 1(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a0, a1, -1 !2114
	blt 	a0, zero, bge_else.43038 !2112
	sw  	a0, 11(sp) !2113
	addi	sp, sp, 12 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -12 !2113
	lw  	a1, 11(sp) !2113
	lw  	a2, 1(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a0, a1, -1 !2114
	blt 	a0, zero, bge_else.43039 !2112
	sw  	a0, 12(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -16 !2099
	sw  	a0, 13(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -16 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 16 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -16 !2088
	sw  	a0, 14(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -16 !2089
	lw  	a1, 14(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -16 !2090
	lw  	a1, 14(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -16 !2091
	lw  	a1, 14(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -16 !2092
	lw  	a1, 14(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 16 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -16 !2101
	sw  	a0, 15(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 16 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -16 !2102
	sw  	a0, 16(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -20 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 20 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -20 !2088
	sw  	a0, 17(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -20 !2089
	lw  	a1, 17(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -20 !2090
	lw  	a1, 17(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -20 !2091
	lw  	a1, 17(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -20 !2092
	lw  	a1, 17(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -20 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 20 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -20 !2088
	sw  	a0, 18(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -20 !2089
	lw  	a1, 18(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -20 !2090
	lw  	a1, 18(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -20 !2091
	lw  	a1, 18(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -20 !2092
	lw  	a1, 18(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 20 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -20 !2105
	sw  	a0, 19(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -20 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 20 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -20 !2088
	sw  	a0, 20(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -24 !2089
	lw  	a1, 20(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -24 !2090
	lw  	a1, 20(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -24 !2091
	lw  	a1, 20(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -24 !2092
	lw  	a1, 20(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 19(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 18(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 17(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 16(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 15(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 14(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 13(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	a1, 12(sp) !2113
	lw  	a2, 1(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a0, a1, -1 !2114
	blt 	a0, zero, bge_else.43040 !2112
	sw  	a0, 21(sp) !2113
	addi	sp, sp, 24 !2113
	jal 	ra, create_pixel.2845 !2113
	addi	sp, sp, -24 !2113
	lw  	a1, 21(sp) !2113
	lw  	a2, 1(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	lw  	ra, 0(sp)
	jal 	zero, init_line_elements.2847 !2114
bge_else.43040: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43039: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43038: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43037: !2112
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec.2857:
	sw  	ra, 0(sp)
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.43041 !2144
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !2145
	li  	fa3, 1.000000 !2145
	fadd	fa2, fa2, fa3 !2145
	fsqrt   fa2, fa2 !2145
	fdiv	fa0, fa0, fa2 !2146
	fdiv	fa1, fa1, fa2 !2147
	li  	fa3, 1.000000 !2148
	fdiv	fa2, fa3, fa2 !2148
	lw  	a0, 179(a1) !2151
	lwr 	a1, a0, a2 !2152
	lw  	a1, 0(a1) !529
	sw  	fa0, 0(a1) !169
	sw  	fa1, 1(a1) !170
	sw  	fa2, 2(a1) !171
	addi	a1, a2, 40 !2153
	lwr 	a1, a0, a1 !2153
	lw  	a1, 0(a1) !529
	fsgnjn  fa3, fa1, fa1 !2153
	sw  	fa0, 0(a1) !169
	sw  	fa2, 1(a1) !170
	sw  	fa3, 2(a1) !171
	addi	a1, a2, 80 !2154
	lwr 	a1, a0, a1 !2154
	lw  	a1, 0(a1) !529
	fsgnjn  fa3, fa0, fa0 !2154
	fsgnjn  fa4, fa1, fa1 !2154
	sw  	fa2, 0(a1) !169
	sw  	fa3, 1(a1) !170
	sw  	fa4, 2(a1) !171
	addi	a1, a2, 1 !2155
	lwr 	a1, a0, a1 !2155
	lw  	a1, 0(a1) !529
	fsgnjn  fa3, fa0, fa0 !2155
	fsgnjn  fa4, fa1, fa1 !2155
	fsgnjn  fa5, fa2, fa2 !2155
	sw  	fa3, 0(a1) !169
	sw  	fa4, 1(a1) !170
	sw  	fa5, 2(a1) !171
	addi	a1, a2, 41 !2156
	lwr 	a1, a0, a1 !2156
	lw  	a1, 0(a1) !529
	fsgnjn  fa3, fa0, fa0 !2156
	fsgnjn  fa4, fa2, fa2 !2156
	sw  	fa3, 0(a1) !169
	sw  	fa4, 1(a1) !170
	sw  	fa1, 2(a1) !171
	addi	a1, a2, 81 !2157
	lwr 	a0, a0, a1 !2157
	lw  	a0, 0(a0) !529
	fsgnjn  fa2, fa2, fa2 !2157
	sw  	fa2, 0(a0) !169
	sw  	fa0, 1(a0) !170
	sw  	fa1, 2(a0) !171
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43041: !2144
	fmul	fa0, fa1, fa1 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 1(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a2, 2(sp) !2137
	sw  	a1, 3(sp) !2137
	sw  	fa3, 4(sp) !2137
	sw  	a0, 5(sp) !2137
	sw  	fa2, 6(sp) !2137
	addi	sp, sp, 8 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -8 !2137
	lw  	fa1, 6(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 7(sp) !2130
	addi	sp, sp, 8 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -8 !2130
	sw  	fa0, 8(sp) !2130
	lw  	fa0, 7(sp) !2130
	addi	sp, sp, 12 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -12 !2130
	lw  	fa1, 8(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 1(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	lw  	a0, 5(sp) !2160
	addi	a0, a0, 1 !2160
	sw  	fa0, 9(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 10(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 11(sp) !2137
	addi	sp, sp, 12 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -12 !2137
	lw  	fa1, 4(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 12(sp) !2130
	addi	sp, sp, 16 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -16 !2130
	sw  	fa0, 13(sp) !2130
	lw  	fa0, 12(sp) !2130
	addi	sp, sp, 16 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -16 !2130
	lw  	fa1, 13(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 10(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	lw  	a0, 11(sp) !2144
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.43043 !2144
	lw  	fa1, 9(sp) !126
	fmul	fa2, fa1, fa1 !126
	fmul	fa3, fa0, fa0 !126
	fadd	fa2, fa2, fa3 !2145
	li  	fa3, 1.000000 !2145
	fadd	fa2, fa2, fa3 !2145
	fsqrt   fa2, fa2 !2145
	fdiv	fa1, fa1, fa2 !2146
	fdiv	fa0, fa0, fa2 !2147
	li  	fa3, 1.000000 !2148
	fdiv	fa2, fa3, fa2 !2148
	lw  	a0, 3(sp) !2151
	lw  	a0, 179(a0) !2151
	lw  	a1, 2(sp) !2152
	lwr 	a2, a0, a1 !2152
	lw  	a2, 0(a2) !529
	sw  	fa1, 0(a2) !169
	sw  	fa0, 1(a2) !170
	sw  	fa2, 2(a2) !171
	addi	a2, a1, 40 !2153
	lwr 	a2, a0, a2 !2153
	lw  	a2, 0(a2) !529
	fsgnjn  fa3, fa0, fa0 !2153
	sw  	fa1, 0(a2) !169
	sw  	fa2, 1(a2) !170
	sw  	fa3, 2(a2) !171
	addi	a2, a1, 80 !2154
	lwr 	a2, a0, a2 !2154
	lw  	a2, 0(a2) !529
	fsgnjn  fa3, fa1, fa1 !2154
	fsgnjn  fa4, fa0, fa0 !2154
	sw  	fa2, 0(a2) !169
	sw  	fa3, 1(a2) !170
	sw  	fa4, 2(a2) !171
	addi	a2, a1, 1 !2155
	lwr 	a2, a0, a2 !2155
	lw  	a2, 0(a2) !529
	fsgnjn  fa3, fa1, fa1 !2155
	fsgnjn  fa4, fa0, fa0 !2155
	fsgnjn  fa5, fa2, fa2 !2155
	sw  	fa3, 0(a2) !169
	sw  	fa4, 1(a2) !170
	sw  	fa5, 2(a2) !171
	addi	a2, a1, 41 !2156
	lwr 	a2, a0, a2 !2156
	lw  	a2, 0(a2) !529
	fsgnjn  fa3, fa1, fa1 !2156
	fsgnjn  fa4, fa2, fa2 !2156
	sw  	fa3, 0(a2) !169
	sw  	fa4, 1(a2) !170
	sw  	fa0, 2(a2) !171
	addi	a1, a1, 81 !2157
	lwr 	a0, a0, a1 !2157
	lw  	a0, 0(a0) !529
	fsgnjn  fa2, fa2, fa2 !2157
	sw  	fa2, 0(a0) !169
	sw  	fa1, 1(a0) !170
	sw  	fa0, 2(a0) !171
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43043: !2144
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 14(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	addi	sp, sp, 16 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -16 !2137
	lw  	fa1, 6(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 15(sp) !2130
	addi	sp, sp, 16 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -16 !2130
	sw  	fa0, 16(sp) !2130
	lw  	fa0, 15(sp) !2130
	addi	sp, sp, 20 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -20 !2130
	lw  	fa1, 16(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 14(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	lw  	a0, 11(sp) !2160
	addi	a0, a0, 1 !2160
	sw  	fa0, 17(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 18(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 19(sp) !2137
	addi	sp, sp, 20 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -20 !2137
	lw  	fa1, 4(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 20(sp) !2130
	addi	sp, sp, 24 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -24 !2130
	sw  	fa0, 21(sp) !2130
	lw  	fa0, 20(sp) !2130
	addi	sp, sp, 24 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -24 !2130
	lw  	fa1, 21(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 18(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 17(sp) !2160
	lw  	fa2, 6(sp) !2160
	lw  	fa3, 4(sp) !2160
	lw  	a0, 19(sp) !2160
	lw  	a1, 3(sp) !2160
	lw  	a2, 2(sp) !2160
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec.2857 !2160
calc_dirvecs.2865:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.43045 !2165
	sw  	fa0, 1(sp) !2167
	itof	fa0, a0 !2167
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa0, fa0, fa1 !2167
	sw  	fa0, 2(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 3(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 4(sp) !2137
	sw  	a2, 5(sp) !2137
	sw  	a1, 6(sp) !2137
	addi	sp, sp, 8 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -8 !2137
	lw  	fa1, 2(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 7(sp) !2130
	addi	sp, sp, 8 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -8 !2130
	sw  	fa0, 8(sp) !2130
	lw  	fa0, 7(sp) !2130
	addi	sp, sp, 12 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -12 !2130
	lw  	fa1, 8(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 3(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 9(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 10(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 11(sp) !2137
	addi	sp, sp, 12 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -12 !2137
	lw  	fa1, 1(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 12(sp) !2130
	addi	sp, sp, 16 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -16 !2130
	sw  	fa0, 13(sp) !2130
	lw  	fa0, 12(sp) !2130
	addi	sp, sp, 16 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -16 !2130
	lw  	fa1, 13(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 10(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 9(sp) !2160
	lw  	fa2, 2(sp) !2160
	lw  	fa3, 1(sp) !2160
	lw  	a0, 11(sp) !2160
	lw  	a1, 6(sp) !2160
	lw  	a2, 5(sp) !2160
	addi	sp, sp, 16 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -16 !2160
	lw  	a0, 4(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa0, fa0, fa1 !2170
	lw  	a0, 5(sp) !2171
	addi	a0, a0, 2 !2171
	sw  	fa0, 14(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 15(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 16(sp) !2137
	addi	sp, sp, 20 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -20 !2137
	lw  	fa1, 14(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 17(sp) !2130
	addi	sp, sp, 20 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -20 !2130
	sw  	fa0, 18(sp) !2130
	lw  	fa0, 17(sp) !2130
	addi	sp, sp, 20 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -20 !2130
	lw  	fa1, 18(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 15(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 19(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 20(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 21(sp) !2137
	addi	sp, sp, 24 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -24 !2137
	lw  	fa1, 1(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 22(sp) !2130
	addi	sp, sp, 24 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -24 !2130
	sw  	fa0, 23(sp) !2130
	lw  	fa0, 22(sp) !2130
	addi	sp, sp, 24 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -24 !2130
	lw  	fa1, 23(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 20(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 19(sp) !2160
	lw  	fa2, 14(sp) !2160
	lw  	fa3, 1(sp) !2160
	lw  	a0, 21(sp) !2160
	lw  	a1, 6(sp) !2160
	lw  	a2, 16(sp) !2160
	addi	sp, sp, 24 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -24 !2160
	lw  	a0, 4(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 6(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43046 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43047 !160
bge_else.43046: !160
bge_cont.43047: !160
	blt 	a0, zero, bge_else.43048 !2165
	itof	fa0, a0 !2167
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa2, fa0, fa1 !2167
	sw  	a0, 24(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	fa3, 1(sp) !2168
	lw  	a2, 5(sp) !2168
	sw  	a1, 25(sp) !2168
	addi	sp, sp, 28 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -28 !2168
	lw  	a0, 24(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 5(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 1(sp) !2171
	lw  	a1, 25(sp) !2171
	addi	sp, sp, 28 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -28 !2171
	lw  	a0, 24(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 25(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43049 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43050 !160
bge_else.43049: !160
bge_cont.43050: !160
	blt 	a0, zero, bge_else.43051 !2165
	itof	fa0, a0 !2167
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa0, fa0, fa1 !2167
	sw  	fa0, 26(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 27(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 28(sp) !2137
	sw  	a1, 29(sp) !2137
	addi	sp, sp, 32 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -32 !2137
	lw  	fa1, 26(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 30(sp) !2130
	addi	sp, sp, 32 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -32 !2130
	sw  	fa0, 31(sp) !2130
	lw  	fa0, 30(sp) !2130
	addi	sp, sp, 32 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -32 !2130
	lw  	fa1, 31(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 27(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 32(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 33(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 34(sp) !2137
	addi	sp, sp, 36 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -36 !2137
	lw  	fa1, 1(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 35(sp) !2130
	addi	sp, sp, 36 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -36 !2130
	sw  	fa0, 36(sp) !2130
	lw  	fa0, 35(sp) !2130
	addi	sp, sp, 40 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -40 !2130
	lw  	fa1, 36(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 33(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 32(sp) !2160
	lw  	fa2, 26(sp) !2160
	lw  	fa3, 1(sp) !2160
	lw  	a0, 34(sp) !2160
	lw  	a1, 29(sp) !2160
	lw  	a2, 5(sp) !2160
	addi	sp, sp, 40 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -40 !2160
	lw  	a0, 28(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa0, fa0, fa1 !2170
	lw  	a0, 5(sp) !2171
	addi	a0, a0, 2 !2171
	sw  	fa0, 37(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 38(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 39(sp) !2137
	addi	sp, sp, 40 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -40 !2137
	lw  	fa1, 37(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 40(sp) !2130
	addi	sp, sp, 44 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -44 !2130
	sw  	fa0, 41(sp) !2130
	lw  	fa0, 40(sp) !2130
	addi	sp, sp, 44 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -44 !2130
	lw  	fa1, 41(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 38(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 42(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 43(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 44(sp) !2137
	addi	sp, sp, 48 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -48 !2137
	lw  	fa1, 1(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 45(sp) !2130
	addi	sp, sp, 48 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -48 !2130
	sw  	fa0, 46(sp) !2130
	lw  	fa0, 45(sp) !2130
	addi	sp, sp, 48 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -48 !2130
	lw  	fa1, 46(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 43(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 42(sp) !2160
	lw  	fa2, 37(sp) !2160
	lw  	fa3, 1(sp) !2160
	lw  	a0, 44(sp) !2160
	lw  	a1, 29(sp) !2160
	lw  	a2, 39(sp) !2160
	addi	sp, sp, 48 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -48 !2160
	lw  	a0, 28(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 29(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43052 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43053 !160
bge_else.43052: !160
bge_cont.43053: !160
	blt 	a0, zero, bge_else.43054 !2165
	itof	fa0, a0 !2167
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa2, fa0, fa1 !2167
	sw  	a0, 47(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	fa3, 1(sp) !2168
	lw  	a2, 5(sp) !2168
	sw  	a1, 48(sp) !2168
	addi	sp, sp, 52 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -52 !2168
	lw  	a0, 47(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 5(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 1(sp) !2171
	lw  	a1, 48(sp) !2171
	addi	sp, sp, 52 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -52 !2171
	lw  	a0, 47(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 48(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43055 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43056 !160
bge_else.43055: !160
bge_cont.43056: !160
	lw  	fa0, 1(sp) !2173
	lw  	a2, 5(sp) !2173
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvecs.2865 !2173
bge_else.43054: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43051: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43048: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43045: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec_rows.2870:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.43061 !2179
	itof	fa0, a0 !2180
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa3, fa0, fa1 !2180
	li  	fa2, -0.100000 !2167
	sw  	a0, 1(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	sw  	fa3, 2(sp) !2168
	sw  	a1, 3(sp) !2168
	sw  	a2, 4(sp) !2168
	addi	sp, sp, 8 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -8 !2168
	li  	fa2, 0.900000 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 4(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 2(sp) !2171
	lw  	a1, 3(sp) !2171
	addi	sp, sp, 8 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -8 !2171
	lw  	a0, 3(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.43062 !160
	addi	a0, a0, -5 !160
	jal 	zero, bge_cont.43063 !160
bge_else.43062: !160
bge_cont.43063: !160
	li  	fa0, -0.300000 !2167
	sw  	fa0, 5(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 6(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 7(sp) !2137
	addi	sp, sp, 8 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -8 !2137
	lw  	fa1, 5(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 8(sp) !2130
	addi	sp, sp, 12 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -12 !2130
	sw  	fa0, 9(sp) !2130
	lw  	fa0, 8(sp) !2130
	addi	sp, sp, 12 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -12 !2130
	lw  	fa1, 9(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 6(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 10(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 11(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 12(sp) !2137
	addi	sp, sp, 16 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -16 !2137
	lw  	fa1, 2(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 13(sp) !2130
	addi	sp, sp, 16 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -16 !2130
	sw  	fa0, 14(sp) !2130
	lw  	fa0, 13(sp) !2130
	addi	sp, sp, 16 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -16 !2130
	lw  	fa1, 14(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 11(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 10(sp) !2160
	lw  	fa2, 5(sp) !2160
	lw  	fa3, 2(sp) !2160
	lw  	a0, 12(sp) !2160
	lw  	a1, 7(sp) !2160
	lw  	a2, 4(sp) !2160
	addi	sp, sp, 16 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -16 !2160
	li  	fa0, 0.700000 !2170
	lw  	a0, 4(sp) !2171
	addi	a0, a0, 2 !2171
	sw  	fa0, 15(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 16(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 17(sp) !2137
	addi	sp, sp, 20 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -20 !2137
	lw  	fa1, 15(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 18(sp) !2130
	addi	sp, sp, 20 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -20 !2130
	sw  	fa0, 19(sp) !2130
	lw  	fa0, 18(sp) !2130
	addi	sp, sp, 20 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -20 !2130
	lw  	fa1, 19(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 16(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 20(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 21(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 22(sp) !2137
	addi	sp, sp, 24 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -24 !2137
	lw  	fa1, 2(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 23(sp) !2130
	addi	sp, sp, 24 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -24 !2130
	sw  	fa0, 24(sp) !2130
	lw  	fa0, 23(sp) !2130
	addi	sp, sp, 28 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -28 !2130
	lw  	fa1, 24(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 21(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 20(sp) !2160
	lw  	fa2, 15(sp) !2160
	lw  	fa3, 2(sp) !2160
	lw  	a0, 22(sp) !2160
	lw  	a1, 7(sp) !2160
	lw  	a2, 17(sp) !2160
	addi	sp, sp, 28 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -28 !2160
	lw  	a0, 7(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.43064 !160
	addi	a1, a0, -5 !160
	jal 	zero, bge_cont.43065 !160
bge_else.43064: !160
	addi	a1, a0, 0 !160
bge_cont.43065: !160
	li  	fa2, -0.500000 !2167
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	fa3, 2(sp) !2168
	lw  	a2, 4(sp) !2168
	sw  	a1, 25(sp) !2168
	addi	sp, sp, 28 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -28 !2168
	li  	fa2, 0.500000 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 4(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 2(sp) !2171
	lw  	a1, 25(sp) !2171
	addi	sp, sp, 28 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -28 !2171
	addi	a0, zero, 1 !2173
	lw  	a1, 25(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43066 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43067 !160
bge_else.43066: !160
bge_cont.43067: !160
	lw  	fa0, 2(sp) !2173
	lw  	a2, 4(sp) !2173
	addi	sp, sp, 28 !2173
	jal 	ra, calc_dirvecs.2865 !2173
	addi	sp, sp, -28 !2173
	lw  	a0, 1(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 3(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43068 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43069 !160
bge_else.43068: !160
bge_cont.43069: !160
	sw  	a1, 26(sp) !2182
	lw  	a1, 4(sp) !2182
	addi	a1, a1, 4 !2182
	blt 	a0, zero, bge_else.43070 !2179
	itof	fa0, a0 !2180
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa0, fa0, fa1 !2180
	sw  	fa0, 27(sp) !2167
	li  	fa0, -0.100000 !2167
	sw  	fa0, 28(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 29(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 30(sp) !2137
	sw  	a1, 31(sp) !2137
	addi	sp, sp, 32 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -32 !2137
	lw  	fa1, 28(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 32(sp) !2130
	addi	sp, sp, 36 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -36 !2130
	sw  	fa0, 33(sp) !2130
	lw  	fa0, 32(sp) !2130
	addi	sp, sp, 36 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -36 !2130
	lw  	fa1, 33(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 29(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 34(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 35(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 36(sp) !2137
	addi	sp, sp, 40 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -40 !2137
	lw  	fa1, 27(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 37(sp) !2130
	addi	sp, sp, 40 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -40 !2130
	sw  	fa0, 38(sp) !2130
	lw  	fa0, 37(sp) !2130
	addi	sp, sp, 40 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -40 !2130
	lw  	fa1, 38(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 35(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 34(sp) !2160
	lw  	fa2, 28(sp) !2160
	lw  	fa3, 27(sp) !2160
	lw  	a0, 36(sp) !2160
	lw  	a1, 26(sp) !2160
	lw  	a2, 31(sp) !2160
	addi	sp, sp, 40 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -40 !2160
	li  	fa0, 0.900000 !2170
	lw  	a0, 31(sp) !2171
	addi	a0, a0, 2 !2171
	sw  	fa0, 39(sp) !2135
	li  	fa0, 0.316228 !2135
	sw  	fa0, 40(sp) !2136
	li  	fa0, 3.162278 !2136
	sw  	a0, 41(sp) !2137
	addi	sp, sp, 44 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -44 !2137
	lw  	fa1, 39(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 42(sp) !2130
	addi	sp, sp, 44 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -44 !2130
	sw  	fa0, 43(sp) !2130
	lw  	fa0, 42(sp) !2130
	addi	sp, sp, 44 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -44 !2130
	lw  	fa1, 43(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 40(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	addi	a0, zero, 1 !2160
	sw  	fa0, 44(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 45(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 46(sp) !2137
	addi	sp, sp, 48 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -48 !2137
	lw  	fa1, 27(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 47(sp) !2130
	addi	sp, sp, 48 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -48 !2130
	sw  	fa0, 48(sp) !2130
	lw  	fa0, 47(sp) !2130
	addi	sp, sp, 52 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -52 !2130
	lw  	fa1, 48(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 45(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 44(sp) !2160
	lw  	fa2, 39(sp) !2160
	lw  	fa3, 27(sp) !2160
	lw  	a0, 46(sp) !2160
	lw  	a1, 26(sp) !2160
	lw  	a2, 41(sp) !2160
	addi	sp, sp, 52 !2160
	jal 	ra, calc_dirvec.2857 !2160
	addi	sp, sp, -52 !2160
	lw  	a0, 26(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.43071 !160
	addi	a1, a0, -5 !160
	jal 	zero, bge_cont.43072 !160
bge_else.43071: !160
	addi	a1, a0, 0 !160
bge_cont.43072: !160
	li  	fa2, -0.300000 !2167
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	fa3, 27(sp) !2168
	lw  	a2, 31(sp) !2168
	sw  	a1, 49(sp) !2168
	addi	sp, sp, 52 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -52 !2168
	li  	fa2, 0.700000 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 31(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 27(sp) !2171
	lw  	a1, 49(sp) !2171
	addi	sp, sp, 52 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -52 !2171
	addi	a0, zero, 2 !2173
	lw  	a1, 49(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43073 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43074 !160
bge_else.43073: !160
bge_cont.43074: !160
	lw  	fa0, 27(sp) !2173
	lw  	a2, 31(sp) !2173
	addi	sp, sp, 52 !2173
	jal 	ra, calc_dirvecs.2865 !2173
	addi	sp, sp, -52 !2173
	lw  	a0, 30(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 26(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43075 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43076 !160
bge_else.43075: !160
bge_cont.43076: !160
	lw  	a2, 31(sp) !2182
	addi	a2, a2, 4 !2182
	blt 	a0, zero, bge_else.43077 !2179
	itof	fa0, a0 !2180
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa3, fa0, fa1 !2180
	li  	fa2, -0.100000 !2167
	sw  	a0, 50(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	sw  	fa3, 51(sp) !2168
	sw  	a1, 52(sp) !2168
	sw  	a2, 53(sp) !2168
	addi	sp, sp, 56 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -56 !2168
	li  	fa2, 0.900000 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 53(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 51(sp) !2171
	lw  	a1, 52(sp) !2171
	addi	sp, sp, 56 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -56 !2171
	addi	a0, zero, 3 !2173
	lw  	a1, 52(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43078 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43079 !160
bge_else.43078: !160
bge_cont.43079: !160
	lw  	fa0, 51(sp) !2173
	lw  	a2, 53(sp) !2173
	addi	sp, sp, 56 !2173
	jal 	ra, calc_dirvecs.2865 !2173
	addi	sp, sp, -56 !2173
	lw  	a0, 50(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 52(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43080 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43081 !160
bge_else.43080: !160
bge_cont.43081: !160
	lw  	a2, 53(sp) !2182
	addi	a2, a2, 4 !2182
	blt 	a0, zero, bge_else.43082 !2179
	itof	fa0, a0 !2180
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa0, fa0, fa1 !2180
	sw  	a0, 54(sp) !2181
	addi	a0, zero, 4 !2181
	sw  	a2, 55(sp) !2181
	sw  	a1, 56(sp) !2181
	addi	sp, sp, 60 !2181
	jal 	ra, calc_dirvecs.2865 !2181
	addi	sp, sp, -60 !2181
	lw  	a0, 54(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 56(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.43083 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.43084 !160
bge_else.43083: !160
bge_cont.43084: !160
	lw  	a2, 55(sp) !2182
	addi	a2, a2, 4 !2182
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec_rows.2870 !2182
bge_else.43082: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43077: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43070: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43061: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec_elements.2876:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.43089 !2196
	sw  	a0, 1(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	sw  	a1, 2(sp) !2190
	addi	sp, sp, 4 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -4 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 3(sp) !2191
	addi	sp, sp, 4 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -4 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 3(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 2(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a0, a1, -1 !2198
	blt 	a0, zero, bge_else.43090 !2196
	sw  	a0, 4(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -8 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 5(sp) !2191
	addi	sp, sp, 8 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -8 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 5(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a0, a1, -1 !2198
	blt 	a0, zero, bge_else.43091 !2196
	sw  	a0, 6(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -8 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 7(sp) !2191
	addi	sp, sp, 8 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -8 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 7(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 6(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a0, a1, -1 !2198
	blt 	a0, zero, bge_else.43092 !2196
	sw  	a0, 8(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 9(sp) !2191
	addi	sp, sp, 12 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -12 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 9(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 8(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a0, a1, -1 !2198
	blt 	a0, zero, bge_else.43093 !2196
	sw  	a0, 10(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 11(sp) !2191
	addi	sp, sp, 12 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -12 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 11(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 10(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a0, a1, -1 !2198
	blt 	a0, zero, bge_else.43094 !2196
	sw  	a0, 12(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -16 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 13(sp) !2191
	addi	sp, sp, 16 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -16 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 13(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 12(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a0, a1, -1 !2198
	blt 	a0, zero, bge_else.43095 !2196
	sw  	a0, 14(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -16 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 15(sp) !2191
	addi	sp, sp, 16 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -16 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 15(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 14(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a0, a1, -1 !2198
	blt 	a0, zero, bge_else.43096 !2196
	sw  	a0, 16(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 17(sp) !2191
	addi	sp, sp, 20 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -20 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 17(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 16(sp) !2197
	lw  	a2, 1(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a1, a1, -1 !2198
	addi	a0, a2, 0 !2198
	lw  	ra, 0(sp)
	jal 	zero, create_dirvec_elements.2876 !2198
bge_else.43096: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43095: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43094: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43093: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43092: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43091: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43090: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43089: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvecs.2879:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.43105 !2203
	sw  	a0, 1(sp) !2204
	addi	a0, zero, 120 !2204
	sw  	a0, 2(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 4 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -4 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 3(sp) !2191
	addi	sp, sp, 4 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -4 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 3(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 2(sp) !2204
	addi	sp, sp, 4 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -4 !2204
	lw  	a1, 1(sp) !2204
	li  	t0, 179
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2204
	lw  	a0, 179(a1) !2205
	sw  	a0, 4(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -8 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 5(sp) !2191
	addi	sp, sp, 8 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -8 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 5(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	sw  	a0, 118(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -8 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 6(sp) !2191
	addi	sp, sp, 8 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -8 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 6(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	sw  	a0, 117(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -8 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 7(sp) !2191
	addi	sp, sp, 8 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -8 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 7(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	sw  	a0, 116(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 8 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -8 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 8(sp) !2191
	addi	sp, sp, 12 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -12 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 8(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	sw  	a0, 115(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 9(sp) !2191
	addi	sp, sp, 12 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -12 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 9(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	sw  	a0, 114(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 10(sp) !2191
	addi	sp, sp, 12 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -12 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 10(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	sw  	a0, 113(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 11(sp) !2191
	addi	sp, sp, 12 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -12 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 11(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 4(sp) !2197
	sw  	a0, 112(a1) !2197
	addi	a0, zero, 111 !2198
	addi	t0, a1, 0 !2198
	addi	a1, a0, 0 !2198
	addi	a0, t0, 0 !2198
	addi	sp, sp, 12 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -12 !2198
	lw  	a0, 1(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.43106 !2203
	sw  	a0, 12(sp) !2204
	addi	a0, zero, 120 !2204
	sw  	a0, 13(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -16 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 14(sp) !2191
	addi	sp, sp, 16 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -16 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 14(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 13(sp) !2204
	addi	sp, sp, 16 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -16 !2204
	lw  	a1, 12(sp) !2204
	li  	t0, 179
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2204
	lw  	a0, 179(a1) !2205
	sw  	a0, 15(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -16 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 16(sp) !2191
	addi	sp, sp, 20 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -20 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 16(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 15(sp) !2197
	sw  	a0, 118(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 17(sp) !2191
	addi	sp, sp, 20 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -20 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 17(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 15(sp) !2197
	sw  	a0, 117(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 18(sp) !2191
	addi	sp, sp, 20 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -20 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 18(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 15(sp) !2197
	sw  	a0, 116(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 19(sp) !2191
	addi	sp, sp, 20 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -20 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 19(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 15(sp) !2197
	sw  	a0, 115(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 20(sp) !2191
	addi	sp, sp, 24 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -24 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 20(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 15(sp) !2197
	sw  	a0, 114(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -24 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 21(sp) !2191
	addi	sp, sp, 24 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -24 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 21(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 15(sp) !2197
	sw  	a0, 113(a1) !2197
	addi	a0, zero, 112 !2198
	addi	t0, a1, 0 !2198
	addi	a1, a0, 0 !2198
	addi	a0, t0, 0 !2198
	addi	sp, sp, 24 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -24 !2198
	lw  	a0, 12(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.43107 !2203
	sw  	a0, 22(sp) !2204
	addi	a0, zero, 120 !2204
	sw  	a0, 23(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -24 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 24(sp) !2191
	addi	sp, sp, 28 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -28 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 24(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 23(sp) !2204
	addi	sp, sp, 28 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -28 !2204
	lw  	a1, 22(sp) !2204
	li  	t0, 179
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2204
	lw  	a0, 179(a1) !2205
	sw  	a0, 25(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -28 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 26(sp) !2191
	addi	sp, sp, 28 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -28 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 26(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 25(sp) !2197
	sw  	a0, 118(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -28 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 27(sp) !2191
	addi	sp, sp, 28 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -28 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 27(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 25(sp) !2197
	sw  	a0, 117(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -28 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 28(sp) !2191
	addi	sp, sp, 32 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -32 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 28(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 25(sp) !2197
	sw  	a0, 116(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -32 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 29(sp) !2191
	addi	sp, sp, 32 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -32 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 29(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 25(sp) !2197
	sw  	a0, 115(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -32 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 30(sp) !2191
	addi	sp, sp, 32 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -32 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 30(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 25(sp) !2197
	sw  	a0, 114(a1) !2197
	addi	a0, zero, 113 !2198
	addi	t0, a1, 0 !2198
	addi	a1, a0, 0 !2198
	addi	a0, t0, 0 !2198
	addi	sp, sp, 32 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -32 !2198
	lw  	a0, 22(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.43108 !2203
	sw  	a0, 31(sp) !2204
	addi	a0, zero, 120 !2204
	sw  	a0, 32(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -36 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 33(sp) !2191
	addi	sp, sp, 36 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -36 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 33(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a0, 32(sp) !2204
	addi	sp, sp, 36 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -36 !2204
	lw  	a1, 31(sp) !2204
	li  	t0, 179
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2204
	lw  	a0, 179(a1) !2205
	sw  	a0, 34(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -36 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 35(sp) !2191
	addi	sp, sp, 36 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -36 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 35(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 34(sp) !2197
	sw  	a0, 118(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -36 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 36(sp) !2191
	addi	sp, sp, 40 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -40 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 36(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 34(sp) !2197
	sw  	a0, 117(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -40 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 37(sp) !2191
	addi	sp, sp, 40 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -40 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 37(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 34(sp) !2197
	sw  	a0, 116(a1) !2197
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0
	addi	sp, sp, 40 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -40 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 38(sp) !2191
	addi	sp, sp, 40 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -40 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 38(sp) !2192
	sw  	a0, 0(a1) !2192
	addi	a0, a1, 0 !2192
	lw  	a1, 34(sp) !2197
	sw  	a0, 115(a1) !2197
	addi	a0, zero, 114 !2198
	addi	t0, a1, 0 !2198
	addi	a1, a0, 0 !2198
	addi	a0, t0, 0 !2198
	addi	sp, sp, 40 !2198
	jal 	ra, create_dirvec_elements.2876 !2198
	addi	sp, sp, -40 !2198
	lw  	a0, 31(sp) !2206
	addi	a0, a0, -1 !2206
	lw  	ra, 0(sp)
	jal 	zero, create_dirvecs.2879 !2206
bge_else.43108: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43107: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43106: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43105: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvec_constants.2881:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.43113 !2213
	sw  	a0, 1(sp) !2214
	lwr 	a0, a0, a1 !2214
	sw  	a1, 2(sp) !1142
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 4 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -4 !1142
	lw  	a0, 2(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.43114 !2213
	lw  	a1, 1(sp) !2214
	lwr 	a2, a1, a0 !2214
	lw  	a3, 0(zero) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 3(sp) !1125
	blt 	a3, zero, bge_cont.43116 !1125
	lw  	a1, 12(a3) !1126
	lw  	a0, 1(a2) !535
	sw  	a0, 4(sp) !529
	lw  	a0, 0(a2) !529
	lw  	a4, 1(a1) !260
	sw  	a2, 5(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43117 !1130
	sw  	a3, 6(sp) !1131
	addi	sp, sp, 8 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -8 !1131
	lw  	a1, 6(sp) !1131
	lw  	a2, 4(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43118 !1130
beq_else.43117: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43119 !1132
	sw  	a0, 7(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a3, 6(sp) !1078
	sw  	a1, 8(sp) !1078
	addi	sp, sp, 12 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -12 !1078
	lw  	a1, 7(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 8(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43121 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43122 !1082
beq_else.43121: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43122: !1082
	lw  	a1, 6(sp) !1133
	lw  	a2, 4(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43120 !1132
beq_else.43119: !1132
	sw  	a3, 6(sp) !1135
	addi	sp, sp, 12 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -12 !1135
	lw  	a1, 6(sp) !1135
	lw  	a2, 4(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43120: !1132
beq_cont.43118: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 5(sp) !1137
	addi	sp, sp, 12 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -12 !1137
bge_cont.43116: !1125
	lw  	a0, 3(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.43123 !2213
	sw  	a0, 9(sp) !2214
	lw  	a1, 1(sp) !2214
	lwr 	a0, a1, a0 !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 12 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -12 !1142
	lw  	a0, 9(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.43124 !2213
	lw  	a1, 1(sp) !2214
	lwr 	a2, a1, a0 !2214
	lw  	a3, 0(zero) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 10(sp) !1125
	blt 	a3, zero, bge_cont.43126 !1125
	lw  	a1, 12(a3) !1126
	lw  	a0, 1(a2) !535
	sw  	a0, 11(sp) !529
	lw  	a0, 0(a2) !529
	lw  	a4, 1(a1) !260
	sw  	a2, 12(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43127 !1130
	sw  	a3, 13(sp) !1131
	addi	sp, sp, 16 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -16 !1131
	lw  	a1, 13(sp) !1131
	lw  	a2, 11(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43128 !1130
beq_else.43127: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43129 !1132
	sw  	a0, 14(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a3, 13(sp) !1078
	sw  	a1, 15(sp) !1078
	addi	sp, sp, 16 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -16 !1078
	lw  	a1, 14(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 15(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43131 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43132 !1082
beq_else.43131: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43132: !1082
	lw  	a1, 13(sp) !1133
	lw  	a2, 11(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43130 !1132
beq_else.43129: !1132
	sw  	a3, 13(sp) !1135
	addi	sp, sp, 16 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -16 !1135
	lw  	a1, 13(sp) !1135
	lw  	a2, 11(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43130: !1132
beq_cont.43128: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 12(sp) !1137
	addi	sp, sp, 16 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -16 !1137
bge_cont.43126: !1125
	lw  	a0, 10(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.43133 !2213
	sw  	a0, 16(sp) !2214
	lw  	a1, 1(sp) !2214
	lwr 	a0, a1, a0 !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 20 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -20 !1142
	lw  	a0, 16(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.43134 !2213
	lw  	a1, 1(sp) !2214
	lwr 	a2, a1, a0 !2214
	lw  	a3, 0(zero) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 17(sp) !1125
	blt 	a3, zero, bge_cont.43136 !1125
	lw  	a1, 12(a3) !1126
	lw  	a0, 1(a2) !535
	sw  	a0, 18(sp) !529
	lw  	a0, 0(a2) !529
	lw  	a4, 1(a1) !260
	sw  	a2, 19(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43137 !1130
	sw  	a3, 20(sp) !1131
	addi	sp, sp, 24 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -24 !1131
	lw  	a1, 20(sp) !1131
	lw  	a2, 18(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43138 !1130
beq_else.43137: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43139 !1132
	sw  	a0, 21(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a3, 20(sp) !1078
	sw  	a1, 22(sp) !1078
	addi	sp, sp, 24 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -24 !1078
	lw  	a1, 21(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 22(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43141 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43142 !1082
beq_else.43141: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43142: !1082
	lw  	a1, 20(sp) !1133
	lw  	a2, 18(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43140 !1132
beq_else.43139: !1132
	sw  	a3, 20(sp) !1135
	addi	sp, sp, 24 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -24 !1135
	lw  	a1, 20(sp) !1135
	lw  	a2, 18(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43140: !1132
beq_cont.43138: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 19(sp) !1137
	addi	sp, sp, 24 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -24 !1137
bge_cont.43136: !1125
	lw  	a0, 17(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.43143 !2213
	sw  	a0, 23(sp) !2214
	lw  	a1, 1(sp) !2214
	lwr 	a0, a1, a0 !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 24 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -24 !1142
	lw  	a0, 23(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.43144 !2213
	lw  	a1, 1(sp) !2214
	lwr 	a2, a1, a0 !2214
	lw  	a3, 0(zero) !1142
	addi	a3, a3, -1 !1142
	sw  	a0, 24(sp) !1125
	blt 	a3, zero, bge_cont.43146 !1125
	lw  	a1, 12(a3) !1126
	lw  	a0, 1(a2) !535
	sw  	a0, 25(sp) !529
	lw  	a0, 0(a2) !529
	lw  	a4, 1(a1) !260
	sw  	a2, 26(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43147 !1130
	sw  	a3, 27(sp) !1131
	addi	sp, sp, 28 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -28 !1131
	lw  	a1, 27(sp) !1131
	lw  	a2, 25(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43148 !1130
beq_else.43147: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43149 !1132
	sw  	a0, 28(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a3, 27(sp) !1078
	sw  	a1, 29(sp) !1078
	addi	sp, sp, 32 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -32 !1078
	lw  	a1, 28(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 29(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43151 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43152 !1082
beq_else.43151: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43152: !1082
	lw  	a1, 27(sp) !1133
	lw  	a2, 25(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43150 !1132
beq_else.43149: !1132
	sw  	a3, 27(sp) !1135
	addi	sp, sp, 32 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -32 !1135
	lw  	a1, 27(sp) !1135
	lw  	a2, 25(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43150: !1132
beq_cont.43148: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 26(sp) !1137
	addi	sp, sp, 32 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -32 !1137
bge_cont.43146: !1125
	lw  	a0, 24(sp) !2215
	addi	a1, a0, -1 !2215
	lw  	a0, 1(sp) !2215
	lw  	ra, 0(sp)
	jal 	zero, init_dirvec_constants.2881 !2215
bge_else.43144: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43143: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43134: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43133: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43124: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43123: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43114: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43113: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_vecset_constants.2884:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.43161 !2220
	sw  	a0, 1(sp) !2221
	lw  	a0, 179(a0) !2221
	lw  	a1, 119(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	sw  	a0, 2(sp) !1125
	blt 	a2, zero, bge_cont.43163 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 3(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 4(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43164 !1130
	sw  	a2, 5(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 8 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -8 !1131
	lw  	a1, 5(sp) !1131
	lw  	a2, 3(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43165 !1130
beq_else.43164: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43166 !1132
	sw  	a0, 6(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 5(sp) !1078
	sw  	a3, 7(sp) !1078
	addi	sp, sp, 8 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -8 !1078
	lw  	a1, 7(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 6(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43168 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43169 !1082
beq_else.43168: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43169: !1082
	lw  	a1, 5(sp) !1133
	lw  	a2, 3(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43167 !1132
beq_else.43166: !1132
	sw  	a2, 5(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 8 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -8 !1135
	lw  	a1, 5(sp) !1135
	lw  	a2, 3(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43167: !1132
beq_cont.43165: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 4(sp) !1137
	addi	sp, sp, 8 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -8 !1137
bge_cont.43163: !1125
	lw  	a0, 2(sp) !2214
	lw  	a0, 118(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 8 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -8 !1142
	lw  	a0, 2(sp) !2214
	lw  	a1, 117(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43171 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 8(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 9(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43172 !1130
	sw  	a2, 10(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 12 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -12 !1131
	lw  	a1, 10(sp) !1131
	lw  	a2, 8(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43173 !1130
beq_else.43172: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43174 !1132
	sw  	a0, 11(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 10(sp) !1078
	sw  	a3, 12(sp) !1078
	addi	sp, sp, 16 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -16 !1078
	lw  	a1, 12(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 11(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43176 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43177 !1082
beq_else.43176: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43177: !1082
	lw  	a1, 10(sp) !1133
	lw  	a2, 8(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43175 !1132
beq_else.43174: !1132
	sw  	a2, 10(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 16 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -16 !1135
	lw  	a1, 10(sp) !1135
	lw  	a2, 8(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43175: !1132
beq_cont.43173: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 9(sp) !1137
	addi	sp, sp, 16 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -16 !1137
bge_cont.43171: !1125
	lw  	a0, 2(sp) !2214
	lw  	a0, 116(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 16 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -16 !1142
	lw  	a0, 2(sp) !2214
	lw  	a1, 115(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43179 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 13(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 14(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43180 !1130
	sw  	a2, 15(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 16 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -16 !1131
	lw  	a1, 15(sp) !1131
	lw  	a2, 13(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43181 !1130
beq_else.43180: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43182 !1132
	sw  	a0, 16(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 15(sp) !1078
	sw  	a3, 17(sp) !1078
	addi	sp, sp, 20 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -20 !1078
	lw  	a1, 17(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 16(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43184 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43185 !1082
beq_else.43184: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43185: !1082
	lw  	a1, 15(sp) !1133
	lw  	a2, 13(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43183 !1132
beq_else.43182: !1132
	sw  	a2, 15(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 20 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -20 !1135
	lw  	a1, 15(sp) !1135
	lw  	a2, 13(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43183: !1132
beq_cont.43181: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 14(sp) !1137
	addi	sp, sp, 20 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -20 !1137
bge_cont.43179: !1125
	lw  	a0, 2(sp) !2214
	lw  	a0, 114(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 20 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -20 !1142
	lw  	a0, 2(sp) !2214
	lw  	a1, 113(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43187 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 18(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 19(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43188 !1130
	sw  	a2, 20(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 24 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -24 !1131
	lw  	a1, 20(sp) !1131
	lw  	a2, 18(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43189 !1130
beq_else.43188: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43190 !1132
	sw  	a0, 21(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 20(sp) !1078
	sw  	a3, 22(sp) !1078
	addi	sp, sp, 24 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -24 !1078
	lw  	a1, 22(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 21(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43192 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43193 !1082
beq_else.43192: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43193: !1082
	lw  	a1, 20(sp) !1133
	lw  	a2, 18(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43191 !1132
beq_else.43190: !1132
	sw  	a2, 20(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 24 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -24 !1135
	lw  	a1, 20(sp) !1135
	lw  	a2, 18(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43191: !1132
beq_cont.43189: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 19(sp) !1137
	addi	sp, sp, 24 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -24 !1137
bge_cont.43187: !1125
	addi	a1, zero, 112 !2215
	lw  	a0, 2(sp) !2215
	addi	sp, sp, 24 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -24 !2215
	lw  	a0, 1(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.43194 !2220
	sw  	a0, 23(sp) !2221
	lw  	a0, 179(a0) !2221
	sw  	a0, 24(sp) !2214
	lw  	a0, 119(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 28 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -28 !1142
	lw  	a0, 24(sp) !2214
	lw  	a1, 118(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43196 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 25(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 26(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43197 !1130
	sw  	a2, 27(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 28 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -28 !1131
	lw  	a1, 27(sp) !1131
	lw  	a2, 25(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43198 !1130
beq_else.43197: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43199 !1132
	sw  	a0, 28(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 27(sp) !1078
	sw  	a3, 29(sp) !1078
	addi	sp, sp, 32 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -32 !1078
	lw  	a1, 29(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 28(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43201 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43202 !1082
beq_else.43201: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43202: !1082
	lw  	a1, 27(sp) !1133
	lw  	a2, 25(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43200 !1132
beq_else.43199: !1132
	sw  	a2, 27(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 32 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -32 !1135
	lw  	a1, 27(sp) !1135
	lw  	a2, 25(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43200: !1132
beq_cont.43198: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 26(sp) !1137
	addi	sp, sp, 32 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -32 !1137
bge_cont.43196: !1125
	lw  	a0, 24(sp) !2214
	lw  	a0, 117(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 32 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -32 !1142
	lw  	a0, 24(sp) !2214
	lw  	a1, 116(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43204 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 30(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 31(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43205 !1130
	sw  	a2, 32(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 36 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -36 !1131
	lw  	a1, 32(sp) !1131
	lw  	a2, 30(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43206 !1130
beq_else.43205: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43207 !1132
	sw  	a0, 33(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 32(sp) !1078
	sw  	a3, 34(sp) !1078
	addi	sp, sp, 36 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -36 !1078
	lw  	a1, 34(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 33(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43209 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43210 !1082
beq_else.43209: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43210: !1082
	lw  	a1, 32(sp) !1133
	lw  	a2, 30(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43208 !1132
beq_else.43207: !1132
	sw  	a2, 32(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 36 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -36 !1135
	lw  	a1, 32(sp) !1135
	lw  	a2, 30(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43208: !1132
beq_cont.43206: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 31(sp) !1137
	addi	sp, sp, 36 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -36 !1137
bge_cont.43204: !1125
	lw  	a0, 24(sp) !2214
	lw  	a0, 115(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 36 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -36 !1142
	lw  	a0, 24(sp) !2214
	lw  	a1, 114(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43212 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 35(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 36(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43213 !1130
	sw  	a2, 37(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 40 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -40 !1131
	lw  	a1, 37(sp) !1131
	lw  	a2, 35(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43214 !1130
beq_else.43213: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43215 !1132
	sw  	a0, 38(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 37(sp) !1078
	sw  	a3, 39(sp) !1078
	addi	sp, sp, 40 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -40 !1078
	lw  	a1, 39(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 38(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43217 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43218 !1082
beq_else.43217: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43218: !1082
	lw  	a1, 37(sp) !1133
	lw  	a2, 35(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43216 !1132
beq_else.43215: !1132
	sw  	a2, 37(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 40 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -40 !1135
	lw  	a1, 37(sp) !1135
	lw  	a2, 35(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43216: !1132
beq_cont.43214: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 36(sp) !1137
	addi	sp, sp, 40 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -40 !1137
bge_cont.43212: !1125
	addi	a1, zero, 113 !2215
	lw  	a0, 24(sp) !2215
	addi	sp, sp, 40 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -40 !2215
	lw  	a0, 23(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.43219 !2220
	sw  	a0, 40(sp) !2221
	lw  	a0, 179(a0) !2221
	lw  	a1, 119(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	sw  	a0, 41(sp) !1125
	blt 	a2, zero, bge_cont.43221 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 42(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 43(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43222 !1130
	sw  	a2, 44(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 48 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -48 !1131
	lw  	a1, 44(sp) !1131
	lw  	a2, 42(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43223 !1130
beq_else.43222: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43224 !1132
	sw  	a0, 45(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 44(sp) !1078
	sw  	a3, 46(sp) !1078
	addi	sp, sp, 48 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -48 !1078
	lw  	a1, 46(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 45(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43226 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43227 !1082
beq_else.43226: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43227: !1082
	lw  	a1, 44(sp) !1133
	lw  	a2, 42(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43225 !1132
beq_else.43224: !1132
	sw  	a2, 44(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 48 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -48 !1135
	lw  	a1, 44(sp) !1135
	lw  	a2, 42(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43225: !1132
beq_cont.43223: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 43(sp) !1137
	addi	sp, sp, 48 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -48 !1137
bge_cont.43221: !1125
	lw  	a0, 41(sp) !2214
	lw  	a0, 118(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 48 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -48 !1142
	lw  	a0, 41(sp) !2214
	lw  	a1, 117(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43229 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 47(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 48(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43230 !1130
	sw  	a2, 49(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 52 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -52 !1131
	lw  	a1, 49(sp) !1131
	lw  	a2, 47(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43231 !1130
beq_else.43230: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43232 !1132
	sw  	a0, 50(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 49(sp) !1078
	sw  	a3, 51(sp) !1078
	addi	sp, sp, 52 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -52 !1078
	lw  	a1, 51(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 50(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43234 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43235 !1082
beq_else.43234: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43235: !1082
	lw  	a1, 49(sp) !1133
	lw  	a2, 47(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43233 !1132
beq_else.43232: !1132
	sw  	a2, 49(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 52 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -52 !1135
	lw  	a1, 49(sp) !1135
	lw  	a2, 47(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43233: !1132
beq_cont.43231: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 48(sp) !1137
	addi	sp, sp, 52 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -52 !1137
bge_cont.43229: !1125
	lw  	a0, 41(sp) !2214
	lw  	a0, 116(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 52 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -52 !1142
	lw  	a0, 41(sp) !2214
	lw  	a1, 115(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43237 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 52(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 53(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43238 !1130
	sw  	a2, 54(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 56 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -56 !1131
	lw  	a1, 54(sp) !1131
	lw  	a2, 52(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43239 !1130
beq_else.43238: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43240 !1132
	sw  	a0, 55(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 54(sp) !1078
	sw  	a3, 56(sp) !1078
	addi	sp, sp, 60 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -60 !1078
	lw  	a1, 56(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 55(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43242 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43243 !1082
beq_else.43242: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43243: !1082
	lw  	a1, 54(sp) !1133
	lw  	a2, 52(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43241 !1132
beq_else.43240: !1132
	sw  	a2, 54(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 60 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -60 !1135
	lw  	a1, 54(sp) !1135
	lw  	a2, 52(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43241: !1132
beq_cont.43239: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 53(sp) !1137
	addi	sp, sp, 60 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -60 !1137
bge_cont.43237: !1125
	addi	a1, zero, 114 !2215
	lw  	a0, 41(sp) !2215
	addi	sp, sp, 60 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -60 !2215
	lw  	a0, 40(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.43244 !2220
	sw  	a0, 57(sp) !2221
	lw  	a0, 179(a0) !2221
	sw  	a0, 58(sp) !2214
	lw  	a0, 119(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 60 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -60 !1142
	lw  	a0, 58(sp) !2214
	lw  	a1, 118(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43246 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 59(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 60(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43247 !1130
	sw  	a2, 61(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 64 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -64 !1131
	lw  	a1, 61(sp) !1131
	lw  	a2, 59(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43248 !1130
beq_else.43247: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43249 !1132
	sw  	a0, 62(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 61(sp) !1078
	sw  	a3, 63(sp) !1078
	addi	sp, sp, 64 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -64 !1078
	lw  	a1, 63(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 62(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43251 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43252 !1082
beq_else.43251: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43252: !1082
	lw  	a1, 61(sp) !1133
	lw  	a2, 59(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43250 !1132
beq_else.43249: !1132
	sw  	a2, 61(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 64 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -64 !1135
	lw  	a1, 61(sp) !1135
	lw  	a2, 59(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43250: !1132
beq_cont.43248: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 60(sp) !1137
	addi	sp, sp, 64 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -64 !1137
bge_cont.43246: !1125
	lw  	a0, 58(sp) !2214
	lw  	a0, 117(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 64 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -64 !1142
	lw  	a0, 58(sp) !2214
	lw  	a1, 116(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43254 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 64(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 65(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43255 !1130
	sw  	a2, 66(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 68 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -68 !1131
	lw  	a1, 66(sp) !1131
	lw  	a2, 64(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43256 !1130
beq_else.43255: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43257 !1132
	sw  	a0, 67(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 66(sp) !1078
	sw  	a3, 68(sp) !1078
	addi	sp, sp, 72 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -72 !1078
	lw  	a1, 68(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 67(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43259 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43260 !1082
beq_else.43259: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43260: !1082
	lw  	a1, 66(sp) !1133
	lw  	a2, 64(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43258 !1132
beq_else.43257: !1132
	sw  	a2, 66(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 72 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -72 !1135
	lw  	a1, 66(sp) !1135
	lw  	a2, 64(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43258: !1132
beq_cont.43256: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 65(sp) !1137
	addi	sp, sp, 72 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -72 !1137
bge_cont.43254: !1125
	addi	a1, zero, 115 !2215
	lw  	a0, 58(sp) !2215
	addi	sp, sp, 72 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -72 !2215
	lw  	a0, 57(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.43261 !2220
	sw  	a0, 69(sp) !2221
	lw  	a0, 179(a0) !2221
	lw  	a1, 119(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	sw  	a0, 70(sp) !1125
	blt 	a2, zero, bge_cont.43263 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 71(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 72(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43264 !1130
	sw  	a2, 73(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 76 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -76 !1131
	lw  	a1, 73(sp) !1131
	lw  	a2, 71(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43265 !1130
beq_else.43264: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43266 !1132
	sw  	a0, 74(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 73(sp) !1078
	sw  	a3, 75(sp) !1078
	addi	sp, sp, 76 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -76 !1078
	lw  	a1, 75(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 74(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43268 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43269 !1082
beq_else.43268: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43269: !1082
	lw  	a1, 73(sp) !1133
	lw  	a2, 71(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43267 !1132
beq_else.43266: !1132
	sw  	a2, 73(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 76 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -76 !1135
	lw  	a1, 73(sp) !1135
	lw  	a2, 71(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43267: !1132
beq_cont.43265: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 72(sp) !1137
	addi	sp, sp, 76 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -76 !1137
bge_cont.43263: !1125
	lw  	a0, 70(sp) !2214
	lw  	a0, 118(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 76 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -76 !1142
	lw  	a0, 70(sp) !2214
	lw  	a1, 117(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43271 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 76(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 77(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43272 !1130
	sw  	a2, 78(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 80 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -80 !1131
	lw  	a1, 78(sp) !1131
	lw  	a2, 76(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43273 !1130
beq_else.43272: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43274 !1132
	sw  	a0, 79(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 78(sp) !1078
	sw  	a3, 80(sp) !1078
	addi	sp, sp, 84 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -84 !1078
	lw  	a1, 80(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 79(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43276 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43277 !1082
beq_else.43276: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43277: !1082
	lw  	a1, 78(sp) !1133
	lw  	a2, 76(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43275 !1132
beq_else.43274: !1132
	sw  	a2, 78(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 84 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -84 !1135
	lw  	a1, 78(sp) !1135
	lw  	a2, 76(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43275: !1132
beq_cont.43273: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 77(sp) !1137
	addi	sp, sp, 84 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -84 !1137
bge_cont.43271: !1125
	addi	a1, zero, 116 !2215
	lw  	a0, 70(sp) !2215
	addi	sp, sp, 84 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -84 !2215
	lw  	a0, 69(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.43278 !2220
	sw  	a0, 81(sp) !2221
	lw  	a0, 179(a0) !2221
	sw  	a0, 82(sp) !2214
	lw  	a0, 119(a0) !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 84 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -84 !1142
	lw  	a0, 82(sp) !2214
	lw  	a1, 118(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	blt 	a2, zero, bge_cont.43280 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 83(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 84(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43281 !1130
	sw  	a2, 85(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 88 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -88 !1131
	lw  	a1, 85(sp) !1131
	lw  	a2, 83(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43282 !1130
beq_else.43281: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43283 !1132
	sw  	a0, 86(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 85(sp) !1078
	sw  	a3, 87(sp) !1078
	addi	sp, sp, 88 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -88 !1078
	lw  	a1, 87(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 86(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43285 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43286 !1082
beq_else.43285: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43286: !1082
	lw  	a1, 85(sp) !1133
	lw  	a2, 83(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43284 !1132
beq_else.43283: !1132
	sw  	a2, 85(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 88 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -88 !1135
	lw  	a1, 85(sp) !1135
	lw  	a2, 83(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43284: !1132
beq_cont.43282: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 84(sp) !1137
	addi	sp, sp, 88 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -88 !1137
bge_cont.43280: !1125
	addi	a1, zero, 117 !2215
	lw  	a0, 82(sp) !2215
	addi	sp, sp, 88 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -88 !2215
	lw  	a0, 81(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.43287 !2220
	sw  	a0, 88(sp) !2221
	lw  	a0, 179(a0) !2221
	lw  	a1, 119(a0) !2214
	lw  	a2, 0(zero) !1142
	addi	a2, a2, -1 !1142
	sw  	a0, 89(sp) !1125
	blt 	a2, zero, bge_cont.43289 !1125
	lw  	a0, 12(a2) !1126
	lw  	a3, 1(a1) !535
	sw  	a3, 90(sp) !529
	lw  	a3, 0(a1) !529
	lw  	a4, 1(a0) !260
	sw  	a1, 91(sp) !1130
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.43290 !1130
	sw  	a2, 92(sp) !1131
	addi	a1, a0, 0 !1131
	addi	a0, a3, 0 !1131
	addi	sp, sp, 96 !1131
	jal 	ra, setup_rect_table.2650 !1131
	addi	sp, sp, -96 !1131
	lw  	a1, 92(sp) !1131
	lw  	a2, 90(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.43291 !1130
beq_else.43290: !1130
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.43292 !1132
	sw  	a0, 93(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a2, 92(sp) !1078
	sw  	a3, 94(sp) !1078
	addi	sp, sp, 96 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -96 !1078
	lw  	a1, 94(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 93(sp) !298
	lw  	a3, 4(a2) !298
	lw  	fa1, 0(a3) !303
	fmul	fa0, fa0, fa1 !1080
	lw  	fa1, 1(a1) !1080
	lw  	a3, 4(a2) !308
	lw  	fa2, 1(a3) !313
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	lw  	fa1, 2(a1) !1080
	lw  	a1, 4(a2) !318
	lw  	fa2, 2(a1) !323
	fmul	fa1, fa1, fa2 !1080
	fadd	fa0, fa0, fa1 !1080
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.43294 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.43295 !1082
beq_else.43294: !1082
	li  	fa1, -1.000000 !1084
	fdiv	fa1, fa1, fa0 !1084
	sw  	fa1, 0(a0) !1084
	lw  	a1, 4(a2) !298
	lw  	fa1, 0(a1) !303
	fdiv	fa1, fa1, fa0 !1086
	fsgnjn  fa1, fa1, fa1 !1086
	sw  	fa1, 1(a0) !1086
	lw  	a1, 4(a2) !308
	lw  	fa1, 1(a1) !313
	fdiv	fa1, fa1, fa0 !1087
	fsgnjn  fa1, fa1, fa1 !1087
	sw  	fa1, 2(a0) !1087
	lw  	a1, 4(a2) !318
	lw  	fa1, 2(a1) !323
	fdiv	fa0, fa1, fa0 !1088
	fsgnjn  fa0, fa0, fa0 !1088
	sw  	fa0, 3(a0) !1088
beq_cont.43295: !1082
	lw  	a1, 92(sp) !1133
	lw  	a2, 90(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.43293 !1132
beq_else.43292: !1132
	sw  	a2, 92(sp) !1135
	addi	a1, a0, 0 !1135
	addi	a0, a3, 0 !1135
	addi	sp, sp, 96 !1135
	jal 	ra, setup_second_table.2656 !1135
	addi	sp, sp, -96 !1135
	lw  	a1, 92(sp) !1135
	lw  	a2, 90(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.43293: !1132
beq_cont.43291: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 91(sp) !1137
	addi	sp, sp, 96 !1137
	jal 	ra, iter_setup_dirvec_constants.2659 !1137
	addi	sp, sp, -96 !1137
bge_cont.43289: !1125
	addi	a1, zero, 118 !2215
	lw  	a0, 89(sp) !2215
	addi	sp, sp, 96 !2215
	jal 	ra, init_dirvec_constants.2881 !2215
	addi	sp, sp, -96 !2215
	lw  	a0, 88(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.43296 !2220
	sw  	a0, 95(sp) !2221
	lw  	a0, 179(a0) !2221
	addi	a1, zero, 119 !2221
	addi	sp, sp, 96 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -96 !2221
	lw  	a0, 95(sp) !2222
	addi	a0, a0, -1 !2222
	lw  	ra, 0(sp)
	jal 	zero, init_vecset_constants.2884 !2222
bge_else.43296: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43287: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43278: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43261: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43244: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43219: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43194: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43161: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_reflections.2901:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.43305 !2274
	lw  	a1, 12(a0) !2275
	lw  	a2, 2(a1) !270
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.43306 !2276
	lw  	a2, 7(a1) !368
	lw  	fa0, 0(a2) !373
	li  	fa1, 1.000000 !2277
	flt 	a2, fa0, fa1 !121
	bne 	a2, zero, beq_else.43307 !2277
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.43307: !2277
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.43309 !2280
	slli	a0, a0, 2 !2245
	lw  	a2, 434(zero) !2246
	li  	fa0, 1.000000 !2247
	lw  	a1, 7(a1) !368
	lw  	fa1, 0(a1) !373
	fsub	fa0, fa0, fa1 !2247
	sw  	fa0, 1(sp) !2248
	lw  	fa0, 78(zero) !2248
	fsgnjn  fa0, fa0, fa0 !2248
	sw  	fa0, 2(sp) !2249
	lw  	fa0, 79(zero) !2249
	fsgnjn  fa0, fa0, fa0 !2249
	sw  	fa0, 3(sp) !2250
	lw  	fa0, 80(zero) !2250
	fsgnjn  fa0, fa0, fa0 !2250
	sw  	a0, 4(sp) !2251
	addi	a0, a0, 1 !2251
	sw  	fa0, 5(sp) !2251
	lw  	fa0, 78(zero) !2251
	sw  	a0, 6(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	fa0, 7(sp) !2190
	addi	fa0, zero, 0
	sw  	a2, 8(sp) !2190
	addi	sp, sp, 12 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -12 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 9(sp) !2191
	addi	sp, sp, 12 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -12 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 9(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 7(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 3(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 5(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 10(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 12 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -12 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 1(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 10(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 6(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 8(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	addi	a0, a1, 1 !2252
	sw  	a0, 11(sp) !2252
	lw  	a0, 4(sp) !2252
	addi	a0, a0, 2 !2252
	lw  	fa0, 79(zero) !2252
	sw  	a0, 12(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	fa0, 13(sp) !2190
	addi	fa0, zero, 0
	addi	sp, sp, 16 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -16 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 14(sp) !2191
	addi	sp, sp, 16 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -16 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 14(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 2(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 13(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 5(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 15(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 16 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -16 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 1(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 15(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 12(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 11(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	lw  	a0, 8(sp) !2253
	addi	a0, a0, 2 !2253
	sw  	a0, 16(sp) !2253
	lw  	a0, 4(sp) !2253
	addi	a0, a0, 3 !2253
	lw  	fa0, 80(zero) !2253
	sw  	a0, 17(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	fa0, 18(sp) !2190
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -20 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 19(sp) !2191
	addi	sp, sp, 20 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -20 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 19(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 2(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 3(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 18(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 20(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 24 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -24 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 1(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 20(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 17(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 16(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	lw  	a0, 8(sp) !2254
	addi	a0, a0, 3 !2254
	sw  	a0, 434(zero) !2254
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.43309: !2280
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.43311 !2282
	slli	a0, a0, 2 !2259
	addi	a0, a0, 1 !2259
	sw  	a0, 21(sp) !2260
	lw  	a0, 434(zero) !2260
	li  	fa0, 1.000000 !2261
	sw  	a0, 22(sp) !368
	lw  	a0, 7(a1) !368
	lw  	fa1, 0(a0) !373
	fsub	fa0, fa0, fa1 !2261
	lw  	a0, 4(a1) !328
	sw  	fa0, 23(sp) !208
	lw  	fa0, 78(zero) !208
	lw  	fa1, 0(a0) !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 79(zero) !208
	lw  	fa2, 1(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 80(zero) !208
	lw  	fa2, 2(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 2.000000 !2265
	lw  	a0, 4(a1) !298
	lw  	fa2, 0(a0) !303
	fmul	fa1, fa1, fa2 !2265
	fmul	fa1, fa1, fa0 !2265
	lw  	fa2, 78(zero) !2265
	fsub	fa1, fa1, fa2 !2265
	sw  	fa1, 24(sp) !2266
	li  	fa1, 2.000000 !2266
	lw  	a0, 4(a1) !308
	lw  	fa2, 1(a0) !313
	fmul	fa1, fa1, fa2 !2266
	fmul	fa1, fa1, fa0 !2266
	lw  	fa2, 79(zero) !2266
	fsub	fa1, fa1, fa2 !2266
	sw  	fa1, 25(sp) !2267
	li  	fa1, 2.000000 !2267
	lw  	a0, 4(a1) !318
	lw  	fa2, 2(a0) !323
	fmul	fa1, fa1, fa2 !2267
	fmul	fa0, fa1, fa0 !2267
	lw  	fa1, 80(zero) !2267
	fsub	fa0, fa0, fa1 !2267
	addi	a0, zero, 3 !2190
	sw  	fa0, 26(sp) !2190
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -28 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 27(sp) !2191
	addi	sp, sp, 28 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -28 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 27(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 24(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 25(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 26(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 28(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 32 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -32 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 23(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 28(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 21(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 22(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	addi	a0, a1, 1 !2268
	sw  	a0, 434(zero) !2268
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.43311: !2282
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.43306: !2276
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.43305: !2274
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_array:
    addi    a2, a0, 0
    addi    a0, gp, 0
create_array_loop:
    bge     zero, a2, create_array_finish
    sw      a1, 0(gp)
    addi    gp, gp, 1
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
    addi    gp, gp, 1
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
