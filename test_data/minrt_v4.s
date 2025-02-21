_min_caml_start:
	li  	ra, _min_caml_finish
	li  	sp, 131072
	li  	gp, 262144
	sw  	ra, 0(sp)
	addi	sp, sp, 1
	addi	a0, zero, 1 !6
	addi	a1, zero, 0 !6
	jal 	ra, create_array !6
	addi	a0, zero, 0 !11
	addi	fa0, zero, 0	jal 	ra, create_float_array !11
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
	addi	fa0, zero, 0	jal 	ra, create_float_array !16
	addi	a0, zero, 3 !19
	addi	fa0, zero, 0	jal 	ra, create_float_array !19
	addi	a0, zero, 3 !22
	addi	fa0, zero, 0	jal 	ra, create_float_array !22
	addi	a0, zero, 1 !25
	li  	fa0, 255.000000 !25
	jal 	ra, create_float_array !25
	addi	a0, zero, 50 !28
	sw  	a0, 0(sp) !28
	addi	a0, zero, 1 !28
	addi	a1, zero, -1 !28
	addi	sp, sp, 1 !28
	jal 	ra, create_array !28
	addi	sp, sp, -1 !28
	addi	a1, a0, 0 !28
	lw  	a0, 0(sp) !28
	addi	sp, sp, 1 !28
	jal 	ra, create_array !28
	addi	sp, sp, -1 !28
	addi	a0, zero, 1 !31
	sw  	a0, 1(sp) !31
	addi	a0, zero, 1 !31
	lwi 	a1, 262227 !31
	addi	sp, sp, 2 !31
	jal 	ra, create_array !31
	addi	sp, sp, -2 !31
	addi	a1, a0, 0 !31
	lw  	a0, 1(sp) !31
	addi	sp, sp, 2 !31
	jal 	ra, create_array !31
	addi	sp, sp, -2 !31
	addi	a0, zero, 1 !36
	addi	fa0, zero, 0	addi	sp, sp, 2 !36
	jal 	ra, create_float_array !36
	addi	sp, sp, -2 !36
	addi	a0, zero, 1 !39
	addi	a1, zero, 0 !39
	addi	sp, sp, 2 !39
	jal 	ra, create_array !39
	addi	sp, sp, -2 !39
	addi	a0, zero, 1 !42
	li  	fa0, 1000000000.000000 !42
	addi	sp, sp, 2 !42
	jal 	ra, create_float_array !42
	addi	sp, sp, -2 !42
	addi	a0, zero, 3 !45
	addi	fa0, zero, 0	addi	sp, sp, 2 !45
	jal 	ra, create_float_array !45
	addi	sp, sp, -2 !45
	addi	a0, zero, 1 !48
	addi	a1, zero, 0 !48
	addi	sp, sp, 2 !48
	jal 	ra, create_array !48
	addi	sp, sp, -2 !48
	addi	a0, zero, 3 !51
	addi	fa0, zero, 0	addi	sp, sp, 2 !51
	jal 	ra, create_float_array !51
	addi	sp, sp, -2 !51
	addi	a0, zero, 3 !54
	addi	fa0, zero, 0	addi	sp, sp, 2 !54
	jal 	ra, create_float_array !54
	addi	sp, sp, -2 !54
	addi	a0, zero, 3 !58
	addi	fa0, zero, 0	addi	sp, sp, 2 !58
	jal 	ra, create_float_array !58
	addi	sp, sp, -2 !58
	addi	a0, zero, 3 !61
	addi	fa0, zero, 0	addi	sp, sp, 2 !61
	jal 	ra, create_float_array !61
	addi	sp, sp, -2 !61
	addi	a0, zero, 2 !65
	addi	a1, zero, 0 !65
	addi	sp, sp, 2 !65
	jal 	ra, create_array !65
	addi	sp, sp, -2 !65
	addi	a0, zero, 2 !68
	addi	a1, zero, 0 !68
	addi	sp, sp, 2 !68
	jal 	ra, create_array !68
	addi	sp, sp, -2 !68
	addi	a0, zero, 1 !71
	addi	fa0, zero, 0	addi	sp, sp, 2 !71
	jal 	ra, create_float_array !71
	addi	sp, sp, -2 !71
	addi	a0, zero, 3 !75
	addi	fa0, zero, 0	addi	sp, sp, 2 !75
	jal 	ra, create_float_array !75
	addi	sp, sp, -2 !75
	addi	a0, zero, 3 !78
	addi	fa0, zero, 0	addi	sp, sp, 2 !78
	jal 	ra, create_float_array !78
	addi	sp, sp, -2 !78
	addi	a0, zero, 3 !82
	addi	fa0, zero, 0	addi	sp, sp, 2 !82
	jal 	ra, create_float_array !82
	addi	sp, sp, -2 !82
	addi	a0, zero, 3 !84
	addi	fa0, zero, 0	addi	sp, sp, 2 !84
	jal 	ra, create_float_array !84
	addi	sp, sp, -2 !84
	addi	a0, zero, 3 !86
	addi	fa0, zero, 0	addi	sp, sp, 2 !86
	jal 	ra, create_float_array !86
	addi	sp, sp, -2 !86
	addi	a0, zero, 3 !90
	addi	fa0, zero, 0	addi	sp, sp, 2 !90
	jal 	ra, create_float_array !90
	addi	sp, sp, -2 !90
	addi	a0, zero, 0 !95
	addi	fa0, zero, 0	addi	sp, sp, 2 !95
	jal 	ra, create_float_array !95
	addi	sp, sp, -2 !95
	addi	a1, a0, 0 !95
	addi	a0, zero, 0 !96
	sw  	a1, 2(sp) !96
	addi	sp, sp, 3 !96
	jal 	ra, create_array !96
	addi	sp, sp, -3 !96
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
	addi	sp, sp, 3 !97
	jal 	ra, create_array !97
	addi	sp, sp, -3 !97
	addi	a1, a0, 0 !97
	addi	a0, zero, 5 !98
	addi	sp, sp, 3 !98
	jal 	ra, create_array !98
	addi	sp, sp, -3 !98
	addi	a0, zero, 0 !103
	addi	fa0, zero, 0	addi	sp, sp, 3 !103
	jal 	ra, create_float_array !103
	addi	sp, sp, -3 !103
	sw  	a0, 3(sp) !104
	addi	a0, zero, 3 !104
	addi	fa0, zero, 0	addi	sp, sp, 4 !104
	jal 	ra, create_float_array !104
	addi	sp, sp, -4 !104
	sw  	a0, 4(sp) !105
	addi	a0, zero, 60 !105
	lw  	a1, 3(sp) !105
	addi	sp, sp, 5 !105
	jal 	ra, create_array !105
	addi	sp, sp, -5 !105
	addi	a1, gp, 0 !106
	addi	gp, gp, 2 !106
	sw  	a0, 1(a1) !106
	lw  	a0, 4(sp) !106
	sw  	a0, 0(a1) !106
	addi	a0, a1, 0 !106
	addi	a0, zero, 0 !111
	addi	fa0, zero, 0	addi	sp, sp, 5 !111
	jal 	ra, create_float_array !111
	addi	sp, sp, -5 !111
	addi	a1, a0, 0 !111
	addi	a0, zero, 0 !112
	sw  	a1, 5(sp) !112
	addi	sp, sp, 6 !112
	jal 	ra, create_array !112
	addi	sp, sp, -6 !112
	addi	a1, gp, 0 !113
	addi	gp, gp, 2 !113
	sw  	a0, 1(a1) !113
	lw  	a0, 5(sp) !113
	sw  	a0, 0(a1) !113
	addi	a0, a1, 0 !113
	addi	a1, zero, 180 !114
	addi	a2, zero, 0 !114
	addi	fa0, zero, 0	addi	a3, gp, 0 !114
	addi	gp, gp, 3 !114
	sw  	fa0, 2(a3) !114
	sw  	a0, 1(a3) !114
	sw  	a2, 0(a3) !114
	addi	a0, a3, 0 !114
	addi	t0, a1, 0 !114
	addi	a1, a0, 0 !114
	addi	a0, t0, 0 !114
	addi	sp, sp, 6 !114
	jal 	ra, create_array !114
	addi	sp, sp, -6 !114
	addi	a0, zero, 1 !118
	addi	a1, zero, 0 !118
	addi	sp, sp, 6 !118
	jal 	ra, create_array !118
	addi	sp, sp, -6 !118
	addi	a0, zero, 256 !2314
	addi	a1, zero, 256 !2314
	addi	a2, zero, 6 !2314
	swi 	a0, 262298 !2294
	swi 	a1, 262299 !2295
	addi	a0, zero, 128 !2296
	swi 	a0, 262300 !2296
	addi	a0, zero, 128 !2297
	swi 	a0, 262301 !2297
	li  	fa0, 0.500000 !2298
	swi 	fa0, 262302 !2298
	lwi 	a0, 262298 !2121
	sw  	a2, 6(sp) !2099
	addi	a2, zero, 3 !2099
	addi	fa0, zero, 0	sw  	a0, 7(sp) !2099
	addi	a0, a2, 0 !2099
	addi	sp, sp, 8 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -8 !2099
	sw  	a0, 8(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 9 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -9 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 9 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -9 !2088
	sw  	a0, 9(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 10 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -10 !2089
	lw  	a1, 9(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 10 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -10 !2090
	lw  	a1, 9(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 10 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -10 !2091
	lw  	a1, 9(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 10 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -10 !2092
	lw  	a1, 9(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 10 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -10 !2101
	sw  	a0, 10(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 11 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -11 !2102
	sw  	a0, 11(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 12 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -12 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 12 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -12 !2088
	sw  	a0, 12(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 13 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -13 !2089
	lw  	a1, 12(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 13 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -13 !2090
	lw  	a1, 12(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 13 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -13 !2091
	lw  	a1, 12(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 13 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -13 !2092
	lw  	a1, 12(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 13 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -13 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 13 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -13 !2088
	sw  	a0, 13(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 14 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -14 !2089
	lw  	a1, 13(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 14 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -14 !2090
	lw  	a1, 13(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 14 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -14 !2091
	lw  	a1, 13(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 14 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -14 !2092
	lw  	a1, 13(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 14 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -14 !2105
	sw  	a0, 14(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 15 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -15 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 15 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -15 !2088
	sw  	a0, 15(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 16 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -16 !2089
	lw  	a1, 15(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 16 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -16 !2090
	lw  	a1, 15(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 16 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -16 !2091
	lw  	a1, 15(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 16 !2092
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
	lw  	a0, 7(sp) !2121
	addi	sp, sp, 16 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -16 !2121
	lwi 	a1, 262298 !2122
	addi	a1, a1, -2 !2122
	addi	sp, sp, 16 !2122
	jal 	ra, init_line_elements.2847 !2122
	addi	sp, sp, -16 !2122
	sw  	a0, 16(sp) !2121
	lwi 	a0, 262298 !2121
	sw  	a0, 17(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0	addi	sp, sp, 18 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -18 !2099
	sw  	a0, 18(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 19 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -19 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 19 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -19 !2088
	sw  	a0, 19(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 20 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -20 !2089
	lw  	a1, 19(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 20 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -20 !2090
	lw  	a1, 19(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 20 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -20 !2091
	lw  	a1, 19(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 20 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -20 !2092
	lw  	a1, 19(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 20 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -20 !2101
	sw  	a0, 20(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 21 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -21 !2102
	sw  	a0, 21(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 22 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -22 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 22 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -22 !2088
	sw  	a0, 22(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 23 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -23 !2089
	lw  	a1, 22(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 23 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -23 !2090
	lw  	a1, 22(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 23 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -23 !2091
	lw  	a1, 22(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 23 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -23 !2092
	lw  	a1, 22(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 23 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -23 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 23 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -23 !2088
	sw  	a0, 23(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 24 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -24 !2089
	lw  	a1, 23(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 24 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -24 !2090
	lw  	a1, 23(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 24 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -24 !2091
	lw  	a1, 23(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 24 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -24 !2092
	lw  	a1, 23(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 24 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -24 !2105
	sw  	a0, 24(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 25 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -25 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 25 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -25 !2088
	sw  	a0, 25(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 26 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -26 !2089
	lw  	a1, 25(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 26 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -26 !2090
	lw  	a1, 25(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 26 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -26 !2091
	lw  	a1, 25(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 26 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -26 !2092
	lw  	a1, 25(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 24(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 23(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 22(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 21(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 20(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 19(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 18(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 17(sp) !2121
	addi	sp, sp, 26 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -26 !2121
	lwi 	a1, 262298 !2122
	addi	a1, a1, -2 !2122
	addi	sp, sp, 26 !2122
	jal 	ra, init_line_elements.2847 !2122
	addi	sp, sp, -26 !2122
	sw  	a0, 26(sp) !2121
	lwi 	a0, 262298 !2121
	sw  	a0, 27(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0	addi	sp, sp, 28 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -28 !2099
	sw  	a0, 28(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 29 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -29 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 29 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -29 !2088
	sw  	a0, 29(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 30 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -30 !2089
	lw  	a1, 29(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 30 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -30 !2090
	lw  	a1, 29(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 30 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -30 !2091
	lw  	a1, 29(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 30 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -30 !2092
	lw  	a1, 29(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 30 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -30 !2101
	sw  	a0, 30(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 31 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -31 !2102
	sw  	a0, 31(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 32 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -32 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 32 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -32 !2088
	sw  	a0, 32(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 33 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -33 !2089
	lw  	a1, 32(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 33 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -33 !2090
	lw  	a1, 32(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 33 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -33 !2091
	lw  	a1, 32(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 33 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -33 !2092
	lw  	a1, 32(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 33 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -33 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 33 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -33 !2088
	sw  	a0, 33(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 34 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -34 !2089
	lw  	a1, 33(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 34 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -34 !2090
	lw  	a1, 33(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 34 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -34 !2091
	lw  	a1, 33(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 34 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -34 !2092
	lw  	a1, 33(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 34 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -34 !2105
	sw  	a0, 34(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 35 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -35 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 35 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -35 !2088
	sw  	a0, 35(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 36 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -36 !2089
	lw  	a1, 35(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 36 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -36 !2090
	lw  	a1, 35(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 36 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -36 !2091
	lw  	a1, 35(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 36 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -36 !2092
	lw  	a1, 35(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 34(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 33(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 32(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 31(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 30(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 29(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 28(sp) !2107
	sw  	a1, 0(a0) !2107
	addi	a1, a0, 0 !2107
	lw  	a0, 27(sp) !2121
	addi	sp, sp, 36 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -36 !2121
	lwi 	a1, 262298 !2122
	addi	a1, a1, -2 !2122
	addi	sp, sp, 36 !2122
	jal 	ra, init_line_elements.2847 !2122
	addi	sp, sp, -36 !2122
	sw  	a0, 36(sp) !570
	addi	sp, sp, 37 !570
	jal 	ra, read_float !570
	addi	sp, sp, -37 !570
	swi 	fa0, 262216 !570
	addi	sp, sp, 37 !571
	jal 	ra, read_float !571
	addi	sp, sp, -37 !571
	swi 	fa0, 262217 !571
	addi	sp, sp, 37 !572
	jal 	ra, read_float !572
	addi	sp, sp, -37 !572
	swi 	fa0, 262218 !572
	addi	sp, sp, 37 !574
	jal 	ra, read_float !574
	addi	sp, sp, -37 !574
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 37(sp) !575
	addi	sp, sp, 38 !575
	jal 	ra, cos !575
	addi	sp, sp, -38 !575
	sw  	fa0, 38(sp) !576
	lw  	fa0, 37(sp) !576
	addi	sp, sp, 39 !576
	jal 	ra, sin !576
	addi	sp, sp, -39 !576
	sw  	fa0, 39(sp) !577
	addi	sp, sp, 40 !577
	jal 	ra, read_float !577
	addi	sp, sp, -40 !577
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 40(sp) !578
	addi	sp, sp, 41 !578
	jal 	ra, cos !578
	addi	sp, sp, -41 !578
	sw  	fa0, 41(sp) !579
	lw  	fa0, 40(sp) !579
	addi	sp, sp, 42 !579
	jal 	ra, sin !579
	addi	sp, sp, -42 !579
	lw  	fa1, 38(sp) !581
	fmul	fa2, fa1, fa0 !581
	li  	fa3, 200.000000 !581
	fmul	fa2, fa2, fa3 !581
	swi 	fa2, 262315 !581
	li  	fa2, -200.000000 !582
	lw  	fa3, 39(sp) !582
	fmul	fa2, fa3, fa2 !582
	swi 	fa2, 262316 !582
	lw  	fa2, 41(sp) !583
	fmul	fa4, fa1, fa2 !583
	li  	fa5, 200.000000 !583
	fmul	fa4, fa4, fa5 !583
	swi 	fa4, 262317 !583
	swi 	fa2, 262309 !585
	swi 	zero, 262310 !586
	fsgnjn  fa4, fa0, fa0 !587
	swi 	fa4, 262311 !587
	fsgnjn  fa4, fa3, fa3 !589
	fmul	fa0, fa4, fa0 !589
	swi 	fa0, 262312 !589
	fsgnjn  fa0, fa1, fa1 !590
	swi 	fa0, 262313 !590
	fsgnjn  fa0, fa3, fa3 !591
	fmul	fa0, fa0, fa2 !591
	swi 	fa0, 262314 !591
	lwi 	fa0, 262216 !593
	lwi 	fa1, 262315 !593
	fsub	fa0, fa0, fa1 !593
	swi 	fa0, 262219 !593
	lwi 	fa0, 262217 !594
	lwi 	fa1, 262316 !594
	fsub	fa0, fa0, fa1 !594
	swi 	fa0, 262220 !594
	lwi 	fa0, 262218 !595
	lwi 	fa1, 262317 !595
	fsub	fa0, fa0, fa1 !595
	swi 	fa0, 262221 !595
	addi	sp, sp, 42 !602
	jal 	ra, read_int !602
	addi	sp, sp, -42 !602
	addi	sp, sp, 42 !605
	jal 	ra, read_float !605
	addi	sp, sp, -42 !605
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 42(sp) !606
	addi	sp, sp, 43 !606
	jal 	ra, sin !606
	addi	sp, sp, -43 !606
	fsgnjn  fa0, fa0, fa0 !607
	swi 	fa0, 262223 !607
	addi	sp, sp, 43 !608
	jal 	ra, read_float !608
	addi	sp, sp, -43 !608
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 43(sp) !609
	lw  	fa0, 42(sp) !609
	addi	sp, sp, 44 !609
	jal 	ra, cos !609
	addi	sp, sp, -44 !609
	sw  	fa0, 44(sp) !610
	lw  	fa0, 43(sp) !610
	addi	sp, sp, 45 !610
	jal 	ra, sin !610
	addi	sp, sp, -45 !610
	lw  	fa1, 44(sp) !611
	fmul	fa0, fa1, fa0 !611
	swi 	fa0, 262222 !611
	lw  	fa0, 43(sp) !612
	addi	sp, sp, 45 !612
	jal 	ra, cos !612
	addi	sp, sp, -45 !612
	lw  	fa1, 44(sp) !613
	fmul	fa0, fa1, fa0 !613
	swi 	fa0, 262224 !613
	addi	sp, sp, 45 !614
	jal 	ra, read_float !614
	addi	sp, sp, -45 !614
	swi 	fa0, 262225 !614
	addi	a0, zero, 0 !756
	addi	sp, sp, 45 !756
	jal 	ra, read_object.2554 !756
	addi	sp, sp, -45 !756
	addi	a0, zero, 0 !793
	addi	sp, sp, 45 !793
	jal 	ra, read_and_network.2562 !793
	addi	sp, sp, -45 !793
	addi	a0, zero, 0 !794
	addi	sp, sp, 45 !794
	jal 	ra, read_or_network.2560 !794
	addi	sp, sp, -45 !794
	swi 	a0, 262278 !794
	addi	a0, zero, 80 !1938
	addi	sp, sp, 45 !1938
	jal 	ra, print_char !1938
	addi	sp, sp, -45 !1938
	addi	a0, zero, 54 !1939
	addi	sp, sp, 45 !1939
	jal 	ra, print_char !1939
	addi	sp, sp, -45 !1939
	addi	a0, zero, 10 !1940
	addi	sp, sp, 45 !1940
	jal 	ra, print_char !1940
	addi	sp, sp, -45 !1940
	lwi 	a0, 262298 !1941
	addi	sp, sp, 45 !1941
	jal 	ra, print_int !1941
	addi	sp, sp, -45 !1941
	addi	a0, zero, 32 !1942
	addi	sp, sp, 45 !1942
	jal 	ra, print_char !1942
	addi	sp, sp, -45 !1942
	lwi 	a0, 262299 !1943
	addi	sp, sp, 45 !1943
	jal 	ra, print_int !1943
	addi	sp, sp, -45 !1943
	addi	a0, zero, 32 !1944
	addi	sp, sp, 45 !1944
	jal 	ra, print_char !1944
	addi	sp, sp, -45 !1944
	addi	a0, zero, 255 !1945
	addi	sp, sp, 45 !1945
	jal 	ra, print_int !1945
	addi	sp, sp, -45 !1945
	addi	a0, zero, 10 !1946
	addi	sp, sp, 45 !1946
	jal 	ra, print_char !1946
	addi	sp, sp, -45 !1946
	addi	a0, zero, 4 !2227
	addi	sp, sp, 45 !2227
	jal 	ra, create_dirvecs.2879 !2227
	addi	sp, sp, -45 !2227
	addi	a0, zero, 9 !2228
	addi	a1, zero, 0 !2228
	addi	a2, zero, 0 !2228
	addi	sp, sp, 45 !2228
	jal 	ra, calc_dirvec_rows.2870 !2228
	addi	sp, sp, -45 !2228
	addi	a0, zero, 4 !2229
	addi	sp, sp, 45 !2229
	jal 	ra, init_vecset_constants.2884 !2229
	addi	sp, sp, -45 !2229
	lwi 	fa0, 262222 !188
	swi 	fa0, 262328 !188
	lwi 	fa0, 262223 !189
	swi 	fa0, 262329 !189
	lwi 	fa0, 262224 !190
	swi 	fa0, 262330 !190
	lwi 	a0, 262144 !1142
	addi	a1, a0, -1 !1142
	li  	a0, 262391 !0
	addi	sp, sp, 45 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -45 !1142
	lwi 	a0, 262144 !2307
	addi	a0, a0, -1 !2307
	blt 	a0, zero, bge_else.19684 !2274
	li  	t0, 262156
	lwr 	a1, t0, a0 !2275
	lw  	a2, 2(a1) !270
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.19686 !2276
	lw  	a2, 7(a1) !368
	lw  	fa0, 0(a2) !373
	li  	fa1, 1.000000 !2277
	flt 	a2, fa0, fa1 !121
	bne 	a2, zero, beq_else.19688 !2277
	jal 	zero, beq_cont.19689 !2277
beq_else.19688: !2277
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.19690 !2280
	slli	a0, a0, 2 !2245
	lwi 	a2, 262578 !2246
	li  	fa0, 1.000000 !2247
	lw  	a1, 7(a1) !368
	lw  	fa1, 0(a1) !373
	fsub	fa0, fa0, fa1 !2247
	sw  	a2, 45(sp) !2248
	lwi 	a2, 262222 !2248
	sw  	fa0, 46(sp) !2248
	fsgnjn  fa0, a2, a2 !2248
	sw  	fa0, 47(sp) !2249
	lwi 	fa0, 262223 !2249
	fsgnjn  fa0, fa0, fa0 !2249
	sw  	fa0, 48(sp) !2250
	lwi 	fa0, 262224 !2250
	fsgnjn  fa0, fa0, fa0 !2250
	sw  	a0, 49(sp) !2251
	addi	a0, a0, 1 !2251
	sw  	a0, 50(sp) !2251
	lwi 	a0, 262222 !2251
	sw  	fa0, 51(sp) !2190
	addi	fa0, zero, 3 !2190
	addi	fa1, zero, 0	sw  	a0, 52(sp) !2190
	addi	a0, fa0, 0 !2190
	fsgnj   fa0, fa1, fa1 !2190
	addi	sp, sp, 53 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -53 !2190
	addi	a1, a0, 0 !2190
	lwi 	a0, 262144 !2191
	sw  	a1, 53(sp) !2191
	addi	sp, sp, 54 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -54 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 53(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 52(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 48(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 51(sp) !171
	sw  	a2, 2(a0) !171
	lwi 	a0, 262144 !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 54(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 55 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -55 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 46(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 54(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 50(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 45(sp) !2240
	li  	t0, 262398
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	addi	a0, a1, 1 !2252
	lw  	a1, 49(sp) !2252
	addi	a1, a1, 2 !2252
	lwi 	fa0, 262223 !2252
	sw  	a0, 55(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	a1, 56(sp) !2190
	addi	a1, zero, 0	sw  	fa0, 57(sp) !2190
	fsgnj   fa0, a1, a1 !2190
	addi	sp, sp, 58 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -58 !2190
	addi	a1, a0, 0 !2190
	lwi 	a0, 262144 !2191
	sw  	a1, 58(sp) !2191
	addi	sp, sp, 59 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -59 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 58(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 47(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 57(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 51(sp) !171
	sw  	a2, 2(a0) !171
	lwi 	a0, 262144 !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 59(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 60 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -60 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 46(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 59(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 56(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 55(sp) !2240
	li  	t0, 262398
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	lw  	a0, 45(sp) !2253
	addi	a0, a0, 2 !2253
	sw  	a0, 60(sp) !2253
	lw  	a0, 49(sp) !2253
	addi	a0, a0, 3 !2253
	lwi 	fa0, 262224 !2253
	sw  	a0, 61(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	fa0, 62(sp) !2190
	addi	fa0, zero, 0	addi	sp, sp, 63 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -63 !2190
	addi	a1, a0, 0 !2190
	lwi 	a0, 262144 !2191
	sw  	a1, 63(sp) !2191
	addi	sp, sp, 64 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -64 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 63(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 47(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 48(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 62(sp) !171
	sw  	a2, 2(a0) !171
	lwi 	a0, 262144 !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 64(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 65 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -65 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 46(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 64(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 61(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 60(sp) !2240
	li  	t0, 262398
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	lw  	a0, 45(sp) !2254
	addi	a0, a0, 3 !2254
	swi 	a0, 262578 !2254
	jal 	zero, beq_cont.19691 !2280
beq_else.19690: !2280
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.19692 !2282
	slli	a0, a0, 2 !2259
	addi	a0, a0, 1 !2259
	sw  	a0, 65(sp) !2260
	lwi 	a0, 262578 !2260
	li  	fa0, 1.000000 !2261
	sw  	a0, 66(sp) !368
	lw  	a0, 7(a1) !368
	lw  	fa1, 0(a0) !373
	fsub	fa0, fa0, fa1 !2261
	lw  	a0, 4(a1) !328
	sw  	fa0, 67(sp) !208
	lwi 	fa0, 262222 !208
	lw  	fa1, 0(a0) !208
	fmul	fa0, fa0, fa1 !208
	lwi 	fa1, 262223 !208
	lw  	fa2, 1(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lwi 	fa1, 262224 !208
	lw  	fa2, 2(a0) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	li  	fa1, 2.000000 !2265
	lw  	a0, 4(a1) !298
	lw  	fa2, 0(a0) !303
	fmul	fa1, fa1, fa2 !2265
	fmul	fa1, fa1, fa0 !2265
	lwi 	fa2, 262222 !2265
	fsub	fa1, fa1, fa2 !2265
	sw  	fa1, 68(sp) !2266
	li  	fa1, 2.000000 !2266
	lw  	a0, 4(a1) !308
	lw  	fa2, 1(a0) !313
	fmul	fa1, fa1, fa2 !2266
	fmul	fa1, fa1, fa0 !2266
	lwi 	fa2, 262223 !2266
	fsub	fa1, fa1, fa2 !2266
	sw  	fa1, 69(sp) !2267
	li  	fa1, 2.000000 !2267
	lw  	a0, 4(a1) !318
	lw  	fa2, 2(a0) !323
	fmul	fa1, fa1, fa2 !2267
	fmul	fa0, fa1, fa0 !2267
	lwi 	fa1, 262224 !2267
	fsub	fa0, fa0, fa1 !2267
	addi	a0, zero, 3 !2190
	sw  	fa0, 70(sp) !2190
	addi	fa0, zero, 0	addi	sp, sp, 71 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -71 !2190
	addi	a1, a0, 0 !2190
	lwi 	a0, 262144 !2191
	sw  	a1, 71(sp) !2191
	addi	sp, sp, 72 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -72 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 71(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 68(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 69(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 70(sp) !171
	sw  	a2, 2(a0) !171
	lwi 	a0, 262144 !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 72(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 73 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -73 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 67(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 72(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 65(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 66(sp) !2240
	li  	t0, 262398
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	addi	a0, a1, 1 !2268
	swi 	a0, 262578 !2268
	jal 	zero, beq_cont.19693 !2282
beq_else.19692: !2282
beq_cont.19693: !2282
beq_cont.19691: !2280
beq_cont.19689: !2277
	jal 	zero, beq_cont.19687 !2276
beq_else.19686: !2276
beq_cont.19687: !2276
	jal 	zero, bge_cont.19685 !2274
bge_else.19684: !2274
bge_cont.19685: !2274
	addi	a2, zero, 0 !2308
	lwi 	fa0, 262302 !2037
	lwi 	a0, 262301 !2037
	sub 	t0, zero, a0 !2037
	addi	a0, t0, 0 !2037
	itof	fa1, a0 !2037
	fmul	fa0, fa0, fa1 !2037
	lwi 	fa1, 262312 !2040
	fmul	fa1, fa0, fa1 !2040
	lwi 	fa2, 262315 !2040
	fadd	fa1, fa1, fa2 !2040
	lwi 	fa2, 262313 !2041
	fmul	fa2, fa0, fa2 !2041
	lwi 	fa3, 262316 !2041
	fadd	fa2, fa2, fa3 !2041
	lwi 	fa3, 262314 !2042
	fmul	fa0, fa0, fa3 !2042
	lwi 	fa3, 262317 !2042
	fadd	fa0, fa0, fa3 !2042
	lwi 	a0, 262298 !2043
	addi	a1, a0, -1 !2043
	lw  	a0, 26(sp) !2043
	fsgnj   t0, fa2, fa2 !2043
	fsgnj   fa2, fa0, fa0 !2043
	fsgnj   fa0, fa1, fa1 !2043
	fsgnj   fa1, t0, t0 !2043
	addi	sp, sp, 73 !2043
	jal 	ra, pretrace_pixels.2818 !2043
	addi	sp, sp, -73 !2043
	addi	a0, zero, 0 !2309
	addi	a4, zero, 2 !2309
	lw  	a1, 16(sp) !2309
	lw  	a2, 26(sp) !2309
	lw  	a3, 36(sp) !2309
	lw  	a5, 6(sp) !2309
	addi	sp, sp, 73 !2309
	jal 	ra, scan_line.2836 !2309
	addi	sp, sp, -73 !2309
	addi	sp, sp, -1
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_object.2554:
	sw  	ra, 0(sp)
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.19694 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.19694: !747
	sw  	a0, 1(sp) !665
	addi	sp, sp, 2 !665
	jal 	ra, read_int !665
	addi	sp, sp, -2 !665
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.19697 !666
	addi	a0, zero, 0 !742
	jal 	zero, beq_cont.19698 !666
beq_else.19697: !666
	sw  	a0, 2(sp) !668
	addi	sp, sp, 3 !668
	jal 	ra, read_int !668
	addi	sp, sp, -3 !668
	sw  	a0, 3(sp) !669
	addi	sp, sp, 4 !669
	jal 	ra, read_int !669
	addi	sp, sp, -4 !669
	sw  	a0, 4(sp) !670
	addi	sp, sp, 5 !670
	jal 	ra, read_int !670
	addi	sp, sp, -5 !670
	sw  	a0, 5(sp) !672
	addi	a0, zero, 3 !672
	addi	fa0, zero, 0	addi	sp, sp, 6 !672
	jal 	ra, create_float_array !672
	addi	sp, sp, -6 !672
	sw  	a0, 6(sp) !673
	addi	sp, sp, 7 !673
	jal 	ra, read_float !673
	addi	sp, sp, -7 !673
	lw  	a0, 6(sp) !673
	sw  	fa0, 0(a0) !673
	addi	sp, sp, 7 !674
	jal 	ra, read_float !674
	addi	sp, sp, -7 !674
	lw  	a0, 6(sp) !674
	sw  	fa0, 1(a0) !674
	addi	sp, sp, 7 !675
	jal 	ra, read_float !675
	addi	sp, sp, -7 !675
	lw  	a0, 6(sp) !675
	sw  	fa0, 2(a0) !675
	addi	a0, zero, 3 !677
	addi	fa0, zero, 0	addi	sp, sp, 7 !677
	jal 	ra, create_float_array !677
	addi	sp, sp, -7 !677
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
	addi	fa0, zero, 0	addi	sp, sp, 9 !684
	jal 	ra, create_float_array !684
	addi	sp, sp, -9 !684
	sw  	a0, 9(sp) !685
	addi	sp, sp, 10 !685
	jal 	ra, read_float !685
	addi	sp, sp, -10 !685
	lw  	a0, 9(sp) !685
	sw  	fa0, 0(a0) !685
	addi	sp, sp, 10 !686
	jal 	ra, read_float !686
	addi	sp, sp, -10 !686
	lw  	a0, 9(sp) !686
	sw  	fa0, 1(a0) !686
	addi	a0, zero, 3 !688
	addi	fa0, zero, 0	addi	sp, sp, 10 !688
	jal 	ra, create_float_array !688
	addi	sp, sp, -10 !688
	sw  	a0, 10(sp) !689
	addi	sp, sp, 11 !689
	jal 	ra, read_float !689
	addi	sp, sp, -11 !689
	lw  	a0, 10(sp) !689
	sw  	fa0, 0(a0) !689
	addi	sp, sp, 11 !690
	jal 	ra, read_float !690
	addi	sp, sp, -11 !690
	lw  	a0, 10(sp) !690
	sw  	fa0, 1(a0) !690
	addi	sp, sp, 11 !691
	jal 	ra, read_float !691
	addi	sp, sp, -11 !691
	lw  	a0, 10(sp) !691
	sw  	fa0, 2(a0) !691
	addi	a0, zero, 3 !693
	addi	fa0, zero, 0	addi	sp, sp, 11 !693
	jal 	ra, create_float_array !693
	addi	sp, sp, -11 !693
	sw  	a0, 11(sp) !694
	lw  	a0, 5(sp) !694
	bne 	a0, zero, beq_else.19699 !694
	jal 	zero, beq_cont.19700 !694
beq_else.19699: !694
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
beq_cont.19700: !694
	lw  	a0, 3(sp) !705
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.19701 !705
	addi	a0, zero, 1 !705
	jal 	zero, beq_cont.19702 !705
beq_else.19701: !705
	lw  	a0, 8(sp) !705
beq_cont.19702: !705
	sw  	a0, 12(sp) !706
	addi	a0, zero, 4 !706
	addi	fa0, zero, 0	addi	sp, sp, 13 !706
	jal 	ra, create_float_array !706
	addi	sp, sp, -13 !706
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
	li  	t0, 262156
	add 	t0, t0, a5
	sw  	a1, 0(t0) !717
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.19703 !719
	lw  	fa0, 0(a2) !722
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.19705 !723
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.19707 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.19709 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.19710 !148
beq_else.19709: !148
	li  	fa1, 1.000000 !148
beq_cont.19710: !148
	jal 	zero, beq_cont.19708 !147
beq_else.19707: !147
	addi	fa1, zero, 0beq_cont.19708: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !723
	jal 	zero, beq_cont.19706 !723
beq_else.19705: !723
	addi	fa0, zero, 0beq_cont.19706: !723
	sw  	fa0, 0(a2) !723
	lw  	fa0, 1(a2) !724
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.19711 !725
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.19713 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.19715 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.19716 !148
beq_else.19715: !148
	li  	fa1, 1.000000 !148
beq_cont.19716: !148
	jal 	zero, beq_cont.19714 !147
beq_else.19713: !147
	addi	fa1, zero, 0beq_cont.19714: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !725
	jal 	zero, beq_cont.19712 !725
beq_else.19711: !725
	addi	fa0, zero, 0beq_cont.19712: !725
	sw  	fa0, 1(a2) !725
	lw  	fa0, 2(a2) !726
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.19717 !727
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.19719 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.19721 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.19722 !148
beq_else.19721: !148
	li  	fa1, 1.000000 !148
beq_cont.19722: !148
	jal 	zero, beq_cont.19720 !147
beq_else.19719: !147
	addi	fa1, zero, 0beq_cont.19720: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !727
	jal 	zero, beq_cont.19718 !727
beq_else.19717: !727
	addi	fa0, zero, 0beq_cont.19718: !727
	sw  	fa0, 2(a2) !727
	jal 	zero, beq_cont.19704 !719
beq_else.19703: !719
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.19723 !729
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
	bne 	a4, zero, beq_else.19725 !200
	bne 	a1, zero, beq_else.19727 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.19728 !200
beq_else.19727: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.19728: !200
	jal 	zero, beq_cont.19726 !200
beq_else.19725: !200
	li  	fa0, 1.000000 !200
beq_cont.19726: !200
	lw  	fa1, 0(a2) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 0(a2) !201
	lw  	fa1, 1(a2) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 1(a2) !202
	lw  	fa1, 2(a2) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 2(a2) !203
	jal 	zero, beq_cont.19724 !729
beq_else.19723: !729
beq_cont.19724: !729
beq_cont.19704: !719
	bne 	a3, zero, beq_else.19729 !735
	jal 	zero, beq_cont.19730 !735
beq_else.19729: !735
	lw  	fa0, 0(a0) !624
	addi	sp, sp, 13 !624
	jal 	ra, cos !624
	addi	sp, sp, -13 !624
	sw  	fa0, 13(sp) !625
	lw  	a0, 11(sp) !625
	lw  	fa0, 0(a0) !625
	addi	sp, sp, 14 !625
	jal 	ra, sin !625
	addi	sp, sp, -14 !625
	sw  	fa0, 14(sp) !626
	lw  	a0, 11(sp) !626
	lw  	fa0, 1(a0) !626
	addi	sp, sp, 15 !626
	jal 	ra, cos !626
	addi	sp, sp, -15 !626
	sw  	fa0, 15(sp) !627
	lw  	a0, 11(sp) !627
	lw  	fa0, 1(a0) !627
	addi	sp, sp, 16 !627
	jal 	ra, sin !627
	addi	sp, sp, -16 !627
	sw  	fa0, 16(sp) !628
	lw  	a0, 11(sp) !628
	lw  	fa0, 2(a0) !628
	addi	sp, sp, 17 !628
	jal 	ra, cos !628
	addi	sp, sp, -17 !628
	lw  	a0, 11(sp) !629
	lw  	a0, 2(a0) !629
	sw  	fa0, 17(sp) !629
	fsgnj   fa0, a0, a0 !629
	addi	sp, sp, 18 !629
	jal 	ra, sin !629
	addi	sp, sp, -18 !629
	lw  	fa1, 17(sp) !631
	lw  	fa2, 15(sp) !631
	fmul	fa3, fa2, fa1 !631
	lw  	fa4, 16(sp) !632
	lw  	fa5, 14(sp) !632
	fmul	fa6, fa5, fa4 !632
	fmul	fa6, fa6, fa1 !632
	lw  	fa7, 13(sp) !632
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
	lw  	a0, 6(sp) !644
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
	lw  	a0, 11(sp) !656
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
beq_cont.19730: !735
	addi	a0, zero, 1 !739
beq_cont.19698: !666
	bne 	a0, zero, beq_else.19731 !748
	lw  	a0, 1(sp) !751
	swi 	a0, 262144 !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19731: !748
	lw  	a0, 1(sp) !749
	addi	a0, a0, 1 !749
	lw  	ra, 0(sp)
	jal 	zero, read_object.2554 !749
read_net_item.2558:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !763
	addi	sp, sp, 2 !763
	jal 	ra, read_int !763
	addi	sp, sp, -2 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.19734 !764
	lw  	a0, 1(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	lw  	ra, 0(sp)
	jal 	zero, create_array !764
beq_else.19734: !764
	sw  	a0, 2(sp) !766
	lw  	a0, 1(sp) !766
	addi	a0, a0, 1 !766
	addi	sp, sp, 3 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -3 !766
	lw  	a1, 1(sp) !767
	lw  	a2, 2(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_or_network.2560:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !771
	addi	a0, zero, 0 !771
	addi	sp, sp, 2 !771
	jal 	ra, read_net_item.2558 !771
	addi	sp, sp, -2 !771
	addi	a1, a0, 0 !771
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.19736 !772
	lw  	a0, 1(sp) !773
	addi	a0, a0, 1 !773
	lw  	ra, 0(sp)
	jal 	zero, create_array !773
beq_else.19736: !772
	lw  	a0, 1(sp) !775
	addi	a0, a0, 1 !775
	sw  	a1, 2(sp) !775
	addi	sp, sp, 3 !775
	jal 	ra, read_or_network.2560 !775
	addi	sp, sp, -3 !775
	lw  	a1, 1(sp) !776
	lw  	a2, 2(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_and_network.2562:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !780
	addi	a0, zero, 0 !780
	addi	sp, sp, 2 !780
	jal 	ra, read_net_item.2558 !780
	addi	sp, sp, -2 !780
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.19738 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19738: !781
	lw  	a1, 1(sp) !783
	li  	t0, 262227
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	lw  	ra, 0(sp)
	jal 	zero, read_and_network.2562 !784
iter_setup_dirvec_constants.2659:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.19741 !1125
	li  	t0, 262156
	lwr 	a2, t0, a1 !1126
	lw  	a3, 1(a0) !535
	sw  	a0, 1(sp) !529
	lw  	a0, 0(a0) !529
	sw  	a1, 2(sp) !260
	lw  	a1, 1(a2) !260
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.19743 !1130
	sw  	a3, 3(sp) !1051
	addi	a3, zero, 6 !1051
	addi	fa0, zero, 0	sw  	a2, 4(sp) !1051
	sw  	a0, 5(sp) !1051
	addi	a0, a3, 0 !1051
	addi	sp, sp, 6 !1051
	jal 	ra, create_float_array !1051
	addi	sp, sp, -6 !1051
	lw  	a1, 5(sp) !1053
	lw  	fa0, 0(a1) !1053
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.19745 !1053
	lw  	a2, 4(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 0(a1) !1057
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.19747 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.19748 !141
beq_else.19747: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.19748: !141
	lw  	a4, 4(a2) !298
	lw  	fa0, 0(a4) !303
	bne 	a3, zero, beq_else.19749 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.19750 !154
beq_else.19749: !154
beq_cont.19750: !154
	sw  	fa0, 0(a0) !1057
	li  	fa0, 1.000000 !1059
	lw  	fa1, 0(a1) !1059
	fdiv	fa0, fa0, fa1 !1059
	sw  	fa0, 1(a0) !1059
	jal 	zero, beq_cont.19746 !1053
beq_else.19745: !1053
	sw  	zero, 1(a0) !1054
beq_cont.19746: !1053
	lw  	fa0, 1(a1) !1061
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.19751 !1061
	lw  	a2, 4(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 1(a1) !1064
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.19753 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.19754 !141
beq_else.19753: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.19754: !141
	lw  	a4, 4(a2) !308
	lw  	fa0, 1(a4) !313
	bne 	a3, zero, beq_else.19755 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.19756 !154
beq_else.19755: !154
beq_cont.19756: !154
	sw  	fa0, 2(a0) !1064
	li  	fa0, 1.000000 !1065
	lw  	fa1, 1(a1) !1065
	fdiv	fa0, fa0, fa1 !1065
	sw  	fa0, 3(a0) !1065
	jal 	zero, beq_cont.19752 !1061
beq_else.19751: !1061
	sw  	zero, 3(a0) !1062
beq_cont.19752: !1061
	lw  	fa0, 2(a1) !1067
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.19757 !1067
	lw  	a2, 4(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 2(a1) !1070
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.19759 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.19760 !141
beq_else.19759: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.19760: !141
	lw  	a2, 4(a2) !318
	lw  	fa0, 2(a2) !323
	bne 	a3, zero, beq_else.19761 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.19762 !154
beq_else.19761: !154
beq_cont.19762: !154
	sw  	fa0, 4(a0) !1070
	li  	fa0, 1.000000 !1071
	lw  	fa1, 2(a1) !1071
	fdiv	fa0, fa0, fa1 !1071
	sw  	fa0, 5(a0) !1071
	jal 	zero, beq_cont.19758 !1067
beq_else.19757: !1067
	sw  	zero, 5(a0) !1068
beq_cont.19758: !1067
	lw  	a1, 2(sp) !1131
	lw  	a2, 3(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.19744 !1130
beq_else.19743: !1130
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.19763 !1132
	sw  	a3, 3(sp) !1078
	addi	a3, zero, 4 !1078
	addi	fa0, zero, 0	sw  	a2, 4(sp) !1078
	sw  	a0, 5(sp) !1078
	addi	a0, a3, 0 !1078
	addi	sp, sp, 6 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -6 !1078
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
	bne 	a1, zero, beq_else.19765 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.19766 !1082
beq_else.19765: !1082
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
beq_cont.19766: !1082
	lw  	a1, 2(sp) !1133
	lw  	a2, 3(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.19764 !1132
beq_else.19763: !1132
	sw  	a3, 3(sp) !1097
	addi	a3, zero, 5 !1097
	addi	fa0, zero, 0	sw  	a2, 4(sp) !1097
	sw  	a0, 5(sp) !1097
	addi	a0, a3, 0 !1097
	addi	sp, sp, 6 !1097
	jal 	ra, create_float_array !1097
	addi	sp, sp, -6 !1097
	lw  	a1, 5(sp) !1099
	lw  	fa0, 0(a1) !1099
	lw  	fa1, 1(a1) !1099
	lw  	fa2, 2(a1) !1099
	fmul	fa3, fa0, fa0 !126
	lw  	a2, 4(sp) !298
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
	bne 	a3, zero, beq_else.19767 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.19768 !846
beq_else.19767: !846
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
beq_cont.19768: !846
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
	bne 	a3, zero, beq_else.19769 !1107
	sw  	fa1, 1(a0) !1112
	sw  	fa2, 2(a0) !1113
	sw  	fa3, 3(a0) !1114
	jal 	zero, beq_cont.19770 !1107
beq_else.19769: !1107
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
beq_cont.19770: !1107
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.19771 !1116
	li  	fa1, 1.000000 !1117
	fdiv	fa0, fa1, fa0 !1117
	sw  	fa0, 4(a0) !1117
	jal 	zero, beq_cont.19772 !1116
beq_else.19771: !1116
beq_cont.19772: !1116
	lw  	a1, 2(sp) !1135
	lw  	a2, 3(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.19764: !1132
beq_cont.19744: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 1(sp) !1137
	lw  	ra, 0(sp)
	jal 	zero, iter_setup_dirvec_constants.2659 !1137
bge_else.19741: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp_constants.2664:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.19774 !1148
	li  	t0, 262156
	lwr 	a2, t0, a1 !1149
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
	bne 	a4, t0, beq_else.19776 !1155
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
	jal 	zero, beq_cont.19777 !1155
beq_else.19776: !1155
	addi	t0, zero, 2
	blt 	t0, a4, bge_else.19778 !1158
	jal 	zero, bge_cont.19779 !1158
bge_else.19778: !1158
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
	bne 	a5, zero, beq_else.19780 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.19781 !846
beq_else.19780: !846
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
beq_cont.19781: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.19782 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.19783 !1160
beq_else.19782: !1160
beq_cont.19783: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.19779: !1158
beq_cont.19777: !1155
	addi	a1, a1, -1 !1162
	lw  	ra, 0(sp)
	jal 	zero, setup_startp_constants.2664 !1162
bge_else.19774: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
check_all_inside.2689:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.19785 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19785: !1216
	li  	t0, 262156
	lwr 	a2, t0, a2 !1219
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
	bne 	a3, t0, beq_else.19787 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a3, 4(a2) !298
	lw  	fa6, 0(a3) !303
	flt 	a3, fa3, fa6 !121
	bne 	a3, zero, beq_else.19789 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.19790 !1178
beq_else.19789: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a3, 4(a2) !308
	lw  	fa4, 1(a3) !313
	flt 	a3, fa3, fa4 !121
	bne 	a3, zero, beq_else.19791 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.19792 !1179
beq_else.19791: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	flt 	a3, fa3, fa4 !121
beq_cont.19792: !1179
beq_cont.19790: !1178
	bne 	a3, zero, beq_else.19793 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.19794 !1177
beq_else.19793: !1177
	lw  	a2, 6(a2) !280
beq_cont.19794: !1177
	jal 	zero, beq_cont.19788 !1205
beq_else.19787: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.19795 !1207
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
	bne 	a2, zero, beq_else.19797 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.19798 !141
beq_else.19797: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.19798: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.19796 !1207
beq_else.19795: !1207
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
	bne 	a3, zero, beq_else.19799 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.19800 !846
beq_else.19799: !846
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
beq_cont.19800: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.19801 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.19802 !1195
beq_else.19801: !1195
beq_cont.19802: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.19803 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.19804 !141
beq_else.19803: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.19804: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.19796: !1207
beq_cont.19788: !1205
	bne 	a2, zero, beq_else.19805 !1219
	addi	a0, a0, 1 !1222
	lw  	ra, 0(sp)
	jal 	zero, check_all_inside.2689 !1222
beq_else.19805: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_and_group.2695:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.19807 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19807: !1233
	lwr 	a2, a1, a0 !1236
	li  	t0, 262156
	lwr 	a3, t0, a2 !984
	lwi 	fa0, 262282 !985
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !985
	lwi 	fa1, 262283 !986
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !986
	lwi 	fa2, 262284 !987
	lw  	a4, 5(a3) !358
	lw  	fa3, 2(a4) !363
	fsub	fa2, fa2, fa3 !987
	li  	t0, 262331
	lwr 	a4, t0, a2 !989
	lw  	a5, 1(a3) !260
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.19809 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lwi 	fa4, 262329 !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19811 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.19812 !924
beq_else.19811: !924
	lwi 	fa4, 262330 !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19813 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.19814 !925
beq_else.19813: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.19814: !925
beq_cont.19812: !924
	bne 	a5, zero, beq_else.19815 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lwi 	fa4, 262328 !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19817 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.19818 !933
beq_else.19817: !933
	lwi 	fa4, 262330 !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19819 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.19820 !934
beq_else.19819: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.19820: !934
beq_cont.19818: !933
	bne 	a5, zero, beq_else.19821 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lwi 	fa3, 262328 !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.19823 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.19824 !942
beq_else.19823: !942
	lwi 	fa0, 262329 !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.19825 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.19826 !943
beq_else.19825: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.19826: !943
beq_cont.19824: !942
	bne 	a3, zero, beq_else.19827 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.19828 !941
beq_else.19827: !941
	swi 	fa2, 262279 !948
	addi	a3, zero, 3 !948
beq_cont.19828: !941
	jal 	zero, beq_cont.19822 !932
beq_else.19821: !932
	swi 	fa3, 262279 !939
	addi	a3, zero, 2 !939
beq_cont.19822: !932
	jal 	zero, beq_cont.19816 !923
beq_else.19815: !923
	swi 	fa3, 262279 !930
	addi	a3, zero, 1 !930
beq_cont.19816: !923
	jal 	zero, beq_cont.19810 !991
beq_else.19809: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.19829 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.19831 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.19832 !955
beq_else.19831: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	swi 	fa0, 262279 !956
	addi	a3, zero, 1 !958
beq_cont.19832: !955
	jal 	zero, beq_cont.19830 !993
beq_else.19829: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19833 !966
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
	bne 	a5, zero, beq_else.19835 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.19836 !846
beq_else.19835: !846
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
beq_cont.19836: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.19837 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.19838 !971
beq_else.19837: !971
beq_cont.19838: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.19839 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.19840 !973
beq_else.19839: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.19841 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	swi 	fa0, 262279 !977
	jal 	zero, beq_cont.19842 !974
beq_else.19841: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	swi 	fa0, 262279 !975
beq_cont.19842: !974
	addi	a3, zero, 1 !978
beq_cont.19840: !973
	jal 	zero, beq_cont.19834 !966
beq_else.19833: !966
	addi	a3, zero, 0 !967
beq_cont.19834: !966
beq_cont.19830: !993
beq_cont.19810: !991
	lwi 	fa0, 262279 !1238
	bne 	a3, zero, beq_else.19843 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.19844 !1239
beq_else.19843: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.19844: !1239
	bne 	a3, zero, beq_else.19845 !1239
	li  	t0, 262156
	lwr 	a2, t0, a2 !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.19847 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19847: !1255
	addi	a0, a0, 1 !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.19845: !1239
	li  	fa1, 0.010000 !1242
	fadd	fa0, fa0, fa1 !1242
	lwi 	fa1, 262222 !1243
	fmul	fa1, fa1, fa0 !1243
	lwi 	fa2, 262282 !1243
	fadd	fa1, fa1, fa2 !1243
	lwi 	fa2, 262223 !1244
	fmul	fa2, fa2, fa0 !1244
	lwi 	fa3, 262283 !1244
	fadd	fa2, fa2, fa3 !1244
	lwi 	fa3, 262224 !1245
	fmul	fa0, fa3, fa0 !1245
	lwi 	fa3, 262284 !1245
	fadd	fa0, fa0, fa3 !1245
	sw  	a0, 1(sp) !1246
	addi	a0, zero, 0 !1246
	sw  	a1, 2(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 3 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -3 !1246
	bne 	a0, zero, beq_else.19849 !1246
	lw  	a0, 1(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.19849: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_group.2698:
	sw  	ra, 0(sp)
	sw  	a1, 1(sp) !1263
	lwr 	a1, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.19851 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19851: !1264
	li  	t0, 262227
	lwr 	a1, t0, a1 !1267
	sw  	a0, 2(sp) !1268
	addi	a0, zero, 0 !1268
	addi	sp, sp, 3 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -3 !1268
	bne 	a0, zero, beq_else.19853 !1269
	lw  	a0, 2(sp) !1272
	addi	a0, a0, 1 !1272
	lw  	a1, 1(sp) !1272
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_group.2698 !1272
beq_else.19853: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_matrix.2701:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.19855 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19855: !1280
	sw  	a2, 1(sp) !1284
	sw  	a1, 2(sp) !1284
	sw  	a0, 3(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.19857 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.19858 !1284
beq_else.19857: !1284
	li  	t0, 262156
	lwr 	a4, t0, a3 !984
	lwi 	fa0, 262282 !985
	lw  	a5, 5(a4) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !985
	lwi 	fa1, 262283 !986
	lw  	a5, 5(a4) !348
	lw  	fa2, 1(a5) !353
	fsub	fa1, fa1, fa2 !986
	lwi 	fa2, 262284 !987
	lw  	a5, 5(a4) !358
	lw  	fa3, 2(a5) !363
	fsub	fa2, fa2, fa3 !987
	li  	t0, 262331
	lwr 	a3, t0, a3 !989
	lw  	a5, 1(a4) !260
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.19859 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lwi 	fa4, 262329 !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19861 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.19862 !924
beq_else.19861: !924
	lwi 	fa4, 262330 !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19863 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.19864 !925
beq_else.19863: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.19864: !925
beq_cont.19862: !924
	bne 	a5, zero, beq_else.19865 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lwi 	fa4, 262328 !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19867 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.19868 !933
beq_else.19867: !933
	lwi 	fa4, 262330 !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19869 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.19870 !934
beq_else.19869: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.19870: !934
beq_cont.19868: !933
	bne 	a5, zero, beq_else.19871 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lwi 	fa3, 262328 !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.19873 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.19874 !942
beq_else.19873: !942
	lwi 	fa0, 262329 !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.19875 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.19876 !943
beq_else.19875: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.19876: !943
beq_cont.19874: !942
	bne 	a3, zero, beq_else.19877 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.19878 !941
beq_else.19877: !941
	swi 	fa2, 262279 !948
	addi	a3, zero, 3 !948
beq_cont.19878: !941
	jal 	zero, beq_cont.19872 !932
beq_else.19871: !932
	swi 	fa3, 262279 !939
	addi	a3, zero, 2 !939
beq_cont.19872: !932
	jal 	zero, beq_cont.19866 !923
beq_else.19865: !923
	swi 	fa3, 262279 !930
	addi	a3, zero, 1 !930
beq_cont.19866: !923
	jal 	zero, beq_cont.19860 !991
beq_else.19859: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.19879 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.19881 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.19882 !955
beq_else.19881: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	swi 	fa0, 262279 !956
	addi	a3, zero, 1 !958
beq_cont.19882: !955
	jal 	zero, beq_cont.19880 !993
beq_else.19879: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19883 !966
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
	bne 	a5, zero, beq_else.19885 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.19886 !846
beq_else.19885: !846
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
beq_cont.19886: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.19887 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.19888 !971
beq_else.19887: !971
beq_cont.19888: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.19889 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.19890 !973
beq_else.19889: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.19891 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	swi 	fa0, 262279 !977
	jal 	zero, beq_cont.19892 !974
beq_else.19891: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	swi 	fa0, 262279 !975
beq_cont.19892: !974
	addi	a3, zero, 1 !978
beq_cont.19890: !973
	jal 	zero, beq_cont.19884 !966
beq_else.19883: !966
	addi	a3, zero, 0 !967
beq_cont.19884: !966
beq_cont.19880: !993
beq_cont.19860: !991
	bne 	a3, zero, beq_else.19893 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.19894 !1290
beq_else.19893: !1290
	lwi 	fa0, 262279 !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.19895 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.19896 !1291
beq_else.19895: !1291
	addi	a1, zero, 1 !1292
	addi	a0, a1, 0 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 4 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -4 !1292
	bne 	a0, zero, beq_else.19897 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.19898 !1292
beq_else.19897: !1292
	addi	a0, zero, 1 !1293
beq_cont.19898: !1292
beq_cont.19896: !1291
beq_cont.19894: !1290
beq_cont.19858: !1284
	bne 	a0, zero, beq_else.19899 !1283
	lw  	a0, 3(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.19899: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 1(sp) !1298
	addi	sp, sp, 4 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -4 !1298
	bne 	a0, zero, beq_else.19901 !1298
	lw  	a0, 3(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.19901: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_each_element.2704:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.19903 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19903: !1313
	li  	t0, 262156
	lwr 	a4, t0, a3 !905
	lwi 	fa0, 262303 !907
	lw  	a5, 5(a4) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !907
	lwi 	fa1, 262304 !908
	lw  	a5, 5(a4) !348
	lw  	fa2, 1(a5) !353
	fsub	fa1, fa1, fa2 !908
	lwi 	fa2, 262305 !909
	lw  	a5, 5(a4) !358
	lw  	fa3, 2(a5) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a5, 1(a4) !260
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.19906 !912
	lw  	fa3, 0(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19908 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 0(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.19910 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.19911 !141
beq_else.19910: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.19911: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.19912 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.19913 !154
beq_else.19912: !154
beq_cont.19913: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.19914 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.19915 !810
beq_else.19914: !810
	lw  	fa4, 2(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19916 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.19917 !811
beq_else.19916: !811
	swi 	fa3, 262279 !812
	addi	a5, zero, 1 !812
beq_cont.19917: !811
beq_cont.19915: !810
	jal 	zero, beq_cont.19909 !805
beq_else.19908: !805
	addi	a5, zero, 0 !805
beq_cont.19909: !805
	bne 	a5, zero, beq_else.19918 !820
	lw  	fa3, 1(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19920 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 1(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.19922 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.19923 !141
beq_else.19922: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.19923: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.19924 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.19925 !154
beq_else.19924: !154
beq_cont.19925: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.19926 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.19927 !810
beq_else.19926: !810
	lw  	fa4, 0(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19928 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.19929 !811
beq_else.19928: !811
	swi 	fa3, 262279 !812
	addi	a5, zero, 1 !812
beq_cont.19929: !811
beq_cont.19927: !810
	jal 	zero, beq_cont.19921 !805
beq_else.19920: !805
	addi	a5, zero, 0 !805
beq_cont.19921: !805
	bne 	a5, zero, beq_else.19930 !821
	lw  	fa3, 2(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19932 !805
	lw  	a5, 4(a4) !328
	lw  	a4, 6(a4) !280
	lw  	fa3, 2(a2) !807
	flt 	a6, fa3, zero !123
	bne 	a4, zero, beq_else.19934 !141
	addi	a4, a6, 0 !141
	jal 	zero, beq_cont.19935 !141
beq_else.19934: !141
	sub 	t0, zero, a6 !141
	addi	a4, t0, 1 !141
beq_cont.19935: !141
	lw  	fa3, 2(a5) !807
	bne 	a4, zero, beq_else.19936 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.19937 !154
beq_else.19936: !154
beq_cont.19937: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a2) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a2) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a4, fa0, fa3 !121
	bne 	a4, zero, beq_else.19938 !810
	addi	a4, zero, 0 !814
	jal 	zero, beq_cont.19939 !810
beq_else.19938: !810
	lw  	fa0, 1(a2) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.19940 !811
	addi	a4, zero, 0 !813
	jal 	zero, beq_cont.19941 !811
beq_else.19940: !811
	swi 	fa2, 262279 !812
	addi	a4, zero, 1 !812
beq_cont.19941: !811
beq_cont.19939: !810
	jal 	zero, beq_cont.19933 !805
beq_else.19932: !805
	addi	a4, zero, 0 !805
beq_cont.19933: !805
	bne 	a4, zero, beq_else.19942 !822
	addi	a4, zero, 0 !823
	jal 	zero, beq_cont.19943 !822
beq_else.19942: !822
	addi	a4, zero, 3 !822
beq_cont.19943: !822
	jal 	zero, beq_cont.19931 !821
beq_else.19930: !821
	addi	a4, zero, 2 !821
beq_cont.19931: !821
	jal 	zero, beq_cont.19919 !820
beq_else.19918: !820
	addi	a4, zero, 1 !820
beq_cont.19919: !820
	jal 	zero, beq_cont.19907 !912
beq_else.19906: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.19944 !913
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
	bne 	a5, zero, beq_else.19946 !833
	addi	a4, zero, 0 !836
	jal 	zero, beq_cont.19947 !833
beq_else.19946: !833
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
	swi 	fa0, 262279 !834
	addi	a4, zero, 1 !835
beq_cont.19947: !833
	jal 	zero, beq_cont.19945 !913
beq_else.19944: !913
	lw  	fa3, 0(a2) !879
	lw  	fa4, 1(a2) !879
	lw  	fa5, 2(a2) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a4) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a4) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a4) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a4) !289
	bne 	a5, zero, beq_else.19948 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.19949 !846
beq_else.19948: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a4) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a4) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a4) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.19949: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19950 !881
	lw  	fa4, 0(a2) !886
	lw  	fa5, 1(a2) !886
	lw  	fa6, 2(a2) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a4) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a4) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a4) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a4) !289
	bne 	a5, zero, beq_else.19952 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.19953 !862
beq_else.19952: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a4) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a4) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a4) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.19953: !862
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
	bne 	a5, zero, beq_else.19954 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.19955 !846
beq_else.19954: !846
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
beq_cont.19955: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.19956 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.19957 !889
beq_else.19956: !889
beq_cont.19957: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.19958 !893
	addi	a4, zero, 0 !899
	jal 	zero, beq_cont.19959 !893
beq_else.19958: !893
	fsqrt   fa0, fa0 !894
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.19960 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.19961 !895
beq_else.19960: !895
beq_cont.19961: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	swi 	fa0, 262279 !896
	addi	a4, zero, 1 !896
beq_cont.19959: !893
	jal 	zero, beq_cont.19951 !881
beq_else.19950: !881
	addi	a4, zero, 0 !882
beq_cont.19951: !881
beq_cont.19945: !913
beq_cont.19907: !912
	bne 	a4, zero, beq_else.19962 !1316
	li  	t0, 262156
	lwr 	a3, t0, a3 !1344
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.19964 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19964: !1344
	addi	a0, a0, 1 !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.19962: !1316
	lwi 	fa0, 262279 !1320
	sw  	a0, 1(sp) !121
	flt 	a0, zero, fa0 !121
	sw  	a2, 2(sp) !1322
	sw  	a1, 3(sp) !1322
	bne 	a0, zero, beq_else.19967 !1322
	jal 	zero, beq_cont.19968 !1322
beq_else.19967: !1322
	lwi 	fa1, 262281 !1323
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.19969 !1323
	jal 	zero, beq_cont.19970 !1323
beq_else.19969: !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	lwi 	fa2, 262303 !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	lwi 	fa3, 262304 !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a2) !1328
	fmul	a2, fa3, fa0 !1328
	sw  	a4, 4(sp) !1328
	lwi 	a4, 262305 !1328
	sw  	a3, 5(sp) !1328
	fadd	a3, a2, a4 !1328
	addi	a0, zero, 0 !1329
	sw  	a3, 6(sp) !1329
	sw  	fa2, 7(sp) !1329
	sw  	fa1, 8(sp) !1329
	sw  	fa0, 9(sp) !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, fa2, fa2 !1329
	fsgnj   fa2, a3, a3 !1329
	addi	sp, sp, 10 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -10 !1329
	bne 	a0, zero, beq_else.19971 !1329
	jal 	zero, beq_cont.19972 !1329
beq_else.19971: !1329
	lw  	a0, 9(sp) !1331
	swi 	a0, 262281 !1331
	lw  	a0, 8(sp) !169
	swi 	a0, 262282 !169
	lw  	a0, 7(sp) !170
	swi 	a0, 262283 !170
	lw  	a0, 6(sp) !171
	swi 	a0, 262284 !171
	lw  	a0, 5(sp) !1333
	swi 	a0, 262285 !1333
	lw  	a0, 4(sp) !1334
	swi 	a0, 262280 !1334
beq_cont.19972: !1329
beq_cont.19970: !1323
beq_cont.19968: !1322
	lw  	a0, 1(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1340
	lw  	a2, 2(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
solve_one_or_network.2708:
	sw  	ra, 0(sp)
	sw  	a1, 1(sp) !1353
	lwr 	a1, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.19973 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19973: !1354
	li  	t0, 262227
	lwr 	a1, t0, a1 !1355
	sw  	a0, 2(sp) !1356
	addi	a0, zero, 0 !1356
	sw  	a2, 3(sp) !1356
	addi	sp, sp, 4 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -4 !1356
	lw  	a0, 2(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 1(sp) !1357
	lw  	a2, 3(sp) !1357
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network.2708 !1357
trace_or_matrix.2712:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1363
	lw  	a4, 0(a3) !1364
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.19976 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.19976: !1365
	sw  	a2, 1(sp) !1368
	sw  	a1, 2(sp) !1368
	sw  	a0, 3(sp) !1368
	addi	t0, zero, 99
	bne 	a4, t0, beq_else.19979 !1368
	addi	a1, zero, 1 !1369
	addi	a0, a1, 0 !1369
	addi	a1, a3, 0 !1369
	addi	sp, sp, 4 !1369
	jal 	ra, solve_one_or_network.2708 !1369
	addi	sp, sp, -4 !1369
	jal 	zero, beq_cont.19980 !1368
beq_else.19979: !1368
	li  	t0, 262156
	lwr 	a4, t0, a4 !905
	lwi 	fa0, 262303 !907
	lw  	a5, 5(a4) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !907
	lwi 	fa1, 262304 !908
	lw  	a5, 5(a4) !348
	lw  	fa2, 1(a5) !353
	fsub	fa1, fa1, fa2 !908
	lwi 	fa2, 262305 !909
	lw  	a5, 5(a4) !358
	lw  	fa3, 2(a5) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a5, 1(a4) !260
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.19981 !912
	lw  	fa3, 0(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19983 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 0(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.19985 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.19986 !141
beq_else.19985: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.19986: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.19987 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.19988 !154
beq_else.19987: !154
beq_cont.19988: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.19989 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.19990 !810
beq_else.19989: !810
	lw  	fa4, 2(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.19991 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.19992 !811
beq_else.19991: !811
	swi 	fa3, 262279 !812
	addi	a5, zero, 1 !812
beq_cont.19992: !811
beq_cont.19990: !810
	jal 	zero, beq_cont.19984 !805
beq_else.19983: !805
	addi	a5, zero, 0 !805
beq_cont.19984: !805
	bne 	a5, zero, beq_else.19993 !820
	lw  	fa3, 1(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.19995 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 1(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.19997 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.19998 !141
beq_else.19997: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.19998: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.19999 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.20000 !154
beq_else.19999: !154
beq_cont.20000: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.20001 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.20002 !810
beq_else.20001: !810
	lw  	fa4, 0(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.20003 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.20004 !811
beq_else.20003: !811
	swi 	fa3, 262279 !812
	addi	a5, zero, 1 !812
beq_cont.20004: !811
beq_cont.20002: !810
	jal 	zero, beq_cont.19996 !805
beq_else.19995: !805
	addi	a5, zero, 0 !805
beq_cont.19996: !805
	bne 	a5, zero, beq_else.20005 !821
	lw  	fa3, 2(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.20007 !805
	lw  	a5, 4(a4) !328
	lw  	a4, 6(a4) !280
	lw  	fa3, 2(a2) !807
	flt 	a6, fa3, zero !123
	bne 	a4, zero, beq_else.20009 !141
	addi	a4, a6, 0 !141
	jal 	zero, beq_cont.20010 !141
beq_else.20009: !141
	sub 	t0, zero, a6 !141
	addi	a4, t0, 1 !141
beq_cont.20010: !141
	lw  	fa3, 2(a5) !807
	bne 	a4, zero, beq_else.20011 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.20012 !154
beq_else.20011: !154
beq_cont.20012: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a2) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a2) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a4, fa0, fa3 !121
	bne 	a4, zero, beq_else.20013 !810
	addi	a4, zero, 0 !814
	jal 	zero, beq_cont.20014 !810
beq_else.20013: !810
	lw  	fa0, 1(a2) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.20015 !811
	addi	a4, zero, 0 !813
	jal 	zero, beq_cont.20016 !811
beq_else.20015: !811
	swi 	fa2, 262279 !812
	addi	a4, zero, 1 !812
beq_cont.20016: !811
beq_cont.20014: !810
	jal 	zero, beq_cont.20008 !805
beq_else.20007: !805
	addi	a4, zero, 0 !805
beq_cont.20008: !805
	bne 	a4, zero, beq_else.20017 !822
	addi	a4, zero, 0 !823
	jal 	zero, beq_cont.20018 !822
beq_else.20017: !822
	addi	a4, zero, 3 !822
beq_cont.20018: !822
	jal 	zero, beq_cont.20006 !821
beq_else.20005: !821
	addi	a4, zero, 2 !821
beq_cont.20006: !821
	jal 	zero, beq_cont.19994 !820
beq_else.19993: !820
	addi	a4, zero, 1 !820
beq_cont.19994: !820
	jal 	zero, beq_cont.19982 !912
beq_else.19981: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.20019 !913
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
	bne 	a5, zero, beq_else.20021 !833
	addi	a4, zero, 0 !836
	jal 	zero, beq_cont.20022 !833
beq_else.20021: !833
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
	swi 	fa0, 262279 !834
	addi	a4, zero, 1 !835
beq_cont.20022: !833
	jal 	zero, beq_cont.20020 !913
beq_else.20019: !913
	lw  	fa3, 0(a2) !879
	lw  	fa4, 1(a2) !879
	lw  	fa5, 2(a2) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a4) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a4) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a4) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a4) !289
	bne 	a5, zero, beq_else.20023 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.20024 !846
beq_else.20023: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a4) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a4) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a4) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.20024: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.20025 !881
	lw  	fa4, 0(a2) !886
	lw  	fa5, 1(a2) !886
	lw  	fa6, 2(a2) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a4) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a4) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a4) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a4) !289
	bne 	a5, zero, beq_else.20027 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.20028 !862
beq_else.20027: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a4) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a4) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a4) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.20028: !862
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
	bne 	a5, zero, beq_else.20029 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.20030 !846
beq_else.20029: !846
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
beq_cont.20030: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.20031 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.20032 !889
beq_else.20031: !889
beq_cont.20032: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.20033 !893
	addi	a4, zero, 0 !899
	jal 	zero, beq_cont.20034 !893
beq_else.20033: !893
	fsqrt   fa0, fa0 !894
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.20035 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.20036 !895
beq_else.20035: !895
beq_cont.20036: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	swi 	fa0, 262279 !896
	addi	a4, zero, 1 !896
beq_cont.20034: !893
	jal 	zero, beq_cont.20026 !881
beq_else.20025: !881
	addi	a4, zero, 0 !882
beq_cont.20026: !881
beq_cont.20020: !913
beq_cont.19982: !912
	bne 	a4, zero, beq_else.20037 !1374
	jal 	zero, beq_cont.20038 !1374
beq_else.20037: !1374
	lwi 	fa0, 262279 !1375
	lwi 	fa1, 262281 !1376
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.20039 !1376
	jal 	zero, beq_cont.20040 !1376
beq_else.20039: !1376
	addi	a1, zero, 1 !1377
	addi	a0, a1, 0 !1377
	addi	a1, a3, 0 !1377
	addi	sp, sp, 4 !1377
	jal 	ra, solve_one_or_network.2708 !1377
	addi	sp, sp, -4 !1377
beq_cont.20040: !1376
beq_cont.20038: !1374
beq_cont.19980: !1368
	lw  	a0, 3(sp) !1381
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
	bne 	a4, t0, beq_else.20041 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20041: !1405
	li  	t0, 262156
	lwr 	a5, t0, a4 !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.20044 !1039
	lw  	a6, 0(a2) !529
	lw  	fa3, 0(a7) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a7) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 1(a6) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	s1, 4(a5) !308
	lw  	fa5, 1(s1) !313
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.20046 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.20047 !924
beq_else.20046: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.20048 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.20049 !925
beq_else.20048: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.20049: !925
beq_cont.20047: !924
	bne 	s1, zero, beq_else.20050 !923
	lw  	fa3, 2(a7) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a7) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 0(a6) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	s1, 4(a5) !298
	lw  	fa5, 0(s1) !303
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.20052 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.20053 !933
beq_else.20052: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.20054 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.20055 !934
beq_else.20054: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.20055: !934
beq_cont.20053: !933
	bne 	s1, zero, beq_else.20056 !932
	lw  	fa3, 4(a7) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a7) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 0(a6) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	s1, 4(a5) !298
	lw  	fa3, 0(s1) !303
	flt 	s1, fa0, fa3 !121
	bne 	s1, zero, beq_else.20058 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.20059 !942
beq_else.20058: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.20060 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.20061 !943
beq_else.20060: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.20061: !943
beq_cont.20059: !942
	bne 	a5, zero, beq_else.20062 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.20063 !941
beq_else.20062: !941
	swi 	fa2, 262279 !948
	addi	a5, zero, 3 !948
beq_cont.20063: !941
	jal 	zero, beq_cont.20057 !932
beq_else.20056: !932
	swi 	fa3, 262279 !939
	addi	a5, zero, 2 !939
beq_cont.20057: !932
	jal 	zero, beq_cont.20051 !923
beq_else.20050: !923
	swi 	fa3, 262279 !930
	addi	a5, zero, 1 !930
beq_cont.20051: !923
	jal 	zero, beq_cont.20045 !1039
beq_else.20044: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.20064 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.20066 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.20067 !1004
beq_else.20066: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	swi 	fa0, 262279 !1005
	addi	a5, zero, 1 !1006
beq_cont.20067: !1004
	jal 	zero, beq_cont.20065 !1041
beq_else.20064: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.20068 !1014
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
	bne 	a6, zero, beq_else.20070 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.20071 !1020
beq_else.20070: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.20072 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	swi 	fa0, 262279 !1024
	jal 	zero, beq_cont.20073 !1021
beq_else.20072: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	swi 	fa0, 262279 !1022
beq_cont.20073: !1021
	addi	a5, zero, 1 !1025
beq_cont.20071: !1020
	jal 	zero, beq_cont.20069 !1014
beq_else.20068: !1014
	addi	a5, zero, 0 !1015
beq_cont.20069: !1014
beq_cont.20065: !1041
beq_cont.20045: !1039
	bne 	a5, zero, beq_else.20074 !1408
	li  	t0, 262156
	lwr 	a3, t0, a4 !1436
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.20076 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20076: !1436
	addi	a0, a0, 1 !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.20074: !1408
	lwi 	fa0, 262279 !1412
	sw  	a2, 1(sp) !121
	flt 	a2, zero, fa0 !121
	sw  	a1, 2(sp) !1414
	sw  	a0, 3(sp) !1414
	bne 	a2, zero, beq_else.20079 !1414
	jal 	zero, beq_cont.20080 !1414
beq_else.20079: !1414
	lwi 	fa1, 262281 !1415
	flt 	a2, fa0, fa1 !121
	bne 	a2, zero, beq_else.20081 !1415
	jal 	zero, beq_cont.20082 !1415
beq_else.20081: !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a3) !1418
	fmul	fa1, fa1, fa0 !1418
	lwi 	fa2, 262306 !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a3) !1419
	fmul	fa2, fa2, fa0 !1419
	lwi 	fa3, 262307 !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a3) !1420
	fmul	a0, fa3, fa0 !1420
	sw  	a5, 4(sp) !1420
	lwi 	a5, 262308 !1420
	sw  	a4, 5(sp) !1420
	fadd	a4, a0, a5 !1420
	addi	a0, zero, 0 !1421
	sw  	a4, 6(sp) !1421
	sw  	fa2, 7(sp) !1421
	sw  	fa1, 8(sp) !1421
	sw  	fa0, 9(sp) !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, fa2, fa2 !1421
	fsgnj   fa2, a4, a4 !1421
	addi	sp, sp, 10 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -10 !1421
	bne 	a0, zero, beq_else.20083 !1421
	jal 	zero, beq_cont.20084 !1421
beq_else.20083: !1421
	lw  	a0, 9(sp) !1423
	swi 	a0, 262281 !1423
	lw  	a0, 8(sp) !169
	swi 	a0, 262282 !169
	lw  	a0, 7(sp) !170
	swi 	a0, 262283 !170
	lw  	a0, 6(sp) !171
	swi 	a0, 262284 !171
	lw  	a0, 5(sp) !1425
	swi 	a0, 262285 !1425
	lw  	a0, 4(sp) !1426
	swi 	a0, 262280 !1426
beq_cont.20084: !1421
beq_cont.20082: !1415
beq_cont.20080: !1414
	lw  	a0, 3(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 2(sp) !1432
	lw  	a2, 1(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
solve_one_or_network_fast.2722:
	sw  	ra, 0(sp)
	sw  	a1, 1(sp) !1444
	lwr 	a1, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.20085 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20085: !1445
	li  	t0, 262227
	lwr 	a1, t0, a1 !1446
	sw  	a0, 2(sp) !1447
	addi	a0, zero, 0 !1447
	sw  	a2, 3(sp) !1447
	addi	sp, sp, 4 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -4 !1447
	lw  	a0, 2(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 1(sp) !1448
	lw  	a2, 3(sp) !1448
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network_fast.2722 !1448
trace_or_matrix_fast.2726:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1454
	lw  	a4, 0(a3) !1455
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.20088 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20088: !1456
	sw  	a2, 1(sp) !1459
	sw  	a1, 2(sp) !1459
	sw  	a0, 3(sp) !1459
	addi	t0, zero, 99
	bne 	a4, t0, beq_else.20091 !1459
	addi	a1, zero, 1 !1460
	addi	a0, a1, 0 !1460
	addi	a1, a3, 0 !1460
	addi	sp, sp, 4 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -4 !1460
	jal 	zero, beq_cont.20092 !1459
beq_else.20091: !1459
	li  	t0, 262156
	lwr 	a5, t0, a4 !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a4, a7, a4 !1037
	lw  	a7, 1(a5) !260
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.20093 !1039
	lw  	a6, 0(a2) !529
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 1(a6) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a7, 4(a5) !308
	lw  	fa5, 1(a7) !313
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.20095 !924
	addi	a7, zero, 0 !928
	jal 	zero, beq_cont.20096 !924
beq_else.20095: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a7, 4(a5) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.20097 !925
	addi	a7, zero, 0 !927
	jal 	zero, beq_cont.20098 !925
beq_else.20097: !925
	lw  	fa4, 1(a4) !926
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !926
	addi	a7, t0, 1 !926
beq_cont.20098: !925
beq_cont.20096: !924
	bne 	a7, zero, beq_else.20099 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 0(a6) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a7, 4(a5) !298
	lw  	fa5, 0(a7) !303
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.20101 !933
	addi	a7, zero, 0 !937
	jal 	zero, beq_cont.20102 !933
beq_else.20101: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a7, 4(a5) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.20103 !934
	addi	a7, zero, 0 !936
	jal 	zero, beq_cont.20104 !934
beq_else.20103: !934
	lw  	fa4, 3(a4) !935
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !935
	addi	a7, t0, 1 !935
beq_cont.20104: !934
beq_cont.20102: !933
	bne 	a7, zero, beq_else.20105 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 0(a6) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a7, 4(a5) !298
	lw  	fa3, 0(a7) !303
	flt 	a7, fa0, fa3 !121
	bne 	a7, zero, beq_else.20107 !942
	addi	a4, zero, 0 !946
	jal 	zero, beq_cont.20108 !942
beq_else.20107: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.20109 !943
	addi	a4, zero, 0 !945
	jal 	zero, beq_cont.20110 !943
beq_else.20109: !943
	lw  	fa0, 5(a4) !944
	feq 	a4, fa0, zero !124
	sub 	t0, zero, a4 !944
	addi	a4, t0, 1 !944
beq_cont.20110: !943
beq_cont.20108: !942
	bne 	a4, zero, beq_else.20111 !941
	addi	a4, zero, 0 !950
	jal 	zero, beq_cont.20112 !941
beq_else.20111: !941
	swi 	fa2, 262279 !948
	addi	a4, zero, 3 !948
beq_cont.20112: !941
	jal 	zero, beq_cont.20106 !932
beq_else.20105: !932
	swi 	fa3, 262279 !939
	addi	a4, zero, 2 !939
beq_cont.20106: !932
	jal 	zero, beq_cont.20100 !923
beq_else.20099: !923
	swi 	fa3, 262279 !930
	addi	a4, zero, 1 !930
beq_cont.20100: !923
	jal 	zero, beq_cont.20094 !1039
beq_else.20093: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.20113 !1041
	lw  	fa0, 0(a4) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.20115 !1004
	addi	a4, zero, 0 !1007
	jal 	zero, beq_cont.20116 !1004
beq_else.20115: !1004
	lw  	fa0, 0(a4) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	swi 	fa0, 262279 !1005
	addi	a4, zero, 1 !1006
beq_cont.20116: !1004
	jal 	zero, beq_cont.20114 !1041
beq_else.20113: !1041
	lw  	fa3, 0(a4) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.20117 !1014
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
	bne 	a6, zero, beq_else.20119 !1020
	addi	a4, zero, 0 !1026
	jal 	zero, beq_cont.20120 !1020
beq_else.20119: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.20121 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a4) !1024
	fmul	fa0, fa0, fa1 !1024
	swi 	fa0, 262279 !1024
	jal 	zero, beq_cont.20122 !1021
beq_else.20121: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a4) !1022
	fmul	fa0, fa0, fa1 !1022
	swi 	fa0, 262279 !1022
beq_cont.20122: !1021
	addi	a4, zero, 1 !1025
beq_cont.20120: !1020
	jal 	zero, beq_cont.20118 !1014
beq_else.20117: !1014
	addi	a4, zero, 0 !1015
beq_cont.20118: !1014
beq_cont.20114: !1041
beq_cont.20094: !1039
	bne 	a4, zero, beq_else.20123 !1465
	jal 	zero, beq_cont.20124 !1465
beq_else.20123: !1465
	lwi 	fa0, 262279 !1466
	lwi 	fa1, 262281 !1467
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.20125 !1467
	jal 	zero, beq_cont.20126 !1467
beq_else.20125: !1467
	addi	a1, zero, 1 !1468
	addi	a0, a1, 0 !1468
	addi	a1, a3, 0 !1468
	addi	sp, sp, 4 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -4 !1468
beq_cont.20126: !1467
beq_cont.20124: !1465
beq_cont.20092: !1459
	lw  	a0, 3(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1472
	lw  	a2, 1(sp) !1472
	lw  	ra, 0(sp)
	jal 	zero, trace_or_matrix_fast.2726 !1472
trace_reflections.2748:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.20127 !1643
	sw  	a0, 1(sp) !1644
	li  	t0, 262398
	lwr 	a0, t0, a0 !1644
	lw  	a2, 1(a0) !549
	sw  	fa1, 2(sp) !1479
	li  	fa1, 1000000000.000000 !1479
	swi 	fa1, 262281 !1479
	sw  	a1, 3(sp) !1480
	addi	a1, zero, 0 !1480
	sw  	fa0, 4(sp) !1480
	lwi 	fa0, 262278 !1480
	sw  	a2, 5(sp) !1480
	sw  	a0, 6(sp) !1480
	addi	a0, a1, 0 !1480
	addi	a1, fa0, 0 !1480
	addi	sp, sp, 7 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -7 !1480
	lwi 	fa0, 262281 !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.20129 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.20130 !1483
beq_else.20129: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.20130: !1483
	bne 	a0, zero, beq_else.20131 !1648
	jal 	zero, beq_cont.20132 !1648
beq_else.20131: !1648
	lwi 	a0, 262285 !1649
	slli	a0, a0, 2 !1649
	lwi 	a1, 262280 !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 6(sp) !543
	lw  	a1, 0(a1) !543
	bne 	a0, a1, beq_else.20133 !1650
	addi	a0, zero, 0 !1652
	lwi 	a1, 262278 !1652
	addi	sp, sp, 7 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -7 !1652
	bne 	a0, zero, beq_else.20135 !1652
	lw  	a0, 5(sp) !529
	lw  	a1, 0(a0) !529
	lwi 	fa0, 262286 !208
	lw  	fa1, 0(a1) !208
	fmul	fa0, fa0, fa1 !208
	lwi 	fa1, 262287 !208
	lw  	fa2, 1(a1) !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lwi 	fa1, 262288 !208
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
	bne 	a0, zero, beq_else.20137 !1627
	jal 	zero, beq_cont.20138 !1627
beq_else.20137: !1627
	lwi 	fa3, 262295 !218
	lwi 	fa4, 262289 !218
	fmul	fa4, fa0, fa4 !218
	fadd	fa3, fa3, fa4 !218
	swi 	fa3, 262295 !218
	lwi 	fa3, 262296 !219
	lwi 	fa4, 262290 !219
	fmul	fa4, fa0, fa4 !219
	fadd	fa3, fa3, fa4 !219
	swi 	fa3, 262296 !219
	lwi 	fa3, 262297 !220
	lwi 	fa4, 262291 !220
	fmul	fa0, fa0, fa4 !220
	fadd	fa0, fa3, fa0 !220
	swi 	fa0, 262297 !220
beq_cont.20138: !1627
	flt 	a0, zero, fa1 !122
	bne 	a0, zero, beq_else.20139 !1632
	jal 	zero, beq_cont.20140 !1632
beq_else.20139: !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 2(sp) !1633
	fmul	fa0, fa0, fa1 !1633
	lwi 	fa3, 262295 !1634
	fadd	fa3, fa3, fa0 !1634
	swi 	fa3, 262295 !1634
	lwi 	fa3, 262296 !1635
	fadd	fa3, fa3, fa0 !1635
	swi 	fa3, 262296 !1635
	lwi 	fa3, 262297 !1636
	fadd	fa0, fa3, fa0 !1636
	swi 	fa0, 262297 !1636
beq_cont.20140: !1632
	jal 	zero, beq_cont.20136 !1652
beq_else.20135: !1652
beq_cont.20136: !1652
	jal 	zero, beq_cont.20134 !1650
beq_else.20133: !1650
beq_cont.20134: !1650
beq_cont.20132: !1648
	lw  	a0, 1(sp) !1662
	addi	a0, a0, -1 !1662
	lw  	fa0, 4(sp) !1662
	lw  	fa1, 2(sp) !1662
	lw  	a1, 3(sp) !1662
	lw  	ra, 0(sp)
	jal 	zero, trace_reflections.2748 !1662
bge_else.20127: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_ray.2753:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.20142 !1669
	sw  	fa1, 1(sp) !476
	lw  	fa1, 2(a2) !476
	sw  	a2, 2(sp) !1390
	li  	a2, 1000000000.000000 !1390
	swi 	a2, 262281 !1390
	sw  	fa0, 3(sp) !1391
	addi	fa0, zero, 0 !1391
	sw  	a0, 4(sp) !1391
	lwi 	a0, 262278 !1391
	sw  	a1, 5(sp) !1391
	sw  	fa1, 6(sp) !1391
	addi	a2, a1, 0 !1391
	addi	a1, a0, 0 !1391
	addi	a0, fa0, 0 !1391
	addi	sp, sp, 7 !1391
	jal 	ra, trace_or_matrix.2712 !1391
	addi	sp, sp, -7 !1391
	lwi 	fa0, 262281 !1392
	li  	fa1, -0.100000 !1394
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.20144 !1394
	addi	a0, zero, 0 !1396
	jal 	zero, beq_cont.20145 !1394
beq_else.20144: !1394
	li  	fa1, 100000000.000000 !1395
	flt 	a0, fa0, fa1 !121
beq_cont.20145: !1394
	bne 	a0, zero, beq_else.20146 !1671
	addi	a0, zero, -1 !1734
	lw  	a1, 4(sp) !1734
	lw  	a2, 6(sp) !1734
	add 	t0, a2, a1 !1734
	sw  	a0, 0(t0) !1734
	bne 	a1, zero, beq_else.20148 !1736
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20148: !1736
	lw  	a0, 5(sp) !208
	lw  	fa0, 0(a0) !208
	lwi 	fa1, 262222 !208
	fmul	fa0, fa0, fa1 !208
	lw  	fa1, 1(a0) !208
	lwi 	fa2, 262223 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lw  	fa1, 2(a0) !208
	lwi 	fa2, 262224 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1737
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.20151 !1739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20151: !1739
	fmul	fa1, fa0, fa0 !126
	fmul	fa0, fa1, fa0 !1742
	lw  	fa1, 3(sp) !1742
	fmul	fa0, fa0, fa1 !1742
	lwi 	fa1, 262225 !1742
	fmul	fa0, fa0, fa1 !1742
	lwi 	fa1, 262295 !1743
	fadd	fa1, fa1, fa0 !1743
	swi 	fa1, 262295 !1743
	lwi 	fa1, 262296 !1744
	fadd	fa1, fa1, fa0 !1744
	swi 	fa1, 262296 !1744
	lwi 	fa1, 262297 !1745
	fadd	fa0, fa1, fa0 !1745
	swi 	fa0, 262297 !1745
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20146: !1671
	lwi 	a0, 262285 !1673
	li  	t0, 262156
	lwr 	a1, t0, a0 !1674
	lw  	a2, 2(a1) !270
	sw  	a2, 7(sp) !368
	lw  	a2, 7(a1) !368
	lw  	fa0, 0(a2) !373
	lw  	fa1, 3(sp) !1676
	fmul	fa0, fa0, fa1 !1676
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.20155 !1536
	lwi 	a2, 262280 !1497
	swi 	zero, 262286 !176
	swi 	zero, 262287 !177
	swi 	zero, 262288 !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lw  	a4, 5(sp) !1500
	lwr 	fa2, a4, a2 !1500
	feq 	a2, fa2, zero !124
	bne 	a2, zero, beq_else.20157 !147
	flt 	a2, zero, fa2 !122
	bne 	a2, zero, beq_else.20159 !148
	li  	fa2, -1.000000 !149
	jal 	zero, beq_cont.20160 !148
beq_else.20159: !148
	li  	fa2, 1.000000 !148
beq_cont.20160: !148
	jal 	zero, beq_cont.20158 !147
beq_else.20157: !147
	addi	fa2, zero, 0beq_cont.20158: !147
	fsgnjn  fa2, fa2, fa2 !1500
	li  	t0, 262286
	add 	t0, t0, a3
	sw  	fa2, 0(t0) !1500
	jal 	zero, beq_cont.20156 !1536
beq_else.20155: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.20161 !1538
	lw  	a2, 4(a1) !298
	lw  	fa2, 0(a2) !303
	fsgnjn  fa2, fa2, fa2 !1506
	swi 	fa2, 262286 !1506
	lw  	a2, 4(a1) !308
	lw  	fa2, 1(a2) !313
	fsgnjn  fa2, fa2, fa2 !1507
	swi 	fa2, 262287 !1507
	lw  	a2, 4(a1) !318
	lw  	fa2, 2(a2) !323
	fsgnjn  fa2, fa2, fa2 !1508
	swi 	fa2, 262288 !1508
	jal 	zero, beq_cont.20162 !1538
beq_else.20161: !1538
	lwi 	fa2, 262282 !1513
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1513
	lwi 	fa3, 262283 !1514
	lw  	a2, 5(a1) !348
	lw  	fa4, 1(a2) !353
	fsub	fa3, fa3, fa4 !1514
	lwi 	fa4, 262284 !1515
	lw  	a2, 5(a1) !358
	lw  	fa5, 2(a2) !363
	fsub	fa4, fa4, fa5 !1515
	lw  	a2, 4(a1) !298
	lw  	fa5, 0(a2) !303
	fmul	fa5, fa2, fa5 !1517
	lw  	a2, 4(a1) !308
	lw  	fa6, 1(a2) !313
	fmul	fa6, fa3, fa6 !1518
	lw  	a2, 4(a1) !318
	lw  	fa7, 2(a2) !323
	fmul	fa7, fa4, fa7 !1519
	lw  	a2, 3(a1) !289
	bne 	a2, zero, beq_else.20163 !1521
	swi 	fa5, 262286 !1522
	swi 	fa6, 262287 !1523
	swi 	fa7, 262288 !1524
	jal 	zero, beq_cont.20164 !1521
beq_else.20163: !1521
	lw  	a2, 9(a1) !438
	lw  	fs1, 2(a2) !443
	fmul	fs1, fa3, fs1 !1526
	lw  	a2, 9(a1) !428
	lw  	fs2, 1(a2) !433
	fmul	fs2, fa4, fs2 !1526
	fadd	fs1, fs1, fs2 !1526
	li  	fs2, 2.000000 !125
	fdiv	fs1, fs1, fs2 !125
	fadd	fa5, fa5, fs1 !1526
	swi 	fa5, 262286 !1526
	lw  	a2, 9(a1) !438
	lw  	fa5, 2(a2) !443
	fmul	fa5, fa2, fa5 !1527
	lw  	a2, 9(a1) !418
	lw  	fs1, 0(a2) !423
	fmul	fa4, fa4, fs1 !1527
	fadd	fa4, fa5, fa4 !1527
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa6, fa4 !1527
	swi 	fa4, 262287 !1527
	lw  	a2, 9(a1) !428
	lw  	fa4, 1(a2) !433
	fmul	fa2, fa2, fa4 !1528
	lw  	a2, 9(a1) !418
	lw  	fa4, 0(a2) !423
	fmul	fa3, fa3, fa4 !1528
	fadd	fa2, fa2, fa3 !1528
	li  	fa3, 2.000000 !125
	fdiv	fa2, fa2, fa3 !125
	fadd	fa2, fa7, fa2 !1528
	swi 	fa2, 262288 !1528
beq_cont.20164: !1521
	lw  	a2, 6(a1) !280
	lwi 	fa2, 262286 !199
	fmul	fa2, fa2, fa2 !126
	lwi 	fa3, 262287 !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	lwi 	fa3, 262288 !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	fsqrt   fa2, fa2 !199
	feq 	a3, fa2, zero !124
	bne 	a3, zero, beq_else.20165 !200
	bne 	a2, zero, beq_else.20167 !200
	li  	fa3, 1.000000 !200
	fdiv	fa2, fa3, fa2 !200
	jal 	zero, beq_cont.20168 !200
beq_else.20167: !200
	li  	fa3, -1.000000 !200
	fdiv	fa2, fa3, fa2 !200
beq_cont.20168: !200
	jal 	zero, beq_cont.20166 !200
beq_else.20165: !200
	li  	fa2, 1.000000 !200
beq_cont.20166: !200
	lwi 	fa3, 262286 !201
	fmul	fa3, fa3, fa2 !201
	swi 	fa3, 262286 !201
	lwi 	fa3, 262287 !202
	fmul	fa3, fa3, fa2 !202
	swi 	fa3, 262287 !202
	lwi 	fa3, 262288 !203
	fmul	fa2, fa3, fa2 !203
	swi 	fa2, 262288 !203
beq_cont.20162: !1538
beq_cont.20156: !1536
	lwi 	fa2, 262282 !188
	swi 	fa2, 262303 !188
	lwi 	fa2, 262283 !189
	swi 	fa2, 262304 !189
	lwi 	fa2, 262284 !190
	swi 	fa2, 262305 !190
	lw  	a2, 0(a1) !250
	lw  	a3, 8(a1) !388
	lw  	fa2, 0(a3) !393
	swi 	fa2, 262289 !1551
	lw  	a3, 8(a1) !398
	lw  	fa2, 1(a3) !403
	swi 	fa2, 262290 !1552
	lw  	a3, 8(a1) !408
	lw  	fa2, 2(a3) !413
	swi 	fa2, 262291 !1553
	sw  	fa0, 8(sp) !1554
	sw  	a1, 9(sp) !1554
	sw  	a0, 10(sp) !1554
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.20169 !1554
	lwi 	fa1, 262282 !1557
	lw  	fa0, 5(a1) !338
	lw  	fa0, 0(fa0) !343
	fsub	fa0, fa1, fa0 !1557
	li  	fa1, 0.050000 !1559
	fmul	a0, fa0, fa1 !1559
	sw  	fa0, 11(sp) !1559
	fsgnj   fa0, a0, a0 !1559
	addi	sp, sp, 12 !1559
	jal 	ra, floor !1559
	addi	sp, sp, -12 !1559
	li  	fa1, 20.000000 !1559
	fmul	fa0, fa0, fa1 !1559
	lw  	fa1, 11(sp) !1560
	fsub	fa0, fa1, fa0 !1560
	li  	fa1, 10.000000 !1560
	flt 	a0, fa0, fa1 !121
	lwi 	fa0, 262284 !1562
	sw  	a0, 12(sp) !358
	lw  	a0, 9(sp) !358
	lw  	a0, 5(a0) !358
	lw  	fa1, 2(a0) !363
	fsub	fa0, fa0, fa1 !1562
	li  	fa1, 0.050000 !1564
	sw  	fa0, 13(sp) !1564
	fmul	fa0, fa0, fa1 !1564
	addi	sp, sp, 14 !1564
	jal 	ra, floor !1564
	addi	sp, sp, -14 !1564
	li  	fa1, 20.000000 !1564
	fmul	fa0, fa0, fa1 !1564
	lw  	fa1, 13(sp) !1565
	fsub	fa0, fa1, fa0 !1565
	li  	fa1, 10.000000 !1565
	flt 	a0, fa0, fa1 !121
	lw  	a1, 12(sp) !1568
	bne 	a1, zero, beq_else.20171 !1568
	bne 	a0, zero, beq_else.20173 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.20174 !1570
beq_else.20173: !1570
	addi	fa0, zero, 0beq_cont.20174: !1570
	jal 	zero, beq_cont.20172 !1568
beq_else.20171: !1568
	bne 	a0, zero, beq_else.20175 !1569
	addi	fa0, zero, 0	jal 	zero, beq_cont.20176 !1569
beq_else.20175: !1569
	li  	fa0, 255.000000 !1569
beq_cont.20176: !1569
beq_cont.20172: !1568
	swi 	fa0, 262290 !1567
	jal 	zero, beq_cont.20170 !1554
beq_else.20169: !1554
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.20177 !1572
	lwi 	fa1, 262283 !1575
	li  	fa0, 0.250000 !1575
	fmul	fa0, fa1, fa0 !1575
	addi	sp, sp, 14 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -14 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	swi 	fa1, 262289 !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	swi 	fa0, 262290 !1577
	jal 	zero, beq_cont.20178 !1572
beq_else.20177: !1572
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.20179 !1579
	lwi 	fa1, 262282 !1582
	lw  	fa0, 5(a1) !338
	lw  	fa0, 0(fa0) !343
	fsub	fa0, fa1, fa0 !1582
	lwi 	fa1, 262284 !1583
	lw  	a1, 5(a1) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1583
	fmul	fa0, fa0, fa0 !126
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !1584
	fsqrt   fa0, fa0 !1584
	li  	fa1, 10.000000 !1584
	fdiv	fa0, fa0, fa1 !1584
	sw  	fa0, 14(sp) !1585
	addi	sp, sp, 15 !1585
	jal 	ra, floor !1585
	addi	sp, sp, -15 !1585
	lw  	fa1, 14(sp) !1585
	fsub	fa0, fa1, fa0 !1585
	li  	fa1, 3.141593 !1585
	fmul	fa0, fa0, fa1 !1585
	addi	sp, sp, 15 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -15 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	swi 	fa1, 262290 !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	swi 	fa0, 262291 !1588
	jal 	zero, beq_cont.20180 !1579
beq_else.20179: !1579
	addi	t0, zero, 4
	bne 	a2, t0, beq_else.20181 !1590
	lwi 	fa1, 262282 !1592
	lw  	fa0, 5(a1) !338
	lw  	fa0, 0(fa0) !343
	fsub	fa0, fa1, fa0 !1592
	lw  	a0, 4(a1) !298
	lw  	fa1, 0(a0) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lwi 	fa1, 262284 !1593
	lw  	a0, 5(a1) !358
	lw  	fa2, 2(a0) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a0, 4(a1) !318
	lw  	fa2, 2(a0) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	sw  	fa2, 15(sp) !1596
	fsgnjx  fa2, fa0, fa0 !1596
	li  	fa3, 0.000100 !1596
	flt 	a0, fa2, fa3 !121
	bne 	a0, zero, beq_else.20183 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 16 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -16 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.20184 !1596
beq_else.20183: !1596
	li  	fa0, 15.000000 !1597
beq_cont.20184: !1596
	sw  	fa0, 16(sp) !1603
	addi	sp, sp, 17 !1603
	jal 	ra, floor !1603
	addi	sp, sp, -17 !1603
	lw  	fa1, 16(sp) !1603
	fsub	fa0, fa1, fa0 !1603
	sw  	fa0, 17(sp) !1605
	lwi 	fa0, 262283 !1605
	lw  	a0, 9(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa1, 1(a1) !353
	fsub	fa0, fa0, fa1 !1605
	lw  	a0, 4(a0) !308
	lw  	fa1, 1(a0) !313
	fsqrt   fa1, fa1 !1605
	fmul	fa0, fa0, fa1 !1605
	lw  	fa1, 15(sp) !1607
	fsgnjx  fa2, fa1, fa1 !1607
	li  	fa3, 0.000100 !1607
	flt 	a0, fa2, fa3 !121
	bne 	a0, zero, beq_else.20185 !1607
	fdiv	fa0, fa0, fa1 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 18 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -18 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.20186 !1607
beq_else.20185: !1607
	li  	fa0, 15.000000 !1608
beq_cont.20186: !1607
	sw  	fa0, 18(sp) !1613
	addi	sp, sp, 19 !1613
	jal 	ra, floor !1613
	addi	sp, sp, -19 !1613
	lw  	fa1, 18(sp) !1613
	fsub	fa0, fa1, fa0 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 17(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.20187 !1615
	jal 	zero, beq_cont.20188 !1615
beq_else.20187: !1615
	addi	fa0, zero, 0beq_cont.20188: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	swi 	fa0, 262291 !1616
	jal 	zero, beq_cont.20182 !1590
beq_else.20181: !1590
beq_cont.20182: !1590
beq_cont.20180: !1579
beq_cont.20178: !1572
beq_cont.20170: !1554
	lw  	a0, 10(sp) !1683
	slli	a0, a0, 2 !1683
	lwi 	a1, 262280 !1683
	add 	a0, a0, a1 !1683
	lw  	a1, 4(sp) !1683
	lw  	a2, 6(sp) !1683
	add 	t0, a2, a1 !1683
	sw  	a0, 0(t0) !1683
	lw  	a0, 2(sp) !468
	lw  	a2, 1(a0) !468
	lwr 	a2, a2, a1 !1685
	lwi 	fa0, 262282 !188
	sw  	fa0, 0(a2) !188
	lwi 	fa0, 262283 !189
	sw  	fa0, 1(a2) !189
	lwi 	fa0, 262284 !190
	sw  	fa0, 2(a2) !190
	lw  	a2, 3(a0) !483
	lw  	a3, 9(sp) !368
	lw  	a4, 7(a3) !368
	lw  	fa0, 0(a4) !373
	li  	fa1, 0.500000 !1689
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.20189 !1689
	addi	a4, zero, 1 !1692
	add 	t0, a2, a1 !1692
	sw  	a4, 0(t0) !1692
	lw  	a2, 4(a0) !490
	lwr 	a4, a2, a1 !1694
	lwi 	fa0, 262289 !188
	sw  	fa0, 0(a4) !188
	lwi 	fa0, 262290 !189
	sw  	fa0, 1(a4) !189
	lwi 	fa0, 262291 !190
	sw  	fa0, 2(a4) !190
	lwr 	a2, a2, a1 !1695
	li  	fa0, 0.003906 !1695
	lw  	fa1, 8(sp) !1695
	fmul	fa0, fa0, fa1 !1695
	lw  	fa1, 0(a2) !234
	fmul	fa1, fa1, fa0 !234
	sw  	fa1, 0(a2) !234
	lw  	fa1, 1(a2) !235
	fmul	fa1, fa1, fa0 !235
	sw  	fa1, 1(a2) !235
	lw  	fa1, 2(a2) !236
	fmul	fa0, fa1, fa0 !236
	sw  	fa0, 2(a2) !236
	lw  	a0, 7(a0) !520
	lwr 	a0, a0, a1 !1697
	lwi 	fa0, 262286 !188
	sw  	fa0, 0(a0) !188
	lwi 	fa0, 262287 !189
	sw  	fa0, 1(a0) !189
	lwi 	fa0, 262288 !190
	sw  	fa0, 2(a0) !190
	jal 	zero, beq_cont.20190 !1689
beq_else.20189: !1689
	addi	a0, zero, 0 !1690
	add 	t0, a2, a1 !1690
	sw  	a0, 0(t0) !1690
beq_cont.20190: !1689
	li  	fa0, -2.000000 !1700
	lw  	a0, 5(sp) !208
	lw  	fa1, 0(a0) !208
	lwi 	fa2, 262286 !208
	fmul	fa1, fa1, fa2 !208
	lw  	fa2, 1(a0) !208
	lwi 	fa3, 262287 !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	lw  	fa2, 2(a0) !208
	lwi 	fa3, 262288 !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	fmul	fa0, fa0, fa1 !1700
	lw  	fa1, 0(a0) !218
	lwi 	fa2, 262286 !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	sw  	fa1, 0(a0) !218
	lw  	fa1, 1(a0) !219
	lwi 	fa2, 262287 !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	sw  	fa1, 1(a0) !219
	lw  	fa1, 2(a0) !220
	lwi 	fa2, 262288 !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa0, fa1, fa0 !220
	sw  	fa0, 2(a0) !220
	lw  	a3, 7(a3) !378
	lw  	fa0, 1(a3) !383
	lw  	fa1, 3(sp) !1704
	fmul	fa0, fa1, fa0 !1704
	addi	a1, zero, 0 !1707
	lwi 	fa1, 262278 !1707
	sw  	fa0, 19(sp) !1707
	addi	a0, a1, 0 !1707
	addi	a1, fa1, 0 !1707
	addi	sp, sp, 20 !1707
	jal 	ra, shadow_check_one_or_matrix.2701 !1707
	addi	sp, sp, -20 !1707
	bne 	a0, zero, beq_else.20191 !1707
	lwi 	fa0, 262286 !208
	lwi 	fa1, 262222 !208
	fmul	fa0, fa0, fa1 !208
	lwi 	fa1, 262287 !208
	lwi 	fa2, 262223 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lwi 	fa1, 262288 !208
	lwi 	fa2, 262224 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1708
	lw  	fa1, 8(sp) !1708
	fmul	fa0, fa0, fa1 !1708
	lw  	a0, 5(sp) !208
	lw  	fa1, 0(a0) !208
	lwi 	fa2, 262222 !208
	fmul	fa1, fa1, fa2 !208
	lw  	fa2, 1(a0) !208
	lwi 	fa3, 262223 !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	lw  	fa2, 2(a0) !208
	lwi 	fa3, 262224 !208
	fmul	fa2, fa2, fa3 !208
	fadd	fa1, fa1, fa2 !208
	fsgnjn  fa1, fa1, fa1 !1709
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.20193 !1627
	jal 	zero, beq_cont.20194 !1627
beq_else.20193: !1627
	lwi 	fa2, 262295 !218
	lwi 	fa3, 262289 !218
	fmul	fa3, fa0, fa3 !218
	fadd	fa2, fa2, fa3 !218
	swi 	fa2, 262295 !218
	lwi 	fa2, 262296 !219
	lwi 	fa3, 262290 !219
	fmul	fa3, fa0, fa3 !219
	fadd	fa2, fa2, fa3 !219
	swi 	fa2, 262296 !219
	lwi 	fa2, 262297 !220
	lwi 	fa3, 262291 !220
	fmul	fa0, fa0, fa3 !220
	fadd	fa0, fa2, fa0 !220
	swi 	fa0, 262297 !220
beq_cont.20194: !1627
	flt 	a0, zero, fa1 !122
	bne 	a0, zero, beq_else.20195 !1632
	jal 	zero, beq_cont.20196 !1632
beq_else.20195: !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 19(sp) !1633
	fmul	fa0, fa0, fa1 !1633
	lwi 	fa1, 262295 !1634
	fadd	fa1, fa1, fa0 !1634
	swi 	fa1, 262295 !1634
	lwi 	fa1, 262296 !1635
	fadd	fa1, fa1, fa0 !1635
	swi 	fa1, 262296 !1635
	lwi 	fa1, 262297 !1636
	fadd	fa0, fa1, fa0 !1636
	swi 	fa0, 262297 !1636
beq_cont.20196: !1632
	jal 	zero, beq_cont.20192 !1707
beq_else.20191: !1707
beq_cont.20192: !1707
	lwi 	fa0, 262282 !188
	swi 	fa0, 262306 !188
	lwi 	fa0, 262283 !189
	swi 	fa0, 262307 !189
	lwi 	fa0, 262284 !190
	swi 	fa0, 262308 !190
	lwi 	a0, 262144 !1168
	addi	a1, a0, -1 !1168
	li  	a0, 262282 !0
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	lwi 	a0, 262578 !1715
	addi	a0, a0, -1 !1715
	lw  	fa0, 8(sp) !1715
	lw  	fa1, 19(sp) !1715
	lw  	a1, 5(sp) !1715
	addi	sp, sp, 20 !1715
	jal 	ra, trace_reflections.2748 !1715
	addi	sp, sp, -20 !1715
	li  	fa0, 0.100000 !1718
	lw  	fa1, 3(sp) !121
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.20197 !1718
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.20197: !1718
	lw  	a0, 4(sp) !1720
	addi	t0, zero, 4
	blt 	a0, t0, bge_else.20200 !1720
	jal 	zero, bge_cont.20201 !1720
bge_else.20200: !1720
	addi	a1, a0, 1 !1721
	addi	a2, zero, -1 !1721
	lw  	a3, 6(sp) !1721
	add 	t0, a3, a1 !1721
	sw  	a2, 0(t0) !1721
bge_cont.20201: !1720
	lw  	a1, 7(sp) !1724
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.20202 !1724
	li  	fa0, 1.000000 !1725
	lw  	a1, 9(sp) !368
	lw  	a1, 7(a1) !368
	lw  	fa2, 0(a1) !373
	fsub	fa0, fa0, fa2 !1725
	fmul	fa0, fa1, fa0 !1725
	addi	a0, a0, 1 !1726
	lwi 	fa1, 262281 !1726
	lw  	fa2, 1(sp) !1726
	fadd	fa1, fa2, fa1 !1726
	lw  	a1, 5(sp) !1726
	lw  	a2, 2(sp) !1726
	lw  	ra, 0(sp)
	jal 	zero, trace_ray.2753 !1726
beq_else.20202: !1724
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.20142: !1669
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_trace_diffuse_rays.2762:
	sw  	ra, 0(sp)
	blt 	a3, zero, bge_else.20206 !1777
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
	bne 	a4, zero, beq_else.20208 !1781
	lwr 	a2, a0, a3 !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	li  	a1, 1000000000.000000 !1479
	swi 	a1, 262281 !1479
	addi	a0, zero, 0 !1480
	lwi 	a1, 262278 !1480
	sw  	fa0, 5(sp) !1480
	sw  	a2, 6(sp) !1480
	addi	sp, sp, 7 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -7 !1480
	lwi 	fa0, 262281 !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.20210 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.20211 !1483
beq_else.20210: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.20211: !1483
	bne 	a0, zero, beq_else.20212 !1761
	jal 	zero, beq_cont.20213 !1761
beq_else.20212: !1761
	lwi 	a0, 262285 !1762
	li  	t0, 262156
	lwr 	a0, t0, a0 !1762
	lw  	a1, 6(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.20214 !1536
	lwi 	a2, 262280 !1497
	swi 	zero, 262286 !176
	swi 	zero, 262287 !177
	swi 	zero, 262288 !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.20216 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.20218 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.20219 !148
beq_else.20218: !148
	li  	fa0, 1.000000 !148
beq_cont.20219: !148
	jal 	zero, beq_cont.20217 !147
beq_else.20216: !147
	addi	fa0, zero, 0beq_cont.20217: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 262286
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.20215 !1536
beq_else.20214: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.20220 !1538
	lw  	a1, 4(a0) !298
	lw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0 !1506
	swi 	fa0, 262286 !1506
	lw  	a1, 4(a0) !308
	lw  	fa0, 1(a1) !313
	fsgnjn  fa0, fa0, fa0 !1507
	swi 	fa0, 262287 !1507
	lw  	a1, 4(a0) !318
	lw  	fa0, 2(a1) !323
	fsgnjn  fa0, fa0, fa0 !1508
	swi 	fa0, 262288 !1508
	jal 	zero, beq_cont.20221 !1538
beq_else.20220: !1538
	lwi 	fa0, 262282 !1513
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1513
	lwi 	fa1, 262283 !1514
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1514
	lwi 	fa2, 262284 !1515
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
	bne 	a1, zero, beq_else.20222 !1521
	swi 	fa3, 262286 !1522
	swi 	fa4, 262287 !1523
	swi 	fa5, 262288 !1524
	jal 	zero, beq_cont.20223 !1521
beq_else.20222: !1521
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
	swi 	fa3, 262286 !1526
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
	swi 	fa2, 262287 !1527
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
	swi 	fa0, 262288 !1528
beq_cont.20223: !1521
	lw  	a1, 6(a0) !280
	lwi 	fa0, 262286 !199
	fmul	fa0, fa0, fa0 !126
	lwi 	fa1, 262287 !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lwi 	fa1, 262288 !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.20224 !200
	bne 	a1, zero, beq_else.20226 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.20227 !200
beq_else.20226: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.20227: !200
	jal 	zero, beq_cont.20225 !200
beq_else.20224: !200
	li  	fa0, 1.000000 !200
beq_cont.20225: !200
	lwi 	fa1, 262286 !201
	fmul	fa1, fa1, fa0 !201
	swi 	fa1, 262286 !201
	lwi 	fa1, 262287 !202
	fmul	fa1, fa1, fa0 !202
	swi 	fa1, 262287 !202
	lwi 	fa1, 262288 !203
	fmul	fa0, fa1, fa0 !203
	swi 	fa0, 262288 !203
beq_cont.20221: !1538
beq_cont.20215: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	swi 	fa0, 262289 !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	swi 	fa0, 262290 !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	swi 	fa0, 262291 !1553
	sw  	a0, 7(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.20228 !1554
	lwi 	fa0, 262282 !1557
	lw  	a0, 5(a0) !338
	lw  	fa1, 0(a0) !343
	fsub	fa0, fa0, fa1 !1557
	li  	fa1, 0.050000 !1559
	sw  	fa0, 8(sp) !1559
	fmul	fa0, fa0, fa1 !1559
	addi	sp, sp, 9 !1559
	jal 	ra, floor !1559
	addi	sp, sp, -9 !1559
	li  	fa1, 20.000000 !1559
	fmul	fa0, fa0, fa1 !1559
	lw  	fa1, 8(sp) !1560
	fsub	fa0, fa1, fa0 !1560
	li  	fa1, 10.000000 !1560
	flt 	a0, fa0, fa1 !121
	lwi 	fa0, 262284 !1562
	sw  	a0, 9(sp) !358
	lw  	a0, 7(sp) !358
	lw  	a0, 5(a0) !358
	lw  	fa1, 2(a0) !363
	fsub	fa0, fa0, fa1 !1562
	li  	fa1, 0.050000 !1564
	sw  	fa0, 10(sp) !1564
	fmul	fa0, fa0, fa1 !1564
	addi	sp, sp, 11 !1564
	jal 	ra, floor !1564
	addi	sp, sp, -11 !1564
	li  	fa1, 20.000000 !1564
	fmul	fa0, fa0, fa1 !1564
	lw  	fa1, 10(sp) !1565
	fsub	fa0, fa1, fa0 !1565
	li  	fa1, 10.000000 !1565
	flt 	a0, fa0, fa1 !121
	lw  	a1, 9(sp) !1568
	bne 	a1, zero, beq_else.20230 !1568
	bne 	a0, zero, beq_else.20232 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.20233 !1570
beq_else.20232: !1570
	addi	fa0, zero, 0beq_cont.20233: !1570
	jal 	zero, beq_cont.20231 !1568
beq_else.20230: !1568
	bne 	a0, zero, beq_else.20234 !1569
	addi	fa0, zero, 0	jal 	zero, beq_cont.20235 !1569
beq_else.20234: !1569
	li  	fa0, 255.000000 !1569
beq_cont.20235: !1569
beq_cont.20231: !1568
	swi 	fa0, 262290 !1567
	jal 	zero, beq_cont.20229 !1554
beq_else.20228: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.20236 !1572
	lwi 	fa0, 262283 !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 11 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -11 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	swi 	fa1, 262289 !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	swi 	fa0, 262290 !1577
	jal 	zero, beq_cont.20237 !1572
beq_else.20236: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.20238 !1579
	lwi 	fa0, 262282 !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lwi 	fa1, 262284 !1583
	lw  	a0, 5(a0) !358
	lw  	fa2, 2(a0) !363
	fsub	fa1, fa1, fa2 !1583
	fmul	fa0, fa0, fa0 !126
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !1584
	fsqrt   fa0, fa0 !1584
	li  	fa1, 10.000000 !1584
	fdiv	fa0, fa0, fa1 !1584
	sw  	fa0, 11(sp) !1585
	addi	sp, sp, 12 !1585
	jal 	ra, floor !1585
	addi	sp, sp, -12 !1585
	lw  	fa1, 11(sp) !1585
	fsub	fa0, fa1, fa0 !1585
	li  	fa1, 3.141593 !1585
	fmul	fa0, fa0, fa1 !1585
	addi	sp, sp, 12 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -12 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	swi 	fa1, 262290 !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	swi 	fa0, 262291 !1588
	jal 	zero, beq_cont.20239 !1579
beq_else.20238: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_else.20240 !1590
	lwi 	fa0, 262282 !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lwi 	fa1, 262284 !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a0, 4(a0) !318
	lw  	fa2, 2(a0) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	sw  	fa2, 12(sp) !1596
	fsgnjx  fa2, fa0, fa0 !1596
	li  	fa3, 0.000100 !1596
	flt 	a0, fa2, fa3 !121
	bne 	a0, zero, beq_else.20242 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 13 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -13 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.20243 !1596
beq_else.20242: !1596
	li  	fa0, 15.000000 !1597
beq_cont.20243: !1596
	sw  	fa0, 13(sp) !1603
	addi	sp, sp, 14 !1603
	jal 	ra, floor !1603
	addi	sp, sp, -14 !1603
	lw  	fa1, 13(sp) !1603
	fsub	fa0, fa1, fa0 !1603
	sw  	fa0, 14(sp) !1605
	lwi 	fa0, 262283 !1605
	lw  	a0, 7(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa1, 1(a1) !353
	fsub	fa0, fa0, fa1 !1605
	lw  	a0, 4(a0) !308
	lw  	fa1, 1(a0) !313
	fsqrt   fa1, fa1 !1605
	fmul	fa0, fa0, fa1 !1605
	lw  	fa1, 12(sp) !1607
	fsgnjx  fa2, fa1, fa1 !1607
	li  	fa3, 0.000100 !1607
	flt 	a0, fa2, fa3 !121
	bne 	a0, zero, beq_else.20244 !1607
	fdiv	fa0, fa0, fa1 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 15 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -15 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.20245 !1607
beq_else.20244: !1607
	li  	fa0, 15.000000 !1608
beq_cont.20245: !1607
	sw  	fa0, 15(sp) !1613
	addi	sp, sp, 16 !1613
	jal 	ra, floor !1613
	addi	sp, sp, -16 !1613
	lw  	fa1, 15(sp) !1613
	fsub	fa0, fa1, fa0 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 14(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.20246 !1615
	jal 	zero, beq_cont.20247 !1615
beq_else.20246: !1615
	addi	fa0, zero, 0beq_cont.20247: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	swi 	fa0, 262291 !1616
	jal 	zero, beq_cont.20241 !1590
beq_else.20240: !1590
beq_cont.20241: !1590
beq_cont.20239: !1579
beq_cont.20237: !1572
beq_cont.20229: !1554
	addi	a0, zero, 0 !1767
	lwi 	a1, 262278 !1767
	addi	sp, sp, 16 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -16 !1767
	bne 	a0, zero, beq_else.20248 !1767
	lwi 	fa0, 262286 !208
	lwi 	fa1, 262222 !208
	fmul	fa0, fa0, fa1 !208
	lwi 	fa1, 262287 !208
	lwi 	fa2, 262223 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lwi 	fa1, 262288 !208
	lwi 	fa2, 262224 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1768
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.20250 !1769
	addi	fa0, zero, 0	jal 	zero, beq_cont.20251 !1769
beq_else.20250: !1769
beq_cont.20251: !1769
	lw  	fa1, 5(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 7(sp) !368
	lw  	a0, 7(a0) !368
	lw  	fa1, 0(a0) !373
	fmul	fa0, fa0, fa1 !1770
	lwi 	fa1, 262292 !218
	lwi 	fa2, 262289 !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	swi 	fa1, 262292 !218
	lwi 	fa1, 262293 !219
	lwi 	fa2, 262290 !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	swi 	fa1, 262293 !219
	lwi 	fa1, 262294 !220
	lwi 	fa2, 262291 !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa0, fa1, fa0 !220
	swi 	fa0, 262294 !220
	jal 	zero, beq_cont.20249 !1767
beq_else.20248: !1767
beq_cont.20249: !1767
beq_cont.20213: !1761
	jal 	zero, beq_cont.20209 !1781
beq_else.20208: !1781
	addi	a2, a3, 1 !1782
	lwr 	a2, a0, a2 !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	li  	a1, 1000000000.000000 !1479
	swi 	a1, 262281 !1479
	addi	a0, zero, 0 !1480
	lwi 	a1, 262278 !1480
	sw  	fa0, 16(sp) !1480
	sw  	a2, 17(sp) !1480
	addi	sp, sp, 18 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -18 !1480
	lwi 	fa0, 262281 !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.20252 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.20253 !1483
beq_else.20252: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.20253: !1483
	bne 	a0, zero, beq_else.20254 !1761
	jal 	zero, beq_cont.20255 !1761
beq_else.20254: !1761
	lwi 	a0, 262285 !1762
	li  	t0, 262156
	lwr 	a0, t0, a0 !1762
	lw  	a1, 17(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.20256 !1536
	lwi 	a2, 262280 !1497
	swi 	zero, 262286 !176
	swi 	zero, 262287 !177
	swi 	zero, 262288 !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.20258 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.20260 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.20261 !148
beq_else.20260: !148
	li  	fa0, 1.000000 !148
beq_cont.20261: !148
	jal 	zero, beq_cont.20259 !147
beq_else.20258: !147
	addi	fa0, zero, 0beq_cont.20259: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 262286
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.20257 !1536
beq_else.20256: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.20262 !1538
	lw  	a1, 4(a0) !298
	lw  	fa0, 0(a1) !303
	fsgnjn  fa0, fa0, fa0 !1506
	swi 	fa0, 262286 !1506
	lw  	a1, 4(a0) !308
	lw  	fa0, 1(a1) !313
	fsgnjn  fa0, fa0, fa0 !1507
	swi 	fa0, 262287 !1507
	lw  	a1, 4(a0) !318
	lw  	fa0, 2(a1) !323
	fsgnjn  fa0, fa0, fa0 !1508
	swi 	fa0, 262288 !1508
	jal 	zero, beq_cont.20263 !1538
beq_else.20262: !1538
	lwi 	fa0, 262282 !1513
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1513
	lwi 	fa1, 262283 !1514
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1514
	lwi 	fa2, 262284 !1515
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
	bne 	a1, zero, beq_else.20264 !1521
	swi 	fa3, 262286 !1522
	swi 	fa4, 262287 !1523
	swi 	fa5, 262288 !1524
	jal 	zero, beq_cont.20265 !1521
beq_else.20264: !1521
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
	swi 	fa3, 262286 !1526
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
	swi 	fa2, 262287 !1527
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
	swi 	fa0, 262288 !1528
beq_cont.20265: !1521
	lw  	a1, 6(a0) !280
	lwi 	fa0, 262286 !199
	fmul	fa0, fa0, fa0 !126
	lwi 	fa1, 262287 !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lwi 	fa1, 262288 !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.20266 !200
	bne 	a1, zero, beq_else.20268 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.20269 !200
beq_else.20268: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.20269: !200
	jal 	zero, beq_cont.20267 !200
beq_else.20266: !200
	li  	fa0, 1.000000 !200
beq_cont.20267: !200
	lwi 	fa1, 262286 !201
	fmul	fa1, fa1, fa0 !201
	swi 	fa1, 262286 !201
	lwi 	fa1, 262287 !202
	fmul	fa1, fa1, fa0 !202
	swi 	fa1, 262287 !202
	lwi 	fa1, 262288 !203
	fmul	fa0, fa1, fa0 !203
	swi 	fa0, 262288 !203
beq_cont.20263: !1538
beq_cont.20257: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	swi 	fa0, 262289 !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	swi 	fa0, 262290 !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	swi 	fa0, 262291 !1553
	sw  	a0, 18(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.20270 !1554
	lwi 	fa0, 262282 !1557
	lw  	a0, 5(a0) !338
	lw  	fa1, 0(a0) !343
	fsub	fa0, fa0, fa1 !1557
	li  	fa1, 0.050000 !1559
	sw  	fa0, 19(sp) !1559
	fmul	fa0, fa0, fa1 !1559
	addi	sp, sp, 20 !1559
	jal 	ra, floor !1559
	addi	sp, sp, -20 !1559
	li  	fa1, 20.000000 !1559
	fmul	fa0, fa0, fa1 !1559
	lw  	fa1, 19(sp) !1560
	fsub	fa0, fa1, fa0 !1560
	li  	fa1, 10.000000 !1560
	flt 	a0, fa0, fa1 !121
	lwi 	fa0, 262284 !1562
	sw  	a0, 20(sp) !358
	lw  	a0, 18(sp) !358
	lw  	a0, 5(a0) !358
	lw  	fa1, 2(a0) !363
	fsub	fa0, fa0, fa1 !1562
	li  	fa1, 0.050000 !1564
	sw  	fa0, 21(sp) !1564
	fmul	fa0, fa0, fa1 !1564
	addi	sp, sp, 22 !1564
	jal 	ra, floor !1564
	addi	sp, sp, -22 !1564
	li  	fa1, 20.000000 !1564
	fmul	fa0, fa0, fa1 !1564
	lw  	fa1, 21(sp) !1565
	fsub	fa0, fa1, fa0 !1565
	li  	fa1, 10.000000 !1565
	flt 	a0, fa0, fa1 !121
	lw  	a1, 20(sp) !1568
	bne 	a1, zero, beq_else.20272 !1568
	bne 	a0, zero, beq_else.20274 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.20275 !1570
beq_else.20274: !1570
	addi	fa0, zero, 0beq_cont.20275: !1570
	jal 	zero, beq_cont.20273 !1568
beq_else.20272: !1568
	bne 	a0, zero, beq_else.20276 !1569
	addi	fa0, zero, 0	jal 	zero, beq_cont.20277 !1569
beq_else.20276: !1569
	li  	fa0, 255.000000 !1569
beq_cont.20277: !1569
beq_cont.20273: !1568
	swi 	fa0, 262290 !1567
	jal 	zero, beq_cont.20271 !1554
beq_else.20270: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.20278 !1572
	lwi 	fa0, 262283 !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 22 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -22 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	swi 	fa1, 262289 !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	swi 	fa0, 262290 !1577
	jal 	zero, beq_cont.20279 !1572
beq_else.20278: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.20280 !1579
	lwi 	fa0, 262282 !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lwi 	fa1, 262284 !1583
	lw  	a0, 5(a0) !358
	lw  	fa2, 2(a0) !363
	fsub	fa1, fa1, fa2 !1583
	fmul	fa0, fa0, fa0 !126
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !1584
	fsqrt   fa0, fa0 !1584
	li  	fa1, 10.000000 !1584
	fdiv	fa0, fa0, fa1 !1584
	sw  	fa0, 22(sp) !1585
	addi	sp, sp, 23 !1585
	jal 	ra, floor !1585
	addi	sp, sp, -23 !1585
	lw  	fa1, 22(sp) !1585
	fsub	fa0, fa1, fa0 !1585
	li  	fa1, 3.141593 !1585
	fmul	fa0, fa0, fa1 !1585
	addi	sp, sp, 23 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -23 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	swi 	fa1, 262290 !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	swi 	fa0, 262291 !1588
	jal 	zero, beq_cont.20281 !1579
beq_else.20280: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_else.20282 !1590
	lwi 	fa0, 262282 !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lwi 	fa1, 262284 !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a0, 4(a0) !318
	lw  	fa2, 2(a0) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	sw  	fa2, 23(sp) !1596
	fsgnjx  fa2, fa0, fa0 !1596
	li  	fa3, 0.000100 !1596
	flt 	a0, fa2, fa3 !121
	bne 	a0, zero, beq_else.20284 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 24 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -24 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.20285 !1596
beq_else.20284: !1596
	li  	fa0, 15.000000 !1597
beq_cont.20285: !1596
	sw  	fa0, 24(sp) !1603
	addi	sp, sp, 25 !1603
	jal 	ra, floor !1603
	addi	sp, sp, -25 !1603
	lw  	fa1, 24(sp) !1603
	fsub	fa0, fa1, fa0 !1603
	sw  	fa0, 25(sp) !1605
	lwi 	fa0, 262283 !1605
	lw  	a0, 18(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa1, 1(a1) !353
	fsub	fa0, fa0, fa1 !1605
	lw  	a0, 4(a0) !308
	lw  	fa1, 1(a0) !313
	fsqrt   fa1, fa1 !1605
	fmul	fa0, fa0, fa1 !1605
	lw  	fa1, 23(sp) !1607
	fsgnjx  fa2, fa1, fa1 !1607
	li  	fa3, 0.000100 !1607
	flt 	a0, fa2, fa3 !121
	bne 	a0, zero, beq_else.20286 !1607
	fdiv	fa0, fa0, fa1 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 26 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -26 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.20287 !1607
beq_else.20286: !1607
	li  	fa0, 15.000000 !1608
beq_cont.20287: !1607
	sw  	fa0, 26(sp) !1613
	addi	sp, sp, 27 !1613
	jal 	ra, floor !1613
	addi	sp, sp, -27 !1613
	lw  	fa1, 26(sp) !1613
	fsub	fa0, fa1, fa0 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 25(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.20288 !1615
	jal 	zero, beq_cont.20289 !1615
beq_else.20288: !1615
	addi	fa0, zero, 0beq_cont.20289: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	swi 	fa0, 262291 !1616
	jal 	zero, beq_cont.20283 !1590
beq_else.20282: !1590
beq_cont.20283: !1590
beq_cont.20281: !1579
beq_cont.20279: !1572
beq_cont.20271: !1554
	addi	a0, zero, 0 !1767
	lwi 	a1, 262278 !1767
	addi	sp, sp, 27 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -27 !1767
	bne 	a0, zero, beq_else.20290 !1767
	lwi 	fa0, 262286 !208
	lwi 	fa1, 262222 !208
	fmul	fa0, fa0, fa1 !208
	lwi 	fa1, 262287 !208
	lwi 	fa2, 262223 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	lwi 	fa1, 262288 !208
	lwi 	fa2, 262224 !208
	fmul	fa1, fa1, fa2 !208
	fadd	fa0, fa0, fa1 !208
	fsgnjn  fa0, fa0, fa0 !1768
	flt 	a0, zero, fa0 !122
	bne 	a0, zero, beq_else.20292 !1769
	addi	fa0, zero, 0	jal 	zero, beq_cont.20293 !1769
beq_else.20292: !1769
beq_cont.20293: !1769
	lw  	fa1, 16(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 18(sp) !368
	lw  	a0, 7(a0) !368
	lw  	fa1, 0(a0) !373
	fmul	fa0, fa0, fa1 !1770
	lwi 	fa1, 262292 !218
	lwi 	fa2, 262289 !218
	fmul	fa2, fa0, fa2 !218
	fadd	fa1, fa1, fa2 !218
	swi 	fa1, 262292 !218
	lwi 	fa1, 262293 !219
	lwi 	fa2, 262290 !219
	fmul	fa2, fa0, fa2 !219
	fadd	fa1, fa1, fa2 !219
	swi 	fa1, 262293 !219
	lwi 	fa1, 262294 !220
	lwi 	fa2, 262291 !220
	fmul	fa0, fa0, fa2 !220
	fadd	fa0, fa1, fa0 !220
	swi 	fa0, 262294 !220
	jal 	zero, beq_cont.20291 !1767
beq_else.20290: !1767
beq_cont.20291: !1767
beq_cont.20255: !1761
beq_cont.20209: !1781
	lw  	a0, 4(sp) !1786
	addi	a3, a0, -2 !1786
	lw  	a0, 3(sp) !1786
	lw  	a1, 2(sp) !1786
	lw  	a2, 1(sp) !1786
	lw  	ra, 0(sp)
	jal 	zero, iter_trace_diffuse_rays.2762 !1786
bge_else.20206: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
do_without_neighbors.2784:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.20295 !1863
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1866
	blt 	a2, zero, bge_else.20297 !1866
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1868
	sw  	a0, 1(sp) !1868
	sw  	a1, 2(sp) !1868
	bne 	a2, zero, beq_else.20299 !1868
	jal 	zero, beq_cont.20300 !1868
beq_else.20299: !1868
	lw  	a2, 5(a0) !497
	lw  	a3, 7(a0) !520
	lw  	a4, 1(a0) !468
	lw  	a5, 4(a0) !490
	lwr 	a2, a2, a1 !1831
	lw  	fa0, 0(a2) !188
	swi 	fa0, 262292 !188
	lw  	fa0, 1(a2) !189
	swi 	fa0, 262293 !189
	lw  	fa0, 2(a2) !190
	swi 	fa0, 262294 !190
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	lwr 	a3, a3, a1 !1834
	lwr 	a0, a4, a1 !1835
	sw  	a5, 3(sp) !1801
	sw  	a3, 4(sp) !1801
	sw  	a0, 5(sp) !1801
	sw  	a2, 6(sp) !1801
	bne 	a2, zero, beq_else.20301 !1801
	jal 	zero, beq_cont.20302 !1801
beq_else.20301: !1801
	lwi 	a1, 262323 !1802
	lw  	fa0, 0(a0) !188
	swi 	fa0, 262306 !188
	lw  	fa0, 1(a0) !189
	swi 	fa0, 262307 !189
	lw  	fa0, 2(a0) !190
	swi 	fa0, 262308 !190
	lwi 	a5, 262144 !1168
	addi	a2, a5, -1 !1168
	sw  	a1, 7(sp) !1168
	addi	a1, a2, 0 !1168
	addi	sp, sp, 8 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -8 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 7(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
beq_cont.20302: !1801
	lw  	a0, 6(sp) !1805
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.20303 !1805
	jal 	zero, beq_cont.20304 !1805
beq_else.20303: !1805
	lwi 	a0, 262324 !1806
	sw  	a0, 8(sp) !188
	lw  	a0, 5(sp) !188
	lw  	fa0, 0(a0) !188
	swi 	fa0, 262306 !188
	lw  	fa0, 1(a0) !189
	swi 	fa0, 262307 !189
	lw  	fa0, 2(a0) !190
	swi 	fa0, 262308 !190
	lwi 	a1, 262144 !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 9 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -9 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 8(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 9 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -9 !1795
beq_cont.20304: !1805
	lw  	a0, 6(sp) !1809
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.20305 !1809
	jal 	zero, beq_cont.20306 !1809
beq_else.20305: !1809
	lwi 	a0, 262325 !1810
	sw  	a0, 9(sp) !188
	lw  	a0, 5(sp) !188
	lw  	fa0, 0(a0) !188
	swi 	fa0, 262306 !188
	lw  	fa0, 1(a0) !189
	swi 	fa0, 262307 !189
	lw  	fa0, 2(a0) !190
	swi 	fa0, 262308 !190
	lwi 	a1, 262144 !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 10 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -10 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 9(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 10 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -10 !1795
beq_cont.20306: !1809
	lw  	a0, 6(sp) !1813
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.20307 !1813
	jal 	zero, beq_cont.20308 !1813
beq_else.20307: !1813
	lwi 	a0, 262326 !1814
	sw  	a0, 10(sp) !188
	lw  	a0, 5(sp) !188
	lw  	fa0, 0(a0) !188
	swi 	fa0, 262306 !188
	lw  	fa0, 1(a0) !189
	swi 	fa0, 262307 !189
	lw  	fa0, 2(a0) !190
	swi 	fa0, 262308 !190
	lwi 	a1, 262144 !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 11 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -11 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 10(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 11 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -11 !1795
beq_cont.20308: !1813
	lw  	a0, 6(sp) !1817
	addi	t0, zero, 4
	bne 	a0, t0, beq_else.20309 !1817
	jal 	zero, beq_cont.20310 !1817
beq_else.20309: !1817
	lwi 	a0, 262327 !1818
	sw  	a0, 11(sp) !188
	lw  	a0, 5(sp) !188
	lw  	fa0, 0(a0) !188
	swi 	fa0, 262306 !188
	lw  	fa0, 1(a0) !189
	swi 	fa0, 262307 !189
	lw  	fa0, 2(a0) !190
	swi 	fa0, 262308 !190
	lwi 	a1, 262144 !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 12 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -12 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 11(sp) !1795
	lw  	a1, 4(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.20310: !1817
	lw  	a0, 2(sp) !1836
	lw  	a1, 3(sp) !1836
	lwr 	a1, a1, a0 !1836
	lwi 	fa0, 262295 !241
	lw  	fa1, 0(a1) !241
	lwi 	fa2, 262292 !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	swi 	fa0, 262295 !241
	lwi 	fa0, 262296 !242
	lw  	fa1, 1(a1) !242
	lwi 	fa2, 262293 !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	swi 	fa0, 262296 !242
	lwi 	fa0, 262297 !243
	lw  	fa1, 2(a1) !243
	lwi 	fa2, 262294 !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	swi 	fa0, 262297 !243
beq_cont.20300: !1868
	lw  	a0, 2(sp) !1871
	addi	a1, a0, 1 !1871
	lw  	a0, 1(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.20297: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.20295: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
try_exploit_neighbors.2800:
	sw  	ra, 0(sp)
	lwr 	a6, a3, a0 !1912
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.20313 !1913
	lw  	a7, 2(a6) !476
	lwr 	a7, a7, a5 !1891
	blt 	a7, zero, bge_else.20315 !1916
	lwr 	a7, a3, a0 !1896
	lw  	a7, 2(a7) !476
	lwr 	a7, a7, a5 !1891
	lwr 	s1, a2, a0 !1898
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.20317 !1898
	lwr 	s1, a4, a0 !1899
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.20319 !1899
	addi	s1, a0, -1 !1900
	lwr 	s1, a3, s1 !1900
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.20321 !1900
	addi	s1, a0, 1 !1901
	lwr 	s1, a3, s1 !1901
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.20323 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.20324 !1901
beq_else.20323: !1901
	addi	a7, zero, 0 !1903
beq_cont.20324: !1901
	jal 	zero, beq_cont.20322 !1900
beq_else.20321: !1900
	addi	a7, zero, 0 !1904
beq_cont.20322: !1900
	jal 	zero, beq_cont.20320 !1899
beq_else.20319: !1899
	addi	a7, zero, 0 !1905
beq_cont.20320: !1899
	jal 	zero, beq_cont.20318 !1898
beq_else.20317: !1898
	addi	a7, zero, 0 !1906
beq_cont.20318: !1898
	bne 	a7, zero, beq_else.20325 !1918
	lwr 	a0, a3, a0 !1930
	addi	a1, a5, 0 !1930
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1930
beq_else.20325: !1918
	lw  	a6, 3(a6) !483
	lwr 	a6, a6, a5 !1922
	bne 	a6, zero, beq_else.20327 !1922
	jal 	zero, beq_cont.20328 !1922
beq_else.20327: !1922
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
	swi 	fa0, 262292 !188
	lw  	fa0, 1(a6) !189
	swi 	fa0, 262293 !189
	lw  	fa0, 2(a6) !190
	swi 	fa0, 262294 !190
	lwr 	a6, a7, a5 !1851
	lwi 	fa0, 262292 !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	swi 	fa0, 262292 !225
	lwi 	fa0, 262293 !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	swi 	fa0, 262293 !226
	lwi 	fa0, 262294 !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	swi 	fa0, 262294 !227
	lwr 	a6, s1, a5 !1852
	lwi 	fa0, 262292 !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	swi 	fa0, 262292 !225
	lwi 	fa0, 262293 !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	swi 	fa0, 262293 !226
	lwi 	fa0, 262294 !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	swi 	fa0, 262294 !227
	lwr 	a6, s2, a5 !1853
	lwi 	fa0, 262292 !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	swi 	fa0, 262292 !225
	lwi 	fa0, 262293 !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	swi 	fa0, 262293 !226
	lwi 	fa0, 262294 !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	swi 	fa0, 262294 !227
	lwr 	a6, s3, a5 !1854
	lwi 	fa0, 262292 !225
	lw  	fa1, 0(a6) !225
	fadd	fa0, fa0, fa1 !225
	swi 	fa0, 262292 !225
	lwi 	fa0, 262293 !226
	lw  	fa1, 1(a6) !226
	fadd	fa0, fa0, fa1 !226
	swi 	fa0, 262293 !226
	lwi 	fa0, 262294 !227
	lw  	fa1, 2(a6) !227
	fadd	fa0, fa0, fa1 !227
	swi 	fa0, 262294 !227
	lwr 	a6, a3, a0 !1856
	lw  	a6, 4(a6) !490
	lwr 	a6, a6, a5 !1857
	lwi 	fa0, 262295 !241
	lw  	fa1, 0(a6) !241
	lwi 	fa2, 262292 !241
	fmul	fa1, fa1, fa2 !241
	fadd	fa0, fa0, fa1 !241
	swi 	fa0, 262295 !241
	lwi 	fa0, 262296 !242
	lw  	fa1, 1(a6) !242
	lwi 	fa2, 262293 !242
	fmul	fa1, fa1, fa2 !242
	fadd	fa0, fa0, fa1 !242
	swi 	fa0, 262296 !242
	lwi 	fa0, 262297 !243
	lw  	fa1, 2(a6) !243
	lwi 	fa2, 262294 !243
	fmul	fa1, fa1, fa2 !243
	fadd	fa0, fa0, fa1 !243
	swi 	fa0, 262297 !243
beq_cont.20328: !1922
	addi	a5, a5, 1 !1927
	lw  	ra, 0(sp)
	jal 	zero, try_exploit_neighbors.2800 !1927
bge_else.20315: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.20313: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_diffuse_rays.2815:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.20331 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.20333 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 1(sp) !1990
	bne 	a2, zero, beq_else.20335 !1990
	jal 	zero, beq_cont.20336 !1990
beq_else.20335: !1990
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	swi 	zero, 262292 !176
	swi 	zero, 262293 !177
	swi 	zero, 262294 !178
	lw  	a3, 7(a0) !520
	sw  	a0, 2(sp) !468
	lw  	a0, 1(a0) !468
	li  	t0, 262323
	lwr 	a2, t0, a2 !1998
	sw  	a2, 3(sp) !1999
	lwr 	a2, a3, a1 !1999
	lwr 	a0, a0, a1 !2000
	lw  	fa0, 0(a0) !188
	swi 	fa0, 262306 !188
	lw  	fa0, 1(a0) !189
	swi 	fa0, 262307 !189
	lw  	fa0, 2(a0) !190
	swi 	fa0, 262308 !190
	lwi 	a1, 262144 !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 4(sp) !1168
	sw  	a2, 5(sp) !1168
	addi	sp, sp, 6 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -6 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 3(sp) !1795
	lw  	a1, 5(sp) !1795
	lw  	a2, 4(sp) !1795
	addi	sp, sp, 6 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -6 !1795
	lw  	a0, 2(sp) !497
	lw  	a1, 5(a0) !497
	lw  	a2, 1(sp) !2002
	lwr 	a1, a1, a2 !2002
	lwi 	fa0, 262292 !188
	sw  	fa0, 0(a1) !188
	lwi 	fa0, 262293 !189
	sw  	fa0, 1(a1) !189
	lwi 	fa0, 262294 !190
	sw  	fa0, 2(a1) !190
beq_cont.20336: !1990
	lw  	a1, 1(sp) !2004
	addi	a1, a1, 1 !2004
	lw  	ra, 0(sp)
	jal 	zero, pretrace_diffuse_rays.2815 !2004
bge_else.20333: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.20331: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_pixels.2818:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.20339 !2012
	lwi 	fa3, 262302 !2014
	sw  	a2, 1(sp) !2014
	lwi 	a2, 262300 !2014
	sub 	a2, a1, a2 !2014
	itof	fa4, a2 !2014
	fmul	fa3, fa3, fa4 !2014
	lwi 	fa4, 262309 !2015
	fmul	fa4, fa3, fa4 !2015
	sw  	fa0, 2(sp) !2015
	fadd	fa0, fa4, fa0 !2015
	swi 	fa0, 262318 !2015
	lwi 	fa0, 262310 !2016
	fmul	fa0, fa3, fa0 !2016
	fadd	fa0, fa0, fa1 !2016
	swi 	fa0, 262319 !2016
	lwi 	fa0, 262311 !2017
	fmul	fa0, fa3, fa0 !2017
	fadd	fa0, fa0, fa2 !2017
	swi 	fa0, 262320 !2017
	lwi 	fa0, 262318 !199
	fmul	fa0, fa0, fa0 !126
	sw  	fa2, 3(sp) !199
	lwi 	fa2, 262319 !199
	sw  	fa1, 4(sp) !126
	fmul	fa1, fa2, fa2 !126
	fadd	fa0, fa0, fa1 !199
	lwi 	fa1, 262320 !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.20341 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.20342 !200
beq_else.20341: !200
	li  	fa0, 1.000000 !200
beq_cont.20342: !200
	lwi 	fa1, 262318 !201
	fmul	fa1, fa1, fa0 !201
	swi 	fa1, 262318 !201
	lwi 	fa1, 262319 !202
	fmul	fa1, fa1, fa0 !202
	swi 	fa1, 262319 !202
	lwi 	fa1, 262320 !203
	fmul	fa0, fa1, fa0 !203
	swi 	fa0, 262320 !203
	swi 	zero, 262295 !176
	swi 	zero, 262296 !177
	swi 	zero, 262297 !178
	lwi 	fa0, 262219 !188
	swi 	fa0, 262303 !188
	lwi 	fa0, 262220 !189
	swi 	fa0, 262304 !189
	lwi 	fa0, 262221 !190
	swi 	fa0, 262305 !190
	addi	a2, zero, 0 !2023
	li  	fa0, 1.000000 !2023
	sw  	a1, 5(sp) !2023
	lwr 	a1, a0, a1 !2023
	addi	fa1, zero, 0	sw  	a0, 6(sp) !0
	li  	a0, 262318 !0
	addi	t0, a2, 0 !2023
	addi	a2, a1, 0 !2023
	addi	a1, a0, 0 !2023
	addi	a0, t0, 0 !2023
	addi	sp, sp, 7 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -7 !2023
	lw  	a0, 5(sp) !2024
	lw  	a1, 6(sp) !2024
	lwr 	a2, a1, a0 !2024
	lw  	a2, 0(a2) !461
	lwi 	fa0, 262295 !188
	sw  	fa0, 0(a2) !188
	lwi 	fa0, 262296 !189
	sw  	fa0, 1(a2) !189
	lwi 	fa0, 262297 !190
	sw  	fa0, 2(a2) !190
	lwr 	a2, a1, a0 !2025
	lw  	a2, 6(a2) !513
	lw  	a3, 1(sp) !515
	sw  	a3, 0(a2) !515
	lwr 	a1, a1, a0 !2028
	addi	a3, zero, 0 !2028
	addi	a0, a1, 0 !2028
	addi	a1, a3, 0 !2028
	addi	sp, sp, 7 !2028
	jal 	ra, pretrace_diffuse_rays.2815 !2028
	addi	sp, sp, -7 !2028
	lw  	a0, 5(sp) !2030
	addi	a1, a0, -1 !2030
	lw  	a0, 1(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.20343 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.20344 !160
bge_else.20343: !160
	addi	a2, a0, 0 !160
bge_cont.20344: !160
	lw  	fa0, 2(sp) !2030
	lw  	fa1, 4(sp) !2030
	lw  	fa2, 3(sp) !2030
	lw  	a0, 6(sp) !2030
	lw  	ra, 0(sp)
	jal 	zero, pretrace_pixels.2818 !2030
bge_else.20339: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
scan_pixel.2829:
	sw  	ra, 0(sp)
	lwi 	a6, 262298 !2051
	blt 	a0, a6, bge_else.20346 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.20346: !2051
	lwr 	a6, a3, a0 !2054
	lw  	a6, 0(a6) !461
	lw  	fa0, 0(a6) !188
	swi 	fa0, 262295 !188
	lw  	fa0, 1(a6) !189
	swi 	fa0, 262296 !189
	lw  	fa0, 2(a6) !190
	swi 	fa0, 262297 !190
	lwi 	a6, 262299 !1878
	addi	a7, a1, 1 !1878
	blt 	a7, a6, bge_else.20349 !1878
	addi	a6, zero, 0 !1886
	jal 	zero, bge_cont.20350 !1878
bge_else.20349: !1878
	blt 	zero, a1, bge_else.20351 !1879
	addi	a6, zero, 0 !1885
	jal 	zero, bge_cont.20352 !1879
bge_else.20351: !1879
	lwi 	a6, 262298 !1880
	addi	a7, a0, 1 !1880
	blt 	a7, a6, bge_else.20353 !1880
	addi	a6, zero, 0 !1884
	jal 	zero, bge_cont.20354 !1880
bge_else.20353: !1880
	blt 	zero, a0, bge_else.20355 !1881
	addi	a6, zero, 0 !1883
	jal 	zero, bge_cont.20356 !1881
bge_else.20355: !1881
	addi	a6, zero, 1 !1882
bge_cont.20356: !1881
bge_cont.20354: !1880
bge_cont.20352: !1879
bge_cont.20350: !1878
	sw  	a4, 1(sp) !2057
	sw  	a3, 2(sp) !2057
	sw  	a2, 3(sp) !2057
	sw  	a1, 4(sp) !2057
	sw  	a0, 5(sp) !2057
	sw  	a5, 6(sp) !2057
	bne 	a6, zero, beq_else.20357 !2057
	lwr 	a4, a3, a0 !2060
	addi	a3, zero, 0 !2060
	addi	a1, a3, 0 !2060
	addi	a0, a4, 0 !2060
	addi	sp, sp, 7 !2060
	jal 	ra, do_without_neighbors.2784 !2060
	addi	sp, sp, -7 !2060
	jal 	zero, beq_cont.20358 !2057
beq_else.20357: !2057
	addi	a5, zero, 0 !2058
	addi	sp, sp, 7 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -7 !2058
beq_cont.20358: !2057
	lw  	a0, 6(sp) !1963
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.20359 !1963
	lwi 	fa0, 262295 !1964
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.20361 !1952
	blt 	a0, zero, bge_else.20363 !1952
	jal 	zero, bge_cont.20364 !1952
bge_else.20363: !1952
	addi	a0, zero, 0 !1952
bge_cont.20364: !1952
	jal 	zero, bge_cont.20362 !1952
bge_else.20361: !1952
	addi	a0, zero, 255 !1952
bge_cont.20362: !1952
	addi	sp, sp, 7 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -7 !1953
	addi	a0, zero, 32 !1965
	addi	sp, sp, 7 !1965
	jal 	ra, print_char !1965
	addi	sp, sp, -7 !1965
	lwi 	fa0, 262296 !1966
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.20365 !1952
	blt 	a0, zero, bge_else.20367 !1952
	jal 	zero, bge_cont.20368 !1952
bge_else.20367: !1952
	addi	a0, zero, 0 !1952
bge_cont.20368: !1952
	jal 	zero, bge_cont.20366 !1952
bge_else.20365: !1952
	addi	a0, zero, 255 !1952
bge_cont.20366: !1952
	addi	sp, sp, 7 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -7 !1953
	addi	a0, zero, 32 !1967
	addi	sp, sp, 7 !1967
	jal 	ra, print_char !1967
	addi	sp, sp, -7 !1967
	lwi 	fa0, 262297 !1968
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.20369 !1952
	blt 	a0, zero, bge_else.20371 !1952
	jal 	zero, bge_cont.20372 !1952
bge_else.20371: !1952
	addi	a0, zero, 0 !1952
bge_cont.20372: !1952
	jal 	zero, bge_cont.20370 !1952
bge_else.20369: !1952
	addi	a0, zero, 255 !1952
bge_cont.20370: !1952
	addi	sp, sp, 7 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -7 !1953
	addi	a0, zero, 10 !1969
	addi	sp, sp, 7 !1969
	jal 	ra, print_char !1969
	addi	sp, sp, -7 !1969
	jal 	zero, beq_cont.20360 !1963
beq_else.20359: !1963
	lwi 	fa0, 262295 !1971
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.20373 !1958
	blt 	a0, zero, bge_else.20375 !1958
	jal 	zero, bge_cont.20376 !1958
bge_else.20375: !1958
	addi	a0, zero, 0 !1958
bge_cont.20376: !1958
	jal 	zero, bge_cont.20374 !1958
bge_else.20373: !1958
	addi	a0, zero, 255 !1958
bge_cont.20374: !1958
	addi	sp, sp, 7 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -7 !1959
	lwi 	fa0, 262296 !1972
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.20377 !1958
	blt 	a0, zero, bge_else.20379 !1958
	jal 	zero, bge_cont.20380 !1958
bge_else.20379: !1958
	addi	a0, zero, 0 !1958
bge_cont.20380: !1958
	jal 	zero, bge_cont.20378 !1958
bge_else.20377: !1958
	addi	a0, zero, 255 !1958
bge_cont.20378: !1958
	addi	sp, sp, 7 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -7 !1959
	lwi 	fa0, 262297 !1973
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.20381 !1958
	blt 	a0, zero, bge_else.20383 !1958
	jal 	zero, bge_cont.20384 !1958
bge_else.20383: !1958
	addi	a0, zero, 0 !1958
bge_cont.20384: !1958
	jal 	zero, bge_cont.20382 !1958
bge_else.20381: !1958
	addi	a0, zero, 255 !1958
bge_cont.20382: !1958
	addi	sp, sp, 7 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -7 !1959
beq_cont.20360: !1963
	lw  	a0, 5(sp) !2065
	addi	a0, a0, 1 !2065
	lw  	a1, 4(sp) !2065
	lw  	a2, 3(sp) !2065
	lw  	a3, 2(sp) !2065
	lw  	a4, 1(sp) !2065
	lw  	a5, 6(sp) !2065
	lw  	ra, 0(sp)
	jal 	zero, scan_pixel.2829 !2065
scan_line.2836:
	sw  	ra, 0(sp)
	lwi 	a6, 262299 !2072
	blt 	a0, a6, bge_else.20385 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.20385: !2072
	lwi 	a6, 262299 !2074
	addi	a6, a6, -1 !2074
	sw  	a4, 1(sp) !2074
	sw  	a5, 2(sp) !2074
	sw  	a3, 3(sp) !2074
	sw  	a2, 4(sp) !2074
	sw  	a1, 5(sp) !2074
	sw  	a0, 6(sp) !2074
	blt 	a0, a6, bge_else.20388 !2074
	jal 	zero, bge_cont.20389 !2074
bge_else.20388: !2074
	addi	a5, a0, 1 !2075
	lwi 	fa0, 262302 !2037
	lwi 	a2, 262301 !2037
	sub 	a1, a5, a2 !2037
	itof	fa1, a1 !2037
	fmul	fa0, fa0, fa1 !2037
	lwi 	fa1, 262312 !2040
	fmul	fa1, fa0, fa1 !2040
	lwi 	fa2, 262315 !2040
	fadd	fa1, fa1, fa2 !2040
	lwi 	fa2, 262313 !2041
	fmul	fa2, fa0, fa2 !2041
	lwi 	fa3, 262316 !2041
	fadd	fa2, fa2, fa3 !2041
	lwi 	fa3, 262314 !2042
	fmul	fa0, fa0, fa3 !2042
	lwi 	fa3, 262317 !2042
	fadd	fa0, fa0, fa3 !2042
	lwi 	a0, 262298 !2043
	addi	a1, a0, -1 !2043
	addi	a2, a4, 0 !2043
	addi	a0, a3, 0 !2043
	fsgnj   t0, fa2, fa2 !2043
	fsgnj   fa2, fa0, fa0 !2043
	fsgnj   fa0, fa1, fa1 !2043
	fsgnj   fa1, t0, t0 !2043
	addi	sp, sp, 7 !2043
	jal 	ra, pretrace_pixels.2818 !2043
	addi	sp, sp, -7 !2043
bge_cont.20389: !2074
	addi	a0, zero, 0 !2077
	lw  	a1, 6(sp) !2077
	lw  	a2, 5(sp) !2077
	lw  	a3, 4(sp) !2077
	lw  	a4, 3(sp) !2077
	lw  	a5, 2(sp) !2077
	addi	sp, sp, 7 !2077
	jal 	ra, scan_pixel.2829 !2077
	addi	sp, sp, -7 !2077
	lw  	a0, 6(sp) !2078
	addi	a0, a0, 1 !2078
	lw  	a1, 1(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.20390 !160
	addi	a4, a1, -5 !160
	jal 	zero, bge_cont.20391 !160
bge_else.20390: !160
	addi	a4, a1, 0 !160
bge_cont.20391: !160
	lw  	a1, 4(sp) !2078
	lw  	a2, 3(sp) !2078
	lw  	a3, 5(sp) !2078
	lw  	a5, 2(sp) !2078
	lw  	ra, 0(sp)
	jal 	zero, scan_line.2836 !2078
init_line_elements.2847:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.20392 !2112
	sw  	a1, 1(sp) !2099
	addi	a1, zero, 3 !2099
	addi	fa0, zero, 0	sw  	a0, 2(sp) !2099
	addi	a0, a1, 0 !2099
	addi	sp, sp, 3 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -3 !2099
	sw  	a0, 3(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 4 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -4 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 4 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -4 !2088
	sw  	a0, 4(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 5 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -5 !2089
	lw  	a1, 4(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 5 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -5 !2090
	lw  	a1, 4(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 5 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -5 !2091
	lw  	a1, 4(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 5 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -5 !2092
	lw  	a1, 4(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 5 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -5 !2101
	sw  	a0, 5(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 6 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -6 !2102
	sw  	a0, 6(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 7 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -7 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 7 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -7 !2088
	sw  	a0, 7(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 8 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -8 !2089
	lw  	a1, 7(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 8 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -8 !2090
	lw  	a1, 7(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 8 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -8 !2091
	lw  	a1, 7(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 8 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -8 !2092
	lw  	a1, 7(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 8 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -8 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 8 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -8 !2088
	sw  	a0, 8(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 9 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -9 !2089
	lw  	a1, 8(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 9 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -9 !2090
	lw  	a1, 8(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 9 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -9 !2091
	lw  	a1, 8(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 9 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -9 !2092
	lw  	a1, 8(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 9 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -9 !2105
	sw  	a0, 9(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0	addi	sp, sp, 10 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -10 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 10 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -10 !2088
	sw  	a0, 10(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0	addi	sp, sp, 11 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -11 !2089
	lw  	a1, 10(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0	addi	sp, sp, 11 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -11 !2090
	lw  	a1, 10(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0	addi	sp, sp, 11 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -11 !2091
	lw  	a1, 10(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0	addi	sp, sp, 11 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -11 !2092
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
	lw  	a1, 1(sp) !2113
	lw  	a2, 2(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	lw  	ra, 0(sp)
	jal 	zero, init_line_elements.2847 !2114
bge_else.20392: !2112
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec.2857:
	sw  	ra, 0(sp)
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.20394 !2144
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
	li  	t0, 262323
	lwr 	a0, t0, a1 !2151
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
bge_else.20394: !2144
	fmul	fa0, fa1, fa1 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	a2, 1(sp) !2136
	fdiv	a2, fa1, fa0 !2136
	sw  	a1, 2(sp) !2137
	sw  	fa3, 3(sp) !2137
	sw  	a0, 4(sp) !2137
	sw  	fa0, 5(sp) !2137
	sw  	fa2, 6(sp) !2137
	fsgnj   fa0, a2, a2 !2137
	addi	sp, sp, 7 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -7 !2137
	lw  	fa1, 6(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 7(sp) !2130
	addi	sp, sp, 8 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -8 !2130
	sw  	fa0, 8(sp) !2130
	lw  	fa0, 7(sp) !2130
	addi	sp, sp, 9 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -9 !2130
	lw  	fa1, 8(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 5(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	lw  	a0, 4(sp) !2160
	addi	a0, a0, 1 !2160
	sw  	fa0, 9(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	a0, 10(sp) !2136
	fdiv	a0, fa1, fa0 !2136
	sw  	fa0, 11(sp) !2137
	fsgnj   fa0, a0, a0 !2137
	addi	sp, sp, 12 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -12 !2137
	lw  	fa1, 3(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 12(sp) !2130
	addi	sp, sp, 13 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -13 !2130
	sw  	fa0, 13(sp) !2130
	lw  	fa0, 12(sp) !2130
	addi	sp, sp, 14 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -14 !2130
	lw  	fa1, 13(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 11(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 9(sp) !2160
	lw  	fa2, 6(sp) !2160
	lw  	fa3, 3(sp) !2160
	lw  	a0, 10(sp) !2160
	lw  	a1, 2(sp) !2160
	lw  	a2, 1(sp) !2160
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec.2857 !2160
calc_dirvecs.2865:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.20397 !2165
	itof	fa1, a0 !2167
	li  	fa2, 0.200000 !2167
	fmul	fa1, fa1, fa2 !2167
	li  	fa2, 0.900000 !2167
	fsub	fa2, fa1, fa2 !2167
	sw  	a0, 1(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa1, zero, 0	addi	fa3, zero, 0	sw  	fa0, 2(sp) !2168
	sw  	a1, 3(sp) !2168
	sw  	a2, 4(sp) !2168
	fsgnj   t0, fa3, fa3 !2168
	fsgnj   fa3, fa0, fa0 !2168
	fsgnj   fa0, fa1, fa1 !2168
	fsgnj   fa1, t0, t0 !2168
	addi	sp, sp, 5 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -5 !2168
	lw  	a0, 1(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0	addi	fa1, zero, 0	lw  	a1, 4(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 2(sp) !2171
	lw  	a1, 3(sp) !2171
	addi	sp, sp, 5 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -5 !2171
	lw  	a0, 1(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 3(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.20399 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.20400 !160
bge_else.20399: !160
bge_cont.20400: !160
	lw  	fa0, 2(sp) !2173
	lw  	a2, 4(sp) !2173
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvecs.2865 !2173
bge_else.20397: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec_rows.2870:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.20402 !2179
	itof	fa0, a0 !2180
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa0, fa0, fa1 !2180
	sw  	a0, 1(sp) !2181
	addi	a0, zero, 4 !2181
	sw  	a2, 2(sp) !2181
	sw  	a1, 3(sp) !2181
	addi	sp, sp, 4 !2181
	jal 	ra, calc_dirvecs.2865 !2181
	addi	sp, sp, -4 !2181
	lw  	a0, 1(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 3(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.20404 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.20405 !160
bge_else.20404: !160
bge_cont.20405: !160
	lw  	a2, 2(sp) !2182
	addi	a2, a2, 4 !2182
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec_rows.2870 !2182
bge_else.20402: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec_elements.2876:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.20407 !2196
	sw  	a1, 1(sp) !2190
	addi	a1, zero, 3 !2190
	addi	fa0, zero, 0	sw  	a0, 2(sp) !2190
	addi	a0, a1, 0 !2190
	addi	sp, sp, 3 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -3 !2190
	addi	a1, a0, 0 !2190
	lwi 	a0, 262144 !2191
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
	lw  	a1, 1(sp) !2197
	lw  	a2, 2(sp) !2197
	add 	t0, a2, a1 !2197
	sw  	a0, 0(t0) !2197
	addi	a1, a1, -1 !2198
	addi	a0, a2, 0 !2198
	lw  	ra, 0(sp)
	jal 	zero, create_dirvec_elements.2876 !2198
bge_else.20407: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvecs.2879:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.20410 !2203
	sw  	a0, 1(sp) !2204
	addi	a0, zero, 120 !2204
	sw  	a0, 2(sp) !2190
	addi	a0, zero, 3 !2190
	addi	fa0, zero, 0	addi	sp, sp, 3 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -3 !2190
	addi	a1, a0, 0 !2190
	lwi 	a0, 262144 !2191
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
	li  	t0, 262323
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2204
	li  	t0, 262323
	lwr 	a0, t0, a1 !2205
	addi	a1, zero, 118 !2205
	addi	sp, sp, 4 !2205
	jal 	ra, create_dirvec_elements.2876 !2205
	addi	sp, sp, -4 !2205
	lw  	a0, 1(sp) !2206
	addi	a0, a0, -1 !2206
	lw  	ra, 0(sp)
	jal 	zero, create_dirvecs.2879 !2206
bge_else.20410: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvec_constants.2881:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.20413 !2213
	sw  	a0, 1(sp) !2214
	lwr 	a0, a0, a1 !2214
	sw  	a1, 2(sp) !1142
	lwi 	a1, 262144 !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 3 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -3 !1142
	lw  	a0, 2(sp) !2215
	addi	a1, a0, -1 !2215
	lw  	a0, 1(sp) !2215
	lw  	ra, 0(sp)
	jal 	zero, init_dirvec_constants.2881 !2215
bge_else.20413: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_vecset_constants.2884:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.20416 !2220
	sw  	a0, 1(sp) !2221
	li  	t0, 262323
	lwr 	a0, t0, a0 !2221
	addi	a1, zero, 119 !2221
	addi	sp, sp, 2 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -2 !2221
	lw  	a0, 1(sp) !2222
	addi	a0, a0, -1 !2222
	lw  	ra, 0(sp)
	jal 	zero, init_vecset_constants.2884 !2222
bge_else.20416: !2220
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
