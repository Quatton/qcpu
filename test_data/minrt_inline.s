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
	addi	sp, sp, 16 !2122
	jal 	ra, init_line_elements.2847 !2122
	addi	sp, sp, -16 !2122
	sw  	a0, 16(sp) !2121
	lw  	a0, 154(zero) !2121
	sw  	a0, 17(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -20 !2099
	sw  	a0, 18(sp) !2087
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
	sw  	a0, 19(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -20 !2089
	lw  	a1, 19(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -20 !2090
	lw  	a1, 19(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -20 !2091
	lw  	a1, 19(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2092
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
	addi	sp, sp, 24 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -24 !2102
	sw  	a0, 21(sp) !2087
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
	sw  	a0, 22(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -24 !2089
	lw  	a1, 22(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -24 !2090
	lw  	a1, 22(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -24 !2091
	lw  	a1, 22(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -24 !2092
	lw  	a1, 22(sp) !2092
	sw  	a0, 4(a1) !2092
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
	sw  	a0, 23(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -24 !2089
	lw  	a1, 23(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -24 !2090
	lw  	a1, 23(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -24 !2091
	lw  	a1, 23(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2092
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
	addi	sp, sp, 28 !2121
	jal 	ra, create_array !2121
	addi	sp, sp, -28 !2121
	lw  	a1, 154(zero) !2122
	addi	a1, a1, -2 !2122
	addi	sp, sp, 28 !2122
	jal 	ra, init_line_elements.2847 !2122
	addi	sp, sp, -28 !2122
	sw  	a0, 26(sp) !2121
	lw  	a0, 154(zero) !2121
	sw  	a0, 27(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -28 !2099
	sw  	a0, 28(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -32 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 32 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -32 !2088
	sw  	a0, 29(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -32 !2089
	lw  	a1, 29(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -32 !2090
	lw  	a1, 29(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -32 !2091
	lw  	a1, 29(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -32 !2092
	lw  	a1, 29(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 32 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -32 !2101
	sw  	a0, 30(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 32 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -32 !2102
	sw  	a0, 31(sp) !2087
	addi	a0, zero, 3 !2087
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2087
	jal 	ra, create_float_array !2087
	addi	sp, sp, -32 !2087
	addi	a1, a0, 0 !2087
	addi	a0, zero, 5 !2088
	addi	sp, sp, 32 !2088
	jal 	ra, create_array !2088
	addi	sp, sp, -32 !2088
	sw  	a0, 32(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -36 !2089
	lw  	a1, 32(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -36 !2090
	lw  	a1, 32(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -36 !2091
	lw  	a1, 32(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -36 !2092
	lw  	a1, 32(sp) !2092
	sw  	a0, 4(a1) !2092
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
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 36 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -36 !2105
	sw  	a0, 34(sp) !2087
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
	sw  	a0, 35(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -36 !2089
	lw  	a1, 35(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -36 !2090
	lw  	a1, 35(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -36 !2091
	lw  	a1, 35(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 36 !2092
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
	lw  	a1, 154(zero) !2122
	addi	a1, a1, -2 !2122
	addi	sp, sp, 36 !2122
	jal 	ra, init_line_elements.2847 !2122
	addi	sp, sp, -36 !2122
	sw  	a0, 36(sp) !570
	addi	sp, sp, 40 !570
	jal 	ra, read_float !570
	addi	sp, sp, -40 !570
	sw  	fa0, 72(zero) !570
	addi	sp, sp, 40 !571
	jal 	ra, read_float !571
	addi	sp, sp, -40 !571
	sw  	fa0, 73(zero) !571
	addi	sp, sp, 40 !572
	jal 	ra, read_float !572
	addi	sp, sp, -40 !572
	sw  	fa0, 74(zero) !572
	addi	sp, sp, 40 !574
	jal 	ra, read_float !574
	addi	sp, sp, -40 !574
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 37(sp) !575
	addi	sp, sp, 40 !575
	jal 	ra, cos !575
	addi	sp, sp, -40 !575
	sw  	fa0, 38(sp) !576
	lw  	fa0, 37(sp) !576
	addi	sp, sp, 40 !576
	jal 	ra, sin !576
	addi	sp, sp, -40 !576
	sw  	fa0, 39(sp) !577
	addi	sp, sp, 40 !577
	jal 	ra, read_float !577
	addi	sp, sp, -40 !577
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 40(sp) !578
	addi	sp, sp, 44 !578
	jal 	ra, cos !578
	addi	sp, sp, -44 !578
	sw  	fa0, 41(sp) !579
	lw  	fa0, 40(sp) !579
	addi	sp, sp, 44 !579
	jal 	ra, sin !579
	addi	sp, sp, -44 !579
	lw  	fa1, 38(sp) !581
	fmul	fa2, fa1, fa0 !581
	li  	fa3, 200.000000 !581
	fmul	fa2, fa2, fa3 !581
	sw  	fa2, 171(zero) !581
	li  	fa2, -200.000000 !582
	lw  	fa3, 39(sp) !582
	fmul	fa2, fa3, fa2 !582
	sw  	fa2, 172(zero) !582
	lw  	fa2, 41(sp) !583
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
	addi	sp, sp, 44 !602
	jal 	ra, read_int !602
	addi	sp, sp, -44 !602
	addi	sp, sp, 44 !605
	jal 	ra, read_float !605
	addi	sp, sp, -44 !605
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	sw  	fa0, 42(sp) !606
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
	sw  	fa0, 43(sp) !609
	lw  	fa0, 42(sp) !609
	addi	sp, sp, 44 !609
	jal 	ra, cos !609
	addi	sp, sp, -44 !609
	sw  	fa0, 44(sp) !610
	lw  	fa0, 43(sp) !610
	addi	sp, sp, 48 !610
	jal 	ra, sin !610
	addi	sp, sp, -48 !610
	lw  	fa1, 44(sp) !611
	fmul	fa0, fa1, fa0 !611
	sw  	fa0, 78(zero) !611
	lw  	fa0, 43(sp) !612
	addi	sp, sp, 48 !612
	jal 	ra, cos !612
	addi	sp, sp, -48 !612
	lw  	fa1, 44(sp) !613
	fmul	fa0, fa1, fa0 !613
	sw  	fa0, 80(zero) !613
	addi	sp, sp, 48 !614
	jal 	ra, read_float !614
	addi	sp, sp, -48 !614
	sw  	fa0, 81(zero) !614
	addi	a0, zero, 0 !756
	addi	sp, sp, 48 !756
	jal 	ra, read_object.2554 !756
	addi	sp, sp, -48 !756
	addi	a0, zero, 0 !793
	addi	sp, sp, 48 !793
	jal 	ra, read_and_network.2562 !793
	addi	sp, sp, -48 !793
	addi	a0, zero, 0 !794
	addi	sp, sp, 48 !794
	jal 	ra, read_or_network.2560 !794
	addi	sp, sp, -48 !794
	sw  	a0, 134(zero) !794
	addi	a0, zero, 80 !1938
	addi	sp, sp, 48 !1938
	jal 	ra, print_char !1938
	addi	sp, sp, -48 !1938
	addi	a0, zero, 54 !1939
	addi	sp, sp, 48 !1939
	jal 	ra, print_char !1939
	addi	sp, sp, -48 !1939
	addi	a0, zero, 10 !1940
	addi	sp, sp, 48 !1940
	jal 	ra, print_char !1940
	addi	sp, sp, -48 !1940
	lw  	a0, 154(zero) !1941
	addi	sp, sp, 48 !1941
	jal 	ra, print_int !1941
	addi	sp, sp, -48 !1941
	addi	a0, zero, 32 !1942
	addi	sp, sp, 48 !1942
	jal 	ra, print_char !1942
	addi	sp, sp, -48 !1942
	lw  	a0, 155(zero) !1943
	addi	sp, sp, 48 !1943
	jal 	ra, print_int !1943
	addi	sp, sp, -48 !1943
	addi	a0, zero, 32 !1944
	addi	sp, sp, 48 !1944
	jal 	ra, print_char !1944
	addi	sp, sp, -48 !1944
	addi	a0, zero, 255 !1945
	addi	sp, sp, 48 !1945
	jal 	ra, print_int !1945
	addi	sp, sp, -48 !1945
	addi	a0, zero, 10 !1946
	addi	sp, sp, 48 !1946
	jal 	ra, print_char !1946
	addi	sp, sp, -48 !1946
	addi	a0, zero, 4 !2227
	addi	sp, sp, 48 !2227
	jal 	ra, create_dirvecs.2879 !2227
	addi	sp, sp, -48 !2227
	addi	a0, zero, 9 !2228
	addi	a1, zero, 0 !2228
	addi	a2, zero, 0 !2228
	addi	sp, sp, 48 !2228
	jal 	ra, calc_dirvec_rows.2870 !2228
	addi	sp, sp, -48 !2228
	addi	a0, zero, 4 !2229
	addi	sp, sp, 48 !2229
	jal 	ra, init_vecset_constants.2884 !2229
	addi	sp, sp, -48 !2229
	lw  	fa0, 78(zero) !188
	sw  	fa0, 184(zero) !188
	lw  	fa0, 79(zero) !189
	sw  	fa0, 185(zero) !189
	lw  	fa0, 80(zero) !190
	sw  	fa0, 186(zero) !190
	lw  	a0, 0(zero) !1142
	addi	a1, a0, -1 !1142
	addi	a0, zero, 247 !0
	addi	sp, sp, 48 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -48 !1142
	lw  	a0, 0(zero) !2307
	addi	a0, a0, -1 !2307
	blt 	a0, zero, bge_cont.126336 !2274
	lw  	a1, 12(a0) !2275
	lw  	a2, 2(a1) !270
	addi	t0, zero, 2
	bne 	a2, t0, beq_cont.126338 !2276
	lw  	a2, 7(a1) !368
	lw  	fa0, 0(a2) !373
	li  	fa1, 1.000000 !2277
	flt 	a2, fa0, fa1 !121
	beq 	a2, zero, beq_cont.126340 !2277
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.126341 !2280
	slli	a0, a0, 2 !2245
	lw  	a2, 434(zero) !2246
	li  	fa0, 1.000000 !2247
	lw  	a1, 7(a1) !368
	lw  	fa1, 0(a1) !373
	fsub	fa0, fa0, fa1 !2247
	sw  	fa0, 45(sp) !2248
	lw  	fa0, 78(zero) !2248
	fsgnjn  fa0, fa0, fa0 !2248
	sw  	fa0, 46(sp) !2249
	lw  	fa0, 79(zero) !2249
	fsgnjn  fa0, fa0, fa0 !2249
	sw  	fa0, 47(sp) !2250
	lw  	fa0, 80(zero) !2250
	fsgnjn  fa0, fa0, fa0 !2250
	sw  	a0, 48(sp) !2251
	addi	a0, a0, 1 !2251
	sw  	fa0, 49(sp) !2251
	lw  	fa0, 78(zero) !2251
	sw  	a0, 50(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	fa0, 51(sp) !2190
	addi	fa0, zero, 0
	sw  	a2, 52(sp) !2190
	addi	sp, sp, 56 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -56 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 53(sp) !2191
	addi	sp, sp, 56 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -56 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 53(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 51(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 47(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 49(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 54(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 56 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -56 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 45(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 54(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 50(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 52(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	addi	a0, a1, 1 !2252
	sw  	a0, 55(sp) !2252
	lw  	a0, 48(sp) !2252
	addi	a0, a0, 2 !2252
	lw  	fa0, 79(zero) !2252
	sw  	a0, 56(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	fa0, 57(sp) !2190
	addi	fa0, zero, 0
	addi	sp, sp, 60 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -60 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 58(sp) !2191
	addi	sp, sp, 60 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -60 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 58(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 46(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 57(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 49(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
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
	lw  	a1, 45(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 59(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 56(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 55(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	lw  	a0, 52(sp) !2253
	addi	a0, a0, 2 !2253
	sw  	a0, 60(sp) !2253
	lw  	a0, 48(sp) !2253
	addi	a0, a0, 3 !2253
	lw  	fa0, 80(zero) !2253
	sw  	a0, 61(sp) !2190
	addi	a0, zero, 3 !2190
	sw  	fa0, 62(sp) !2190
	addi	fa0, zero, 0
	addi	sp, sp, 64 !2190
	jal 	ra, create_float_array !2190
	addi	sp, sp, -64 !2190
	addi	a1, a0, 0 !2190
	lw  	a0, 0(zero) !2191
	sw  	a1, 63(sp) !2191
	addi	sp, sp, 64 !2191
	jal 	ra, create_array !2191
	addi	sp, sp, -64 !2191
	addi	a1, gp, 0 !2192
	addi	gp, gp, 2 !2192
	sw  	a0, 1(a1) !2192
	lw  	a0, 63(sp) !2192
	sw  	a0, 0(a1) !2192
	lw  	a2, 46(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 47(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 62(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 64(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 68 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -68 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 45(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 64(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 61(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 60(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	lw  	a0, 52(sp) !2254
	addi	a0, a0, 3 !2254
	sw  	a0, 434(zero) !2254
	jal 	zero, beq_cont.126342 !2280
beq_else.126341: !2280
	addi	t0, zero, 2
	bne 	a2, t0, beq_cont.126344 !2282
	slli	a0, a0, 2 !2259
	addi	a0, a0, 1 !2259
	sw  	a0, 65(sp) !2260
	lw  	a0, 434(zero) !2260
	li  	fa0, 1.000000 !2261
	sw  	a0, 66(sp) !368
	lw  	a0, 7(a1) !368
	lw  	fa1, 0(a0) !373
	fsub	fa0, fa0, fa1 !2261
	lw  	a0, 4(a1) !328
	sw  	fa0, 67(sp) !208
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
	sw  	fa1, 68(sp) !2266
	li  	fa1, 2.000000 !2266
	lw  	a0, 4(a1) !308
	lw  	fa2, 1(a0) !313
	fmul	fa1, fa1, fa2 !2266
	fmul	fa1, fa1, fa0 !2266
	lw  	fa2, 79(zero) !2266
	fsub	fa1, fa1, fa2 !2266
	sw  	fa1, 69(sp) !2267
	li  	fa1, 2.000000 !2267
	lw  	a0, 4(a1) !318
	lw  	fa2, 2(a0) !323
	fmul	fa1, fa1, fa2 !2267
	fmul	fa0, fa1, fa0 !2267
	lw  	fa1, 80(zero) !2267
	fsub	fa0, fa0, fa1 !2267
	addi	a0, zero, 3 !2190
	sw  	fa0, 70(sp) !2190
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
	lw  	a2, 68(sp) !169
	sw  	a2, 0(a0) !169
	lw  	a2, 69(sp) !170
	sw  	a2, 1(a0) !170
	lw  	a2, 70(sp) !171
	sw  	a2, 2(a0) !171
	lw  	a0, 0(zero) !1142
	addi	a0, a0, -1 !1142
	sw  	a1, 72(sp) !1142
	addi	t0, a1, 0 !1142
	addi	a1, a0, 0 !1142
	addi	a0, t0, 0 !1142
	addi	sp, sp, 76 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -76 !1142
	addi	a0, gp, 0 !2240
	addi	gp, gp, 3 !2240
	lw  	a1, 67(sp) !2240
	sw  	a1, 2(a0) !2240
	lw  	a1, 72(sp) !2240
	sw  	a1, 1(a0) !2240
	lw  	a1, 65(sp) !2240
	sw  	a1, 0(a0) !2240
	lw  	a1, 66(sp) !2240
	li  	t0, 254
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2240
	addi	a0, a1, 1 !2268
	sw  	a0, 434(zero) !2268
beq_cont.126344: !2282
beq_cont.126342: !2280
beq_cont.126340: !2277
beq_cont.126338: !2276
bge_cont.126336: !2274
	addi	a2, zero, 0 !2308
	lw  	fa0, 158(zero) !2037
	lw  	a0, 157(zero) !2037
	sub 	t0, zero, a0 !2037
	addi	a0, t0, 0 !2037
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
	lw  	a0, 26(sp) !2043
	fsgnj   t0, fa2, fa2 !2043
	fsgnj   fa2, fa0, fa0 !2043
	fsgnj   fa0, fa1, fa1 !2043
	fsgnj   fa1, t0, t0 !2043
	addi	sp, sp, 76 !2043
	jal 	ra, pretrace_pixels.2818 !2043
	addi	sp, sp, -76 !2043
	addi	a0, zero, 0 !2309
	addi	a4, zero, 2 !2309
	lw  	a1, 16(sp) !2309
	lw  	a2, 26(sp) !2309
	lw  	a3, 36(sp) !2309
	lw  	a5, 7(sp) !2309
	addi	sp, sp, 76 !2309
	jal 	ra, scan_line.2836 !2309
	addi	sp, sp, -76 !2309
	addi	sp, sp, -1
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_object.2554:
	sw  	ra, 0(sp)
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.126345 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.126345: !747
	sw  	a0, 1(sp) !665
	addi	sp, sp, 4 !665
	jal 	ra, read_int !665
	addi	sp, sp, -4 !665
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126347 !666
	addi	a0, zero, 0 !742
	jal 	zero, beq_cont.126348 !666
beq_else.126347: !666
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
	beq 	a0, zero, beq_cont.126350 !694
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
beq_cont.126350: !694
	lw  	a0, 3(sp) !705
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.126351 !705
	addi	a0, zero, 1 !705
	jal 	zero, beq_cont.126352 !705
beq_else.126351: !705
	lw  	a0, 8(sp) !705
beq_cont.126352: !705
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
	bne 	a4, t0, beq_else.126353 !719
	lw  	fa0, 0(a2) !722
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126355 !723
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126357 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126359 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126360 !148
beq_else.126359: !148
	li  	fa1, 1.000000 !148
beq_cont.126360: !148
	jal 	zero, beq_cont.126358 !147
beq_else.126357: !147
	addi	fa1, zero, 0
beq_cont.126358: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !723
	jal 	zero, beq_cont.126356 !723
beq_else.126355: !723
	addi	fa0, zero, 0
beq_cont.126356: !723
	sw  	fa0, 0(a2) !723
	lw  	fa0, 1(a2) !724
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126361 !725
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126363 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126365 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126366 !148
beq_else.126365: !148
	li  	fa1, 1.000000 !148
beq_cont.126366: !148
	jal 	zero, beq_cont.126364 !147
beq_else.126363: !147
	addi	fa1, zero, 0
beq_cont.126364: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !725
	jal 	zero, beq_cont.126362 !725
beq_else.126361: !725
	addi	fa0, zero, 0
beq_cont.126362: !725
	sw  	fa0, 1(a2) !725
	lw  	fa0, 2(a2) !726
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126367 !727
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126369 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126371 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126372 !148
beq_else.126371: !148
	li  	fa1, 1.000000 !148
beq_cont.126372: !148
	jal 	zero, beq_cont.126370 !147
beq_else.126369: !147
	addi	fa1, zero, 0
beq_cont.126370: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !727
	jal 	zero, beq_cont.126368 !727
beq_else.126367: !727
	addi	fa0, zero, 0
beq_cont.126368: !727
	sw  	fa0, 2(a2) !727
	jal 	zero, beq_cont.126354 !719
beq_else.126353: !719
	addi	t0, zero, 2
	bne 	a4, t0, beq_cont.126374 !729
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
	bne 	a4, zero, beq_else.126375 !200
	bne 	a1, zero, beq_else.126377 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.126376 !200
beq_else.126377: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.126378: !200
	jal 	zero, beq_cont.126376 !200
beq_else.126375: !200
	li  	fa0, 1.000000 !200
beq_cont.126376: !200
	lw  	fa1, 0(a2) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 0(a2) !201
	lw  	fa1, 1(a2) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 1(a2) !202
	lw  	fa1, 2(a2) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 2(a2) !203
beq_cont.126374: !729
beq_cont.126354: !719
	beq 	a3, zero, beq_cont.126380 !735
	lw  	fa0, 0(a0) !624
	addi	sp, sp, 16 !624
	jal 	ra, cos !624
	addi	sp, sp, -16 !624
	sw  	fa0, 13(sp) !625
	lw  	a0, 11(sp) !625
	lw  	fa0, 0(a0) !625
	addi	sp, sp, 16 !625
	jal 	ra, sin !625
	addi	sp, sp, -16 !625
	sw  	fa0, 14(sp) !626
	lw  	a0, 11(sp) !626
	lw  	fa0, 1(a0) !626
	addi	sp, sp, 16 !626
	jal 	ra, cos !626
	addi	sp, sp, -16 !626
	sw  	fa0, 15(sp) !627
	lw  	a0, 11(sp) !627
	lw  	fa0, 1(a0) !627
	addi	sp, sp, 16 !627
	jal 	ra, sin !627
	addi	sp, sp, -16 !627
	sw  	fa0, 16(sp) !628
	lw  	a0, 11(sp) !628
	lw  	fa0, 2(a0) !628
	addi	sp, sp, 20 !628
	jal 	ra, cos !628
	addi	sp, sp, -20 !628
	sw  	fa0, 17(sp) !629
	lw  	a0, 11(sp) !629
	lw  	fa0, 2(a0) !629
	addi	sp, sp, 20 !629
	jal 	ra, sin !629
	addi	sp, sp, -20 !629
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
beq_cont.126380: !735
	addi	a0, zero, 1 !739
beq_cont.126348: !666
	bne 	a0, zero, beq_else.126381 !748
	lw  	a0, 1(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126381: !748
	lw  	a0, 1(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.126383 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.126383: !747
	sw  	a0, 18(sp) !665
	addi	sp, sp, 20 !665
	jal 	ra, read_int !665
	addi	sp, sp, -20 !665
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126385 !666
	addi	a0, zero, 0 !742
	jal 	zero, beq_cont.126386 !666
beq_else.126385: !666
	sw  	a0, 19(sp) !668
	addi	sp, sp, 20 !668
	jal 	ra, read_int !668
	addi	sp, sp, -20 !668
	sw  	a0, 20(sp) !669
	addi	sp, sp, 24 !669
	jal 	ra, read_int !669
	addi	sp, sp, -24 !669
	sw  	a0, 21(sp) !670
	addi	sp, sp, 24 !670
	jal 	ra, read_int !670
	addi	sp, sp, -24 !670
	sw  	a0, 22(sp) !672
	addi	a0, zero, 3 !672
	addi	fa0, zero, 0
	addi	sp, sp, 24 !672
	jal 	ra, create_float_array !672
	addi	sp, sp, -24 !672
	sw  	a0, 23(sp) !673
	addi	sp, sp, 24 !673
	jal 	ra, read_float !673
	addi	sp, sp, -24 !673
	lw  	a0, 23(sp) !673
	sw  	fa0, 0(a0) !673
	addi	sp, sp, 24 !674
	jal 	ra, read_float !674
	addi	sp, sp, -24 !674
	lw  	a0, 23(sp) !674
	sw  	fa0, 1(a0) !674
	addi	sp, sp, 24 !675
	jal 	ra, read_float !675
	addi	sp, sp, -24 !675
	lw  	a0, 23(sp) !675
	sw  	fa0, 2(a0) !675
	addi	a0, zero, 3 !677
	addi	fa0, zero, 0
	addi	sp, sp, 24 !677
	jal 	ra, create_float_array !677
	addi	sp, sp, -24 !677
	sw  	a0, 24(sp) !678
	addi	sp, sp, 28 !678
	jal 	ra, read_float !678
	addi	sp, sp, -28 !678
	lw  	a0, 24(sp) !678
	sw  	fa0, 0(a0) !678
	addi	sp, sp, 28 !679
	jal 	ra, read_float !679
	addi	sp, sp, -28 !679
	lw  	a0, 24(sp) !679
	sw  	fa0, 1(a0) !679
	addi	sp, sp, 28 !680
	jal 	ra, read_float !680
	addi	sp, sp, -28 !680
	lw  	a0, 24(sp) !680
	sw  	fa0, 2(a0) !680
	addi	sp, sp, 28 !682
	jal 	ra, read_float !682
	addi	sp, sp, -28 !682
	flt 	a0, fa0, zero !123
	sw  	a0, 25(sp) !684
	addi	a0, zero, 2 !684
	addi	fa0, zero, 0
	addi	sp, sp, 28 !684
	jal 	ra, create_float_array !684
	addi	sp, sp, -28 !684
	sw  	a0, 26(sp) !685
	addi	sp, sp, 28 !685
	jal 	ra, read_float !685
	addi	sp, sp, -28 !685
	lw  	a0, 26(sp) !685
	sw  	fa0, 0(a0) !685
	addi	sp, sp, 28 !686
	jal 	ra, read_float !686
	addi	sp, sp, -28 !686
	lw  	a0, 26(sp) !686
	sw  	fa0, 1(a0) !686
	addi	a0, zero, 3 !688
	addi	fa0, zero, 0
	addi	sp, sp, 28 !688
	jal 	ra, create_float_array !688
	addi	sp, sp, -28 !688
	sw  	a0, 27(sp) !689
	addi	sp, sp, 28 !689
	jal 	ra, read_float !689
	addi	sp, sp, -28 !689
	lw  	a0, 27(sp) !689
	sw  	fa0, 0(a0) !689
	addi	sp, sp, 28 !690
	jal 	ra, read_float !690
	addi	sp, sp, -28 !690
	lw  	a0, 27(sp) !690
	sw  	fa0, 1(a0) !690
	addi	sp, sp, 28 !691
	jal 	ra, read_float !691
	addi	sp, sp, -28 !691
	lw  	a0, 27(sp) !691
	sw  	fa0, 2(a0) !691
	addi	a0, zero, 3 !693
	addi	fa0, zero, 0
	addi	sp, sp, 28 !693
	jal 	ra, create_float_array !693
	addi	sp, sp, -28 !693
	sw  	a0, 28(sp) !694
	lw  	a0, 22(sp) !694
	beq 	a0, zero, beq_cont.126388 !694
	addi	sp, sp, 32 !696
	jal 	ra, read_float !696
	addi	sp, sp, -32 !696
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 28(sp) !696
	sw  	fa0, 0(a0) !696
	addi	sp, sp, 32 !697
	jal 	ra, read_float !697
	addi	sp, sp, -32 !697
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 28(sp) !697
	sw  	fa0, 1(a0) !697
	addi	sp, sp, 32 !698
	jal 	ra, read_float !698
	addi	sp, sp, -32 !698
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 28(sp) !698
	sw  	fa0, 2(a0) !698
beq_cont.126388: !694
	lw  	a0, 20(sp) !705
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.126389 !705
	addi	a0, zero, 1 !705
	jal 	zero, beq_cont.126390 !705
beq_else.126389: !705
	lw  	a0, 25(sp) !705
beq_cont.126390: !705
	sw  	a0, 29(sp) !706
	addi	a0, zero, 4 !706
	addi	fa0, zero, 0
	addi	sp, sp, 32 !706
	jal 	ra, create_float_array !706
	addi	sp, sp, -32 !706
	addi	a1, gp, 0 !709
	addi	gp, gp, 11 !709
	sw  	a0, 10(a1) !709
	lw  	a0, 28(sp) !709
	sw  	a0, 9(a1) !709
	lw  	a2, 27(sp) !709
	sw  	a2, 8(a1) !709
	lw  	a2, 26(sp) !709
	sw  	a2, 7(a1) !709
	lw  	a2, 29(sp) !709
	sw  	a2, 6(a1) !709
	lw  	a2, 24(sp) !709
	sw  	a2, 5(a1) !709
	lw  	a2, 23(sp) !709
	sw  	a2, 4(a1) !709
	lw  	a3, 22(sp) !709
	sw  	a3, 3(a1) !709
	lw  	a4, 21(sp) !709
	sw  	a4, 2(a1) !709
	lw  	a4, 20(sp) !709
	sw  	a4, 1(a1) !709
	lw  	a5, 19(sp) !709
	sw  	a5, 0(a1) !709
	lw  	a5, 18(sp) !717
	li  	t0, 12
	add 	t0, t0, a5
	sw  	a1, 0(t0) !717
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.126391 !719
	lw  	fa0, 0(a2) !722
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126393 !723
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126395 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126397 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126398 !148
beq_else.126397: !148
	li  	fa1, 1.000000 !148
beq_cont.126398: !148
	jal 	zero, beq_cont.126396 !147
beq_else.126395: !147
	addi	fa1, zero, 0
beq_cont.126396: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !723
	jal 	zero, beq_cont.126394 !723
beq_else.126393: !723
	addi	fa0, zero, 0
beq_cont.126394: !723
	sw  	fa0, 0(a2) !723
	lw  	fa0, 1(a2) !724
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126399 !725
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126401 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126403 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126404 !148
beq_else.126403: !148
	li  	fa1, 1.000000 !148
beq_cont.126404: !148
	jal 	zero, beq_cont.126402 !147
beq_else.126401: !147
	addi	fa1, zero, 0
beq_cont.126402: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !725
	jal 	zero, beq_cont.126400 !725
beq_else.126399: !725
	addi	fa0, zero, 0
beq_cont.126400: !725
	sw  	fa0, 1(a2) !725
	lw  	fa0, 2(a2) !726
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126405 !727
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126407 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126409 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126410 !148
beq_else.126409: !148
	li  	fa1, 1.000000 !148
beq_cont.126410: !148
	jal 	zero, beq_cont.126408 !147
beq_else.126407: !147
	addi	fa1, zero, 0
beq_cont.126408: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !727
	jal 	zero, beq_cont.126406 !727
beq_else.126405: !727
	addi	fa0, zero, 0
beq_cont.126406: !727
	sw  	fa0, 2(a2) !727
	jal 	zero, beq_cont.126392 !719
beq_else.126391: !719
	addi	t0, zero, 2
	bne 	a4, t0, beq_cont.126412 !729
	lw  	a1, 25(sp) !731
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
	bne 	a4, zero, beq_else.126413 !200
	bne 	a1, zero, beq_else.126415 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.126414 !200
beq_else.126415: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.126416: !200
	jal 	zero, beq_cont.126414 !200
beq_else.126413: !200
	li  	fa0, 1.000000 !200
beq_cont.126414: !200
	lw  	fa1, 0(a2) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 0(a2) !201
	lw  	fa1, 1(a2) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 1(a2) !202
	lw  	fa1, 2(a2) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 2(a2) !203
beq_cont.126412: !729
beq_cont.126392: !719
	beq 	a3, zero, beq_cont.126418 !735
	lw  	fa0, 0(a0) !624
	addi	sp, sp, 32 !624
	jal 	ra, cos !624
	addi	sp, sp, -32 !624
	sw  	fa0, 30(sp) !625
	lw  	a0, 28(sp) !625
	lw  	fa0, 0(a0) !625
	addi	sp, sp, 32 !625
	jal 	ra, sin !625
	addi	sp, sp, -32 !625
	sw  	fa0, 31(sp) !626
	lw  	a0, 28(sp) !626
	lw  	fa0, 1(a0) !626
	addi	sp, sp, 32 !626
	jal 	ra, cos !626
	addi	sp, sp, -32 !626
	sw  	fa0, 32(sp) !627
	lw  	a0, 28(sp) !627
	lw  	fa0, 1(a0) !627
	addi	sp, sp, 36 !627
	jal 	ra, sin !627
	addi	sp, sp, -36 !627
	sw  	fa0, 33(sp) !628
	lw  	a0, 28(sp) !628
	lw  	fa0, 2(a0) !628
	addi	sp, sp, 36 !628
	jal 	ra, cos !628
	addi	sp, sp, -36 !628
	sw  	fa0, 34(sp) !629
	lw  	a0, 28(sp) !629
	lw  	fa0, 2(a0) !629
	addi	sp, sp, 36 !629
	jal 	ra, sin !629
	addi	sp, sp, -36 !629
	lw  	fa1, 34(sp) !631
	lw  	fa2, 32(sp) !631
	fmul	fa3, fa2, fa1 !631
	lw  	fa4, 33(sp) !632
	lw  	fa5, 31(sp) !632
	fmul	fa6, fa5, fa4 !632
	fmul	fa6, fa6, fa1 !632
	lw  	fa7, 30(sp) !632
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
	lw  	a0, 23(sp) !644
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
	lw  	a0, 28(sp) !656
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
beq_cont.126418: !735
	addi	a0, zero, 1 !739
beq_cont.126386: !666
	bne 	a0, zero, beq_else.126419 !748
	lw  	a0, 18(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126419: !748
	lw  	a0, 18(sp) !749
	addi	a0, a0, 1 !749
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.126421 !747
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.126421: !747
	sw  	a0, 35(sp) !665
	addi	sp, sp, 36 !665
	jal 	ra, read_int !665
	addi	sp, sp, -36 !665
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126423 !666
	addi	a0, zero, 0 !742
	jal 	zero, beq_cont.126424 !666
beq_else.126423: !666
	sw  	a0, 36(sp) !668
	addi	sp, sp, 40 !668
	jal 	ra, read_int !668
	addi	sp, sp, -40 !668
	sw  	a0, 37(sp) !669
	addi	sp, sp, 40 !669
	jal 	ra, read_int !669
	addi	sp, sp, -40 !669
	sw  	a0, 38(sp) !670
	addi	sp, sp, 40 !670
	jal 	ra, read_int !670
	addi	sp, sp, -40 !670
	sw  	a0, 39(sp) !672
	addi	a0, zero, 3 !672
	addi	fa0, zero, 0
	addi	sp, sp, 40 !672
	jal 	ra, create_float_array !672
	addi	sp, sp, -40 !672
	sw  	a0, 40(sp) !673
	addi	sp, sp, 44 !673
	jal 	ra, read_float !673
	addi	sp, sp, -44 !673
	lw  	a0, 40(sp) !673
	sw  	fa0, 0(a0) !673
	addi	sp, sp, 44 !674
	jal 	ra, read_float !674
	addi	sp, sp, -44 !674
	lw  	a0, 40(sp) !674
	sw  	fa0, 1(a0) !674
	addi	sp, sp, 44 !675
	jal 	ra, read_float !675
	addi	sp, sp, -44 !675
	lw  	a0, 40(sp) !675
	sw  	fa0, 2(a0) !675
	addi	a0, zero, 3 !677
	addi	fa0, zero, 0
	addi	sp, sp, 44 !677
	jal 	ra, create_float_array !677
	addi	sp, sp, -44 !677
	sw  	a0, 41(sp) !678
	addi	sp, sp, 44 !678
	jal 	ra, read_float !678
	addi	sp, sp, -44 !678
	lw  	a0, 41(sp) !678
	sw  	fa0, 0(a0) !678
	addi	sp, sp, 44 !679
	jal 	ra, read_float !679
	addi	sp, sp, -44 !679
	lw  	a0, 41(sp) !679
	sw  	fa0, 1(a0) !679
	addi	sp, sp, 44 !680
	jal 	ra, read_float !680
	addi	sp, sp, -44 !680
	lw  	a0, 41(sp) !680
	sw  	fa0, 2(a0) !680
	addi	sp, sp, 44 !682
	jal 	ra, read_float !682
	addi	sp, sp, -44 !682
	flt 	a0, fa0, zero !123
	sw  	a0, 42(sp) !684
	addi	a0, zero, 2 !684
	addi	fa0, zero, 0
	addi	sp, sp, 44 !684
	jal 	ra, create_float_array !684
	addi	sp, sp, -44 !684
	sw  	a0, 43(sp) !685
	addi	sp, sp, 44 !685
	jal 	ra, read_float !685
	addi	sp, sp, -44 !685
	lw  	a0, 43(sp) !685
	sw  	fa0, 0(a0) !685
	addi	sp, sp, 44 !686
	jal 	ra, read_float !686
	addi	sp, sp, -44 !686
	lw  	a0, 43(sp) !686
	sw  	fa0, 1(a0) !686
	addi	a0, zero, 3 !688
	addi	fa0, zero, 0
	addi	sp, sp, 44 !688
	jal 	ra, create_float_array !688
	addi	sp, sp, -44 !688
	sw  	a0, 44(sp) !689
	addi	sp, sp, 48 !689
	jal 	ra, read_float !689
	addi	sp, sp, -48 !689
	lw  	a0, 44(sp) !689
	sw  	fa0, 0(a0) !689
	addi	sp, sp, 48 !690
	jal 	ra, read_float !690
	addi	sp, sp, -48 !690
	lw  	a0, 44(sp) !690
	sw  	fa0, 1(a0) !690
	addi	sp, sp, 48 !691
	jal 	ra, read_float !691
	addi	sp, sp, -48 !691
	lw  	a0, 44(sp) !691
	sw  	fa0, 2(a0) !691
	addi	a0, zero, 3 !693
	addi	fa0, zero, 0
	addi	sp, sp, 48 !693
	jal 	ra, create_float_array !693
	addi	sp, sp, -48 !693
	sw  	a0, 45(sp) !694
	lw  	a0, 39(sp) !694
	beq 	a0, zero, beq_cont.126426 !694
	addi	sp, sp, 48 !696
	jal 	ra, read_float !696
	addi	sp, sp, -48 !696
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 45(sp) !696
	sw  	fa0, 0(a0) !696
	addi	sp, sp, 48 !697
	jal 	ra, read_float !697
	addi	sp, sp, -48 !697
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 45(sp) !697
	sw  	fa0, 1(a0) !697
	addi	sp, sp, 48 !698
	jal 	ra, read_float !698
	addi	sp, sp, -48 !698
	li  	fa1, 0.017453 !563
	fmul	fa0, fa0, fa1 !563
	lw  	a0, 45(sp) !698
	sw  	fa0, 2(a0) !698
beq_cont.126426: !694
	lw  	a0, 37(sp) !705
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.126427 !705
	addi	a0, zero, 1 !705
	jal 	zero, beq_cont.126428 !705
beq_else.126427: !705
	lw  	a0, 42(sp) !705
beq_cont.126428: !705
	sw  	a0, 46(sp) !706
	addi	a0, zero, 4 !706
	addi	fa0, zero, 0
	addi	sp, sp, 48 !706
	jal 	ra, create_float_array !706
	addi	sp, sp, -48 !706
	addi	a1, gp, 0 !709
	addi	gp, gp, 11 !709
	sw  	a0, 10(a1) !709
	lw  	a0, 45(sp) !709
	sw  	a0, 9(a1) !709
	lw  	a2, 44(sp) !709
	sw  	a2, 8(a1) !709
	lw  	a2, 43(sp) !709
	sw  	a2, 7(a1) !709
	lw  	a2, 46(sp) !709
	sw  	a2, 6(a1) !709
	lw  	a2, 41(sp) !709
	sw  	a2, 5(a1) !709
	lw  	a2, 40(sp) !709
	sw  	a2, 4(a1) !709
	lw  	a3, 39(sp) !709
	sw  	a3, 3(a1) !709
	lw  	a4, 38(sp) !709
	sw  	a4, 2(a1) !709
	lw  	a4, 37(sp) !709
	sw  	a4, 1(a1) !709
	lw  	a5, 36(sp) !709
	sw  	a5, 0(a1) !709
	lw  	a5, 35(sp) !717
	li  	t0, 12
	add 	t0, t0, a5
	sw  	a1, 0(t0) !717
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.126429 !719
	lw  	fa0, 0(a2) !722
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126431 !723
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126433 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126435 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126436 !148
beq_else.126435: !148
	li  	fa1, 1.000000 !148
beq_cont.126436: !148
	jal 	zero, beq_cont.126434 !147
beq_else.126433: !147
	addi	fa1, zero, 0
beq_cont.126434: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !723
	jal 	zero, beq_cont.126432 !723
beq_else.126431: !723
	addi	fa0, zero, 0
beq_cont.126432: !723
	sw  	fa0, 0(a2) !723
	lw  	fa0, 1(a2) !724
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126437 !725
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126439 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126441 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126442 !148
beq_else.126441: !148
	li  	fa1, 1.000000 !148
beq_cont.126442: !148
	jal 	zero, beq_cont.126440 !147
beq_else.126439: !147
	addi	fa1, zero, 0
beq_cont.126440: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !725
	jal 	zero, beq_cont.126438 !725
beq_else.126437: !725
	addi	fa0, zero, 0
beq_cont.126438: !725
	sw  	fa0, 1(a2) !725
	lw  	fa0, 2(a2) !726
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126443 !727
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.126445 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.126447 !148
	li  	fa1, -1.000000 !149
	jal 	zero, beq_cont.126448 !148
beq_else.126447: !148
	li  	fa1, 1.000000 !148
beq_cont.126448: !148
	jal 	zero, beq_cont.126446 !147
beq_else.126445: !147
	addi	fa1, zero, 0
beq_cont.126446: !147
	fmul	fa0, fa0, fa0 !126
	fdiv	fa0, fa1, fa0 !727
	jal 	zero, beq_cont.126444 !727
beq_else.126443: !727
	addi	fa0, zero, 0
beq_cont.126444: !727
	sw  	fa0, 2(a2) !727
	jal 	zero, beq_cont.126430 !719
beq_else.126429: !719
	addi	t0, zero, 2
	bne 	a4, t0, beq_cont.126450 !729
	lw  	a1, 42(sp) !731
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
	bne 	a4, zero, beq_else.126451 !200
	bne 	a1, zero, beq_else.126453 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.126452 !200
beq_else.126453: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.126454: !200
	jal 	zero, beq_cont.126452 !200
beq_else.126451: !200
	li  	fa0, 1.000000 !200
beq_cont.126452: !200
	lw  	fa1, 0(a2) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 0(a2) !201
	lw  	fa1, 1(a2) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 1(a2) !202
	lw  	fa1, 2(a2) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 2(a2) !203
beq_cont.126450: !729
beq_cont.126430: !719
	beq 	a3, zero, beq_cont.126456 !735
	lw  	fa0, 0(a0) !624
	addi	sp, sp, 48 !624
	jal 	ra, cos !624
	addi	sp, sp, -48 !624
	sw  	fa0, 47(sp) !625
	lw  	a0, 45(sp) !625
	lw  	fa0, 0(a0) !625
	addi	sp, sp, 48 !625
	jal 	ra, sin !625
	addi	sp, sp, -48 !625
	sw  	fa0, 48(sp) !626
	lw  	a0, 45(sp) !626
	lw  	fa0, 1(a0) !626
	addi	sp, sp, 52 !626
	jal 	ra, cos !626
	addi	sp, sp, -52 !626
	sw  	fa0, 49(sp) !627
	lw  	a0, 45(sp) !627
	lw  	fa0, 1(a0) !627
	addi	sp, sp, 52 !627
	jal 	ra, sin !627
	addi	sp, sp, -52 !627
	sw  	fa0, 50(sp) !628
	lw  	a0, 45(sp) !628
	lw  	fa0, 2(a0) !628
	addi	sp, sp, 52 !628
	jal 	ra, cos !628
	addi	sp, sp, -52 !628
	sw  	fa0, 51(sp) !629
	lw  	a0, 45(sp) !629
	lw  	fa0, 2(a0) !629
	addi	sp, sp, 52 !629
	jal 	ra, sin !629
	addi	sp, sp, -52 !629
	lw  	fa1, 51(sp) !631
	lw  	fa2, 49(sp) !631
	fmul	fa3, fa2, fa1 !631
	lw  	fa4, 50(sp) !632
	lw  	fa5, 48(sp) !632
	fmul	fa6, fa5, fa4 !632
	fmul	fa6, fa6, fa1 !632
	lw  	fa7, 47(sp) !632
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
	lw  	a0, 40(sp) !644
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
	lw  	a0, 45(sp) !656
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
beq_cont.126456: !735
	addi	a0, zero, 1 !739
beq_cont.126424: !666
	bne 	a0, zero, beq_else.126457 !748
	lw  	a0, 35(sp) !751
	sw  	a0, 0(zero) !751
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126457: !748
	lw  	a0, 35(sp) !749
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
	bne 	a0, t0, beq_else.126459 !764
	lw  	a0, 1(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	lw  	ra, 0(sp)
	jal 	zero, create_array !764
beq_else.126459: !764
	sw  	a0, 2(sp) !766
	lw  	a0, 1(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 3(sp) !763
	addi	sp, sp, 4 !763
	jal 	ra, read_int !763
	addi	sp, sp, -4 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126460 !764
	lw  	a0, 3(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 4 !764
	jal 	ra, create_array !764
	addi	sp, sp, -4 !764
	jal 	zero, beq_cont.126461 !764
beq_else.126460: !764
	sw  	a0, 4(sp) !766
	lw  	a0, 3(sp) !766
	addi	a0, a0, 1 !766
	sw  	a0, 5(sp) !763
	addi	sp, sp, 8 !763
	jal 	ra, read_int !763
	addi	sp, sp, -8 !763
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126462 !764
	lw  	a0, 5(sp) !764
	addi	a0, a0, 1 !764
	addi	a1, zero, -1 !764
	addi	sp, sp, 8 !764
	jal 	ra, create_array !764
	addi	sp, sp, -8 !764
	jal 	zero, beq_cont.126463 !764
beq_else.126462: !764
	sw  	a0, 6(sp) !766
	lw  	a0, 5(sp) !766
	addi	a0, a0, 1 !766
	addi	sp, sp, 8 !766
	jal 	ra, read_net_item.2558 !766
	addi	sp, sp, -8 !766
	lw  	a1, 5(sp) !767
	lw  	a2, 6(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.126463: !764
	lw  	a1, 3(sp) !767
	lw  	a2, 4(sp) !767
	add 	t0, a0, a1 !767
	sw  	a2, 0(t0) !767
beq_cont.126461: !764
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
	addi	sp, sp, 4 !771
	jal 	ra, read_net_item.2558 !771
	addi	sp, sp, -4 !771
	addi	a1, a0, 0 !771
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126464 !772
	lw  	a0, 1(sp) !773
	addi	a0, a0, 1 !773
	lw  	ra, 0(sp)
	jal 	zero, create_array !773
beq_else.126464: !772
	lw  	a0, 1(sp) !775
	addi	a0, a0, 1 !775
	sw  	a0, 2(sp) !771
	addi	a0, zero, 0 !771
	sw  	a1, 3(sp) !771
	addi	sp, sp, 4 !771
	jal 	ra, read_net_item.2558 !771
	addi	sp, sp, -4 !771
	addi	a1, a0, 0 !771
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126465 !772
	lw  	a0, 2(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 4 !773
	jal 	ra, create_array !773
	addi	sp, sp, -4 !773
	jal 	zero, beq_cont.126466 !772
beq_else.126465: !772
	lw  	a0, 2(sp) !775
	addi	a0, a0, 1 !775
	sw  	a0, 4(sp) !771
	addi	a0, zero, 0 !771
	sw  	a1, 5(sp) !771
	addi	sp, sp, 8 !771
	jal 	ra, read_net_item.2558 !771
	addi	sp, sp, -8 !771
	addi	a1, a0, 0 !771
	lw  	a0, 0(a1) !772
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126467 !772
	lw  	a0, 4(sp) !773
	addi	a0, a0, 1 !773
	addi	sp, sp, 8 !773
	jal 	ra, create_array !773
	addi	sp, sp, -8 !773
	jal 	zero, beq_cont.126468 !772
beq_else.126467: !772
	lw  	a0, 4(sp) !775
	addi	a0, a0, 1 !775
	sw  	a1, 6(sp) !775
	addi	sp, sp, 8 !775
	jal 	ra, read_or_network.2560 !775
	addi	sp, sp, -8 !775
	lw  	a1, 4(sp) !776
	lw  	a2, 6(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
beq_cont.126468: !772
	lw  	a1, 2(sp) !776
	lw  	a2, 5(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
beq_cont.126466: !772
	lw  	a1, 1(sp) !776
	lw  	a2, 3(sp) !776
	add 	t0, a0, a1 !776
	sw  	a2, 0(t0) !776
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_and_network.2562:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !780
	addi	a0, zero, 0 !780
	addi	sp, sp, 4 !780
	jal 	ra, read_net_item.2558 !780
	addi	sp, sp, -4 !780
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.126469 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126469: !781
	lw  	a1, 1(sp) !783
	li  	t0, 83
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	sw  	a0, 2(sp) !780
	addi	a0, zero, 0 !780
	addi	sp, sp, 4 !780
	jal 	ra, read_net_item.2558 !780
	addi	sp, sp, -4 !780
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.126471 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126471: !781
	lw  	a1, 2(sp) !783
	li  	t0, 83
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	sw  	a0, 3(sp) !780
	addi	a0, zero, 0 !780
	addi	sp, sp, 4 !780
	jal 	ra, read_net_item.2558 !780
	addi	sp, sp, -4 !780
	lw  	a1, 0(a0) !781
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.126473 !781
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126473: !781
	lw  	a1, 3(sp) !783
	li  	t0, 83
	add 	t0, t0, a1
	sw  	a0, 0(t0) !783
	addi	a0, a1, 1 !784
	lw  	ra, 0(sp)
	jal 	zero, read_and_network.2562 !784
iter_setup_dirvec_constants.2659:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.126475 !1125
	lw  	a2, 12(a1) !1126
	lw  	a3, 1(a0) !535
	sw  	a3, 1(sp) !529
	lw  	a3, 0(a0) !529
	sw  	a2, 2(sp) !260
	lw  	a2, 1(a2) !260
	sw  	a0, 3(sp) !1130
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.126476 !1130
	addi	a0, zero, 6 !1051
	addi	fa0, zero, 0
	sw  	a1, 4(sp) !1051
	sw  	a3, 5(sp) !1051
	addi	sp, sp, 8 !1051
	jal 	ra, create_float_array !1051
	addi	sp, sp, -8 !1051
	lw  	a1, 5(sp) !1053
	lw  	fa0, 0(a1) !1053
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126478 !1053
	lw  	a2, 2(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 0(a1) !1057
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126480 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126481 !141
beq_else.126480: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126481: !141
	lw  	a4, 4(a2) !298
	lw  	fa0, 0(a4) !303
	bne 	a3, zero, beq_else.126482 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126483 !154
beq_else.126482: !154
beq_cont.126483: !154
	sw  	fa0, 0(a0) !1057
	li  	fa0, 1.000000 !1059
	lw  	fa1, 0(a1) !1059
	fdiv	fa0, fa0, fa1 !1059
	sw  	fa0, 1(a0) !1059
	jal 	zero, beq_cont.126479 !1053
beq_else.126478: !1053
	sw  	zero, 1(a0) !1054
beq_cont.126479: !1053
	lw  	fa0, 1(a1) !1061
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126484 !1061
	lw  	a2, 2(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 1(a1) !1064
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126486 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126487 !141
beq_else.126486: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126487: !141
	lw  	a4, 4(a2) !308
	lw  	fa0, 1(a4) !313
	bne 	a3, zero, beq_else.126488 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126489 !154
beq_else.126488: !154
beq_cont.126489: !154
	sw  	fa0, 2(a0) !1064
	li  	fa0, 1.000000 !1065
	lw  	fa1, 1(a1) !1065
	fdiv	fa0, fa0, fa1 !1065
	sw  	fa0, 3(a0) !1065
	jal 	zero, beq_cont.126485 !1061
beq_else.126484: !1061
	sw  	zero, 3(a0) !1062
beq_cont.126485: !1061
	lw  	fa0, 2(a1) !1067
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126490 !1067
	lw  	a2, 2(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 2(a1) !1070
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126492 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126493 !141
beq_else.126492: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126493: !141
	lw  	a2, 4(a2) !318
	lw  	fa0, 2(a2) !323
	bne 	a3, zero, beq_else.126494 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126495 !154
beq_else.126494: !154
beq_cont.126495: !154
	sw  	fa0, 4(a0) !1070
	li  	fa0, 1.000000 !1071
	lw  	fa1, 2(a1) !1071
	fdiv	fa0, fa0, fa1 !1071
	sw  	fa0, 5(a0) !1071
	jal 	zero, beq_cont.126491 !1067
beq_else.126490: !1067
	sw  	zero, 5(a0) !1068
beq_cont.126491: !1067
	lw  	a1, 4(sp) !1131
	lw  	a2, 1(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.126477 !1130
beq_else.126476: !1130
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.126496 !1132
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a1, 4(sp) !1078
	sw  	a3, 5(sp) !1078
	addi	sp, sp, 8 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -8 !1078
	lw  	a1, 5(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 2(sp) !298
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
	bne 	a1, zero, beq_else.126498 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.126499 !1082
beq_else.126498: !1082
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
beq_cont.126499: !1082
	lw  	a1, 4(sp) !1133
	lw  	a2, 1(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.126497 !1132
beq_else.126496: !1132
	addi	a0, zero, 5 !1097
	addi	fa0, zero, 0
	sw  	a1, 4(sp) !1097
	sw  	a3, 5(sp) !1097
	addi	sp, sp, 8 !1097
	jal 	ra, create_float_array !1097
	addi	sp, sp, -8 !1097
	lw  	a1, 5(sp) !1099
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
	bne 	a3, zero, beq_else.126500 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.126501 !846
beq_else.126500: !846
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
beq_cont.126501: !846
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
	bne 	a3, zero, beq_else.126502 !1107
	sw  	fa1, 1(a0) !1112
	sw  	fa2, 2(a0) !1113
	sw  	fa3, 3(a0) !1114
	jal 	zero, beq_cont.126503 !1107
beq_else.126502: !1107
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
beq_cont.126503: !1107
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_cont.126505 !1116
	li  	fa1, 1.000000 !1117
	fdiv	fa0, fa1, fa0 !1117
	sw  	fa0, 4(a0) !1117
beq_cont.126505: !1116
	lw  	a1, 4(sp) !1135
	lw  	a2, 1(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.126497: !1132
beq_cont.126477: !1130
	addi	a0, a1, -1 !1137
	blt 	a0, zero, bge_else.126506 !1125
	lw  	a1, 12(a0) !1126
	lw  	a2, 3(sp) !535
	lw  	a3, 1(a2) !535
	sw  	a3, 6(sp) !529
	lw  	a3, 0(a2) !529
	sw  	a1, 7(sp) !260
	lw  	a1, 1(a1) !260
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.126507 !1130
	sw  	a0, 8(sp) !1051
	addi	a0, zero, 6 !1051
	addi	fa0, zero, 0
	sw  	a3, 9(sp) !1051
	addi	sp, sp, 12 !1051
	jal 	ra, create_float_array !1051
	addi	sp, sp, -12 !1051
	lw  	a1, 9(sp) !1053
	lw  	fa0, 0(a1) !1053
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126509 !1053
	lw  	a2, 7(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 0(a1) !1057
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126511 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126512 !141
beq_else.126511: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126512: !141
	lw  	a4, 4(a2) !298
	lw  	fa0, 0(a4) !303
	bne 	a3, zero, beq_else.126513 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126514 !154
beq_else.126513: !154
beq_cont.126514: !154
	sw  	fa0, 0(a0) !1057
	li  	fa0, 1.000000 !1059
	lw  	fa1, 0(a1) !1059
	fdiv	fa0, fa0, fa1 !1059
	sw  	fa0, 1(a0) !1059
	jal 	zero, beq_cont.126510 !1053
beq_else.126509: !1053
	sw  	zero, 1(a0) !1054
beq_cont.126510: !1053
	lw  	fa0, 1(a1) !1061
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126515 !1061
	lw  	a2, 7(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 1(a1) !1064
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126517 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126518 !141
beq_else.126517: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126518: !141
	lw  	a4, 4(a2) !308
	lw  	fa0, 1(a4) !313
	bne 	a3, zero, beq_else.126519 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126520 !154
beq_else.126519: !154
beq_cont.126520: !154
	sw  	fa0, 2(a0) !1064
	li  	fa0, 1.000000 !1065
	lw  	fa1, 1(a1) !1065
	fdiv	fa0, fa0, fa1 !1065
	sw  	fa0, 3(a0) !1065
	jal 	zero, beq_cont.126516 !1061
beq_else.126515: !1061
	sw  	zero, 3(a0) !1062
beq_cont.126516: !1061
	lw  	fa0, 2(a1) !1067
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126521 !1067
	lw  	a2, 7(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 2(a1) !1070
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126523 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126524 !141
beq_else.126523: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126524: !141
	lw  	a2, 4(a2) !318
	lw  	fa0, 2(a2) !323
	bne 	a3, zero, beq_else.126525 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126526 !154
beq_else.126525: !154
beq_cont.126526: !154
	sw  	fa0, 4(a0) !1070
	li  	fa0, 1.000000 !1071
	lw  	fa1, 2(a1) !1071
	fdiv	fa0, fa0, fa1 !1071
	sw  	fa0, 5(a0) !1071
	jal 	zero, beq_cont.126522 !1067
beq_else.126521: !1067
	sw  	zero, 5(a0) !1068
beq_cont.126522: !1067
	lw  	a1, 8(sp) !1131
	lw  	a2, 6(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.126508 !1130
beq_else.126507: !1130
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.126527 !1132
	sw  	a0, 8(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a3, 9(sp) !1078
	addi	sp, sp, 12 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -12 !1078
	lw  	a1, 9(sp) !1080
	lw  	fa0, 0(a1) !1080
	lw  	a2, 7(sp) !298
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
	bne 	a1, zero, beq_else.126529 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.126530 !1082
beq_else.126529: !1082
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
beq_cont.126530: !1082
	lw  	a1, 8(sp) !1133
	lw  	a2, 6(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.126528 !1132
beq_else.126527: !1132
	sw  	a0, 8(sp) !1097
	addi	a0, zero, 5 !1097
	addi	fa0, zero, 0
	sw  	a3, 9(sp) !1097
	addi	sp, sp, 12 !1097
	jal 	ra, create_float_array !1097
	addi	sp, sp, -12 !1097
	lw  	a1, 9(sp) !1099
	lw  	fa0, 0(a1) !1099
	lw  	fa1, 1(a1) !1099
	lw  	fa2, 2(a1) !1099
	fmul	fa3, fa0, fa0 !126
	lw  	a2, 7(sp) !298
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
	bne 	a3, zero, beq_else.126531 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.126532 !846
beq_else.126531: !846
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
beq_cont.126532: !846
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
	bne 	a3, zero, beq_else.126533 !1107
	sw  	fa1, 1(a0) !1112
	sw  	fa2, 2(a0) !1113
	sw  	fa3, 3(a0) !1114
	jal 	zero, beq_cont.126534 !1107
beq_else.126533: !1107
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
beq_cont.126534: !1107
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_cont.126536 !1116
	li  	fa1, 1.000000 !1117
	fdiv	fa0, fa1, fa0 !1117
	sw  	fa0, 4(a0) !1117
beq_cont.126536: !1116
	lw  	a1, 8(sp) !1135
	lw  	a2, 6(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.126528: !1132
beq_cont.126508: !1130
	addi	a0, a1, -1 !1137
	blt 	a0, zero, bge_else.126537 !1125
	lw  	a1, 12(a0) !1126
	lw  	a2, 3(sp) !535
	lw  	a3, 1(a2) !535
	sw  	a3, 10(sp) !529
	lw  	a3, 0(a2) !529
	sw  	a1, 11(sp) !260
	lw  	a1, 1(a1) !260
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.126538 !1130
	sw  	a0, 12(sp) !1051
	addi	a0, zero, 6 !1051
	addi	fa0, zero, 0
	sw  	a3, 13(sp) !1051
	addi	sp, sp, 16 !1051
	jal 	ra, create_float_array !1051
	addi	sp, sp, -16 !1051
	lw  	a1, 13(sp) !1053
	lw  	fa0, 0(a1) !1053
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126540 !1053
	lw  	a2, 11(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 0(a1) !1057
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126542 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126543 !141
beq_else.126542: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126543: !141
	lw  	a4, 4(a2) !298
	lw  	fa0, 0(a4) !303
	bne 	a3, zero, beq_else.126544 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126545 !154
beq_else.126544: !154
beq_cont.126545: !154
	sw  	fa0, 0(a0) !1057
	li  	fa0, 1.000000 !1059
	lw  	fa1, 0(a1) !1059
	fdiv	fa0, fa0, fa1 !1059
	sw  	fa0, 1(a0) !1059
	jal 	zero, beq_cont.126541 !1053
beq_else.126540: !1053
	sw  	zero, 1(a0) !1054
beq_cont.126541: !1053
	lw  	fa0, 1(a1) !1061
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126546 !1061
	lw  	a2, 11(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 1(a1) !1064
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126548 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126549 !141
beq_else.126548: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126549: !141
	lw  	a4, 4(a2) !308
	lw  	fa0, 1(a4) !313
	bne 	a3, zero, beq_else.126550 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126551 !154
beq_else.126550: !154
beq_cont.126551: !154
	sw  	fa0, 2(a0) !1064
	li  	fa0, 1.000000 !1065
	lw  	fa1, 1(a1) !1065
	fdiv	fa0, fa0, fa1 !1065
	sw  	fa0, 3(a0) !1065
	jal 	zero, beq_cont.126547 !1061
beq_else.126546: !1061
	sw  	zero, 3(a0) !1062
beq_cont.126547: !1061
	lw  	fa0, 2(a1) !1067
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.126552 !1067
	lw  	a2, 11(sp) !280
	lw  	a3, 6(a2) !280
	lw  	fa0, 2(a1) !1070
	flt 	a4, fa0, zero !123
	bne 	a3, zero, beq_else.126554 !141
	addi	a3, a4, 0 !141
	jal 	zero, beq_cont.126555 !141
beq_else.126554: !141
	sub 	t0, zero, a4 !141
	addi	a3, t0, 1 !141
beq_cont.126555: !141
	lw  	a2, 4(a2) !318
	lw  	fa0, 2(a2) !323
	bne 	a3, zero, beq_else.126556 !154
	fsgnjn  fa0, fa0, fa0 !154
	jal 	zero, beq_cont.126557 !154
beq_else.126556: !154
beq_cont.126557: !154
	sw  	fa0, 4(a0) !1070
	li  	fa0, 1.000000 !1071
	lw  	fa1, 2(a1) !1071
	fdiv	fa0, fa0, fa1 !1071
	sw  	fa0, 5(a0) !1071
	jal 	zero, beq_cont.126553 !1067
beq_else.126552: !1067
	sw  	zero, 5(a0) !1068
beq_cont.126553: !1067
	lw  	a1, 12(sp) !1131
	lw  	a2, 10(sp) !1131
	add 	t0, a2, a1 !1131
	sw  	a0, 0(t0) !1131
	jal 	zero, beq_cont.126539 !1130
beq_else.126538: !1130
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.126558 !1132
	sw  	a0, 12(sp) !1078
	addi	a0, zero, 4 !1078
	addi	fa0, zero, 0
	sw  	a3, 13(sp) !1078
	addi	sp, sp, 16 !1078
	jal 	ra, create_float_array !1078
	addi	sp, sp, -16 !1078
	lw  	a1, 13(sp) !1080
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
	bne 	a1, zero, beq_else.126560 !1082
	sw  	zero, 0(a0) !1090
	jal 	zero, beq_cont.126561 !1082
beq_else.126560: !1082
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
beq_cont.126561: !1082
	lw  	a1, 12(sp) !1133
	lw  	a2, 10(sp) !1133
	add 	t0, a2, a1 !1133
	sw  	a0, 0(t0) !1133
	jal 	zero, beq_cont.126559 !1132
beq_else.126558: !1132
	sw  	a0, 12(sp) !1097
	addi	a0, zero, 5 !1097
	addi	fa0, zero, 0
	sw  	a3, 13(sp) !1097
	addi	sp, sp, 16 !1097
	jal 	ra, create_float_array !1097
	addi	sp, sp, -16 !1097
	lw  	a1, 13(sp) !1099
	lw  	fa0, 0(a1) !1099
	lw  	fa1, 1(a1) !1099
	lw  	fa2, 2(a1) !1099
	fmul	fa3, fa0, fa0 !126
	lw  	a2, 11(sp) !298
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
	bne 	a3, zero, beq_else.126562 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.126563 !846
beq_else.126562: !846
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
beq_cont.126563: !846
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
	bne 	a3, zero, beq_else.126564 !1107
	sw  	fa1, 1(a0) !1112
	sw  	fa2, 2(a0) !1113
	sw  	fa3, 3(a0) !1114
	jal 	zero, beq_cont.126565 !1107
beq_else.126564: !1107
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
beq_cont.126565: !1107
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_cont.126567 !1116
	li  	fa1, 1.000000 !1117
	fdiv	fa0, fa1, fa0 !1117
	sw  	fa0, 4(a0) !1117
beq_cont.126567: !1116
	lw  	a1, 12(sp) !1135
	lw  	a2, 10(sp) !1135
	add 	t0, a2, a1 !1135
	sw  	a0, 0(t0) !1135
beq_cont.126559: !1132
beq_cont.126539: !1130
	addi	a1, a1, -1 !1137
	lw  	a0, 3(sp) !1137
	lw  	ra, 0(sp)
	jal 	zero, iter_setup_dirvec_constants.2659 !1137
bge_else.126537: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.126506: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.126475: !1125
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp_constants.2664:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.126571 !1148
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
	bne 	a4, t0, beq_else.126572 !1155
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
	jal 	zero, beq_cont.126573 !1155
beq_else.126572: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.126575 !1158
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
	bne 	a5, zero, beq_else.126576 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.126577 !846
beq_else.126576: !846
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
beq_cont.126577: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.126578 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.126579 !1160
beq_else.126578: !1160
beq_cont.126579: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.126575: !1158
beq_cont.126573: !1155
	addi	a1, a1, -1 !1162
	blt 	a1, zero, bge_else.126580 !1148
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
	bne 	a4, t0, beq_else.126581 !1155
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
	jal 	zero, beq_cont.126582 !1155
beq_else.126581: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.126584 !1158
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
	bne 	a5, zero, beq_else.126585 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.126586 !846
beq_else.126585: !846
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
beq_cont.126586: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.126587 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.126588 !1160
beq_else.126587: !1160
beq_cont.126588: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.126584: !1158
beq_cont.126582: !1155
	addi	a1, a1, -1 !1162
	blt 	a1, zero, bge_else.126589 !1148
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
	bne 	a4, t0, beq_else.126590 !1155
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
	jal 	zero, beq_cont.126591 !1155
beq_else.126590: !1155
	addi	t0, zero, 2
	bge 	t0, a4, bge_cont.126593 !1158
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
	bne 	a5, zero, beq_else.126594 !846
	fsgnj   fa0, fa3, fa3 !847
	jal 	zero, beq_cont.126595 !846
beq_else.126594: !846
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
beq_cont.126595: !846
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.126596 !1160
	li  	fa1, 1.000000 !1160
	fsub	fa0, fa0, fa1 !1160
	jal 	zero, beq_cont.126597 !1160
beq_else.126596: !1160
beq_cont.126597: !1160
	sw  	fa0, 3(a3) !1160
bge_cont.126593: !1158
beq_cont.126591: !1155
	addi	a1, a1, -1 !1162
	lw  	ra, 0(sp)
	jal 	zero, setup_startp_constants.2664 !1162
bge_else.126589: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.126580: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.126571: !1148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
check_all_inside.2689:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126601 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126601: !1216
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
	bne 	a3, t0, beq_else.126602 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a3, 4(a2) !298
	lw  	fa6, 0(a3) !303
	flt 	a3, fa3, fa6 !121
	bne 	a3, zero, beq_else.126604 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.126605 !1178
beq_else.126604: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a3, 4(a2) !308
	lw  	fa4, 1(a3) !313
	flt 	a3, fa3, fa4 !121
	bne 	a3, zero, beq_else.126606 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.126607 !1179
beq_else.126606: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	flt 	a3, fa3, fa4 !121
beq_cont.126607: !1179
beq_cont.126605: !1178
	bne 	a3, zero, beq_else.126608 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.126609 !1177
beq_else.126608: !1177
	lw  	a2, 6(a2) !280
beq_cont.126609: !1177
	jal 	zero, beq_cont.126603 !1205
beq_else.126602: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.126610 !1207
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
	bne 	a2, zero, beq_else.126612 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.126613 !141
beq_else.126612: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.126613: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.126611 !1207
beq_else.126610: !1207
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
	bne 	a3, zero, beq_else.126614 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.126615 !846
beq_else.126614: !846
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
beq_cont.126615: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.126616 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.126617 !1195
beq_else.126616: !1195
beq_cont.126617: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.126618 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.126619 !141
beq_else.126618: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.126619: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.126611: !1207
beq_cont.126603: !1205
	bne 	a2, zero, beq_else.126620 !1219
	addi	a0, a0, 1 !1222
	lwr 	a2, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126621 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126621: !1216
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
	bne 	a3, t0, beq_else.126622 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a3, 4(a2) !298
	lw  	fa6, 0(a3) !303
	flt 	a3, fa3, fa6 !121
	bne 	a3, zero, beq_else.126624 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.126625 !1178
beq_else.126624: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a3, 4(a2) !308
	lw  	fa4, 1(a3) !313
	flt 	a3, fa3, fa4 !121
	bne 	a3, zero, beq_else.126626 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.126627 !1179
beq_else.126626: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	flt 	a3, fa3, fa4 !121
beq_cont.126627: !1179
beq_cont.126625: !1178
	bne 	a3, zero, beq_else.126628 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.126629 !1177
beq_else.126628: !1177
	lw  	a2, 6(a2) !280
beq_cont.126629: !1177
	jal 	zero, beq_cont.126623 !1205
beq_else.126622: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.126630 !1207
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
	bne 	a2, zero, beq_else.126632 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.126633 !141
beq_else.126632: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.126633: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.126631 !1207
beq_else.126630: !1207
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
	bne 	a3, zero, beq_else.126634 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.126635 !846
beq_else.126634: !846
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
beq_cont.126635: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.126636 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.126637 !1195
beq_else.126636: !1195
beq_cont.126637: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.126638 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.126639 !141
beq_else.126638: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.126639: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.126631: !1207
beq_cont.126623: !1205
	bne 	a2, zero, beq_else.126640 !1219
	addi	a0, a0, 1 !1222
	lwr 	a2, a1, a0 !1215
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126641 !1216
	addi	a0, zero, 1 !1217
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126641: !1216
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
	bne 	a3, t0, beq_else.126642 !1205
	fsgnjx  fa3, fa3, fa3 !1178
	lw  	a3, 4(a2) !298
	lw  	fa6, 0(a3) !303
	flt 	a3, fa3, fa6 !121
	bne 	a3, zero, beq_else.126644 !1178
	addi	a3, zero, 0 !1182
	jal 	zero, beq_cont.126645 !1178
beq_else.126644: !1178
	fsgnjx  fa3, fa4, fa4 !1179
	lw  	a3, 4(a2) !308
	lw  	fa4, 1(a3) !313
	flt 	a3, fa3, fa4 !121
	bne 	a3, zero, beq_else.126646 !1179
	addi	a3, zero, 0 !1181
	jal 	zero, beq_cont.126647 !1179
beq_else.126646: !1179
	fsgnjx  fa3, fa5, fa5 !1180
	lw  	a3, 4(a2) !318
	lw  	fa4, 2(a3) !323
	flt 	a3, fa3, fa4 !121
beq_cont.126647: !1179
beq_cont.126645: !1178
	bne 	a3, zero, beq_else.126648 !1177
	lw  	a2, 6(a2) !280
	sub 	t0, zero, a2 !1183
	addi	a2, t0, 1 !1183
	jal 	zero, beq_cont.126649 !1177
beq_else.126648: !1177
	lw  	a2, 6(a2) !280
beq_cont.126649: !1177
	jal 	zero, beq_cont.126643 !1205
beq_else.126642: !1205
	addi	t0, zero, 2
	bne 	a3, t0, beq_else.126650 !1207
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
	bne 	a2, zero, beq_else.126652 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.126653 !141
beq_else.126652: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.126653: !141
	sub 	t0, zero, a2 !1189
	addi	a2, t0, 1 !1189
	jal 	zero, beq_cont.126651 !1207
beq_else.126650: !1207
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
	bne 	a3, zero, beq_else.126654 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.126655 !846
beq_else.126654: !846
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
beq_cont.126655: !846
	lw  	a3, 1(a2) !260
	addi	t0, zero, 3
	bne 	a3, t0, beq_else.126656 !1195
	li  	fa4, 1.000000 !1195
	fsub	fa3, fa3, fa4 !1195
	jal 	zero, beq_cont.126657 !1195
beq_else.126656: !1195
beq_cont.126657: !1195
	lw  	a2, 6(a2) !280
	flt 	a3, fa3, zero !123
	bne 	a2, zero, beq_else.126658 !141
	addi	a2, a3, 0 !141
	jal 	zero, beq_cont.126659 !141
beq_else.126658: !141
	sub 	t0, zero, a3 !141
	addi	a2, t0, 1 !141
beq_cont.126659: !141
	sub 	t0, zero, a2 !1196
	addi	a2, t0, 1 !1196
beq_cont.126651: !1207
beq_cont.126643: !1205
	bne 	a2, zero, beq_else.126660 !1219
	addi	a0, a0, 1 !1222
	lw  	ra, 0(sp)
	jal 	zero, check_all_inside.2689 !1222
beq_else.126660: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126640: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126620: !1219
	addi	a0, zero, 0 !1220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_and_group.2695:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126661 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126661: !1233
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.126662 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126664 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126665 !924
beq_else.126664: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126666 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126667 !925
beq_else.126666: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126667: !925
beq_cont.126665: !924
	bne 	a5, zero, beq_else.126668 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126670 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126671 !933
beq_else.126670: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126672 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126673 !934
beq_else.126672: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126673: !934
beq_cont.126671: !933
	bne 	a5, zero, beq_else.126674 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126676 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126677 !942
beq_else.126676: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126678 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126679 !943
beq_else.126678: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126679: !943
beq_cont.126677: !942
	bne 	a3, zero, beq_else.126680 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126681 !941
beq_else.126680: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126681: !941
	jal 	zero, beq_cont.126675 !932
beq_else.126674: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126675: !932
	jal 	zero, beq_cont.126669 !923
beq_else.126668: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126669: !923
	jal 	zero, beq_cont.126663 !991
beq_else.126662: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126682 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.126684 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126685 !955
beq_else.126684: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126685: !955
	jal 	zero, beq_cont.126683 !993
beq_else.126682: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126686 !966
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
	bne 	a5, zero, beq_else.126688 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126689 !846
beq_else.126688: !846
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
beq_cont.126689: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126690 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126691 !971
beq_else.126690: !971
beq_cont.126691: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126692 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126693 !973
beq_else.126692: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.126694 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126695 !974
beq_else.126694: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126695: !974
	addi	a3, zero, 1 !978
beq_cont.126693: !973
	jal 	zero, beq_cont.126687 !966
beq_else.126686: !966
	addi	a3, zero, 0 !967
beq_cont.126687: !966
beq_cont.126683: !993
beq_cont.126663: !991
	lw  	fa0, 135(zero) !1238
	bne 	a3, zero, beq_else.126696 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.126697 !1239
beq_else.126696: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.126697: !1239
	bne 	a3, zero, beq_else.126698 !1239
	lw  	a2, 12(a2) !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.126699 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126699: !1255
	addi	a0, a0, 1 !1256
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126700 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126700: !1233
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.126701 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126703 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126704 !924
beq_else.126703: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126705 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126706 !925
beq_else.126705: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126706: !925
beq_cont.126704: !924
	bne 	a5, zero, beq_else.126707 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126709 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126710 !933
beq_else.126709: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126711 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126712 !934
beq_else.126711: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126712: !934
beq_cont.126710: !933
	bne 	a5, zero, beq_else.126713 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126715 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126716 !942
beq_else.126715: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126717 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126718 !943
beq_else.126717: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126718: !943
beq_cont.126716: !942
	bne 	a3, zero, beq_else.126719 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126720 !941
beq_else.126719: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126720: !941
	jal 	zero, beq_cont.126714 !932
beq_else.126713: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126714: !932
	jal 	zero, beq_cont.126708 !923
beq_else.126707: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126708: !923
	jal 	zero, beq_cont.126702 !991
beq_else.126701: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126721 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.126723 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126724 !955
beq_else.126723: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126724: !955
	jal 	zero, beq_cont.126722 !993
beq_else.126721: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126725 !966
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
	bne 	a5, zero, beq_else.126727 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126728 !846
beq_else.126727: !846
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
beq_cont.126728: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126729 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126730 !971
beq_else.126729: !971
beq_cont.126730: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126731 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126732 !973
beq_else.126731: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.126733 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126734 !974
beq_else.126733: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126734: !974
	addi	a3, zero, 1 !978
beq_cont.126732: !973
	jal 	zero, beq_cont.126726 !966
beq_else.126725: !966
	addi	a3, zero, 0 !967
beq_cont.126726: !966
beq_cont.126722: !993
beq_cont.126702: !991
	lw  	fa0, 135(zero) !1238
	bne 	a3, zero, beq_else.126735 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.126736 !1239
beq_else.126735: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.126736: !1239
	bne 	a3, zero, beq_else.126737 !1239
	lw  	a2, 12(a2) !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.126738 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126738: !1255
	addi	a0, a0, 1 !1256
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126739 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126739: !1233
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.126740 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126742 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126743 !924
beq_else.126742: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126744 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126745 !925
beq_else.126744: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126745: !925
beq_cont.126743: !924
	bne 	a5, zero, beq_else.126746 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126748 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126749 !933
beq_else.126748: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126750 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126751 !934
beq_else.126750: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126751: !934
beq_cont.126749: !933
	bne 	a5, zero, beq_else.126752 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126754 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126755 !942
beq_else.126754: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126756 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126757 !943
beq_else.126756: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126757: !943
beq_cont.126755: !942
	bne 	a3, zero, beq_else.126758 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126759 !941
beq_else.126758: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126759: !941
	jal 	zero, beq_cont.126753 !932
beq_else.126752: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126753: !932
	jal 	zero, beq_cont.126747 !923
beq_else.126746: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126747: !923
	jal 	zero, beq_cont.126741 !991
beq_else.126740: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126760 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.126762 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126763 !955
beq_else.126762: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126763: !955
	jal 	zero, beq_cont.126761 !993
beq_else.126760: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126764 !966
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
	bne 	a5, zero, beq_else.126766 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126767 !846
beq_else.126766: !846
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
beq_cont.126767: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126768 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126769 !971
beq_else.126768: !971
beq_cont.126769: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126770 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126771 !973
beq_else.126770: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.126772 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126773 !974
beq_else.126772: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126773: !974
	addi	a3, zero, 1 !978
beq_cont.126771: !973
	jal 	zero, beq_cont.126765 !966
beq_else.126764: !966
	addi	a3, zero, 0 !967
beq_cont.126765: !966
beq_cont.126761: !993
beq_cont.126741: !991
	lw  	fa0, 135(zero) !1238
	bne 	a3, zero, beq_else.126774 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.126775 !1239
beq_else.126774: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.126775: !1239
	bne 	a3, zero, beq_else.126776 !1239
	lw  	a2, 12(a2) !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.126777 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126777: !1255
	addi	a0, a0, 1 !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.126776: !1239
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
	sw  	a0, 1(sp) !1246
	addi	a0, zero, 0 !1246
	sw  	a1, 2(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 4 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -4 !1246
	bne 	a0, zero, beq_else.126778 !1246
	lw  	a0, 1(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.126778: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126737: !1239
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
	sw  	a0, 3(sp) !1246
	addi	a0, zero, 0 !1246
	sw  	a1, 2(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 4 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -4 !1246
	bne 	a0, zero, beq_else.126779 !1246
	lw  	a0, 3(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1233
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126780 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126780: !1233
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.126781 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126783 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126784 !924
beq_else.126783: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126785 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126786 !925
beq_else.126785: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126786: !925
beq_cont.126784: !924
	bne 	a5, zero, beq_else.126787 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126789 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126790 !933
beq_else.126789: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126791 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126792 !934
beq_else.126791: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126792: !934
beq_cont.126790: !933
	bne 	a5, zero, beq_else.126793 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126795 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126796 !942
beq_else.126795: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126797 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126798 !943
beq_else.126797: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126798: !943
beq_cont.126796: !942
	bne 	a3, zero, beq_else.126799 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126800 !941
beq_else.126799: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126800: !941
	jal 	zero, beq_cont.126794 !932
beq_else.126793: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126794: !932
	jal 	zero, beq_cont.126788 !923
beq_else.126787: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126788: !923
	jal 	zero, beq_cont.126782 !991
beq_else.126781: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126801 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.126803 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126804 !955
beq_else.126803: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126804: !955
	jal 	zero, beq_cont.126802 !993
beq_else.126801: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126805 !966
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
	bne 	a5, zero, beq_else.126807 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126808 !846
beq_else.126807: !846
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
beq_cont.126808: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126809 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126810 !971
beq_else.126809: !971
beq_cont.126810: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126811 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126812 !973
beq_else.126811: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.126813 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126814 !974
beq_else.126813: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126814: !974
	addi	a3, zero, 1 !978
beq_cont.126812: !973
	jal 	zero, beq_cont.126806 !966
beq_else.126805: !966
	addi	a3, zero, 0 !967
beq_cont.126806: !966
beq_cont.126802: !993
beq_cont.126782: !991
	lw  	fa0, 135(zero) !1238
	bne 	a3, zero, beq_else.126815 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.126816 !1239
beq_else.126815: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.126816: !1239
	bne 	a3, zero, beq_else.126817 !1239
	lw  	a2, 12(a2) !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.126818 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126818: !1255
	addi	a0, a0, 1 !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.126817: !1239
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
	sw  	a0, 4(sp) !1246
	addi	a0, zero, 0 !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 8 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -8 !1246
	bne 	a0, zero, beq_else.126819 !1246
	lw  	a0, 4(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.126819: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126779: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126698: !1239
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
	sw  	a0, 5(sp) !1246
	addi	a0, zero, 0 !1246
	sw  	a1, 2(sp) !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 8 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -8 !1246
	bne 	a0, zero, beq_else.126820 !1246
	lw  	a0, 5(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1233
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126821 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126821: !1233
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.126822 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126824 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126825 !924
beq_else.126824: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126826 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126827 !925
beq_else.126826: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126827: !925
beq_cont.126825: !924
	bne 	a5, zero, beq_else.126828 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126830 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126831 !933
beq_else.126830: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126832 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126833 !934
beq_else.126832: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126833: !934
beq_cont.126831: !933
	bne 	a5, zero, beq_else.126834 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126836 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126837 !942
beq_else.126836: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126838 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126839 !943
beq_else.126838: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126839: !943
beq_cont.126837: !942
	bne 	a3, zero, beq_else.126840 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126841 !941
beq_else.126840: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126841: !941
	jal 	zero, beq_cont.126835 !932
beq_else.126834: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126835: !932
	jal 	zero, beq_cont.126829 !923
beq_else.126828: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126829: !923
	jal 	zero, beq_cont.126823 !991
beq_else.126822: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126842 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.126844 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126845 !955
beq_else.126844: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126845: !955
	jal 	zero, beq_cont.126843 !993
beq_else.126842: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126846 !966
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
	bne 	a5, zero, beq_else.126848 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126849 !846
beq_else.126848: !846
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
beq_cont.126849: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126850 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126851 !971
beq_else.126850: !971
beq_cont.126851: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126852 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126853 !973
beq_else.126852: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.126854 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126855 !974
beq_else.126854: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126855: !974
	addi	a3, zero, 1 !978
beq_cont.126853: !973
	jal 	zero, beq_cont.126847 !966
beq_else.126846: !966
	addi	a3, zero, 0 !967
beq_cont.126847: !966
beq_cont.126843: !993
beq_cont.126823: !991
	lw  	fa0, 135(zero) !1238
	bne 	a3, zero, beq_else.126856 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.126857 !1239
beq_else.126856: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.126857: !1239
	bne 	a3, zero, beq_else.126858 !1239
	lw  	a2, 12(a2) !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.126859 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126859: !1255
	addi	a0, a0, 1 !1256
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126860 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126860: !1233
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.126861 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126863 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126864 !924
beq_else.126863: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126865 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126866 !925
beq_else.126865: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126866: !925
beq_cont.126864: !924
	bne 	a5, zero, beq_else.126867 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126869 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126870 !933
beq_else.126869: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126871 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126872 !934
beq_else.126871: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126872: !934
beq_cont.126870: !933
	bne 	a5, zero, beq_else.126873 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126875 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126876 !942
beq_else.126875: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126877 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126878 !943
beq_else.126877: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126878: !943
beq_cont.126876: !942
	bne 	a3, zero, beq_else.126879 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126880 !941
beq_else.126879: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126880: !941
	jal 	zero, beq_cont.126874 !932
beq_else.126873: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126874: !932
	jal 	zero, beq_cont.126868 !923
beq_else.126867: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126868: !923
	jal 	zero, beq_cont.126862 !991
beq_else.126861: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126881 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.126883 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126884 !955
beq_else.126883: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126884: !955
	jal 	zero, beq_cont.126882 !993
beq_else.126881: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126885 !966
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
	bne 	a5, zero, beq_else.126887 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126888 !846
beq_else.126887: !846
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
beq_cont.126888: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126889 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126890 !971
beq_else.126889: !971
beq_cont.126890: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126891 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126892 !973
beq_else.126891: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.126893 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126894 !974
beq_else.126893: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126894: !974
	addi	a3, zero, 1 !978
beq_cont.126892: !973
	jal 	zero, beq_cont.126886 !966
beq_else.126885: !966
	addi	a3, zero, 0 !967
beq_cont.126886: !966
beq_cont.126882: !993
beq_cont.126862: !991
	lw  	fa0, 135(zero) !1238
	bne 	a3, zero, beq_else.126895 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.126896 !1239
beq_else.126895: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.126896: !1239
	bne 	a3, zero, beq_else.126897 !1239
	lw  	a2, 12(a2) !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.126898 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126898: !1255
	addi	a0, a0, 1 !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.126897: !1239
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
	sw  	a0, 6(sp) !1246
	addi	a0, zero, 0 !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 8 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -8 !1246
	bne 	a0, zero, beq_else.126899 !1246
	lw  	a0, 6(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.126899: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126858: !1239
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
	sw  	a0, 7(sp) !1246
	addi	a0, zero, 0 !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 8 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -8 !1246
	bne 	a0, zero, beq_else.126900 !1246
	lw  	a0, 7(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1233
	lwr 	a2, a1, a0 !1233
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.126901 !1233
	addi	a0, zero, 0 !1234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126901: !1233
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.126902 !991
	lw  	fa3, 0(a4) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a4) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a3) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126904 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126905 !924
beq_else.126904: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126906 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126907 !925
beq_else.126906: !925
	lw  	fa4, 1(a4) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126907: !925
beq_cont.126905: !924
	bne 	a5, zero, beq_else.126908 !923
	lw  	fa3, 2(a4) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a4) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a3) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126910 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126911 !933
beq_else.126910: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a3) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126912 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126913 !934
beq_else.126912: !934
	lw  	fa4, 3(a4) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126913: !934
beq_cont.126911: !933
	bne 	a5, zero, beq_else.126914 !932
	lw  	fa3, 4(a4) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a4) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a3) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126916 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126917 !942
beq_else.126916: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a3, 4(a3) !308
	lw  	fa1, 1(a3) !313
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126918 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126919 !943
beq_else.126918: !943
	lw  	fa0, 5(a4) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126919: !943
beq_cont.126917: !942
	bne 	a3, zero, beq_else.126920 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126921 !941
beq_else.126920: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126921: !941
	jal 	zero, beq_cont.126915 !932
beq_else.126914: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126915: !932
	jal 	zero, beq_cont.126909 !923
beq_else.126908: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126909: !923
	jal 	zero, beq_cont.126903 !991
beq_else.126902: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126922 !993
	lw  	fa3, 0(a4) !955
	flt 	a3, fa3, zero !123
	bne 	a3, zero, beq_else.126924 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126925 !955
beq_else.126924: !955
	lw  	fa3, 1(a4) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a4) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a4) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126925: !955
	jal 	zero, beq_cont.126923 !993
beq_else.126922: !993
	lw  	fa3, 0(a4) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126926 !966
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
	bne 	a5, zero, beq_else.126928 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126929 !846
beq_else.126928: !846
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
beq_cont.126929: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126930 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126931 !971
beq_else.126930: !971
beq_cont.126931: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126932 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126933 !973
beq_else.126932: !973
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.126934 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a4) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126935 !974
beq_else.126934: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a4) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126935: !974
	addi	a3, zero, 1 !978
beq_cont.126933: !973
	jal 	zero, beq_cont.126927 !966
beq_else.126926: !966
	addi	a3, zero, 0 !967
beq_cont.126927: !966
beq_cont.126923: !993
beq_cont.126903: !991
	lw  	fa0, 135(zero) !1238
	bne 	a3, zero, beq_else.126936 !1239
	addi	a3, zero, 0 !1239
	jal 	zero, beq_cont.126937 !1239
beq_else.126936: !1239
	li  	fa1, -0.200000 !1239
	flt 	a3, fa0, fa1 !121
beq_cont.126937: !1239
	bne 	a3, zero, beq_else.126938 !1239
	lw  	a2, 12(a2) !1255
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.126939 !1255
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126939: !1255
	addi	a0, a0, 1 !1256
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1256
beq_else.126938: !1239
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
	sw  	a0, 8(sp) !1246
	addi	a0, zero, 0 !1246
	fsgnj   t0, fa2, fa2 !1246
	fsgnj   fa2, fa0, fa0 !1246
	fsgnj   fa0, fa1, fa1 !1246
	fsgnj   fa1, t0, t0 !1246
	addi	sp, sp, 12 !1246
	jal 	ra, check_all_inside.2689 !1246
	addi	sp, sp, -12 !1246
	bne 	a0, zero, beq_else.126940 !1246
	lw  	a0, 8(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 2(sp) !1249
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_and_group.2695 !1249
beq_else.126940: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126900: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126820: !1246
	addi	a0, zero, 1 !1247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_group.2698:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !1263
	lwr 	a0, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126941 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126941: !1264
	sw  	a1, 2(sp) !1267
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 4 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -4 !1268
	bne 	a0, zero, beq_else.126942 !1269
	lw  	a0, 1(sp) !1272
	addi	a0, a0, 1 !1272
	sw  	a0, 3(sp) !1263
	lw  	a1, 2(sp) !1263
	lwr 	a0, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126943 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126943: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 4 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -4 !1268
	bne 	a0, zero, beq_else.126944 !1269
	lw  	a0, 3(sp) !1272
	addi	a0, a0, 1 !1272
	sw  	a0, 4(sp) !1263
	lw  	a1, 2(sp) !1263
	lwr 	a0, a1, a0 !1263
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.126945 !1264
	addi	a0, zero, 0 !1265
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126945: !1264
	lw  	a1, 83(a0) !1267
	addi	a0, zero, 0 !1268
	addi	sp, sp, 8 !1268
	jal 	ra, shadow_check_and_group.2695 !1268
	addi	sp, sp, -8 !1268
	bne 	a0, zero, beq_else.126946 !1269
	lw  	a0, 4(sp) !1272
	addi	a0, a0, 1 !1272
	lw  	a1, 2(sp) !1272
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_group.2698 !1272
beq_else.126946: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126944: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126942: !1269
	addi	a0, zero, 1 !1270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_matrix.2701:
	sw  	ra, 0(sp)
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.126947 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126947: !1280
	sw  	a2, 1(sp) !1284
	sw  	a1, 2(sp) !1284
	sw  	a0, 3(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.126948 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.126949 !1284
beq_else.126948: !1284
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
	bne 	a5, t0, beq_else.126950 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126952 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126953 !924
beq_else.126952: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126954 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126955 !925
beq_else.126954: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126955: !925
beq_cont.126953: !924
	bne 	a5, zero, beq_else.126956 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126958 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.126959 !933
beq_else.126958: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126960 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.126961 !934
beq_else.126960: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.126961: !934
beq_cont.126959: !933
	bne 	a5, zero, beq_else.126962 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.126964 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.126965 !942
beq_else.126964: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.126966 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.126967 !943
beq_else.126966: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.126967: !943
beq_cont.126965: !942
	bne 	a3, zero, beq_else.126968 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.126969 !941
beq_else.126968: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.126969: !941
	jal 	zero, beq_cont.126963 !932
beq_else.126962: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.126963: !932
	jal 	zero, beq_cont.126957 !923
beq_else.126956: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.126957: !923
	jal 	zero, beq_cont.126951 !991
beq_else.126950: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.126970 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.126972 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.126973 !955
beq_else.126972: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.126973: !955
	jal 	zero, beq_cont.126971 !993
beq_else.126970: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.126974 !966
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
	bne 	a5, zero, beq_else.126976 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.126977 !846
beq_else.126976: !846
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
beq_cont.126977: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.126978 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.126979 !971
beq_else.126978: !971
beq_cont.126979: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.126980 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.126981 !973
beq_else.126980: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.126982 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.126983 !974
beq_else.126982: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.126983: !974
	addi	a3, zero, 1 !978
beq_cont.126981: !973
	jal 	zero, beq_cont.126975 !966
beq_else.126974: !966
	addi	a3, zero, 0 !967
beq_cont.126975: !966
beq_cont.126971: !993
beq_cont.126951: !991
	bne 	a3, zero, beq_else.126984 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.126985 !1290
beq_else.126984: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.126986 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.126987 !1291
beq_else.126986: !1291
	addi	a0, zero, 1 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 4 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -4 !1292
	bne 	a0, zero, beq_else.126988 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.126989 !1292
beq_else.126988: !1292
	addi	a0, zero, 1 !1293
beq_cont.126989: !1292
beq_cont.126987: !1291
beq_cont.126985: !1290
beq_cont.126949: !1284
	bne 	a0, zero, beq_else.126990 !1283
	lw  	a0, 3(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.126991 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126991: !1280
	sw  	a2, 4(sp) !1284
	sw  	a0, 5(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.126992 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.126993 !1284
beq_else.126992: !1284
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
	bne 	a5, t0, beq_else.126994 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126996 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.126997 !924
beq_else.126996: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.126998 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.126999 !925
beq_else.126998: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.126999: !925
beq_cont.126997: !924
	bne 	a5, zero, beq_else.127000 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127002 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.127003 !933
beq_else.127002: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127004 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.127005 !934
beq_else.127004: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.127005: !934
beq_cont.127003: !933
	bne 	a5, zero, beq_else.127006 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.127008 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.127009 !942
beq_else.127008: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127010 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.127011 !943
beq_else.127010: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.127011: !943
beq_cont.127009: !942
	bne 	a3, zero, beq_else.127012 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.127013 !941
beq_else.127012: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.127013: !941
	jal 	zero, beq_cont.127007 !932
beq_else.127006: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.127007: !932
	jal 	zero, beq_cont.127001 !923
beq_else.127000: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.127001: !923
	jal 	zero, beq_cont.126995 !991
beq_else.126994: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127014 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.127016 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.127017 !955
beq_else.127016: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.127017: !955
	jal 	zero, beq_cont.127015 !993
beq_else.127014: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127018 !966
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
	bne 	a5, zero, beq_else.127020 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127021 !846
beq_else.127020: !846
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
beq_cont.127021: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127022 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.127023 !971
beq_else.127022: !971
beq_cont.127023: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127024 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.127025 !973
beq_else.127024: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127026 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.127027 !974
beq_else.127026: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.127027: !974
	addi	a3, zero, 1 !978
beq_cont.127025: !973
	jal 	zero, beq_cont.127019 !966
beq_else.127018: !966
	addi	a3, zero, 0 !967
beq_cont.127019: !966
beq_cont.127015: !993
beq_cont.126995: !991
	bne 	a3, zero, beq_else.127028 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.127029 !1290
beq_else.127028: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127030 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.127031 !1291
beq_else.127030: !1291
	addi	a0, zero, 1 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 8 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -8 !1292
	bne 	a0, zero, beq_else.127032 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.127033 !1292
beq_else.127032: !1292
	addi	a0, zero, 1 !1293
beq_cont.127033: !1292
beq_cont.127031: !1291
beq_cont.127029: !1290
beq_cont.126993: !1284
	bne 	a0, zero, beq_else.127034 !1283
	lw  	a0, 5(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127035 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127035: !1280
	sw  	a2, 6(sp) !1284
	sw  	a0, 7(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.127036 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.127037 !1284
beq_else.127036: !1284
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
	bne 	a5, t0, beq_else.127038 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127040 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.127041 !924
beq_else.127040: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127042 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.127043 !925
beq_else.127042: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.127043: !925
beq_cont.127041: !924
	bne 	a5, zero, beq_else.127044 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127046 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.127047 !933
beq_else.127046: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127048 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.127049 !934
beq_else.127048: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.127049: !934
beq_cont.127047: !933
	bne 	a5, zero, beq_else.127050 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.127052 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.127053 !942
beq_else.127052: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127054 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.127055 !943
beq_else.127054: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.127055: !943
beq_cont.127053: !942
	bne 	a3, zero, beq_else.127056 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.127057 !941
beq_else.127056: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.127057: !941
	jal 	zero, beq_cont.127051 !932
beq_else.127050: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.127051: !932
	jal 	zero, beq_cont.127045 !923
beq_else.127044: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.127045: !923
	jal 	zero, beq_cont.127039 !991
beq_else.127038: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127058 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.127060 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.127061 !955
beq_else.127060: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.127061: !955
	jal 	zero, beq_cont.127059 !993
beq_else.127058: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127062 !966
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
	bne 	a5, zero, beq_else.127064 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127065 !846
beq_else.127064: !846
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
beq_cont.127065: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127066 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.127067 !971
beq_else.127066: !971
beq_cont.127067: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127068 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.127069 !973
beq_else.127068: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127070 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.127071 !974
beq_else.127070: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.127071: !974
	addi	a3, zero, 1 !978
beq_cont.127069: !973
	jal 	zero, beq_cont.127063 !966
beq_else.127062: !966
	addi	a3, zero, 0 !967
beq_cont.127063: !966
beq_cont.127059: !993
beq_cont.127039: !991
	bne 	a3, zero, beq_else.127072 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.127073 !1290
beq_else.127072: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127074 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.127075 !1291
beq_else.127074: !1291
	addi	a0, zero, 1 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 8 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -8 !1292
	bne 	a0, zero, beq_else.127076 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.127077 !1292
beq_else.127076: !1292
	addi	a0, zero, 1 !1293
beq_cont.127077: !1292
beq_cont.127075: !1291
beq_cont.127073: !1290
beq_cont.127037: !1284
	bne 	a0, zero, beq_else.127078 !1283
	lw  	a0, 7(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.127078: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 6(sp) !1298
	addi	sp, sp, 8 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -8 !1298
	bne 	a0, zero, beq_else.127079 !1298
	lw  	a0, 7(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.127079: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127034: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 4(sp) !1298
	addi	sp, sp, 8 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -8 !1298
	bne 	a0, zero, beq_else.127080 !1298
	lw  	a0, 5(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127081 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127081: !1280
	sw  	a2, 8(sp) !1284
	sw  	a0, 9(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.127082 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.127083 !1284
beq_else.127082: !1284
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
	bne 	a5, t0, beq_else.127084 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127086 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.127087 !924
beq_else.127086: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127088 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.127089 !925
beq_else.127088: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.127089: !925
beq_cont.127087: !924
	bne 	a5, zero, beq_else.127090 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127092 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.127093 !933
beq_else.127092: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127094 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.127095 !934
beq_else.127094: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.127095: !934
beq_cont.127093: !933
	bne 	a5, zero, beq_else.127096 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.127098 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.127099 !942
beq_else.127098: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127100 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.127101 !943
beq_else.127100: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.127101: !943
beq_cont.127099: !942
	bne 	a3, zero, beq_else.127102 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.127103 !941
beq_else.127102: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.127103: !941
	jal 	zero, beq_cont.127097 !932
beq_else.127096: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.127097: !932
	jal 	zero, beq_cont.127091 !923
beq_else.127090: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.127091: !923
	jal 	zero, beq_cont.127085 !991
beq_else.127084: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127104 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.127106 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.127107 !955
beq_else.127106: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.127107: !955
	jal 	zero, beq_cont.127105 !993
beq_else.127104: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127108 !966
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
	bne 	a5, zero, beq_else.127110 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127111 !846
beq_else.127110: !846
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
beq_cont.127111: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127112 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.127113 !971
beq_else.127112: !971
beq_cont.127113: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127114 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.127115 !973
beq_else.127114: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127116 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.127117 !974
beq_else.127116: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.127117: !974
	addi	a3, zero, 1 !978
beq_cont.127115: !973
	jal 	zero, beq_cont.127109 !966
beq_else.127108: !966
	addi	a3, zero, 0 !967
beq_cont.127109: !966
beq_cont.127105: !993
beq_cont.127085: !991
	bne 	a3, zero, beq_else.127118 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.127119 !1290
beq_else.127118: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127120 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.127121 !1291
beq_else.127120: !1291
	addi	a0, zero, 1 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 12 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -12 !1292
	bne 	a0, zero, beq_else.127122 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.127123 !1292
beq_else.127122: !1292
	addi	a0, zero, 1 !1293
beq_cont.127123: !1292
beq_cont.127121: !1291
beq_cont.127119: !1290
beq_cont.127083: !1284
	bne 	a0, zero, beq_else.127124 !1283
	lw  	a0, 9(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.127124: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 8(sp) !1298
	addi	sp, sp, 12 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -12 !1298
	bne 	a0, zero, beq_else.127125 !1298
	lw  	a0, 9(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.127125: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127080: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.126990: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 1(sp) !1298
	addi	sp, sp, 12 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -12 !1298
	bne 	a0, zero, beq_else.127126 !1298
	lw  	a0, 3(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127127 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127127: !1280
	sw  	a2, 10(sp) !1284
	sw  	a0, 11(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.127128 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.127129 !1284
beq_else.127128: !1284
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
	bne 	a5, t0, beq_else.127130 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127132 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.127133 !924
beq_else.127132: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127134 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.127135 !925
beq_else.127134: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.127135: !925
beq_cont.127133: !924
	bne 	a5, zero, beq_else.127136 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127138 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.127139 !933
beq_else.127138: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127140 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.127141 !934
beq_else.127140: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.127141: !934
beq_cont.127139: !933
	bne 	a5, zero, beq_else.127142 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.127144 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.127145 !942
beq_else.127144: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127146 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.127147 !943
beq_else.127146: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.127147: !943
beq_cont.127145: !942
	bne 	a3, zero, beq_else.127148 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.127149 !941
beq_else.127148: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.127149: !941
	jal 	zero, beq_cont.127143 !932
beq_else.127142: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.127143: !932
	jal 	zero, beq_cont.127137 !923
beq_else.127136: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.127137: !923
	jal 	zero, beq_cont.127131 !991
beq_else.127130: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127150 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.127152 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.127153 !955
beq_else.127152: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.127153: !955
	jal 	zero, beq_cont.127151 !993
beq_else.127150: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127154 !966
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
	bne 	a5, zero, beq_else.127156 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127157 !846
beq_else.127156: !846
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
beq_cont.127157: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127158 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.127159 !971
beq_else.127158: !971
beq_cont.127159: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127160 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.127161 !973
beq_else.127160: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127162 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.127163 !974
beq_else.127162: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.127163: !974
	addi	a3, zero, 1 !978
beq_cont.127161: !973
	jal 	zero, beq_cont.127155 !966
beq_else.127154: !966
	addi	a3, zero, 0 !967
beq_cont.127155: !966
beq_cont.127151: !993
beq_cont.127131: !991
	bne 	a3, zero, beq_else.127164 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.127165 !1290
beq_else.127164: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127166 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.127167 !1291
beq_else.127166: !1291
	addi	a0, zero, 1 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 12 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -12 !1292
	bne 	a0, zero, beq_else.127168 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.127169 !1292
beq_else.127168: !1292
	addi	a0, zero, 1 !1293
beq_cont.127169: !1292
beq_cont.127167: !1291
beq_cont.127165: !1290
beq_cont.127129: !1284
	bne 	a0, zero, beq_else.127170 !1283
	lw  	a0, 11(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127171 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127171: !1280
	sw  	a2, 12(sp) !1284
	sw  	a0, 13(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.127172 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.127173 !1284
beq_else.127172: !1284
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
	bne 	a5, t0, beq_else.127174 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127176 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.127177 !924
beq_else.127176: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127178 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.127179 !925
beq_else.127178: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.127179: !925
beq_cont.127177: !924
	bne 	a5, zero, beq_else.127180 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127182 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.127183 !933
beq_else.127182: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127184 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.127185 !934
beq_else.127184: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.127185: !934
beq_cont.127183: !933
	bne 	a5, zero, beq_else.127186 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.127188 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.127189 !942
beq_else.127188: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127190 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.127191 !943
beq_else.127190: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.127191: !943
beq_cont.127189: !942
	bne 	a3, zero, beq_else.127192 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.127193 !941
beq_else.127192: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.127193: !941
	jal 	zero, beq_cont.127187 !932
beq_else.127186: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.127187: !932
	jal 	zero, beq_cont.127181 !923
beq_else.127180: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.127181: !923
	jal 	zero, beq_cont.127175 !991
beq_else.127174: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127194 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.127196 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.127197 !955
beq_else.127196: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.127197: !955
	jal 	zero, beq_cont.127195 !993
beq_else.127194: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127198 !966
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
	bne 	a5, zero, beq_else.127200 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127201 !846
beq_else.127200: !846
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
beq_cont.127201: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127202 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.127203 !971
beq_else.127202: !971
beq_cont.127203: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127204 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.127205 !973
beq_else.127204: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127206 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.127207 !974
beq_else.127206: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.127207: !974
	addi	a3, zero, 1 !978
beq_cont.127205: !973
	jal 	zero, beq_cont.127199 !966
beq_else.127198: !966
	addi	a3, zero, 0 !967
beq_cont.127199: !966
beq_cont.127195: !993
beq_cont.127175: !991
	bne 	a3, zero, beq_else.127208 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.127209 !1290
beq_else.127208: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127210 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.127211 !1291
beq_else.127210: !1291
	addi	a0, zero, 1 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 16 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -16 !1292
	bne 	a0, zero, beq_else.127212 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.127213 !1292
beq_else.127212: !1292
	addi	a0, zero, 1 !1293
beq_cont.127213: !1292
beq_cont.127211: !1291
beq_cont.127209: !1290
beq_cont.127173: !1284
	bne 	a0, zero, beq_else.127214 !1283
	lw  	a0, 13(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.127214: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 12(sp) !1298
	addi	sp, sp, 16 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -16 !1298
	bne 	a0, zero, beq_else.127215 !1298
	lw  	a0, 13(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.127215: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127170: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 10(sp) !1298
	addi	sp, sp, 16 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -16 !1298
	bne 	a0, zero, beq_else.127216 !1298
	lw  	a0, 11(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1278
	lwr 	a2, a1, a0 !1278
	lw  	a3, 0(a2) !1279
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127217 !1280
	addi	a0, zero, 0 !1281
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127217: !1280
	sw  	a2, 14(sp) !1284
	sw  	a0, 15(sp) !1284
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.127218 !1284
	addi	a0, zero, 1 !1285
	jal 	zero, beq_cont.127219 !1284
beq_else.127218: !1284
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
	bne 	a5, t0, beq_else.127220 !991
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 185(zero) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a5, 4(a4) !308
	lw  	fa5, 1(a5) !313
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127222 !924
	addi	a5, zero, 0 !928
	jal 	zero, beq_cont.127223 !924
beq_else.127222: !924
	lw  	fa4, 186(zero) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127224 !925
	addi	a5, zero, 0 !927
	jal 	zero, beq_cont.127225 !925
beq_else.127224: !925
	lw  	fa4, 1(a3) !926
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !926
	addi	a5, t0, 1 !926
beq_cont.127225: !925
beq_cont.127223: !924
	bne 	a5, zero, beq_else.127226 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 184(zero) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a5, 4(a4) !298
	lw  	fa5, 0(a5) !303
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127228 !933
	addi	a5, zero, 0 !937
	jal 	zero, beq_cont.127229 !933
beq_else.127228: !933
	lw  	fa4, 186(zero) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a5, 4(a4) !318
	lw  	fa5, 2(a5) !323
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127230 !934
	addi	a5, zero, 0 !936
	jal 	zero, beq_cont.127231 !934
beq_else.127230: !934
	lw  	fa4, 3(a3) !935
	feq 	a5, fa4, zero !124
	sub 	t0, zero, a5 !935
	addi	a5, t0, 1 !935
beq_cont.127231: !934
beq_cont.127229: !933
	bne 	a5, zero, beq_else.127232 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 184(zero) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a5, 4(a4) !298
	lw  	fa3, 0(a5) !303
	flt 	a5, fa0, fa3 !121
	bne 	a5, zero, beq_else.127234 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.127235 !942
beq_else.127234: !942
	lw  	fa0, 185(zero) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127236 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.127237 !943
beq_else.127236: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.127237: !943
beq_cont.127235: !942
	bne 	a3, zero, beq_else.127238 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.127239 !941
beq_else.127238: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.127239: !941
	jal 	zero, beq_cont.127233 !932
beq_else.127232: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.127233: !932
	jal 	zero, beq_cont.127227 !923
beq_else.127226: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.127227: !923
	jal 	zero, beq_cont.127221 !991
beq_else.127220: !991
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127240 !993
	lw  	fa3, 0(a3) !955
	flt 	a4, fa3, zero !123
	bne 	a4, zero, beq_else.127242 !955
	addi	a3, zero, 0 !959
	jal 	zero, beq_cont.127243 !955
beq_else.127242: !955
	lw  	fa3, 1(a3) !957
	fmul	fa0, fa3, fa0 !957
	lw  	fa3, 2(a3) !957
	fmul	fa1, fa3, fa1 !957
	fadd	fa0, fa0, fa1 !957
	lw  	fa1, 3(a3) !957
	fmul	fa1, fa1, fa2 !957
	fadd	fa0, fa0, fa1 !957
	sw  	fa0, 135(zero) !956
	addi	a3, zero, 1 !958
beq_cont.127243: !955
	jal 	zero, beq_cont.127241 !993
beq_else.127240: !993
	lw  	fa3, 0(a3) !965
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127244 !966
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
	bne 	a5, zero, beq_else.127246 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127247 !846
beq_else.127246: !846
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
beq_cont.127247: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127248 !971
	li  	fa1, 1.000000 !971
	fsub	fa0, fa0, fa1 !971
	jal 	zero, beq_cont.127249 !971
beq_else.127248: !971
beq_cont.127249: !971
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !972
	fsub	fa0, fa1, fa0 !972
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127250 !973
	addi	a3, zero, 0 !979
	jal 	zero, beq_cont.127251 !973
beq_else.127250: !973
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127252 !974
	fsqrt   fa0, fa0 !977
	fsub	fa0, fa4, fa0 !977
	lw  	fa1, 4(a3) !977
	fmul	fa0, fa0, fa1 !977
	sw  	fa0, 135(zero) !977
	jal 	zero, beq_cont.127253 !974
beq_else.127252: !974
	fsqrt   fa0, fa0 !975
	fadd	fa0, fa4, fa0 !975
	lw  	fa1, 4(a3) !975
	fmul	fa0, fa0, fa1 !975
	sw  	fa0, 135(zero) !975
beq_cont.127253: !974
	addi	a3, zero, 1 !978
beq_cont.127251: !973
	jal 	zero, beq_cont.127245 !966
beq_else.127244: !966
	addi	a3, zero, 0 !967
beq_cont.127245: !966
beq_cont.127241: !993
beq_cont.127221: !991
	bne 	a3, zero, beq_else.127254 !1290
	addi	a0, zero, 0 !1296
	jal 	zero, beq_cont.127255 !1290
beq_else.127254: !1290
	lw  	fa0, 135(zero) !1291
	li  	fa1, -0.100000 !1291
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127256 !1291
	addi	a0, zero, 0 !1295
	jal 	zero, beq_cont.127257 !1291
beq_else.127256: !1291
	addi	a0, zero, 1 !1292
	addi	a1, a2, 0 !1292
	addi	sp, sp, 16 !1292
	jal 	ra, shadow_check_one_or_group.2698 !1292
	addi	sp, sp, -16 !1292
	bne 	a0, zero, beq_else.127258 !1292
	addi	a0, zero, 0 !1294
	jal 	zero, beq_cont.127259 !1292
beq_else.127258: !1292
	addi	a0, zero, 1 !1293
beq_cont.127259: !1292
beq_cont.127257: !1291
beq_cont.127255: !1290
beq_cont.127219: !1284
	bne 	a0, zero, beq_else.127260 !1283
	lw  	a0, 15(sp) !1303
	addi	a0, a0, 1 !1303
	lw  	a1, 2(sp) !1303
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1303
beq_else.127260: !1283
	addi	a0, zero, 1 !1298
	lw  	a1, 14(sp) !1298
	addi	sp, sp, 16 !1298
	jal 	ra, shadow_check_one_or_group.2698 !1298
	addi	sp, sp, -16 !1298
	bne 	a0, zero, beq_else.127261 !1298
	lw  	a0, 15(sp) !1301
	addi	a0, a0, 1 !1301
	lw  	a1, 2(sp) !1301
	lw  	ra, 0(sp)
	jal 	zero, shadow_check_one_or_matrix.2701 !1301
beq_else.127261: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127216: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127126: !1298
	addi	a0, zero, 1 !1299
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_each_element.2704:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127262 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127262: !1313
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.127264 !912
	lw  	fa3, 0(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127266 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 0(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127268 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127269 !141
beq_else.127268: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127269: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127270 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127271 !154
beq_else.127270: !154
beq_cont.127271: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127272 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127273 !810
beq_else.127272: !810
	lw  	fa4, 2(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127274 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127275 !811
beq_else.127274: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127275: !811
beq_cont.127273: !810
	jal 	zero, beq_cont.127267 !805
beq_else.127266: !805
	addi	a5, zero, 0 !805
beq_cont.127267: !805
	bne 	a5, zero, beq_else.127276 !820
	lw  	fa3, 1(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127278 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 1(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127280 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127281 !141
beq_else.127280: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127281: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127282 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127283 !154
beq_else.127282: !154
beq_cont.127283: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127284 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127285 !810
beq_else.127284: !810
	lw  	fa4, 0(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127286 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127287 !811
beq_else.127286: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127287: !811
beq_cont.127285: !810
	jal 	zero, beq_cont.127279 !805
beq_else.127278: !805
	addi	a5, zero, 0 !805
beq_cont.127279: !805
	bne 	a5, zero, beq_else.127288 !821
	lw  	fa3, 2(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127290 !805
	lw  	a5, 4(a4) !328
	lw  	a4, 6(a4) !280
	lw  	fa3, 2(a2) !807
	flt 	a6, fa3, zero !123
	bne 	a4, zero, beq_else.127292 !141
	addi	a4, a6, 0 !141
	jal 	zero, beq_cont.127293 !141
beq_else.127292: !141
	sub 	t0, zero, a6 !141
	addi	a4, t0, 1 !141
beq_cont.127293: !141
	lw  	fa3, 2(a5) !807
	bne 	a4, zero, beq_else.127294 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127295 !154
beq_else.127294: !154
beq_cont.127295: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a2) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a2) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a4, fa0, fa3 !121
	bne 	a4, zero, beq_else.127296 !810
	addi	a4, zero, 0 !814
	jal 	zero, beq_cont.127297 !810
beq_else.127296: !810
	lw  	fa0, 1(a2) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127298 !811
	addi	a4, zero, 0 !813
	jal 	zero, beq_cont.127299 !811
beq_else.127298: !811
	sw  	fa2, 135(zero) !812
	addi	a4, zero, 1 !812
beq_cont.127299: !811
beq_cont.127297: !810
	jal 	zero, beq_cont.127291 !805
beq_else.127290: !805
	addi	a4, zero, 0 !805
beq_cont.127291: !805
	bne 	a4, zero, beq_else.127300 !822
	addi	a4, zero, 0 !823
	jal 	zero, beq_cont.127301 !822
beq_else.127300: !822
	addi	a4, zero, 3 !822
beq_cont.127301: !822
	jal 	zero, beq_cont.127289 !821
beq_else.127288: !821
	addi	a4, zero, 2 !821
beq_cont.127289: !821
	jal 	zero, beq_cont.127277 !820
beq_else.127276: !820
	addi	a4, zero, 1 !820
beq_cont.127277: !820
	jal 	zero, beq_cont.127265 !912
beq_else.127264: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127302 !913
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
	bne 	a5, zero, beq_else.127304 !833
	addi	a4, zero, 0 !836
	jal 	zero, beq_cont.127305 !833
beq_else.127304: !833
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
	addi	a4, zero, 1 !835
beq_cont.127305: !833
	jal 	zero, beq_cont.127303 !913
beq_else.127302: !913
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
	bne 	a5, zero, beq_else.127306 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127307 !846
beq_else.127306: !846
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
beq_cont.127307: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127308 !881
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
	bne 	a5, zero, beq_else.127310 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127311 !862
beq_else.127310: !862
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
beq_cont.127311: !862
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
	bne 	a5, zero, beq_else.127312 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127313 !846
beq_else.127312: !846
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
beq_cont.127313: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127314 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127315 !889
beq_else.127314: !889
beq_cont.127315: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127316 !893
	addi	a4, zero, 0 !899
	jal 	zero, beq_cont.127317 !893
beq_else.127316: !893
	fsqrt   fa0, fa0 !894
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127318 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127319 !895
beq_else.127318: !895
beq_cont.127319: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a4, zero, 1 !896
beq_cont.127317: !893
	jal 	zero, beq_cont.127309 !881
beq_else.127308: !881
	addi	a4, zero, 0 !882
beq_cont.127309: !881
beq_cont.127303: !913
beq_cont.127265: !912
	bne 	a4, zero, beq_else.127320 !1316
	lw  	a3, 12(a3) !1344
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127321 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127321: !1344
	addi	a0, a0, 1 !1345
	lwr 	a3, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127323 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127323: !1313
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.127325 !912
	lw  	fa3, 0(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127327 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 0(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127329 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127330 !141
beq_else.127329: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127330: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127331 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127332 !154
beq_else.127331: !154
beq_cont.127332: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127333 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127334 !810
beq_else.127333: !810
	lw  	fa4, 2(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127335 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127336 !811
beq_else.127335: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127336: !811
beq_cont.127334: !810
	jal 	zero, beq_cont.127328 !805
beq_else.127327: !805
	addi	a5, zero, 0 !805
beq_cont.127328: !805
	bne 	a5, zero, beq_else.127337 !820
	lw  	fa3, 1(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127339 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 1(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127341 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127342 !141
beq_else.127341: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127342: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127343 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127344 !154
beq_else.127343: !154
beq_cont.127344: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127345 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127346 !810
beq_else.127345: !810
	lw  	fa4, 0(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127347 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127348 !811
beq_else.127347: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127348: !811
beq_cont.127346: !810
	jal 	zero, beq_cont.127340 !805
beq_else.127339: !805
	addi	a5, zero, 0 !805
beq_cont.127340: !805
	bne 	a5, zero, beq_else.127349 !821
	lw  	fa3, 2(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127351 !805
	lw  	a5, 4(a4) !328
	lw  	a4, 6(a4) !280
	lw  	fa3, 2(a2) !807
	flt 	a6, fa3, zero !123
	bne 	a4, zero, beq_else.127353 !141
	addi	a4, a6, 0 !141
	jal 	zero, beq_cont.127354 !141
beq_else.127353: !141
	sub 	t0, zero, a6 !141
	addi	a4, t0, 1 !141
beq_cont.127354: !141
	lw  	fa3, 2(a5) !807
	bne 	a4, zero, beq_else.127355 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127356 !154
beq_else.127355: !154
beq_cont.127356: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a2) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a2) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a4, fa0, fa3 !121
	bne 	a4, zero, beq_else.127357 !810
	addi	a4, zero, 0 !814
	jal 	zero, beq_cont.127358 !810
beq_else.127357: !810
	lw  	fa0, 1(a2) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127359 !811
	addi	a4, zero, 0 !813
	jal 	zero, beq_cont.127360 !811
beq_else.127359: !811
	sw  	fa2, 135(zero) !812
	addi	a4, zero, 1 !812
beq_cont.127360: !811
beq_cont.127358: !810
	jal 	zero, beq_cont.127352 !805
beq_else.127351: !805
	addi	a4, zero, 0 !805
beq_cont.127352: !805
	bne 	a4, zero, beq_else.127361 !822
	addi	a4, zero, 0 !823
	jal 	zero, beq_cont.127362 !822
beq_else.127361: !822
	addi	a4, zero, 3 !822
beq_cont.127362: !822
	jal 	zero, beq_cont.127350 !821
beq_else.127349: !821
	addi	a4, zero, 2 !821
beq_cont.127350: !821
	jal 	zero, beq_cont.127338 !820
beq_else.127337: !820
	addi	a4, zero, 1 !820
beq_cont.127338: !820
	jal 	zero, beq_cont.127326 !912
beq_else.127325: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127363 !913
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
	bne 	a5, zero, beq_else.127365 !833
	addi	a4, zero, 0 !836
	jal 	zero, beq_cont.127366 !833
beq_else.127365: !833
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
	addi	a4, zero, 1 !835
beq_cont.127366: !833
	jal 	zero, beq_cont.127364 !913
beq_else.127363: !913
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
	bne 	a5, zero, beq_else.127367 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127368 !846
beq_else.127367: !846
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
beq_cont.127368: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127369 !881
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
	bne 	a5, zero, beq_else.127371 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127372 !862
beq_else.127371: !862
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
beq_cont.127372: !862
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
	bne 	a5, zero, beq_else.127373 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127374 !846
beq_else.127373: !846
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
beq_cont.127374: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127375 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127376 !889
beq_else.127375: !889
beq_cont.127376: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127377 !893
	addi	a4, zero, 0 !899
	jal 	zero, beq_cont.127378 !893
beq_else.127377: !893
	fsqrt   fa0, fa0 !894
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127379 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127380 !895
beq_else.127379: !895
beq_cont.127380: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a4, zero, 1 !896
beq_cont.127378: !893
	jal 	zero, beq_cont.127370 !881
beq_else.127369: !881
	addi	a4, zero, 0 !882
beq_cont.127370: !881
beq_cont.127364: !913
beq_cont.127326: !912
	bne 	a4, zero, beq_else.127381 !1316
	lw  	a3, 12(a3) !1344
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127382 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127382: !1344
	addi	a0, a0, 1 !1345
	lwr 	a3, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127384 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127384: !1313
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.127386 !912
	lw  	fa3, 0(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127388 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 0(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127390 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127391 !141
beq_else.127390: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127391: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127392 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127393 !154
beq_else.127392: !154
beq_cont.127393: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127394 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127395 !810
beq_else.127394: !810
	lw  	fa4, 2(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127396 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127397 !811
beq_else.127396: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127397: !811
beq_cont.127395: !810
	jal 	zero, beq_cont.127389 !805
beq_else.127388: !805
	addi	a5, zero, 0 !805
beq_cont.127389: !805
	bne 	a5, zero, beq_else.127398 !820
	lw  	fa3, 1(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127400 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 1(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127402 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127403 !141
beq_else.127402: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127403: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127404 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127405 !154
beq_else.127404: !154
beq_cont.127405: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127406 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127407 !810
beq_else.127406: !810
	lw  	fa4, 0(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127408 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127409 !811
beq_else.127408: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127409: !811
beq_cont.127407: !810
	jal 	zero, beq_cont.127401 !805
beq_else.127400: !805
	addi	a5, zero, 0 !805
beq_cont.127401: !805
	bne 	a5, zero, beq_else.127410 !821
	lw  	fa3, 2(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127412 !805
	lw  	a5, 4(a4) !328
	lw  	a4, 6(a4) !280
	lw  	fa3, 2(a2) !807
	flt 	a6, fa3, zero !123
	bne 	a4, zero, beq_else.127414 !141
	addi	a4, a6, 0 !141
	jal 	zero, beq_cont.127415 !141
beq_else.127414: !141
	sub 	t0, zero, a6 !141
	addi	a4, t0, 1 !141
beq_cont.127415: !141
	lw  	fa3, 2(a5) !807
	bne 	a4, zero, beq_else.127416 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127417 !154
beq_else.127416: !154
beq_cont.127417: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a2) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a2) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a4, fa0, fa3 !121
	bne 	a4, zero, beq_else.127418 !810
	addi	a4, zero, 0 !814
	jal 	zero, beq_cont.127419 !810
beq_else.127418: !810
	lw  	fa0, 1(a2) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127420 !811
	addi	a4, zero, 0 !813
	jal 	zero, beq_cont.127421 !811
beq_else.127420: !811
	sw  	fa2, 135(zero) !812
	addi	a4, zero, 1 !812
beq_cont.127421: !811
beq_cont.127419: !810
	jal 	zero, beq_cont.127413 !805
beq_else.127412: !805
	addi	a4, zero, 0 !805
beq_cont.127413: !805
	bne 	a4, zero, beq_else.127422 !822
	addi	a4, zero, 0 !823
	jal 	zero, beq_cont.127423 !822
beq_else.127422: !822
	addi	a4, zero, 3 !822
beq_cont.127423: !822
	jal 	zero, beq_cont.127411 !821
beq_else.127410: !821
	addi	a4, zero, 2 !821
beq_cont.127411: !821
	jal 	zero, beq_cont.127399 !820
beq_else.127398: !820
	addi	a4, zero, 1 !820
beq_cont.127399: !820
	jal 	zero, beq_cont.127387 !912
beq_else.127386: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127424 !913
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
	bne 	a5, zero, beq_else.127426 !833
	addi	a4, zero, 0 !836
	jal 	zero, beq_cont.127427 !833
beq_else.127426: !833
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
	addi	a4, zero, 1 !835
beq_cont.127427: !833
	jal 	zero, beq_cont.127425 !913
beq_else.127424: !913
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
	bne 	a5, zero, beq_else.127428 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127429 !846
beq_else.127428: !846
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
beq_cont.127429: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127430 !881
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
	bne 	a5, zero, beq_else.127432 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127433 !862
beq_else.127432: !862
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
beq_cont.127433: !862
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
	bne 	a5, zero, beq_else.127434 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127435 !846
beq_else.127434: !846
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
beq_cont.127435: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127436 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127437 !889
beq_else.127436: !889
beq_cont.127437: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127438 !893
	addi	a4, zero, 0 !899
	jal 	zero, beq_cont.127439 !893
beq_else.127438: !893
	fsqrt   fa0, fa0 !894
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127440 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127441 !895
beq_else.127440: !895
beq_cont.127441: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a4, zero, 1 !896
beq_cont.127439: !893
	jal 	zero, beq_cont.127431 !881
beq_else.127430: !881
	addi	a4, zero, 0 !882
beq_cont.127431: !881
beq_cont.127425: !913
beq_cont.127387: !912
	bne 	a4, zero, beq_else.127442 !1316
	lw  	a3, 12(a3) !1344
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127443 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127443: !1344
	addi	a0, a0, 1 !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.127442: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a3, 1(sp) !121
	flt 	a3, zero, fa0 !121
	sw  	a2, 2(sp) !1322
	sw  	a1, 3(sp) !1322
	sw  	a0, 4(sp) !1322
	beq 	a3, zero, beq_cont.127446 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a3, fa0, fa1 !121
	beq 	a3, zero, beq_cont.127448 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a2) !1328
	sw  	fa0, 5(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	sw  	a4, 6(sp) !1329
	sw  	fa0, 7(sp) !1329
	sw  	fa2, 8(sp) !1329
	sw  	fa1, 9(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 12 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -12 !1329
	beq 	a0, zero, beq_cont.127450 !1329
	lw  	a0, 5(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 9(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 8(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 7(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 1(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 6(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.127450: !1329
beq_cont.127448: !1323
beq_cont.127446: !1322
	lw  	a0, 4(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1340
	lw  	a2, 2(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
beq_else.127381: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a3, 10(sp) !121
	flt 	a3, zero, fa0 !121
	sw  	a2, 2(sp) !1322
	sw  	a1, 3(sp) !1322
	sw  	a0, 11(sp) !1322
	beq 	a3, zero, beq_cont.127452 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a3, fa0, fa1 !121
	beq 	a3, zero, beq_cont.127454 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a2) !1328
	sw  	fa0, 12(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	sw  	a4, 13(sp) !1329
	sw  	fa0, 14(sp) !1329
	sw  	fa2, 15(sp) !1329
	sw  	fa1, 16(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 20 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -20 !1329
	beq 	a0, zero, beq_cont.127456 !1329
	lw  	a0, 12(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 16(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 15(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 14(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 10(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 13(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.127456: !1329
beq_cont.127454: !1323
beq_cont.127452: !1322
	lw  	a0, 11(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1312
	lwr 	a2, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.127457 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127457: !1313
	lw  	a3, 12(a2) !905
	lw  	fa0, 159(zero) !907
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a4, 5(a3) !358
	lw  	fa3, 2(a4) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.127459 !912
	lw  	a4, 2(sp) !805
	lw  	fa3, 0(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127461 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 0(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127463 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127464 !141
beq_else.127463: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127464: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127465 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127466 !154
beq_else.127465: !154
beq_cont.127466: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127467 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127468 !810
beq_else.127467: !810
	lw  	fa4, 2(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127469 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127470 !811
beq_else.127469: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127470: !811
beq_cont.127468: !810
	jal 	zero, beq_cont.127462 !805
beq_else.127461: !805
	addi	a5, zero, 0 !805
beq_cont.127462: !805
	bne 	a5, zero, beq_else.127471 !820
	lw  	fa3, 1(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127473 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 1(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127475 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127476 !141
beq_else.127475: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127476: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127477 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127478 !154
beq_else.127477: !154
beq_cont.127478: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127479 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127480 !810
beq_else.127479: !810
	lw  	fa4, 0(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127481 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127482 !811
beq_else.127481: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127482: !811
beq_cont.127480: !810
	jal 	zero, beq_cont.127474 !805
beq_else.127473: !805
	addi	a5, zero, 0 !805
beq_cont.127474: !805
	bne 	a5, zero, beq_else.127483 !821
	lw  	fa3, 2(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127485 !805
	lw  	a5, 4(a3) !328
	lw  	a3, 6(a3) !280
	lw  	fa3, 2(a4) !807
	flt 	a6, fa3, zero !123
	bne 	a3, zero, beq_else.127487 !141
	addi	a3, a6, 0 !141
	jal 	zero, beq_cont.127488 !141
beq_else.127487: !141
	sub 	t0, zero, a6 !141
	addi	a3, t0, 1 !141
beq_cont.127488: !141
	lw  	fa3, 2(a5) !807
	bne 	a3, zero, beq_else.127489 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127490 !154
beq_else.127489: !154
beq_cont.127490: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a4) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a4) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a3, fa0, fa3 !121
	bne 	a3, zero, beq_else.127491 !810
	addi	a3, zero, 0 !814
	jal 	zero, beq_cont.127492 !810
beq_else.127491: !810
	lw  	fa0, 1(a4) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127493 !811
	addi	a3, zero, 0 !813
	jal 	zero, beq_cont.127494 !811
beq_else.127493: !811
	sw  	fa2, 135(zero) !812
	addi	a3, zero, 1 !812
beq_cont.127494: !811
beq_cont.127492: !810
	jal 	zero, beq_cont.127486 !805
beq_else.127485: !805
	addi	a3, zero, 0 !805
beq_cont.127486: !805
	bne 	a3, zero, beq_else.127495 !822
	addi	a3, zero, 0 !823
	jal 	zero, beq_cont.127496 !822
beq_else.127495: !822
	addi	a3, zero, 3 !822
beq_cont.127496: !822
	jal 	zero, beq_cont.127484 !821
beq_else.127483: !821
	addi	a3, zero, 2 !821
beq_cont.127484: !821
	jal 	zero, beq_cont.127472 !820
beq_else.127471: !820
	addi	a3, zero, 1 !820
beq_cont.127472: !820
	jal 	zero, beq_cont.127460 !912
beq_else.127459: !912
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.127497 !913
	lw  	a3, 4(a3) !328
	lw  	a4, 2(sp) !208
	lw  	fa3, 0(a4) !208
	lw  	fa4, 0(a3) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a4) !208
	lw  	fa5, 1(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a4) !208
	lw  	fa5, 2(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.127499 !833
	addi	a3, zero, 0 !836
	jal 	zero, beq_cont.127500 !833
beq_else.127499: !833
	lw  	fa4, 0(a3) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a3) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a3) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a3, zero, 1 !835
beq_cont.127500: !833
	jal 	zero, beq_cont.127498 !913
beq_else.127497: !913
	lw  	a4, 2(sp) !879
	lw  	fa3, 0(a4) !879
	lw  	fa4, 1(a4) !879
	lw  	fa5, 2(a4) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a3) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a3) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a3) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127501 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127502 !846
beq_else.127501: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a3) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a3) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a3) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.127502: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127503 !881
	lw  	fa4, 0(a4) !886
	lw  	fa5, 1(a4) !886
	lw  	fa6, 2(a4) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a3) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a3) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a3) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127505 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127506 !862
beq_else.127505: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a3) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a3) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a3) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.127506: !862
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
	bne 	a5, zero, beq_else.127507 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127508 !846
beq_else.127507: !846
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
beq_cont.127508: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127509 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127510 !889
beq_else.127509: !889
beq_cont.127510: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127511 !893
	addi	a3, zero, 0 !899
	jal 	zero, beq_cont.127512 !893
beq_else.127511: !893
	fsqrt   fa0, fa0 !894
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127513 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127514 !895
beq_else.127513: !895
beq_cont.127514: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a3, zero, 1 !896
beq_cont.127512: !893
	jal 	zero, beq_cont.127504 !881
beq_else.127503: !881
	addi	a3, zero, 0 !882
beq_cont.127504: !881
beq_cont.127498: !913
beq_cont.127460: !912
	bne 	a3, zero, beq_else.127515 !1316
	lw  	a2, 12(a2) !1344
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.127516 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127516: !1344
	addi	a0, a0, 1 !1345
	addi	a2, a4, 0 !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.127515: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a2, 17(sp) !121
	flt 	a2, zero, fa0 !121
	sw  	a0, 18(sp) !1322
	beq 	a2, zero, beq_cont.127519 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a2, fa0, fa1 !121
	beq 	a2, zero, beq_cont.127521 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a4) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a4) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a4) !1328
	sw  	fa0, 19(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	sw  	a3, 20(sp) !1329
	sw  	fa0, 21(sp) !1329
	sw  	fa2, 22(sp) !1329
	sw  	fa1, 23(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 24 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -24 !1329
	beq 	a0, zero, beq_cont.127523 !1329
	lw  	a0, 19(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 23(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 22(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 21(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 17(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 20(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.127523: !1329
beq_cont.127521: !1323
beq_cont.127519: !1322
	lw  	a0, 18(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1340
	lw  	a2, 2(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
beq_else.127320: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a3, 24(sp) !121
	flt 	a3, zero, fa0 !121
	sw  	a2, 2(sp) !1322
	sw  	a1, 3(sp) !1322
	sw  	a0, 25(sp) !1322
	beq 	a3, zero, beq_cont.127525 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a3, fa0, fa1 !121
	beq 	a3, zero, beq_cont.127527 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a2) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a2) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a2) !1328
	sw  	fa0, 26(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	sw  	a4, 27(sp) !1329
	sw  	fa0, 28(sp) !1329
	sw  	fa2, 29(sp) !1329
	sw  	fa1, 30(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 32 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -32 !1329
	beq 	a0, zero, beq_cont.127529 !1329
	lw  	a0, 26(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 30(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 29(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 28(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 24(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 27(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.127529: !1329
beq_cont.127527: !1323
beq_cont.127525: !1322
	lw  	a0, 25(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1312
	lwr 	a2, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.127530 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127530: !1313
	lw  	a3, 12(a2) !905
	lw  	fa0, 159(zero) !907
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a4, 5(a3) !358
	lw  	fa3, 2(a4) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.127532 !912
	lw  	a4, 2(sp) !805
	lw  	fa3, 0(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127534 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 0(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127536 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127537 !141
beq_else.127536: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127537: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127538 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127539 !154
beq_else.127538: !154
beq_cont.127539: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127540 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127541 !810
beq_else.127540: !810
	lw  	fa4, 2(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127542 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127543 !811
beq_else.127542: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127543: !811
beq_cont.127541: !810
	jal 	zero, beq_cont.127535 !805
beq_else.127534: !805
	addi	a5, zero, 0 !805
beq_cont.127535: !805
	bne 	a5, zero, beq_else.127544 !820
	lw  	fa3, 1(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127546 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 1(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127548 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127549 !141
beq_else.127548: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127549: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127550 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127551 !154
beq_else.127550: !154
beq_cont.127551: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127552 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127553 !810
beq_else.127552: !810
	lw  	fa4, 0(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127554 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127555 !811
beq_else.127554: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127555: !811
beq_cont.127553: !810
	jal 	zero, beq_cont.127547 !805
beq_else.127546: !805
	addi	a5, zero, 0 !805
beq_cont.127547: !805
	bne 	a5, zero, beq_else.127556 !821
	lw  	fa3, 2(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127558 !805
	lw  	a5, 4(a3) !328
	lw  	a3, 6(a3) !280
	lw  	fa3, 2(a4) !807
	flt 	a6, fa3, zero !123
	bne 	a3, zero, beq_else.127560 !141
	addi	a3, a6, 0 !141
	jal 	zero, beq_cont.127561 !141
beq_else.127560: !141
	sub 	t0, zero, a6 !141
	addi	a3, t0, 1 !141
beq_cont.127561: !141
	lw  	fa3, 2(a5) !807
	bne 	a3, zero, beq_else.127562 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127563 !154
beq_else.127562: !154
beq_cont.127563: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a4) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a4) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a3, fa0, fa3 !121
	bne 	a3, zero, beq_else.127564 !810
	addi	a3, zero, 0 !814
	jal 	zero, beq_cont.127565 !810
beq_else.127564: !810
	lw  	fa0, 1(a4) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127566 !811
	addi	a3, zero, 0 !813
	jal 	zero, beq_cont.127567 !811
beq_else.127566: !811
	sw  	fa2, 135(zero) !812
	addi	a3, zero, 1 !812
beq_cont.127567: !811
beq_cont.127565: !810
	jal 	zero, beq_cont.127559 !805
beq_else.127558: !805
	addi	a3, zero, 0 !805
beq_cont.127559: !805
	bne 	a3, zero, beq_else.127568 !822
	addi	a3, zero, 0 !823
	jal 	zero, beq_cont.127569 !822
beq_else.127568: !822
	addi	a3, zero, 3 !822
beq_cont.127569: !822
	jal 	zero, beq_cont.127557 !821
beq_else.127556: !821
	addi	a3, zero, 2 !821
beq_cont.127557: !821
	jal 	zero, beq_cont.127545 !820
beq_else.127544: !820
	addi	a3, zero, 1 !820
beq_cont.127545: !820
	jal 	zero, beq_cont.127533 !912
beq_else.127532: !912
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.127570 !913
	lw  	a3, 4(a3) !328
	lw  	a4, 2(sp) !208
	lw  	fa3, 0(a4) !208
	lw  	fa4, 0(a3) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a4) !208
	lw  	fa5, 1(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a4) !208
	lw  	fa5, 2(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.127572 !833
	addi	a3, zero, 0 !836
	jal 	zero, beq_cont.127573 !833
beq_else.127572: !833
	lw  	fa4, 0(a3) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a3) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a3) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a3, zero, 1 !835
beq_cont.127573: !833
	jal 	zero, beq_cont.127571 !913
beq_else.127570: !913
	lw  	a4, 2(sp) !879
	lw  	fa3, 0(a4) !879
	lw  	fa4, 1(a4) !879
	lw  	fa5, 2(a4) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a3) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a3) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a3) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127574 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127575 !846
beq_else.127574: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a3) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a3) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a3) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.127575: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127576 !881
	lw  	fa4, 0(a4) !886
	lw  	fa5, 1(a4) !886
	lw  	fa6, 2(a4) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a3) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a3) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a3) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127578 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127579 !862
beq_else.127578: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a3) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a3) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a3) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.127579: !862
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
	bne 	a5, zero, beq_else.127580 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127581 !846
beq_else.127580: !846
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
beq_cont.127581: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127582 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127583 !889
beq_else.127582: !889
beq_cont.127583: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127584 !893
	addi	a3, zero, 0 !899
	jal 	zero, beq_cont.127585 !893
beq_else.127584: !893
	fsqrt   fa0, fa0 !894
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127586 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127587 !895
beq_else.127586: !895
beq_cont.127587: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a3, zero, 1 !896
beq_cont.127585: !893
	jal 	zero, beq_cont.127577 !881
beq_else.127576: !881
	addi	a3, zero, 0 !882
beq_cont.127577: !881
beq_cont.127571: !913
beq_cont.127533: !912
	bne 	a3, zero, beq_else.127588 !1316
	lw  	a2, 12(a2) !1344
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.127589 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127589: !1344
	addi	a0, a0, 1 !1345
	lwr 	a2, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.127591 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127591: !1313
	lw  	a3, 12(a2) !905
	lw  	fa0, 159(zero) !907
	lw  	a5, 5(a3) !338
	lw  	fa1, 0(a5) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a5, 5(a3) !348
	lw  	fa2, 1(a5) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a5, 5(a3) !358
	lw  	fa3, 2(a5) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a5, 1(a3) !260
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.127593 !912
	lw  	fa3, 0(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127595 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 0(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127597 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127598 !141
beq_else.127597: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127598: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127599 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127600 !154
beq_else.127599: !154
beq_cont.127600: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127601 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127602 !810
beq_else.127601: !810
	lw  	fa4, 2(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127603 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127604 !811
beq_else.127603: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127604: !811
beq_cont.127602: !810
	jal 	zero, beq_cont.127596 !805
beq_else.127595: !805
	addi	a5, zero, 0 !805
beq_cont.127596: !805
	bne 	a5, zero, beq_else.127605 !820
	lw  	fa3, 1(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127607 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 1(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127609 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127610 !141
beq_else.127609: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127610: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127611 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127612 !154
beq_else.127611: !154
beq_cont.127612: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127613 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127614 !810
beq_else.127613: !810
	lw  	fa4, 0(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127615 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127616 !811
beq_else.127615: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127616: !811
beq_cont.127614: !810
	jal 	zero, beq_cont.127608 !805
beq_else.127607: !805
	addi	a5, zero, 0 !805
beq_cont.127608: !805
	bne 	a5, zero, beq_else.127617 !821
	lw  	fa3, 2(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127619 !805
	lw  	a5, 4(a3) !328
	lw  	a3, 6(a3) !280
	lw  	fa3, 2(a4) !807
	flt 	a6, fa3, zero !123
	bne 	a3, zero, beq_else.127621 !141
	addi	a3, a6, 0 !141
	jal 	zero, beq_cont.127622 !141
beq_else.127621: !141
	sub 	t0, zero, a6 !141
	addi	a3, t0, 1 !141
beq_cont.127622: !141
	lw  	fa3, 2(a5) !807
	bne 	a3, zero, beq_else.127623 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127624 !154
beq_else.127623: !154
beq_cont.127624: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a4) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a4) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a3, fa0, fa3 !121
	bne 	a3, zero, beq_else.127625 !810
	addi	a3, zero, 0 !814
	jal 	zero, beq_cont.127626 !810
beq_else.127625: !810
	lw  	fa0, 1(a4) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127627 !811
	addi	a3, zero, 0 !813
	jal 	zero, beq_cont.127628 !811
beq_else.127627: !811
	sw  	fa2, 135(zero) !812
	addi	a3, zero, 1 !812
beq_cont.127628: !811
beq_cont.127626: !810
	jal 	zero, beq_cont.127620 !805
beq_else.127619: !805
	addi	a3, zero, 0 !805
beq_cont.127620: !805
	bne 	a3, zero, beq_else.127629 !822
	addi	a3, zero, 0 !823
	jal 	zero, beq_cont.127630 !822
beq_else.127629: !822
	addi	a3, zero, 3 !822
beq_cont.127630: !822
	jal 	zero, beq_cont.127618 !821
beq_else.127617: !821
	addi	a3, zero, 2 !821
beq_cont.127618: !821
	jal 	zero, beq_cont.127606 !820
beq_else.127605: !820
	addi	a3, zero, 1 !820
beq_cont.127606: !820
	jal 	zero, beq_cont.127594 !912
beq_else.127593: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127631 !913
	lw  	a3, 4(a3) !328
	lw  	fa3, 0(a4) !208
	lw  	fa4, 0(a3) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a4) !208
	lw  	fa5, 1(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a4) !208
	lw  	fa5, 2(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.127633 !833
	addi	a3, zero, 0 !836
	jal 	zero, beq_cont.127634 !833
beq_else.127633: !833
	lw  	fa4, 0(a3) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a3) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a3) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a3, zero, 1 !835
beq_cont.127634: !833
	jal 	zero, beq_cont.127632 !913
beq_else.127631: !913
	lw  	fa3, 0(a4) !879
	lw  	fa4, 1(a4) !879
	lw  	fa5, 2(a4) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a3) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a3) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a3) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127635 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127636 !846
beq_else.127635: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a3) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a3) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a3) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.127636: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127637 !881
	lw  	fa4, 0(a4) !886
	lw  	fa5, 1(a4) !886
	lw  	fa6, 2(a4) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a3) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a3) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a3) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127639 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127640 !862
beq_else.127639: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a3) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a3) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a3) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.127640: !862
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
	bne 	a5, zero, beq_else.127641 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127642 !846
beq_else.127641: !846
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
beq_cont.127642: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127643 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127644 !889
beq_else.127643: !889
beq_cont.127644: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127645 !893
	addi	a3, zero, 0 !899
	jal 	zero, beq_cont.127646 !893
beq_else.127645: !893
	fsqrt   fa0, fa0 !894
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127647 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127648 !895
beq_else.127647: !895
beq_cont.127648: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a3, zero, 1 !896
beq_cont.127646: !893
	jal 	zero, beq_cont.127638 !881
beq_else.127637: !881
	addi	a3, zero, 0 !882
beq_cont.127638: !881
beq_cont.127632: !913
beq_cont.127594: !912
	bne 	a3, zero, beq_else.127649 !1316
	lw  	a2, 12(a2) !1344
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.127650 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127650: !1344
	addi	a0, a0, 1 !1345
	addi	a2, a4, 0 !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.127649: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a2, 31(sp) !121
	flt 	a2, zero, fa0 !121
	sw  	a0, 32(sp) !1322
	beq 	a2, zero, beq_cont.127653 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a2, fa0, fa1 !121
	beq 	a2, zero, beq_cont.127655 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a4) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a4) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a4) !1328
	sw  	fa0, 33(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	sw  	a3, 34(sp) !1329
	sw  	fa0, 35(sp) !1329
	sw  	fa2, 36(sp) !1329
	sw  	fa1, 37(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 40 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -40 !1329
	beq 	a0, zero, beq_cont.127657 !1329
	lw  	a0, 33(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 37(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 36(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 35(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 31(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 34(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.127657: !1329
beq_cont.127655: !1323
beq_cont.127653: !1322
	lw  	a0, 32(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1340
	lw  	a2, 2(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
beq_else.127588: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a2, 38(sp) !121
	flt 	a2, zero, fa0 !121
	sw  	a0, 39(sp) !1322
	beq 	a2, zero, beq_cont.127659 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a2, fa0, fa1 !121
	beq 	a2, zero, beq_cont.127661 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a4) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a4) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a4) !1328
	sw  	fa0, 40(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	sw  	a3, 41(sp) !1329
	sw  	fa0, 42(sp) !1329
	sw  	fa2, 43(sp) !1329
	sw  	fa1, 44(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 48 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -48 !1329
	beq 	a0, zero, beq_cont.127663 !1329
	lw  	a0, 40(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 44(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 43(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 42(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 38(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 41(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.127663: !1329
beq_cont.127661: !1323
beq_cont.127659: !1322
	lw  	a0, 39(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1312
	lwr 	a2, a1, a0 !1312
	addi	t0, zero, -1
	bne 	a2, t0, beq_else.127664 !1313
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127664: !1313
	lw  	a3, 12(a2) !905
	lw  	fa0, 159(zero) !907
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a4, 5(a3) !358
	lw  	fa3, 2(a4) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.127666 !912
	lw  	a4, 2(sp) !805
	lw  	fa3, 0(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127668 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 0(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127670 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127671 !141
beq_else.127670: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127671: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127672 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127673 !154
beq_else.127672: !154
beq_cont.127673: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127674 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127675 !810
beq_else.127674: !810
	lw  	fa4, 2(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127676 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127677 !811
beq_else.127676: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127677: !811
beq_cont.127675: !810
	jal 	zero, beq_cont.127669 !805
beq_else.127668: !805
	addi	a5, zero, 0 !805
beq_cont.127669: !805
	bne 	a5, zero, beq_else.127678 !820
	lw  	fa3, 1(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127680 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 1(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127682 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127683 !141
beq_else.127682: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127683: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127684 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127685 !154
beq_else.127684: !154
beq_cont.127685: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127686 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127687 !810
beq_else.127686: !810
	lw  	fa4, 0(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127688 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127689 !811
beq_else.127688: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127689: !811
beq_cont.127687: !810
	jal 	zero, beq_cont.127681 !805
beq_else.127680: !805
	addi	a5, zero, 0 !805
beq_cont.127681: !805
	bne 	a5, zero, beq_else.127690 !821
	lw  	fa3, 2(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127692 !805
	lw  	a5, 4(a3) !328
	lw  	a3, 6(a3) !280
	lw  	fa3, 2(a4) !807
	flt 	a6, fa3, zero !123
	bne 	a3, zero, beq_else.127694 !141
	addi	a3, a6, 0 !141
	jal 	zero, beq_cont.127695 !141
beq_else.127694: !141
	sub 	t0, zero, a6 !141
	addi	a3, t0, 1 !141
beq_cont.127695: !141
	lw  	fa3, 2(a5) !807
	bne 	a3, zero, beq_else.127696 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127697 !154
beq_else.127696: !154
beq_cont.127697: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a4) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a4) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a3, fa0, fa3 !121
	bne 	a3, zero, beq_else.127698 !810
	addi	a3, zero, 0 !814
	jal 	zero, beq_cont.127699 !810
beq_else.127698: !810
	lw  	fa0, 1(a4) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127700 !811
	addi	a3, zero, 0 !813
	jal 	zero, beq_cont.127701 !811
beq_else.127700: !811
	sw  	fa2, 135(zero) !812
	addi	a3, zero, 1 !812
beq_cont.127701: !811
beq_cont.127699: !810
	jal 	zero, beq_cont.127693 !805
beq_else.127692: !805
	addi	a3, zero, 0 !805
beq_cont.127693: !805
	bne 	a3, zero, beq_else.127702 !822
	addi	a3, zero, 0 !823
	jal 	zero, beq_cont.127703 !822
beq_else.127702: !822
	addi	a3, zero, 3 !822
beq_cont.127703: !822
	jal 	zero, beq_cont.127691 !821
beq_else.127690: !821
	addi	a3, zero, 2 !821
beq_cont.127691: !821
	jal 	zero, beq_cont.127679 !820
beq_else.127678: !820
	addi	a3, zero, 1 !820
beq_cont.127679: !820
	jal 	zero, beq_cont.127667 !912
beq_else.127666: !912
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.127704 !913
	lw  	a3, 4(a3) !328
	lw  	a4, 2(sp) !208
	lw  	fa3, 0(a4) !208
	lw  	fa4, 0(a3) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a4) !208
	lw  	fa5, 1(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a4) !208
	lw  	fa5, 2(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.127706 !833
	addi	a3, zero, 0 !836
	jal 	zero, beq_cont.127707 !833
beq_else.127706: !833
	lw  	fa4, 0(a3) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a3) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a3) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a3, zero, 1 !835
beq_cont.127707: !833
	jal 	zero, beq_cont.127705 !913
beq_else.127704: !913
	lw  	a4, 2(sp) !879
	lw  	fa3, 0(a4) !879
	lw  	fa4, 1(a4) !879
	lw  	fa5, 2(a4) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a3) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a3) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a3) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127708 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127709 !846
beq_else.127708: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a3) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a3) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a3) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.127709: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127710 !881
	lw  	fa4, 0(a4) !886
	lw  	fa5, 1(a4) !886
	lw  	fa6, 2(a4) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a3) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a3) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a3) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127712 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127713 !862
beq_else.127712: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a3) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a3) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a3) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.127713: !862
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
	bne 	a5, zero, beq_else.127714 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127715 !846
beq_else.127714: !846
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
beq_cont.127715: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127716 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127717 !889
beq_else.127716: !889
beq_cont.127717: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127718 !893
	addi	a3, zero, 0 !899
	jal 	zero, beq_cont.127719 !893
beq_else.127718: !893
	fsqrt   fa0, fa0 !894
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127720 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127721 !895
beq_else.127720: !895
beq_cont.127721: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a3, zero, 1 !896
beq_cont.127719: !893
	jal 	zero, beq_cont.127711 !881
beq_else.127710: !881
	addi	a3, zero, 0 !882
beq_cont.127711: !881
beq_cont.127705: !913
beq_cont.127667: !912
	bne 	a3, zero, beq_else.127722 !1316
	lw  	a2, 12(a2) !1344
	lw  	a2, 6(a2) !280
	bne 	a2, zero, beq_else.127723 !1344
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127723: !1344
	addi	a0, a0, 1 !1345
	addi	a2, a4, 0 !1345
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1345
beq_else.127722: !1316
	lw  	fa0, 135(zero) !1320
	sw  	a2, 45(sp) !121
	flt 	a2, zero, fa0 !121
	sw  	a0, 46(sp) !1322
	beq 	a2, zero, beq_cont.127726 !1322
	lw  	fa1, 137(zero) !1323
	flt 	a2, fa0, fa1 !121
	beq 	a2, zero, beq_cont.127728 !1323
	li  	fa1, 0.010000 !1325
	fadd	fa0, fa0, fa1 !1325
	lw  	fa1, 0(a4) !1326
	fmul	fa1, fa1, fa0 !1326
	lw  	fa2, 159(zero) !1326
	fadd	fa1, fa1, fa2 !1326
	lw  	fa2, 1(a4) !1327
	fmul	fa2, fa2, fa0 !1327
	lw  	fa3, 160(zero) !1327
	fadd	fa2, fa2, fa3 !1327
	lw  	fa3, 2(a4) !1328
	sw  	fa0, 47(sp) !1328
	fmul	fa0, fa3, fa0 !1328
	lw  	fa3, 161(zero) !1328
	fadd	fa0, fa0, fa3 !1328
	addi	a0, zero, 0 !1329
	sw  	a3, 48(sp) !1329
	sw  	fa0, 49(sp) !1329
	sw  	fa2, 50(sp) !1329
	sw  	fa1, 51(sp) !1329
	fsgnj   t0, fa2, fa2 !1329
	fsgnj   fa2, fa0, fa0 !1329
	fsgnj   fa0, fa1, fa1 !1329
	fsgnj   fa1, t0, t0 !1329
	addi	sp, sp, 52 !1329
	jal 	ra, check_all_inside.2689 !1329
	addi	sp, sp, -52 !1329
	beq 	a0, zero, beq_cont.127730 !1329
	lw  	a0, 47(sp) !1331
	sw  	a0, 137(zero) !1331
	lw  	a0, 51(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 50(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 49(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 45(sp) !1333
	sw  	a0, 141(zero) !1333
	lw  	a0, 48(sp) !1334
	sw  	a0, 136(zero) !1334
beq_cont.127730: !1329
beq_cont.127728: !1323
beq_cont.127726: !1322
	lw  	a0, 46(sp) !1340
	addi	a0, a0, 1 !1340
	lw  	a1, 3(sp) !1340
	lw  	a2, 2(sp) !1340
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element.2704 !1340
solve_one_or_network.2708:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !1353
	lwr 	a0, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.127731 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127731: !1354
	sw  	a1, 2(sp) !1355
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	sw  	a2, 3(sp) !1356
	addi	sp, sp, 4 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -4 !1356
	lw  	a0, 1(sp) !1357
	addi	a0, a0, 1 !1357
	sw  	a0, 4(sp) !1353
	lw  	a1, 2(sp) !1353
	lwr 	a0, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.127733 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127733: !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 3(sp) !1356
	addi	sp, sp, 8 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -8 !1356
	lw  	a0, 4(sp) !1357
	addi	a0, a0, 1 !1357
	sw  	a0, 5(sp) !1353
	lw  	a1, 2(sp) !1353
	lwr 	a0, a1, a0 !1353
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.127735 !1354
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127735: !1354
	lw  	a1, 83(a0) !1355
	addi	a0, zero, 0 !1356
	lw  	a2, 3(sp) !1356
	addi	sp, sp, 8 !1356
	jal 	ra, solve_each_element.2704 !1356
	addi	sp, sp, -8 !1356
	lw  	a0, 5(sp) !1357
	addi	a0, a0, 1 !1357
	lw  	a1, 2(sp) !1357
	lw  	a2, 3(sp) !1357
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network.2708 !1357
trace_or_matrix.2712:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1363
	lw  	a4, 0(a3) !1364
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.127737 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127737: !1365
	sw  	a2, 1(sp) !1368
	sw  	a1, 2(sp) !1368
	sw  	a0, 3(sp) !1368
	addi	t0, zero, 99
	bne 	a4, t0, beq_else.127739 !1368
	addi	a0, zero, 1 !1369
	addi	a1, a3, 0 !1369
	addi	sp, sp, 4 !1369
	jal 	ra, solve_one_or_network.2708 !1369
	addi	sp, sp, -4 !1369
	jal 	zero, beq_cont.127740 !1368
beq_else.127739: !1368
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
	addi	t0, zero, 1
	bne 	a5, t0, beq_else.127741 !912
	lw  	fa3, 0(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127743 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 0(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127745 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127746 !141
beq_else.127745: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127746: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127747 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127748 !154
beq_else.127747: !154
beq_cont.127748: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127749 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127750 !810
beq_else.127749: !810
	lw  	fa4, 2(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127751 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127752 !811
beq_else.127751: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127752: !811
beq_cont.127750: !810
	jal 	zero, beq_cont.127744 !805
beq_else.127743: !805
	addi	a5, zero, 0 !805
beq_cont.127744: !805
	bne 	a5, zero, beq_else.127753 !820
	lw  	fa3, 1(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127755 !805
	lw  	a5, 4(a4) !328
	lw  	a6, 6(a4) !280
	lw  	fa3, 1(a2) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127757 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127758 !141
beq_else.127757: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127758: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127759 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127760 !154
beq_else.127759: !154
beq_cont.127760: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a2) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a2) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127761 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127762 !810
beq_else.127761: !810
	lw  	fa4, 0(a2) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127763 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127764 !811
beq_else.127763: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127764: !811
beq_cont.127762: !810
	jal 	zero, beq_cont.127756 !805
beq_else.127755: !805
	addi	a5, zero, 0 !805
beq_cont.127756: !805
	bne 	a5, zero, beq_else.127765 !821
	lw  	fa3, 2(a2) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127767 !805
	lw  	a5, 4(a4) !328
	lw  	a4, 6(a4) !280
	lw  	fa3, 2(a2) !807
	flt 	a6, fa3, zero !123
	bne 	a4, zero, beq_else.127769 !141
	addi	a4, a6, 0 !141
	jal 	zero, beq_cont.127770 !141
beq_else.127769: !141
	sub 	t0, zero, a6 !141
	addi	a4, t0, 1 !141
beq_cont.127770: !141
	lw  	fa3, 2(a5) !807
	bne 	a4, zero, beq_else.127771 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127772 !154
beq_else.127771: !154
beq_cont.127772: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a2) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a2) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a4, fa0, fa3 !121
	bne 	a4, zero, beq_else.127773 !810
	addi	a4, zero, 0 !814
	jal 	zero, beq_cont.127774 !810
beq_else.127773: !810
	lw  	fa0, 1(a2) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.127775 !811
	addi	a4, zero, 0 !813
	jal 	zero, beq_cont.127776 !811
beq_else.127775: !811
	sw  	fa2, 135(zero) !812
	addi	a4, zero, 1 !812
beq_cont.127776: !811
beq_cont.127774: !810
	jal 	zero, beq_cont.127768 !805
beq_else.127767: !805
	addi	a4, zero, 0 !805
beq_cont.127768: !805
	bne 	a4, zero, beq_else.127777 !822
	addi	a4, zero, 0 !823
	jal 	zero, beq_cont.127778 !822
beq_else.127777: !822
	addi	a4, zero, 3 !822
beq_cont.127778: !822
	jal 	zero, beq_cont.127766 !821
beq_else.127765: !821
	addi	a4, zero, 2 !821
beq_cont.127766: !821
	jal 	zero, beq_cont.127754 !820
beq_else.127753: !820
	addi	a4, zero, 1 !820
beq_cont.127754: !820
	jal 	zero, beq_cont.127742 !912
beq_else.127741: !912
	addi	t0, zero, 2
	bne 	a5, t0, beq_else.127779 !913
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
	bne 	a5, zero, beq_else.127781 !833
	addi	a4, zero, 0 !836
	jal 	zero, beq_cont.127782 !833
beq_else.127781: !833
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
	addi	a4, zero, 1 !835
beq_cont.127782: !833
	jal 	zero, beq_cont.127780 !913
beq_else.127779: !913
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
	bne 	a5, zero, beq_else.127783 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127784 !846
beq_else.127783: !846
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
beq_cont.127784: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127785 !881
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
	bne 	a5, zero, beq_else.127787 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127788 !862
beq_else.127787: !862
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
beq_cont.127788: !862
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
	bne 	a5, zero, beq_else.127789 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127790 !846
beq_else.127789: !846
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
beq_cont.127790: !846
	lw  	a5, 1(a4) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127791 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127792 !889
beq_else.127791: !889
beq_cont.127792: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127793 !893
	addi	a4, zero, 0 !899
	jal 	zero, beq_cont.127794 !893
beq_else.127793: !893
	fsqrt   fa0, fa0 !894
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.127795 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127796 !895
beq_else.127795: !895
beq_cont.127796: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a4, zero, 1 !896
beq_cont.127794: !893
	jal 	zero, beq_cont.127786 !881
beq_else.127785: !881
	addi	a4, zero, 0 !882
beq_cont.127786: !881
beq_cont.127780: !913
beq_cont.127742: !912
	beq 	a4, zero, beq_cont.127798 !1374
	lw  	fa0, 135(zero) !1375
	lw  	fa1, 137(zero) !1376
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.127800 !1376
	addi	a0, zero, 1 !1377
	addi	a1, a3, 0 !1377
	addi	sp, sp, 4 !1377
	jal 	ra, solve_one_or_network.2708 !1377
	addi	sp, sp, -4 !1377
beq_cont.127800: !1376
beq_cont.127798: !1374
beq_cont.127740: !1368
	lw  	a0, 3(sp) !1381
	addi	a0, a0, 1 !1381
	lw  	a1, 2(sp) !1363
	lwr 	a2, a1, a0 !1363
	lw  	a3, 0(a2) !1364
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127801 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127801: !1365
	sw  	a0, 4(sp) !1368
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.127803 !1368
	addi	a0, zero, 1 !1369
	lw  	a1, 1(sp) !1369
	addi	t0, a2, 0 !1369
	addi	a2, a1, 0 !1369
	addi	a1, t0, 0 !1369
	addi	sp, sp, 8 !1369
	jal 	ra, solve_one_or_network.2708 !1369
	addi	sp, sp, -8 !1369
	jal 	zero, beq_cont.127804 !1368
beq_else.127803: !1368
	lw  	a3, 12(a3) !905
	lw  	fa0, 159(zero) !907
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a4, 5(a3) !358
	lw  	fa3, 2(a4) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.127805 !912
	lw  	a4, 1(sp) !805
	lw  	fa3, 0(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127807 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 0(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127809 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127810 !141
beq_else.127809: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127810: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127811 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127812 !154
beq_else.127811: !154
beq_cont.127812: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127813 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127814 !810
beq_else.127813: !810
	lw  	fa4, 2(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127815 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127816 !811
beq_else.127815: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127816: !811
beq_cont.127814: !810
	jal 	zero, beq_cont.127808 !805
beq_else.127807: !805
	addi	a5, zero, 0 !805
beq_cont.127808: !805
	bne 	a5, zero, beq_else.127817 !820
	lw  	fa3, 1(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127819 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 1(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127821 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127822 !141
beq_else.127821: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127822: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127823 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127824 !154
beq_else.127823: !154
beq_cont.127824: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127825 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127826 !810
beq_else.127825: !810
	lw  	fa4, 0(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127827 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127828 !811
beq_else.127827: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127828: !811
beq_cont.127826: !810
	jal 	zero, beq_cont.127820 !805
beq_else.127819: !805
	addi	a5, zero, 0 !805
beq_cont.127820: !805
	bne 	a5, zero, beq_else.127829 !821
	lw  	fa3, 2(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127831 !805
	lw  	a5, 4(a3) !328
	lw  	a3, 6(a3) !280
	lw  	fa3, 2(a4) !807
	flt 	a6, fa3, zero !123
	bne 	a3, zero, beq_else.127833 !141
	addi	a3, a6, 0 !141
	jal 	zero, beq_cont.127834 !141
beq_else.127833: !141
	sub 	t0, zero, a6 !141
	addi	a3, t0, 1 !141
beq_cont.127834: !141
	lw  	fa3, 2(a5) !807
	bne 	a3, zero, beq_else.127835 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127836 !154
beq_else.127835: !154
beq_cont.127836: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a4) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a4) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a3, fa0, fa3 !121
	bne 	a3, zero, beq_else.127837 !810
	addi	a3, zero, 0 !814
	jal 	zero, beq_cont.127838 !810
beq_else.127837: !810
	lw  	fa0, 1(a4) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127839 !811
	addi	a3, zero, 0 !813
	jal 	zero, beq_cont.127840 !811
beq_else.127839: !811
	sw  	fa2, 135(zero) !812
	addi	a3, zero, 1 !812
beq_cont.127840: !811
beq_cont.127838: !810
	jal 	zero, beq_cont.127832 !805
beq_else.127831: !805
	addi	a3, zero, 0 !805
beq_cont.127832: !805
	bne 	a3, zero, beq_else.127841 !822
	addi	a3, zero, 0 !823
	jal 	zero, beq_cont.127842 !822
beq_else.127841: !822
	addi	a3, zero, 3 !822
beq_cont.127842: !822
	jal 	zero, beq_cont.127830 !821
beq_else.127829: !821
	addi	a3, zero, 2 !821
beq_cont.127830: !821
	jal 	zero, beq_cont.127818 !820
beq_else.127817: !820
	addi	a3, zero, 1 !820
beq_cont.127818: !820
	jal 	zero, beq_cont.127806 !912
beq_else.127805: !912
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.127843 !913
	lw  	a3, 4(a3) !328
	lw  	a4, 1(sp) !208
	lw  	fa3, 0(a4) !208
	lw  	fa4, 0(a3) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a4) !208
	lw  	fa5, 1(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a4) !208
	lw  	fa5, 2(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.127845 !833
	addi	a3, zero, 0 !836
	jal 	zero, beq_cont.127846 !833
beq_else.127845: !833
	lw  	fa4, 0(a3) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a3) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a3) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a3, zero, 1 !835
beq_cont.127846: !833
	jal 	zero, beq_cont.127844 !913
beq_else.127843: !913
	lw  	a4, 1(sp) !879
	lw  	fa3, 0(a4) !879
	lw  	fa4, 1(a4) !879
	lw  	fa5, 2(a4) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a3) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a3) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a3) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127847 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127848 !846
beq_else.127847: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a3) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a3) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a3) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.127848: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127849 !881
	lw  	fa4, 0(a4) !886
	lw  	fa5, 1(a4) !886
	lw  	fa6, 2(a4) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a3) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a3) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a3) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127851 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127852 !862
beq_else.127851: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a3) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a3) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a3) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.127852: !862
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
	bne 	a5, zero, beq_else.127853 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127854 !846
beq_else.127853: !846
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
beq_cont.127854: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127855 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127856 !889
beq_else.127855: !889
beq_cont.127856: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127857 !893
	addi	a3, zero, 0 !899
	jal 	zero, beq_cont.127858 !893
beq_else.127857: !893
	fsqrt   fa0, fa0 !894
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127859 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127860 !895
beq_else.127859: !895
beq_cont.127860: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a3, zero, 1 !896
beq_cont.127858: !893
	jal 	zero, beq_cont.127850 !881
beq_else.127849: !881
	addi	a3, zero, 0 !882
beq_cont.127850: !881
beq_cont.127844: !913
beq_cont.127806: !912
	beq 	a3, zero, beq_cont.127862 !1374
	lw  	fa0, 135(zero) !1375
	lw  	fa1, 137(zero) !1376
	flt 	a3, fa0, fa1 !121
	beq 	a3, zero, beq_cont.127864 !1376
	addi	a0, zero, 1 !1377
	addi	a1, a2, 0 !1377
	addi	a2, a4, 0 !1377
	addi	sp, sp, 8 !1377
	jal 	ra, solve_one_or_network.2708 !1377
	addi	sp, sp, -8 !1377
beq_cont.127864: !1376
beq_cont.127862: !1374
beq_cont.127804: !1368
	lw  	a0, 4(sp) !1381
	addi	a0, a0, 1 !1381
	lw  	a1, 2(sp) !1363
	lwr 	a2, a1, a0 !1363
	lw  	a3, 0(a2) !1364
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.127865 !1365
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127865: !1365
	sw  	a0, 5(sp) !1368
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.127867 !1368
	addi	a0, zero, 1 !1369
	lw  	a1, 1(sp) !1369
	addi	t0, a2, 0 !1369
	addi	a2, a1, 0 !1369
	addi	a1, t0, 0 !1369
	addi	sp, sp, 8 !1369
	jal 	ra, solve_one_or_network.2708 !1369
	addi	sp, sp, -8 !1369
	jal 	zero, beq_cont.127868 !1368
beq_else.127867: !1368
	lw  	a3, 12(a3) !905
	lw  	fa0, 159(zero) !907
	lw  	a4, 5(a3) !338
	lw  	fa1, 0(a4) !343
	fsub	fa0, fa0, fa1 !907
	lw  	fa1, 160(zero) !908
	lw  	a4, 5(a3) !348
	lw  	fa2, 1(a4) !353
	fsub	fa1, fa1, fa2 !908
	lw  	fa2, 161(zero) !909
	lw  	a4, 5(a3) !358
	lw  	fa3, 2(a4) !363
	fsub	fa2, fa2, fa3 !909
	lw  	a4, 1(a3) !260
	addi	t0, zero, 1
	bne 	a4, t0, beq_else.127869 !912
	lw  	a4, 1(sp) !805
	lw  	fa3, 0(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127871 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 0(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127873 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127874 !141
beq_else.127873: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127874: !141
	lw  	fa3, 0(a5) !807
	bne 	a6, zero, beq_else.127875 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127876 !154
beq_else.127875: !154
beq_cont.127876: !154
	fsub	fa3, fa3, fa0 !809
	lw  	fa4, 0(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 1(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa1 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 1(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127877 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127878 !810
beq_else.127877: !810
	lw  	fa4, 2(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa2 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 2(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127879 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127880 !811
beq_else.127879: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127880: !811
beq_cont.127878: !810
	jal 	zero, beq_cont.127872 !805
beq_else.127871: !805
	addi	a5, zero, 0 !805
beq_cont.127872: !805
	bne 	a5, zero, beq_else.127881 !820
	lw  	fa3, 1(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127883 !805
	lw  	a5, 4(a3) !328
	lw  	a6, 6(a3) !280
	lw  	fa3, 1(a4) !807
	flt 	a7, fa3, zero !123
	bne 	a6, zero, beq_else.127885 !141
	addi	a6, a7, 0 !141
	jal 	zero, beq_cont.127886 !141
beq_else.127885: !141
	sub 	t0, zero, a7 !141
	addi	a6, t0, 1 !141
beq_cont.127886: !141
	lw  	fa3, 1(a5) !807
	bne 	a6, zero, beq_else.127887 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127888 !154
beq_else.127887: !154
beq_cont.127888: !154
	fsub	fa3, fa3, fa1 !809
	lw  	fa4, 1(a4) !809
	fdiv	fa3, fa3, fa4 !809
	lw  	fa4, 2(a4) !810
	fmul	fa4, fa3, fa4 !810
	fadd	fa4, fa4, fa2 !810
	fsgnjx  fa4, fa4, fa4 !810
	lw  	fa5, 2(a5) !810
	flt 	a6, fa4, fa5 !121
	bne 	a6, zero, beq_else.127889 !810
	addi	a5, zero, 0 !814
	jal 	zero, beq_cont.127890 !810
beq_else.127889: !810
	lw  	fa4, 0(a4) !811
	fmul	fa4, fa3, fa4 !811
	fadd	fa4, fa4, fa0 !811
	fsgnjx  fa4, fa4, fa4 !811
	lw  	fa5, 0(a5) !811
	flt 	a5, fa4, fa5 !121
	bne 	a5, zero, beq_else.127891 !811
	addi	a5, zero, 0 !813
	jal 	zero, beq_cont.127892 !811
beq_else.127891: !811
	sw  	fa3, 135(zero) !812
	addi	a5, zero, 1 !812
beq_cont.127892: !811
beq_cont.127890: !810
	jal 	zero, beq_cont.127884 !805
beq_else.127883: !805
	addi	a5, zero, 0 !805
beq_cont.127884: !805
	bne 	a5, zero, beq_else.127893 !821
	lw  	fa3, 2(a4) !805
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127895 !805
	lw  	a5, 4(a3) !328
	lw  	a3, 6(a3) !280
	lw  	fa3, 2(a4) !807
	flt 	a6, fa3, zero !123
	bne 	a3, zero, beq_else.127897 !141
	addi	a3, a6, 0 !141
	jal 	zero, beq_cont.127898 !141
beq_else.127897: !141
	sub 	t0, zero, a6 !141
	addi	a3, t0, 1 !141
beq_cont.127898: !141
	lw  	fa3, 2(a5) !807
	bne 	a3, zero, beq_else.127899 !154
	fsgnjn  fa3, fa3, fa3 !154
	jal 	zero, beq_cont.127900 !154
beq_else.127899: !154
beq_cont.127900: !154
	fsub	fa2, fa3, fa2 !809
	lw  	fa3, 2(a4) !809
	fdiv	fa2, fa2, fa3 !809
	lw  	fa3, 0(a4) !810
	fmul	fa3, fa2, fa3 !810
	fadd	fa0, fa3, fa0 !810
	fsgnjx  fa0, fa0, fa0 !810
	lw  	fa3, 0(a5) !810
	flt 	a3, fa0, fa3 !121
	bne 	a3, zero, beq_else.127901 !810
	addi	a3, zero, 0 !814
	jal 	zero, beq_cont.127902 !810
beq_else.127901: !810
	lw  	fa0, 1(a4) !811
	fmul	fa0, fa2, fa0 !811
	fadd	fa0, fa0, fa1 !811
	fsgnjx  fa0, fa0, fa0 !811
	lw  	fa1, 1(a5) !811
	flt 	a3, fa0, fa1 !121
	bne 	a3, zero, beq_else.127903 !811
	addi	a3, zero, 0 !813
	jal 	zero, beq_cont.127904 !811
beq_else.127903: !811
	sw  	fa2, 135(zero) !812
	addi	a3, zero, 1 !812
beq_cont.127904: !811
beq_cont.127902: !810
	jal 	zero, beq_cont.127896 !805
beq_else.127895: !805
	addi	a3, zero, 0 !805
beq_cont.127896: !805
	bne 	a3, zero, beq_else.127905 !822
	addi	a3, zero, 0 !823
	jal 	zero, beq_cont.127906 !822
beq_else.127905: !822
	addi	a3, zero, 3 !822
beq_cont.127906: !822
	jal 	zero, beq_cont.127894 !821
beq_else.127893: !821
	addi	a3, zero, 2 !821
beq_cont.127894: !821
	jal 	zero, beq_cont.127882 !820
beq_else.127881: !820
	addi	a3, zero, 1 !820
beq_cont.127882: !820
	jal 	zero, beq_cont.127870 !912
beq_else.127869: !912
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.127907 !913
	lw  	a3, 4(a3) !328
	lw  	a4, 1(sp) !208
	lw  	fa3, 0(a4) !208
	lw  	fa4, 0(a3) !208
	fmul	fa3, fa3, fa4 !208
	lw  	fa4, 1(a4) !208
	lw  	fa5, 1(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	lw  	fa4, 2(a4) !208
	lw  	fa5, 2(a3) !208
	fmul	fa4, fa4, fa5 !208
	fadd	fa3, fa3, fa4 !208
	flt 	a5, zero, fa3 !122
	bne 	a5, zero, beq_else.127909 !833
	addi	a3, zero, 0 !836
	jal 	zero, beq_cont.127910 !833
beq_else.127909: !833
	lw  	fa4, 0(a3) !213
	fmul	fa0, fa4, fa0 !213
	lw  	fa4, 1(a3) !213
	fmul	fa1, fa4, fa1 !213
	fadd	fa0, fa0, fa1 !213
	lw  	fa1, 2(a3) !213
	fmul	fa1, fa1, fa2 !213
	fadd	fa0, fa0, fa1 !213
	fsgnjn  fa0, fa0, fa0 !834
	fdiv	fa0, fa0, fa3 !834
	sw  	fa0, 135(zero) !834
	addi	a3, zero, 1 !835
beq_cont.127910: !833
	jal 	zero, beq_cont.127908 !913
beq_else.127907: !913
	lw  	a4, 1(sp) !879
	lw  	fa3, 0(a4) !879
	lw  	fa4, 1(a4) !879
	lw  	fa5, 2(a4) !879
	fmul	fa6, fa3, fa3 !126
	lw  	a5, 4(a3) !298
	lw  	fa7, 0(a5) !303
	fmul	fa6, fa6, fa7 !844
	fmul	fa7, fa4, fa4 !126
	lw  	a5, 4(a3) !308
	lw  	fs1, 1(a5) !313
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	fmul	fa7, fa5, fa5 !126
	lw  	a5, 4(a3) !318
	lw  	fs1, 2(a5) !323
	fmul	fa7, fa7, fs1 !844
	fadd	fa6, fa6, fa7 !844
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127911 !846
	fsgnj   fa3, fa6, fa6 !847
	jal 	zero, beq_cont.127912 !846
beq_else.127911: !846
	fmul	fa7, fa4, fa5 !850
	lw  	a5, 9(a3) !418
	lw  	fs1, 0(a5) !423
	fmul	fa7, fa7, fs1 !850
	fadd	fa6, fa6, fa7 !850
	fmul	fa5, fa5, fa3 !851
	lw  	a5, 9(a3) !428
	lw  	fa7, 1(a5) !433
	fmul	fa5, fa5, fa7 !851
	fadd	fa5, fa6, fa5 !851
	fmul	fa3, fa3, fa4 !852
	lw  	a5, 9(a3) !438
	lw  	fa4, 2(a5) !443
	fmul	fa3, fa3, fa4 !852
	fadd	fa3, fa5, fa3 !852
beq_cont.127912: !846
	feq 	a5, fa3, zero !124
	bne 	a5, zero, beq_else.127913 !881
	lw  	fa4, 0(a4) !886
	lw  	fa5, 1(a4) !886
	lw  	fa6, 2(a4) !886
	fmul	fa7, fa4, fa0 !858
	lw  	a5, 4(a3) !298
	lw  	fs1, 0(a5) !303
	fmul	fa7, fa7, fs1 !858
	fmul	fs1, fa5, fa1 !859
	lw  	a5, 4(a3) !308
	lw  	fs2, 1(a5) !313
	fmul	fs1, fs1, fs2 !859
	fadd	fa7, fa7, fs1 !859
	fmul	fs1, fa6, fa2 !860
	lw  	a5, 4(a3) !318
	lw  	fs2, 2(a5) !323
	fmul	fs1, fs1, fs2 !860
	fadd	fa7, fa7, fs1 !860
	lw  	a5, 3(a3) !289
	bne 	a5, zero, beq_else.127915 !862
	fsgnj   fa4, fa7, fa7 !863
	jal 	zero, beq_cont.127916 !862
beq_else.127915: !862
	fmul	fs1, fa6, fa1 !866
	fmul	fs2, fa5, fa2 !866
	fadd	fs1, fs1, fs2 !866
	lw  	a5, 9(a3) !418
	lw  	fs2, 0(a5) !423
	fmul	fs1, fs1, fs2 !866
	fmul	fs2, fa4, fa2 !867
	fmul	fa6, fa6, fa0 !867
	fadd	fa6, fs2, fa6 !867
	lw  	a5, 9(a3) !428
	lw  	fs2, 1(a5) !433
	fmul	fa6, fa6, fs2 !867
	fadd	fa6, fs1, fa6 !867
	fmul	fa4, fa4, fa1 !868
	fmul	fa5, fa5, fa0 !868
	fadd	fa4, fa4, fa5 !868
	lw  	a5, 9(a3) !438
	lw  	fa5, 2(a5) !443
	fmul	fa4, fa4, fa5 !868
	fadd	fa4, fa6, fa4 !868
	li  	fa5, 2.000000 !125
	fdiv	fa4, fa4, fa5 !125
	fadd	fa4, fa7, fa4 !865
beq_cont.127916: !862
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
	bne 	a5, zero, beq_else.127917 !846
	fsgnj   fa0, fa5, fa5 !847
	jal 	zero, beq_cont.127918 !846
beq_else.127917: !846
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
beq_cont.127918: !846
	lw  	a5, 1(a3) !260
	addi	t0, zero, 3
	bne 	a5, t0, beq_else.127919 !889
	li  	fa1, 1.000000 !889
	fsub	fa0, fa0, fa1 !889
	jal 	zero, beq_cont.127920 !889
beq_else.127919: !889
beq_cont.127920: !889
	fmul	fa1, fa4, fa4 !126
	fmul	fa0, fa3, fa0 !891
	fsub	fa0, fa1, fa0 !891
	flt 	a5, zero, fa0 !122
	bne 	a5, zero, beq_else.127921 !893
	addi	a3, zero, 0 !899
	jal 	zero, beq_cont.127922 !893
beq_else.127921: !893
	fsqrt   fa0, fa0 !894
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127923 !895
	fsgnjn  fa0, fa0, fa0 !895
	jal 	zero, beq_cont.127924 !895
beq_else.127923: !895
beq_cont.127924: !895
	fsub	fa0, fa0, fa4 !896
	fdiv	fa0, fa0, fa3 !896
	sw  	fa0, 135(zero) !896
	addi	a3, zero, 1 !896
beq_cont.127922: !893
	jal 	zero, beq_cont.127914 !881
beq_else.127913: !881
	addi	a3, zero, 0 !882
beq_cont.127914: !881
beq_cont.127908: !913
beq_cont.127870: !912
	beq 	a3, zero, beq_cont.127926 !1374
	lw  	fa0, 135(zero) !1375
	lw  	fa1, 137(zero) !1376
	flt 	a3, fa0, fa1 !121
	beq 	a3, zero, beq_cont.127928 !1376
	addi	a0, zero, 1 !1377
	addi	a1, a2, 0 !1377
	addi	a2, a4, 0 !1377
	addi	sp, sp, 8 !1377
	jal 	ra, solve_one_or_network.2708 !1377
	addi	sp, sp, -8 !1377
beq_cont.127928: !1376
beq_cont.127926: !1374
beq_cont.127868: !1368
	lw  	a0, 5(sp) !1381
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
	bne 	a4, t0, beq_else.127929 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127929: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.127931 !1039
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
	bne 	s1, zero, beq_else.127933 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.127934 !924
beq_else.127933: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.127935 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.127936 !925
beq_else.127935: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.127936: !925
beq_cont.127934: !924
	bne 	s1, zero, beq_else.127937 !923
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
	bne 	s1, zero, beq_else.127939 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.127940 !933
beq_else.127939: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.127941 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.127942 !934
beq_else.127941: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.127942: !934
beq_cont.127940: !933
	bne 	s1, zero, beq_else.127943 !932
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
	bne 	s1, zero, beq_else.127945 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.127946 !942
beq_else.127945: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.127947 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.127948 !943
beq_else.127947: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.127948: !943
beq_cont.127946: !942
	bne 	a5, zero, beq_else.127949 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.127950 !941
beq_else.127949: !941
	sw  	fa2, 135(zero) !948
	addi	a5, zero, 3 !948
beq_cont.127950: !941
	jal 	zero, beq_cont.127944 !932
beq_else.127943: !932
	sw  	fa3, 135(zero) !939
	addi	a5, zero, 2 !939
beq_cont.127944: !932
	jal 	zero, beq_cont.127938 !923
beq_else.127937: !923
	sw  	fa3, 135(zero) !930
	addi	a5, zero, 1 !930
beq_cont.127938: !923
	jal 	zero, beq_cont.127932 !1039
beq_else.127931: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.127951 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.127953 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.127954 !1004
beq_else.127953: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a5, zero, 1 !1006
beq_cont.127954: !1004
	jal 	zero, beq_cont.127952 !1041
beq_else.127951: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.127955 !1014
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
	bne 	a6, zero, beq_else.127957 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.127958 !1020
beq_else.127957: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.127959 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.127960 !1021
beq_else.127959: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.127960: !1021
	addi	a5, zero, 1 !1025
beq_cont.127958: !1020
	jal 	zero, beq_cont.127956 !1014
beq_else.127955: !1014
	addi	a5, zero, 0 !1015
beq_cont.127956: !1014
beq_cont.127952: !1041
beq_cont.127932: !1039
	bne 	a5, zero, beq_else.127961 !1408
	lw  	a3, 12(a4) !1436
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127962 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127962: !1436
	addi	a0, a0, 1 !1437
	lw  	a3, 0(a2) !529
	lwr 	a4, a1, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.127964 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127964: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.127966 !1039
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
	bne 	s1, zero, beq_else.127968 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.127969 !924
beq_else.127968: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.127970 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.127971 !925
beq_else.127970: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.127971: !925
beq_cont.127969: !924
	bne 	s1, zero, beq_else.127972 !923
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
	bne 	s1, zero, beq_else.127974 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.127975 !933
beq_else.127974: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.127976 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.127977 !934
beq_else.127976: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.127977: !934
beq_cont.127975: !933
	bne 	s1, zero, beq_else.127978 !932
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
	bne 	s1, zero, beq_else.127980 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.127981 !942
beq_else.127980: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.127982 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.127983 !943
beq_else.127982: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.127983: !943
beq_cont.127981: !942
	bne 	a5, zero, beq_else.127984 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.127985 !941
beq_else.127984: !941
	sw  	fa2, 135(zero) !948
	addi	a5, zero, 3 !948
beq_cont.127985: !941
	jal 	zero, beq_cont.127979 !932
beq_else.127978: !932
	sw  	fa3, 135(zero) !939
	addi	a5, zero, 2 !939
beq_cont.127979: !932
	jal 	zero, beq_cont.127973 !923
beq_else.127972: !923
	sw  	fa3, 135(zero) !930
	addi	a5, zero, 1 !930
beq_cont.127973: !923
	jal 	zero, beq_cont.127967 !1039
beq_else.127966: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.127986 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.127988 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.127989 !1004
beq_else.127988: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a5, zero, 1 !1006
beq_cont.127989: !1004
	jal 	zero, beq_cont.127987 !1041
beq_else.127986: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.127990 !1014
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
	bne 	a6, zero, beq_else.127992 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.127993 !1020
beq_else.127992: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.127994 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.127995 !1021
beq_else.127994: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.127995: !1021
	addi	a5, zero, 1 !1025
beq_cont.127993: !1020
	jal 	zero, beq_cont.127991 !1014
beq_else.127990: !1014
	addi	a5, zero, 0 !1015
beq_cont.127991: !1014
beq_cont.127987: !1041
beq_cont.127967: !1039
	bne 	a5, zero, beq_else.127996 !1408
	lw  	a3, 12(a4) !1436
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.127997 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127997: !1436
	addi	a0, a0, 1 !1437
	lw  	a3, 0(a2) !529
	lwr 	a4, a1, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.127999 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.127999: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.128001 !1039
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
	bne 	s1, zero, beq_else.128003 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.128004 !924
beq_else.128003: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128005 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.128006 !925
beq_else.128005: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.128006: !925
beq_cont.128004: !924
	bne 	s1, zero, beq_else.128007 !923
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
	bne 	s1, zero, beq_else.128009 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.128010 !933
beq_else.128009: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128011 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.128012 !934
beq_else.128011: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.128012: !934
beq_cont.128010: !933
	bne 	s1, zero, beq_else.128013 !932
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
	bne 	s1, zero, beq_else.128015 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.128016 !942
beq_else.128015: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.128017 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.128018 !943
beq_else.128017: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.128018: !943
beq_cont.128016: !942
	bne 	a5, zero, beq_else.128019 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.128020 !941
beq_else.128019: !941
	sw  	fa2, 135(zero) !948
	addi	a5, zero, 3 !948
beq_cont.128020: !941
	jal 	zero, beq_cont.128014 !932
beq_else.128013: !932
	sw  	fa3, 135(zero) !939
	addi	a5, zero, 2 !939
beq_cont.128014: !932
	jal 	zero, beq_cont.128008 !923
beq_else.128007: !923
	sw  	fa3, 135(zero) !930
	addi	a5, zero, 1 !930
beq_cont.128008: !923
	jal 	zero, beq_cont.128002 !1039
beq_else.128001: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.128021 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.128023 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.128024 !1004
beq_else.128023: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a5, zero, 1 !1006
beq_cont.128024: !1004
	jal 	zero, beq_cont.128022 !1041
beq_else.128021: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.128025 !1014
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
	bne 	a6, zero, beq_else.128027 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.128028 !1020
beq_else.128027: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.128029 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128030 !1021
beq_else.128029: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128030: !1021
	addi	a5, zero, 1 !1025
beq_cont.128028: !1020
	jal 	zero, beq_cont.128026 !1014
beq_else.128025: !1014
	addi	a5, zero, 0 !1015
beq_cont.128026: !1014
beq_cont.128022: !1041
beq_cont.128002: !1039
	bne 	a5, zero, beq_else.128031 !1408
	lw  	a3, 12(a4) !1436
	lw  	a3, 6(a3) !280
	bne 	a3, zero, beq_else.128032 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128032: !1436
	addi	a0, a0, 1 !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.128031: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a4, 1(sp) !121
	flt 	a4, zero, fa0 !121
	sw  	a2, 2(sp) !1414
	sw  	a1, 3(sp) !1414
	sw  	a0, 4(sp) !1414
	beq 	a4, zero, beq_cont.128035 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128037 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a3) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a3) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a3) !1420
	sw  	fa0, 5(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	sw  	a5, 6(sp) !1421
	sw  	fa0, 7(sp) !1421
	sw  	fa2, 8(sp) !1421
	sw  	fa1, 9(sp) !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 12 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -12 !1421
	beq 	a0, zero, beq_cont.128039 !1421
	lw  	a0, 5(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 9(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 8(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 7(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 1(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 6(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.128039: !1421
beq_cont.128037: !1415
beq_cont.128035: !1414
	lw  	a0, 4(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 3(sp) !1432
	lw  	a2, 2(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
beq_else.127996: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a4, 10(sp) !121
	flt 	a4, zero, fa0 !121
	sw  	a1, 3(sp) !1414
	sw  	a2, 2(sp) !1414
	sw  	a0, 11(sp) !1414
	beq 	a4, zero, beq_cont.128041 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128043 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a3) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a3) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a3) !1420
	sw  	fa0, 12(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	sw  	a5, 13(sp) !1421
	sw  	fa0, 14(sp) !1421
	sw  	fa2, 15(sp) !1421
	sw  	fa1, 16(sp) !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 20 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -20 !1421
	beq 	a0, zero, beq_cont.128045 !1421
	lw  	a0, 12(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 16(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 15(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 14(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 10(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 13(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.128045: !1421
beq_cont.128043: !1415
beq_cont.128041: !1414
	lw  	a0, 11(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a2, 2(sp) !529
	lw  	a1, 0(a2) !529
	lw  	a3, 3(sp) !1404
	lwr 	a4, a3, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.128046 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128046: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.128048 !1039
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
	bne 	s1, zero, beq_else.128050 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.128051 !924
beq_else.128050: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128052 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.128053 !925
beq_else.128052: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.128053: !925
beq_cont.128051: !924
	bne 	s1, zero, beq_else.128054 !923
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
	bne 	s1, zero, beq_else.128056 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.128057 !933
beq_else.128056: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128058 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.128059 !934
beq_else.128058: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.128059: !934
beq_cont.128057: !933
	bne 	s1, zero, beq_else.128060 !932
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
	bne 	s1, zero, beq_else.128062 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.128063 !942
beq_else.128062: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.128064 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.128065 !943
beq_else.128064: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.128065: !943
beq_cont.128063: !942
	bne 	a5, zero, beq_else.128066 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.128067 !941
beq_else.128066: !941
	sw  	fa2, 135(zero) !948
	addi	a5, zero, 3 !948
beq_cont.128067: !941
	jal 	zero, beq_cont.128061 !932
beq_else.128060: !932
	sw  	fa3, 135(zero) !939
	addi	a5, zero, 2 !939
beq_cont.128061: !932
	jal 	zero, beq_cont.128055 !923
beq_else.128054: !923
	sw  	fa3, 135(zero) !930
	addi	a5, zero, 1 !930
beq_cont.128055: !923
	jal 	zero, beq_cont.128049 !1039
beq_else.128048: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.128068 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.128070 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.128071 !1004
beq_else.128070: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a5, zero, 1 !1006
beq_cont.128071: !1004
	jal 	zero, beq_cont.128069 !1041
beq_else.128068: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.128072 !1014
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
	bne 	a6, zero, beq_else.128074 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.128075 !1020
beq_else.128074: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.128076 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128077 !1021
beq_else.128076: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128077: !1021
	addi	a5, zero, 1 !1025
beq_cont.128075: !1020
	jal 	zero, beq_cont.128073 !1014
beq_else.128072: !1014
	addi	a5, zero, 0 !1015
beq_cont.128073: !1014
beq_cont.128069: !1041
beq_cont.128049: !1039
	bne 	a5, zero, beq_else.128078 !1408
	lw  	a1, 12(a4) !1436
	lw  	a1, 6(a1) !280
	bne 	a1, zero, beq_else.128079 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128079: !1436
	addi	a0, a0, 1 !1437
	addi	a1, a3, 0 !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.128078: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a4, 17(sp) !121
	flt 	a4, zero, fa0 !121
	sw  	a0, 18(sp) !1414
	beq 	a4, zero, beq_cont.128082 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128084 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	sw  	fa0, 19(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	sw  	a5, 20(sp) !1421
	sw  	fa0, 21(sp) !1421
	sw  	fa2, 22(sp) !1421
	sw  	fa1, 23(sp) !1421
	addi	a1, a3, 0 !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 24 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -24 !1421
	beq 	a0, zero, beq_cont.128086 !1421
	lw  	a0, 19(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 23(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 22(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 21(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 17(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 20(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.128086: !1421
beq_cont.128084: !1415
beq_cont.128082: !1414
	lw  	a0, 18(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 3(sp) !1432
	lw  	a2, 2(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
beq_else.127961: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a4, 24(sp) !121
	flt 	a4, zero, fa0 !121
	sw  	a1, 3(sp) !1414
	sw  	a2, 2(sp) !1414
	sw  	a0, 25(sp) !1414
	beq 	a4, zero, beq_cont.128088 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128090 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a3) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a3) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a3) !1420
	sw  	fa0, 26(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	sw  	a5, 27(sp) !1421
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
	beq 	a0, zero, beq_cont.128092 !1421
	lw  	a0, 26(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 30(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 29(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 28(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 24(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 27(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.128092: !1421
beq_cont.128090: !1415
beq_cont.128088: !1414
	lw  	a0, 25(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a2, 2(sp) !529
	lw  	a1, 0(a2) !529
	lw  	a3, 3(sp) !1404
	lwr 	a4, a3, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.128093 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128093: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.128095 !1039
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
	bne 	s1, zero, beq_else.128097 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.128098 !924
beq_else.128097: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128099 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.128100 !925
beq_else.128099: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.128100: !925
beq_cont.128098: !924
	bne 	s1, zero, beq_else.128101 !923
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
	bne 	s1, zero, beq_else.128103 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.128104 !933
beq_else.128103: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128105 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.128106 !934
beq_else.128105: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.128106: !934
beq_cont.128104: !933
	bne 	s1, zero, beq_else.128107 !932
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
	bne 	s1, zero, beq_else.128109 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.128110 !942
beq_else.128109: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.128111 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.128112 !943
beq_else.128111: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.128112: !943
beq_cont.128110: !942
	bne 	a5, zero, beq_else.128113 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.128114 !941
beq_else.128113: !941
	sw  	fa2, 135(zero) !948
	addi	a5, zero, 3 !948
beq_cont.128114: !941
	jal 	zero, beq_cont.128108 !932
beq_else.128107: !932
	sw  	fa3, 135(zero) !939
	addi	a5, zero, 2 !939
beq_cont.128108: !932
	jal 	zero, beq_cont.128102 !923
beq_else.128101: !923
	sw  	fa3, 135(zero) !930
	addi	a5, zero, 1 !930
beq_cont.128102: !923
	jal 	zero, beq_cont.128096 !1039
beq_else.128095: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.128115 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.128117 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.128118 !1004
beq_else.128117: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a5, zero, 1 !1006
beq_cont.128118: !1004
	jal 	zero, beq_cont.128116 !1041
beq_else.128115: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.128119 !1014
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
	bne 	a6, zero, beq_else.128121 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.128122 !1020
beq_else.128121: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.128123 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128124 !1021
beq_else.128123: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128124: !1021
	addi	a5, zero, 1 !1025
beq_cont.128122: !1020
	jal 	zero, beq_cont.128120 !1014
beq_else.128119: !1014
	addi	a5, zero, 0 !1015
beq_cont.128120: !1014
beq_cont.128116: !1041
beq_cont.128096: !1039
	bne 	a5, zero, beq_else.128125 !1408
	lw  	a1, 12(a4) !1436
	lw  	a1, 6(a1) !280
	bne 	a1, zero, beq_else.128126 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128126: !1436
	addi	a0, a0, 1 !1437
	lw  	a1, 0(a2) !529
	lwr 	a4, a3, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.128128 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128128: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.128130 !1039
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
	bne 	s1, zero, beq_else.128132 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.128133 !924
beq_else.128132: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128134 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.128135 !925
beq_else.128134: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.128135: !925
beq_cont.128133: !924
	bne 	s1, zero, beq_else.128136 !923
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
	bne 	s1, zero, beq_else.128138 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.128139 !933
beq_else.128138: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128140 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.128141 !934
beq_else.128140: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.128141: !934
beq_cont.128139: !933
	bne 	s1, zero, beq_else.128142 !932
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
	bne 	s1, zero, beq_else.128144 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.128145 !942
beq_else.128144: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.128146 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.128147 !943
beq_else.128146: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.128147: !943
beq_cont.128145: !942
	bne 	a5, zero, beq_else.128148 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.128149 !941
beq_else.128148: !941
	sw  	fa2, 135(zero) !948
	addi	a5, zero, 3 !948
beq_cont.128149: !941
	jal 	zero, beq_cont.128143 !932
beq_else.128142: !932
	sw  	fa3, 135(zero) !939
	addi	a5, zero, 2 !939
beq_cont.128143: !932
	jal 	zero, beq_cont.128137 !923
beq_else.128136: !923
	sw  	fa3, 135(zero) !930
	addi	a5, zero, 1 !930
beq_cont.128137: !923
	jal 	zero, beq_cont.128131 !1039
beq_else.128130: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.128150 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.128152 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.128153 !1004
beq_else.128152: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a5, zero, 1 !1006
beq_cont.128153: !1004
	jal 	zero, beq_cont.128151 !1041
beq_else.128150: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.128154 !1014
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
	bne 	a6, zero, beq_else.128156 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.128157 !1020
beq_else.128156: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.128158 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128159 !1021
beq_else.128158: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128159: !1021
	addi	a5, zero, 1 !1025
beq_cont.128157: !1020
	jal 	zero, beq_cont.128155 !1014
beq_else.128154: !1014
	addi	a5, zero, 0 !1015
beq_cont.128155: !1014
beq_cont.128151: !1041
beq_cont.128131: !1039
	bne 	a5, zero, beq_else.128160 !1408
	lw  	a1, 12(a4) !1436
	lw  	a1, 6(a1) !280
	bne 	a1, zero, beq_else.128161 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128161: !1436
	addi	a0, a0, 1 !1437
	addi	a1, a3, 0 !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.128160: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a4, 31(sp) !121
	flt 	a4, zero, fa0 !121
	sw  	a0, 32(sp) !1414
	beq 	a4, zero, beq_cont.128164 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128166 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	sw  	fa0, 33(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	sw  	a5, 34(sp) !1421
	sw  	fa0, 35(sp) !1421
	sw  	fa2, 36(sp) !1421
	sw  	fa1, 37(sp) !1421
	addi	a1, a3, 0 !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 40 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -40 !1421
	beq 	a0, zero, beq_cont.128168 !1421
	lw  	a0, 33(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 37(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 36(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 35(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 31(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 34(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.128168: !1421
beq_cont.128166: !1415
beq_cont.128164: !1414
	lw  	a0, 32(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 3(sp) !1432
	lw  	a2, 2(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
beq_else.128125: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a4, 38(sp) !121
	flt 	a4, zero, fa0 !121
	sw  	a0, 39(sp) !1414
	beq 	a4, zero, beq_cont.128170 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128172 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	sw  	fa0, 40(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	sw  	a5, 41(sp) !1421
	sw  	fa0, 42(sp) !1421
	sw  	fa2, 43(sp) !1421
	sw  	fa1, 44(sp) !1421
	addi	a1, a3, 0 !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 48 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -48 !1421
	beq 	a0, zero, beq_cont.128174 !1421
	lw  	a0, 40(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 44(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 43(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 42(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 38(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 41(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.128174: !1421
beq_cont.128172: !1415
beq_cont.128170: !1414
	lw  	a0, 39(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a2, 2(sp) !529
	lw  	a1, 0(a2) !529
	lw  	a3, 3(sp) !1404
	lwr 	a4, a3, a0 !1404
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.128175 !1405
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128175: !1405
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a7, a7, a4 !1037
	lw  	s1, 1(a5) !260
	addi	t0, zero, 1
	bne 	s1, t0, beq_else.128177 !1039
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
	bne 	s1, zero, beq_else.128179 !924
	addi	s1, zero, 0 !928
	jal 	zero, beq_cont.128180 !924
beq_else.128179: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128181 !925
	addi	s1, zero, 0 !927
	jal 	zero, beq_cont.128182 !925
beq_else.128181: !925
	lw  	fa4, 1(a7) !926
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !926
	addi	s1, t0, 1 !926
beq_cont.128182: !925
beq_cont.128180: !924
	bne 	s1, zero, beq_else.128183 !923
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
	bne 	s1, zero, beq_else.128185 !933
	addi	s1, zero, 0 !937
	jal 	zero, beq_cont.128186 !933
beq_else.128185: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	s1, 4(a5) !318
	lw  	fa5, 2(s1) !323
	flt 	s1, fa4, fa5 !121
	bne 	s1, zero, beq_else.128187 !934
	addi	s1, zero, 0 !936
	jal 	zero, beq_cont.128188 !934
beq_else.128187: !934
	lw  	fa4, 3(a7) !935
	feq 	s1, fa4, zero !124
	sub 	t0, zero, s1 !935
	addi	s1, t0, 1 !935
beq_cont.128188: !934
beq_cont.128186: !933
	bne 	s1, zero, beq_else.128189 !932
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
	bne 	s1, zero, beq_else.128191 !942
	addi	a5, zero, 0 !946
	jal 	zero, beq_cont.128192 !942
beq_else.128191: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.128193 !943
	addi	a5, zero, 0 !945
	jal 	zero, beq_cont.128194 !943
beq_else.128193: !943
	lw  	fa0, 5(a7) !944
	feq 	a5, fa0, zero !124
	sub 	t0, zero, a5 !944
	addi	a5, t0, 1 !944
beq_cont.128194: !943
beq_cont.128192: !942
	bne 	a5, zero, beq_else.128195 !941
	addi	a5, zero, 0 !950
	jal 	zero, beq_cont.128196 !941
beq_else.128195: !941
	sw  	fa2, 135(zero) !948
	addi	a5, zero, 3 !948
beq_cont.128196: !941
	jal 	zero, beq_cont.128190 !932
beq_else.128189: !932
	sw  	fa3, 135(zero) !939
	addi	a5, zero, 2 !939
beq_cont.128190: !932
	jal 	zero, beq_cont.128184 !923
beq_else.128183: !923
	sw  	fa3, 135(zero) !930
	addi	a5, zero, 1 !930
beq_cont.128184: !923
	jal 	zero, beq_cont.128178 !1039
beq_else.128177: !1039
	addi	t0, zero, 2
	bne 	s1, t0, beq_else.128197 !1041
	lw  	fa0, 0(a7) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.128199 !1004
	addi	a5, zero, 0 !1007
	jal 	zero, beq_cont.128200 !1004
beq_else.128199: !1004
	lw  	fa0, 0(a7) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a5, zero, 1 !1006
beq_cont.128200: !1004
	jal 	zero, beq_cont.128198 !1041
beq_else.128197: !1041
	lw  	fa3, 0(a7) !1013
	feq 	s1, fa3, zero !124
	bne 	s1, zero, beq_else.128201 !1014
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
	bne 	a6, zero, beq_else.128203 !1020
	addi	a5, zero, 0 !1026
	jal 	zero, beq_cont.128204 !1020
beq_else.128203: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.128205 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a7) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128206 !1021
beq_else.128205: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a7) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128206: !1021
	addi	a5, zero, 1 !1025
beq_cont.128204: !1020
	jal 	zero, beq_cont.128202 !1014
beq_else.128201: !1014
	addi	a5, zero, 0 !1015
beq_cont.128202: !1014
beq_cont.128198: !1041
beq_cont.128178: !1039
	bne 	a5, zero, beq_else.128207 !1408
	lw  	a1, 12(a4) !1436
	lw  	a1, 6(a1) !280
	bne 	a1, zero, beq_else.128208 !1436
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128208: !1436
	addi	a0, a0, 1 !1437
	addi	a1, a3, 0 !1437
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1437
beq_else.128207: !1408
	lw  	fa0, 135(zero) !1412
	sw  	a4, 45(sp) !121
	flt 	a4, zero, fa0 !121
	sw  	a0, 46(sp) !1414
	beq 	a4, zero, beq_cont.128211 !1414
	lw  	fa1, 137(zero) !1415
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128213 !1415
	li  	fa1, 0.010000 !1417
	fadd	fa0, fa0, fa1 !1417
	lw  	fa1, 0(a1) !1418
	fmul	fa1, fa1, fa0 !1418
	lw  	fa2, 162(zero) !1418
	fadd	fa1, fa1, fa2 !1418
	lw  	fa2, 1(a1) !1419
	fmul	fa2, fa2, fa0 !1419
	lw  	fa3, 163(zero) !1419
	fadd	fa2, fa2, fa3 !1419
	lw  	fa3, 2(a1) !1420
	sw  	fa0, 47(sp) !1420
	fmul	fa0, fa3, fa0 !1420
	lw  	fa3, 164(zero) !1420
	fadd	fa0, fa0, fa3 !1420
	addi	a0, zero, 0 !1421
	sw  	a5, 48(sp) !1421
	sw  	fa0, 49(sp) !1421
	sw  	fa2, 50(sp) !1421
	sw  	fa1, 51(sp) !1421
	addi	a1, a3, 0 !1421
	fsgnj   t0, fa2, fa2 !1421
	fsgnj   fa2, fa0, fa0 !1421
	fsgnj   fa0, fa1, fa1 !1421
	fsgnj   fa1, t0, t0 !1421
	addi	sp, sp, 52 !1421
	jal 	ra, check_all_inside.2689 !1421
	addi	sp, sp, -52 !1421
	beq 	a0, zero, beq_cont.128215 !1421
	lw  	a0, 47(sp) !1423
	sw  	a0, 137(zero) !1423
	lw  	a0, 51(sp) !169
	sw  	a0, 138(zero) !169
	lw  	a0, 50(sp) !170
	sw  	a0, 139(zero) !170
	lw  	a0, 49(sp) !171
	sw  	a0, 140(zero) !171
	lw  	a0, 45(sp) !1425
	sw  	a0, 141(zero) !1425
	lw  	a0, 48(sp) !1426
	sw  	a0, 136(zero) !1426
beq_cont.128215: !1421
beq_cont.128213: !1415
beq_cont.128211: !1414
	lw  	a0, 46(sp) !1432
	addi	a0, a0, 1 !1432
	lw  	a1, 3(sp) !1432
	lw  	a2, 2(sp) !1432
	lw  	ra, 0(sp)
	jal 	zero, solve_each_element_fast.2718 !1432
solve_one_or_network_fast.2722:
	sw  	ra, 0(sp)
	sw  	a0, 1(sp) !1444
	lwr 	a0, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.128216 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128216: !1445
	sw  	a1, 2(sp) !1446
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	sw  	a2, 3(sp) !1447
	addi	sp, sp, 4 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -4 !1447
	lw  	a0, 1(sp) !1448
	addi	a0, a0, 1 !1448
	sw  	a0, 4(sp) !1444
	lw  	a1, 2(sp) !1444
	lwr 	a0, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.128218 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128218: !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 3(sp) !1447
	addi	sp, sp, 8 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -8 !1447
	lw  	a0, 4(sp) !1448
	addi	a0, a0, 1 !1448
	sw  	a0, 5(sp) !1444
	lw  	a1, 2(sp) !1444
	lwr 	a0, a1, a0 !1444
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.128220 !1445
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128220: !1445
	lw  	a1, 83(a0) !1446
	addi	a0, zero, 0 !1447
	lw  	a2, 3(sp) !1447
	addi	sp, sp, 8 !1447
	jal 	ra, solve_each_element_fast.2718 !1447
	addi	sp, sp, -8 !1447
	lw  	a0, 5(sp) !1448
	addi	a0, a0, 1 !1448
	lw  	a1, 2(sp) !1448
	lw  	a2, 3(sp) !1448
	lw  	ra, 0(sp)
	jal 	zero, solve_one_or_network_fast.2722 !1448
trace_or_matrix_fast.2726:
	sw  	ra, 0(sp)
	lwr 	a3, a1, a0 !1454
	lw  	a4, 0(a3) !1455
	addi	t0, zero, -1
	bne 	a4, t0, beq_else.128222 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128222: !1456
	sw  	a2, 1(sp) !1459
	sw  	a1, 2(sp) !1459
	sw  	a0, 3(sp) !1459
	addi	t0, zero, 99
	bne 	a4, t0, beq_else.128224 !1459
	addi	a0, zero, 1 !1460
	addi	a1, a3, 0 !1460
	addi	sp, sp, 4 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -4 !1460
	jal 	zero, beq_cont.128225 !1459
beq_else.128224: !1459
	lw  	a5, 12(a4) !1031
	lw  	a6, 10(a5) !449
	lw  	fa0, 0(a6) !1033
	lw  	fa1, 1(a6) !1034
	lw  	fa2, 2(a6) !1035
	lw  	a7, 1(a2) !535
	lwr 	a4, a7, a4 !1037
	lw  	a7, 1(a5) !260
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.128226 !1039
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
	bne 	a7, zero, beq_else.128228 !924
	addi	a7, zero, 0 !928
	jal 	zero, beq_cont.128229 !924
beq_else.128228: !924
	lw  	fa4, 2(a6) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a7, 4(a5) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128230 !925
	addi	a7, zero, 0 !927
	jal 	zero, beq_cont.128231 !925
beq_else.128230: !925
	lw  	fa4, 1(a4) !926
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !926
	addi	a7, t0, 1 !926
beq_cont.128231: !925
beq_cont.128229: !924
	bne 	a7, zero, beq_else.128232 !923
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
	bne 	a7, zero, beq_else.128234 !933
	addi	a7, zero, 0 !937
	jal 	zero, beq_cont.128235 !933
beq_else.128234: !933
	lw  	fa4, 2(a6) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a7, 4(a5) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128236 !934
	addi	a7, zero, 0 !936
	jal 	zero, beq_cont.128237 !934
beq_else.128236: !934
	lw  	fa4, 3(a4) !935
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !935
	addi	a7, t0, 1 !935
beq_cont.128237: !934
beq_cont.128235: !933
	bne 	a7, zero, beq_else.128238 !932
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
	bne 	a7, zero, beq_else.128240 !942
	addi	a4, zero, 0 !946
	jal 	zero, beq_cont.128241 !942
beq_else.128240: !942
	lw  	fa0, 1(a6) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a5, 4(a5) !308
	lw  	fa1, 1(a5) !313
	flt 	a5, fa0, fa1 !121
	bne 	a5, zero, beq_else.128242 !943
	addi	a4, zero, 0 !945
	jal 	zero, beq_cont.128243 !943
beq_else.128242: !943
	lw  	fa0, 5(a4) !944
	feq 	a4, fa0, zero !124
	sub 	t0, zero, a4 !944
	addi	a4, t0, 1 !944
beq_cont.128243: !943
beq_cont.128241: !942
	bne 	a4, zero, beq_else.128244 !941
	addi	a4, zero, 0 !950
	jal 	zero, beq_cont.128245 !941
beq_else.128244: !941
	sw  	fa2, 135(zero) !948
	addi	a4, zero, 3 !948
beq_cont.128245: !941
	jal 	zero, beq_cont.128239 !932
beq_else.128238: !932
	sw  	fa3, 135(zero) !939
	addi	a4, zero, 2 !939
beq_cont.128239: !932
	jal 	zero, beq_cont.128233 !923
beq_else.128232: !923
	sw  	fa3, 135(zero) !930
	addi	a4, zero, 1 !930
beq_cont.128233: !923
	jal 	zero, beq_cont.128227 !1039
beq_else.128226: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.128246 !1041
	lw  	fa0, 0(a4) !1004
	flt 	a5, fa0, zero !123
	bne 	a5, zero, beq_else.128248 !1004
	addi	a4, zero, 0 !1007
	jal 	zero, beq_cont.128249 !1004
beq_else.128248: !1004
	lw  	fa0, 0(a4) !1005
	lw  	fa1, 3(a6) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a4, zero, 1 !1006
beq_cont.128249: !1004
	jal 	zero, beq_cont.128247 !1041
beq_else.128246: !1041
	lw  	fa3, 0(a4) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.128250 !1014
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
	bne 	a6, zero, beq_else.128252 !1020
	addi	a4, zero, 0 !1026
	jal 	zero, beq_cont.128253 !1020
beq_else.128252: !1020
	lw  	a5, 6(a5) !280
	bne 	a5, zero, beq_else.128254 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a4) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128255 !1021
beq_else.128254: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a4) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128255: !1021
	addi	a4, zero, 1 !1025
beq_cont.128253: !1020
	jal 	zero, beq_cont.128251 !1014
beq_else.128250: !1014
	addi	a4, zero, 0 !1015
beq_cont.128251: !1014
beq_cont.128247: !1041
beq_cont.128227: !1039
	beq 	a4, zero, beq_cont.128257 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a4, fa0, fa1 !121
	beq 	a4, zero, beq_cont.128259 !1467
	addi	a0, zero, 1 !1468
	addi	a1, a3, 0 !1468
	addi	sp, sp, 4 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -4 !1468
beq_cont.128259: !1467
beq_cont.128257: !1465
beq_cont.128225: !1459
	lw  	a0, 3(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1454
	lwr 	a2, a1, a0 !1454
	lw  	a3, 0(a2) !1455
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.128260 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128260: !1456
	sw  	a0, 4(sp) !1459
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.128262 !1459
	addi	a0, zero, 1 !1460
	lw  	a1, 1(sp) !1460
	addi	t0, a2, 0 !1460
	addi	a2, a1, 0 !1460
	addi	a1, t0, 0 !1460
	addi	sp, sp, 8 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -8 !1460
	jal 	zero, beq_cont.128263 !1459
beq_else.128262: !1459
	lw  	a4, 12(a3) !1031
	lw  	a5, 10(a4) !449
	lw  	fa0, 0(a5) !1033
	lw  	fa1, 1(a5) !1034
	lw  	fa2, 2(a5) !1035
	lw  	a6, 1(sp) !535
	lw  	a7, 1(a6) !535
	lwr 	a3, a7, a3 !1037
	lw  	a7, 1(a4) !260
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.128264 !1039
	lw  	a5, 0(a6) !529
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 1(a5) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a7, 4(a4) !308
	lw  	fa5, 1(a7) !313
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128266 !924
	addi	a7, zero, 0 !928
	jal 	zero, beq_cont.128267 !924
beq_else.128266: !924
	lw  	fa4, 2(a5) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a7, 4(a4) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128268 !925
	addi	a7, zero, 0 !927
	jal 	zero, beq_cont.128269 !925
beq_else.128268: !925
	lw  	fa4, 1(a3) !926
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !926
	addi	a7, t0, 1 !926
beq_cont.128269: !925
beq_cont.128267: !924
	bne 	a7, zero, beq_else.128270 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 0(a5) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a7, 4(a4) !298
	lw  	fa5, 0(a7) !303
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128272 !933
	addi	a7, zero, 0 !937
	jal 	zero, beq_cont.128273 !933
beq_else.128272: !933
	lw  	fa4, 2(a5) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a7, 4(a4) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128274 !934
	addi	a7, zero, 0 !936
	jal 	zero, beq_cont.128275 !934
beq_else.128274: !934
	lw  	fa4, 3(a3) !935
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !935
	addi	a7, t0, 1 !935
beq_cont.128275: !934
beq_cont.128273: !933
	bne 	a7, zero, beq_else.128276 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 0(a5) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a7, 4(a4) !298
	lw  	fa3, 0(a7) !303
	flt 	a7, fa0, fa3 !121
	bne 	a7, zero, beq_else.128278 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.128279 !942
beq_else.128278: !942
	lw  	fa0, 1(a5) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.128280 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.128281 !943
beq_else.128280: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.128281: !943
beq_cont.128279: !942
	bne 	a3, zero, beq_else.128282 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.128283 !941
beq_else.128282: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.128283: !941
	jal 	zero, beq_cont.128277 !932
beq_else.128276: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.128277: !932
	jal 	zero, beq_cont.128271 !923
beq_else.128270: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.128271: !923
	jal 	zero, beq_cont.128265 !1039
beq_else.128264: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.128284 !1041
	lw  	fa0, 0(a3) !1004
	flt 	a4, fa0, zero !123
	bne 	a4, zero, beq_else.128286 !1004
	addi	a3, zero, 0 !1007
	jal 	zero, beq_cont.128287 !1004
beq_else.128286: !1004
	lw  	fa0, 0(a3) !1005
	lw  	fa1, 3(a5) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a3, zero, 1 !1006
beq_cont.128287: !1004
	jal 	zero, beq_cont.128285 !1041
beq_else.128284: !1041
	lw  	fa3, 0(a3) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.128288 !1014
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
	bne 	a5, zero, beq_else.128290 !1020
	addi	a3, zero, 0 !1026
	jal 	zero, beq_cont.128291 !1020
beq_else.128290: !1020
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.128292 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a3) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128293 !1021
beq_else.128292: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a3) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128293: !1021
	addi	a3, zero, 1 !1025
beq_cont.128291: !1020
	jal 	zero, beq_cont.128289 !1014
beq_else.128288: !1014
	addi	a3, zero, 0 !1015
beq_cont.128289: !1014
beq_cont.128285: !1041
beq_cont.128265: !1039
	beq 	a3, zero, beq_cont.128295 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a3, fa0, fa1 !121
	beq 	a3, zero, beq_cont.128297 !1467
	addi	a0, zero, 1 !1468
	addi	a1, a2, 0 !1468
	addi	a2, a6, 0 !1468
	addi	sp, sp, 8 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -8 !1468
beq_cont.128297: !1467
beq_cont.128295: !1465
beq_cont.128263: !1459
	lw  	a0, 4(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1454
	lwr 	a2, a1, a0 !1454
	lw  	a3, 0(a2) !1455
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.128298 !1456
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128298: !1456
	sw  	a0, 5(sp) !1459
	addi	t0, zero, 99
	bne 	a3, t0, beq_else.128300 !1459
	addi	a0, zero, 1 !1460
	lw  	a1, 1(sp) !1460
	addi	t0, a2, 0 !1460
	addi	a2, a1, 0 !1460
	addi	a1, t0, 0 !1460
	addi	sp, sp, 8 !1460
	jal 	ra, solve_one_or_network_fast.2722 !1460
	addi	sp, sp, -8 !1460
	jal 	zero, beq_cont.128301 !1459
beq_else.128300: !1459
	lw  	a4, 12(a3) !1031
	lw  	a5, 10(a4) !449
	lw  	fa0, 0(a5) !1033
	lw  	fa1, 1(a5) !1034
	lw  	fa2, 2(a5) !1035
	lw  	a6, 1(sp) !535
	lw  	a7, 1(a6) !535
	lwr 	a3, a7, a3 !1037
	lw  	a7, 1(a4) !260
	addi	t0, zero, 1
	bne 	a7, t0, beq_else.128302 !1039
	lw  	a5, 0(a6) !529
	lw  	fa3, 0(a3) !922
	fsub	fa3, fa3, fa0 !922
	lw  	fa4, 1(a3) !922
	fmul	fa3, fa3, fa4 !922
	lw  	fa4, 1(a5) !924
	fmul	fa4, fa3, fa4 !924
	fadd	fa4, fa4, fa1 !924
	fsgnjx  fa4, fa4, fa4 !924
	lw  	a7, 4(a4) !308
	lw  	fa5, 1(a7) !313
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128304 !924
	addi	a7, zero, 0 !928
	jal 	zero, beq_cont.128305 !924
beq_else.128304: !924
	lw  	fa4, 2(a5) !925
	fmul	fa4, fa3, fa4 !925
	fadd	fa4, fa4, fa2 !925
	fsgnjx  fa4, fa4, fa4 !925
	lw  	a7, 4(a4) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128306 !925
	addi	a7, zero, 0 !927
	jal 	zero, beq_cont.128307 !925
beq_else.128306: !925
	lw  	fa4, 1(a3) !926
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !926
	addi	a7, t0, 1 !926
beq_cont.128307: !925
beq_cont.128305: !924
	bne 	a7, zero, beq_else.128308 !923
	lw  	fa3, 2(a3) !931
	fsub	fa3, fa3, fa1 !931
	lw  	fa4, 3(a3) !931
	fmul	fa3, fa3, fa4 !931
	lw  	fa4, 0(a5) !933
	fmul	fa4, fa3, fa4 !933
	fadd	fa4, fa4, fa0 !933
	fsgnjx  fa4, fa4, fa4 !933
	lw  	a7, 4(a4) !298
	lw  	fa5, 0(a7) !303
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128310 !933
	addi	a7, zero, 0 !937
	jal 	zero, beq_cont.128311 !933
beq_else.128310: !933
	lw  	fa4, 2(a5) !934
	fmul	fa4, fa3, fa4 !934
	fadd	fa4, fa4, fa2 !934
	fsgnjx  fa4, fa4, fa4 !934
	lw  	a7, 4(a4) !318
	lw  	fa5, 2(a7) !323
	flt 	a7, fa4, fa5 !121
	bne 	a7, zero, beq_else.128312 !934
	addi	a7, zero, 0 !936
	jal 	zero, beq_cont.128313 !934
beq_else.128312: !934
	lw  	fa4, 3(a3) !935
	feq 	a7, fa4, zero !124
	sub 	t0, zero, a7 !935
	addi	a7, t0, 1 !935
beq_cont.128313: !934
beq_cont.128311: !933
	bne 	a7, zero, beq_else.128314 !932
	lw  	fa3, 4(a3) !940
	fsub	fa2, fa3, fa2 !940
	lw  	fa3, 5(a3) !940
	fmul	fa2, fa2, fa3 !940
	lw  	fa3, 0(a5) !942
	fmul	fa3, fa2, fa3 !942
	fadd	fa0, fa3, fa0 !942
	fsgnjx  fa0, fa0, fa0 !942
	lw  	a7, 4(a4) !298
	lw  	fa3, 0(a7) !303
	flt 	a7, fa0, fa3 !121
	bne 	a7, zero, beq_else.128316 !942
	addi	a3, zero, 0 !946
	jal 	zero, beq_cont.128317 !942
beq_else.128316: !942
	lw  	fa0, 1(a5) !943
	fmul	fa0, fa2, fa0 !943
	fadd	fa0, fa0, fa1 !943
	fsgnjx  fa0, fa0, fa0 !943
	lw  	a4, 4(a4) !308
	lw  	fa1, 1(a4) !313
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.128318 !943
	addi	a3, zero, 0 !945
	jal 	zero, beq_cont.128319 !943
beq_else.128318: !943
	lw  	fa0, 5(a3) !944
	feq 	a3, fa0, zero !124
	sub 	t0, zero, a3 !944
	addi	a3, t0, 1 !944
beq_cont.128319: !943
beq_cont.128317: !942
	bne 	a3, zero, beq_else.128320 !941
	addi	a3, zero, 0 !950
	jal 	zero, beq_cont.128321 !941
beq_else.128320: !941
	sw  	fa2, 135(zero) !948
	addi	a3, zero, 3 !948
beq_cont.128321: !941
	jal 	zero, beq_cont.128315 !932
beq_else.128314: !932
	sw  	fa3, 135(zero) !939
	addi	a3, zero, 2 !939
beq_cont.128315: !932
	jal 	zero, beq_cont.128309 !923
beq_else.128308: !923
	sw  	fa3, 135(zero) !930
	addi	a3, zero, 1 !930
beq_cont.128309: !923
	jal 	zero, beq_cont.128303 !1039
beq_else.128302: !1039
	addi	t0, zero, 2
	bne 	a7, t0, beq_else.128322 !1041
	lw  	fa0, 0(a3) !1004
	flt 	a4, fa0, zero !123
	bne 	a4, zero, beq_else.128324 !1004
	addi	a3, zero, 0 !1007
	jal 	zero, beq_cont.128325 !1004
beq_else.128324: !1004
	lw  	fa0, 0(a3) !1005
	lw  	fa1, 3(a5) !1005
	fmul	fa0, fa0, fa1 !1005
	sw  	fa0, 135(zero) !1005
	addi	a3, zero, 1 !1006
beq_cont.128325: !1004
	jal 	zero, beq_cont.128323 !1041
beq_else.128322: !1041
	lw  	fa3, 0(a3) !1013
	feq 	a7, fa3, zero !124
	bne 	a7, zero, beq_else.128326 !1014
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
	bne 	a5, zero, beq_else.128328 !1020
	addi	a3, zero, 0 !1026
	jal 	zero, beq_cont.128329 !1020
beq_else.128328: !1020
	lw  	a4, 6(a4) !280
	bne 	a4, zero, beq_else.128330 !1021
	fsqrt   fa1, fa1 !1024
	fsub	fa0, fa0, fa1 !1024
	lw  	fa1, 4(a3) !1024
	fmul	fa0, fa0, fa1 !1024
	sw  	fa0, 135(zero) !1024
	jal 	zero, beq_cont.128331 !1021
beq_else.128330: !1021
	fsqrt   fa1, fa1 !1022
	fadd	fa0, fa0, fa1 !1022
	lw  	fa1, 4(a3) !1022
	fmul	fa0, fa0, fa1 !1022
	sw  	fa0, 135(zero) !1022
beq_cont.128331: !1021
	addi	a3, zero, 1 !1025
beq_cont.128329: !1020
	jal 	zero, beq_cont.128327 !1014
beq_else.128326: !1014
	addi	a3, zero, 0 !1015
beq_cont.128327: !1014
beq_cont.128323: !1041
beq_cont.128303: !1039
	beq 	a3, zero, beq_cont.128333 !1465
	lw  	fa0, 135(zero) !1466
	lw  	fa1, 137(zero) !1467
	flt 	a3, fa0, fa1 !121
	beq 	a3, zero, beq_cont.128335 !1467
	addi	a0, zero, 1 !1468
	addi	a1, a2, 0 !1468
	addi	a2, a6, 0 !1468
	addi	sp, sp, 8 !1468
	jal 	ra, solve_one_or_network_fast.2722 !1468
	addi	sp, sp, -8 !1468
beq_cont.128335: !1467
beq_cont.128333: !1465
beq_cont.128301: !1459
	lw  	a0, 5(sp) !1472
	addi	a0, a0, 1 !1472
	lw  	a1, 2(sp) !1472
	lw  	a2, 1(sp) !1472
	lw  	ra, 0(sp)
	jal 	zero, trace_or_matrix_fast.2726 !1472
trace_reflections.2748:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.128336 !1643
	sw  	a0, 1(sp) !1644
	lw  	a0, 254(a0) !1644
	lw  	a2, 1(a0) !549
	sw  	fa0, 2(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	sw  	a0, 3(sp) !1480
	addi	a0, zero, 0 !1480
	sw  	a1, 4(sp) !1480
	lw  	a1, 134(zero) !1480
	sw  	fa1, 5(sp) !1480
	sw  	a2, 6(sp) !1480
	addi	sp, sp, 8 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -8 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128337 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128338 !1483
beq_else.128337: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128338: !1483
	beq 	a0, zero, beq_cont.128340 !1648
	lw  	a0, 141(zero) !1649
	slli	a0, a0, 2 !1649
	lw  	a1, 136(zero) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 3(sp) !543
	lw  	a1, 0(a1) !543
	bne 	a0, a1, beq_cont.128342 !1650
	addi	a0, zero, 0 !1652
	lw  	a1, 134(zero) !1652
	addi	sp, sp, 8 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -8 !1652
	bne 	a0, zero, beq_cont.128344 !1652
	lw  	a0, 6(sp) !529
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
	lw  	a1, 3(sp) !555
	lw  	fa1, 2(a1) !555
	lw  	fa2, 2(sp) !1656
	fmul	fa2, fa1, fa2 !1656
	fmul	fa0, fa2, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 4(sp) !208
	lw  	fa2, 0(a1) !208
	lw  	fa3, 0(a0) !208
	fmul	fa2, fa2, fa3 !208
	lw  	fa3, 1(a1) !208
	lw  	fa4, 1(a0) !208
	fmul	fa3, fa3, fa4 !208
	fadd	fa2, fa2, fa3 !208
	lw  	fa3, 2(a1) !208
	lw  	fa4, 2(a0) !208
	fmul	fa3, fa3, fa4 !208
	fadd	fa2, fa2, fa3 !208
	fmul	fa1, fa1, fa2 !1657
	flt 	a0, zero, fa0 !122
	beq 	a0, zero, beq_cont.128346 !1627
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
beq_cont.128346: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.128348 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 5(sp) !1633
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
beq_cont.128348: !1632
beq_cont.128344: !1652
beq_cont.128342: !1650
beq_cont.128340: !1648
	lw  	a0, 1(sp) !1662
	addi	a0, a0, -1 !1662
	blt 	a0, zero, bge_else.128349 !1643
	sw  	a0, 7(sp) !1644
	lw  	a0, 254(a0) !1644
	lw  	a2, 1(a0) !549
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	sw  	a0, 8(sp) !1480
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 9(sp) !1480
	addi	sp, sp, 12 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -12 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128350 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128351 !1483
beq_else.128350: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128351: !1483
	beq 	a0, zero, beq_cont.128353 !1648
	lw  	a0, 141(zero) !1649
	slli	a0, a0, 2 !1649
	lw  	a1, 136(zero) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 8(sp) !543
	lw  	a1, 0(a1) !543
	bne 	a0, a1, beq_cont.128355 !1650
	addi	a0, zero, 0 !1652
	lw  	a1, 134(zero) !1652
	addi	sp, sp, 12 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -12 !1652
	bne 	a0, zero, beq_cont.128357 !1652
	lw  	a0, 9(sp) !529
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
	lw  	a1, 8(sp) !555
	lw  	fa1, 2(a1) !555
	lw  	fa2, 2(sp) !1656
	fmul	fa2, fa1, fa2 !1656
	fmul	fa0, fa2, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 4(sp) !208
	lw  	fa2, 0(a1) !208
	lw  	fa3, 0(a0) !208
	fmul	fa2, fa2, fa3 !208
	lw  	fa3, 1(a1) !208
	lw  	fa4, 1(a0) !208
	fmul	fa3, fa3, fa4 !208
	fadd	fa2, fa2, fa3 !208
	lw  	fa3, 2(a1) !208
	lw  	fa4, 2(a0) !208
	fmul	fa3, fa3, fa4 !208
	fadd	fa2, fa2, fa3 !208
	fmul	fa1, fa1, fa2 !1657
	flt 	a0, zero, fa0 !122
	beq 	a0, zero, beq_cont.128359 !1627
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
beq_cont.128359: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.128361 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 5(sp) !1633
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
beq_cont.128361: !1632
beq_cont.128357: !1652
beq_cont.128355: !1650
beq_cont.128353: !1648
	lw  	a0, 7(sp) !1662
	addi	a0, a0, -1 !1662
	blt 	a0, zero, bge_else.128362 !1643
	sw  	a0, 10(sp) !1644
	lw  	a0, 254(a0) !1644
	lw  	a2, 1(a0) !549
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	sw  	a0, 11(sp) !1480
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 12(sp) !1480
	addi	sp, sp, 16 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -16 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128363 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128364 !1483
beq_else.128363: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128364: !1483
	beq 	a0, zero, beq_cont.128366 !1648
	lw  	a0, 141(zero) !1649
	slli	a0, a0, 2 !1649
	lw  	a1, 136(zero) !1649
	add 	a0, a0, a1 !1649
	lw  	a1, 11(sp) !543
	lw  	a1, 0(a1) !543
	bne 	a0, a1, beq_cont.128368 !1650
	addi	a0, zero, 0 !1652
	lw  	a1, 134(zero) !1652
	addi	sp, sp, 16 !1652
	jal 	ra, shadow_check_one_or_matrix.2701 !1652
	addi	sp, sp, -16 !1652
	bne 	a0, zero, beq_cont.128370 !1652
	lw  	a0, 12(sp) !529
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
	lw  	a1, 11(sp) !555
	lw  	fa1, 2(a1) !555
	lw  	fa2, 2(sp) !1656
	fmul	fa3, fa1, fa2 !1656
	fmul	fa0, fa3, fa0 !1656
	lw  	a0, 0(a0) !529
	lw  	a1, 4(sp) !208
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
	beq 	a0, zero, beq_cont.128372 !1627
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
beq_cont.128372: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.128374 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 5(sp) !1633
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
beq_cont.128374: !1632
beq_cont.128370: !1652
beq_cont.128368: !1650
beq_cont.128366: !1648
	lw  	a0, 10(sp) !1662
	addi	a0, a0, -1 !1662
	lw  	fa0, 2(sp) !1662
	lw  	fa1, 5(sp) !1662
	lw  	a1, 4(sp) !1662
	lw  	ra, 0(sp)
	jal 	zero, trace_reflections.2748 !1662
bge_else.128362: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128349: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128336: !1643
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_ray.2753:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.128378 !1669
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
	bne 	a0, zero, beq_else.128379 !1394
	addi	a0, zero, 0 !1396
	jal 	zero, beq_cont.128380 !1394
beq_else.128379: !1394
	li  	fa1, 100000000.000000 !1395
	flt 	a0, fa0, fa1 !121
beq_cont.128380: !1394
	bne 	a0, zero, beq_else.128381 !1671
	addi	a0, zero, -1 !1734
	lw  	a1, 1(sp) !1734
	lw  	a2, 3(sp) !1734
	add 	t0, a2, a1 !1734
	sw  	a0, 0(t0) !1734
	bne 	a1, zero, beq_else.128382 !1736
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128382: !1736
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
	bne 	a0, zero, beq_else.128384 !1739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128384: !1739
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
beq_else.128381: !1671
	lw  	a0, 141(zero) !1673
	lw  	a1, 12(a0) !1674
	lw  	a2, 2(a1) !270
	sw  	a2, 7(sp) !368
	lw  	a2, 7(a1) !368
	lw  	fa0, 0(a2) !373
	lw  	fa1, 2(sp) !1676
	fmul	fa0, fa0, fa1 !1676
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128387 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lw  	a4, 6(sp) !1500
	lwr 	fa2, a4, a2 !1500
	feq 	a2, fa2, zero !124
	bne 	a2, zero, beq_else.128389 !147
	flt 	a2, zero, fa2 !122
	bne 	a2, zero, beq_else.128391 !148
	li  	fa2, -1.000000 !149
	jal 	zero, beq_cont.128392 !148
beq_else.128391: !148
	li  	fa2, 1.000000 !148
beq_cont.128392: !148
	jal 	zero, beq_cont.128390 !147
beq_else.128389: !147
	addi	fa2, zero, 0
beq_cont.128390: !147
	fsgnjn  fa2, fa2, fa2 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa2, 0(t0) !1500
	jal 	zero, beq_cont.128388 !1536
beq_else.128387: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128393 !1538
	lw  	a2, 4(a1) !298
	lw  	fa2, 0(a2) !303
	fsgnjn  fa2, fa2, fa2 !1506
	sw  	fa2, 142(zero) !1506
	lw  	a2, 4(a1) !308
	lw  	fa2, 1(a2) !313
	fsgnjn  fa2, fa2, fa2 !1507
	sw  	fa2, 143(zero) !1507
	lw  	a2, 4(a1) !318
	lw  	fa2, 2(a2) !323
	fsgnjn  fa2, fa2, fa2 !1508
	sw  	fa2, 144(zero) !1508
	jal 	zero, beq_cont.128394 !1538
beq_else.128393: !1538
	lw  	fa2, 138(zero) !1513
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1513
	lw  	fa3, 139(zero) !1514
	lw  	a2, 5(a1) !348
	lw  	fa4, 1(a2) !353
	fsub	fa3, fa3, fa4 !1514
	lw  	fa4, 140(zero) !1515
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
	bne 	a2, zero, beq_else.128395 !1521
	sw  	fa5, 142(zero) !1522
	sw  	fa6, 143(zero) !1523
	sw  	fa7, 144(zero) !1524
	jal 	zero, beq_cont.128396 !1521
beq_else.128395: !1521
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
	sw  	fa5, 142(zero) !1526
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
	sw  	fa4, 143(zero) !1527
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
	sw  	fa2, 144(zero) !1528
beq_cont.128396: !1521
	lw  	a2, 6(a1) !280
	lw  	fa2, 142(zero) !199
	fmul	fa2, fa2, fa2 !126
	lw  	fa3, 143(zero) !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	lw  	fa3, 144(zero) !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	fsqrt   fa2, fa2 !199
	feq 	a3, fa2, zero !124
	bne 	a3, zero, beq_else.128397 !200
	bne 	a2, zero, beq_else.128399 !200
	li  	fa3, 1.000000 !200
	fdiv	fa2, fa3, fa2 !200
	jal 	zero, beq_cont.128398 !200
beq_else.128399: !200
	li  	fa3, -1.000000 !200
	fdiv	fa2, fa3, fa2 !200
beq_cont.128400: !200
	jal 	zero, beq_cont.128398 !200
beq_else.128397: !200
	li  	fa2, 1.000000 !200
beq_cont.128398: !200
	lw  	fa3, 142(zero) !201
	fmul	fa3, fa3, fa2 !201
	sw  	fa3, 142(zero) !201
	lw  	fa3, 143(zero) !202
	fmul	fa3, fa3, fa2 !202
	sw  	fa3, 143(zero) !202
	lw  	fa3, 144(zero) !203
	fmul	fa2, fa3, fa2 !203
	sw  	fa2, 144(zero) !203
beq_cont.128394: !1538
beq_cont.128388: !1536
	lw  	fa2, 138(zero) !188
	sw  	fa2, 159(zero) !188
	lw  	fa2, 139(zero) !189
	sw  	fa2, 160(zero) !189
	lw  	fa2, 140(zero) !190
	sw  	fa2, 161(zero) !190
	lw  	a2, 0(a1) !250
	lw  	a3, 8(a1) !388
	lw  	fa2, 0(a3) !393
	sw  	fa2, 145(zero) !1551
	lw  	a3, 8(a1) !398
	lw  	fa2, 1(a3) !403
	sw  	fa2, 146(zero) !1552
	lw  	a3, 8(a1) !408
	lw  	fa2, 2(a3) !413
	sw  	fa2, 147(zero) !1553
	sw  	fa0, 8(sp) !1554
	sw  	a1, 9(sp) !1554
	sw  	a0, 10(sp) !1554
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128401 !1554
	lw  	fa2, 138(zero) !1557
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1557
	li  	fa3, 0.050000 !1559
	fmul	fa3, fa2, fa3 !1559
	ftoi	t0, fa3 !1559
	itof	ft0, t0
	flt 	t0, fa3, ft0
	itof	ft1, t0
	fsub	fa3, ft0, ft1
	li  	fa4, 20.000000 !1559
	fmul	fa3, fa3, fa4 !1559
	fsub	fa2, fa2, fa3 !1560
	li  	fa3, 10.000000 !1560
	flt 	a2, fa2, fa3 !121
	lw  	fa2, 140(zero) !1562
	lw  	a3, 5(a1) !358
	lw  	fa3, 2(a3) !363
	fsub	fa2, fa2, fa3 !1562
	li  	fa3, 0.050000 !1564
	fmul	fa3, fa2, fa3 !1564
	ftoi	t0, fa3 !1564
	itof	ft0, t0
	flt 	t0, fa3, ft0
	itof	ft1, t0
	fsub	fa3, ft0, ft1
	li  	fa4, 20.000000 !1564
	fmul	fa3, fa3, fa4 !1564
	fsub	fa2, fa2, fa3 !1565
	li  	fa3, 10.000000 !1565
	flt 	a3, fa2, fa3 !121
	bne 	a2, zero, beq_else.128403 !1570
	bne 	a3, zero, beq_else.128405 !1570
	li  	fa2, 255.000000 !1570
	jal 	zero, beq_cont.128404 !1570
beq_else.128405: !1570
	addi	fa2, zero, 0
beq_cont.128406: !1570
	jal 	zero, beq_cont.128404 !1570
beq_else.128403: !1570
	bne 	a3, zero, beq_else.128407 !1569
	addi	fa2, zero, 0
	jal 	zero, beq_cont.128408 !1569
beq_else.128407: !1569
	li  	fa2, 255.000000 !1569
beq_cont.128408: !1569
beq_cont.128404: !1570
	sw  	fa2, 146(zero) !1567
	jal 	zero, beq_cont.128402 !1554
beq_else.128401: !1554
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128409 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 12 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -12 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128410 !1572
beq_else.128409: !1572
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.128411 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a0, 5(a1) !338
	lw  	fa1, 0(a0) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
	lw  	a0, 5(a1) !358
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
	addi	sp, sp, 12 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -12 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128412 !1579
beq_else.128411: !1579
	addi	t0, zero, 4
	bne 	a2, t0, beq_cont.128414 !1590
	lw  	fa2, 138(zero) !1592
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1592
	lw  	a2, 4(a1) !298
	lw  	fa3, 0(a2) !303
	fsqrt   fa3, fa3 !1592
	fmul	fa2, fa2, fa3 !1592
	lw  	fa3, 140(zero) !1593
	lw  	a2, 5(a1) !358
	lw  	fa4, 2(a2) !363
	fsub	fa3, fa3, fa4 !1593
	lw  	a2, 4(a1) !318
	lw  	fa4, 2(a2) !323
	fsqrt   fa4, fa4 !1593
	fmul	fa3, fa3, fa4 !1593
	fmul	fa4, fa2, fa2 !126
	fmul	fa5, fa3, fa3 !126
	fadd	fa4, fa4, fa5 !1594
	fsgnjx  fa5, fa2, fa2 !1596
	li  	fa6, 0.000100 !1596
	flt 	a2, fa5, fa6 !121
	sw  	fa4, 11(sp) !1596
	bne 	a2, zero, beq_else.128415 !1596
	fdiv	fa0, fa3, fa2 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 12 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -12 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128416 !1596
beq_else.128415: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128416: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 9(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a1, 4(a0) !308
	lw  	fa2, 1(a1) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 11(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a1, fa3, fa4 !121
	sw  	fa0, 12(sp) !1607
	bne 	a1, zero, beq_else.128417 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 16 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -16 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128418 !1607
beq_else.128417: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128418: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 12(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.128419 !1615
	jal 	zero, beq_cont.128420 !1615
beq_else.128419: !1615
	addi	fa0, zero, 0
beq_cont.128420: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128414: !1590
beq_cont.128412: !1579
beq_cont.128410: !1572
beq_cont.128402: !1554
	lw  	a0, 10(sp) !1683
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
	lw  	a3, 9(sp) !368
	lw  	a4, 7(a3) !368
	lw  	fa0, 0(a4) !373
	li  	fa1, 0.500000 !1689
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.128421 !1689
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
	lw  	fa0, 142(zero) !188
	sw  	fa0, 0(a0) !188
	lw  	fa0, 143(zero) !189
	sw  	fa0, 1(a0) !189
	lw  	fa0, 144(zero) !190
	sw  	fa0, 2(a0) !190
	jal 	zero, beq_cont.128422 !1689
beq_else.128421: !1689
	addi	a0, zero, 0 !1690
	add 	t0, a2, a1 !1690
	sw  	a0, 0(t0) !1690
beq_cont.128422: !1689
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
	lw  	a0, 7(a3) !378
	lw  	fa0, 1(a0) !383
	lw  	fa1, 2(sp) !1704
	fmul	fa0, fa1, fa0 !1704
	addi	a0, zero, 0 !1707
	lw  	a1, 134(zero) !1707
	sw  	fa0, 13(sp) !1707
	addi	sp, sp, 16 !1707
	jal 	ra, shadow_check_one_or_matrix.2701 !1707
	addi	sp, sp, -16 !1707
	bne 	a0, zero, beq_cont.128424 !1707
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
	lw  	fa1, 8(sp) !1708
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
	beq 	a0, zero, beq_cont.128426 !1627
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
beq_cont.128426: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.128428 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 13(sp) !1633
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
beq_cont.128428: !1632
beq_cont.128424: !1707
	lw  	fa0, 138(zero) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 139(zero) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 140(zero) !190
	sw  	fa0, 164(zero) !190
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, zero, 138 !0
	addi	sp, sp, 16 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -16 !1168
	lw  	a0, 434(zero) !1715
	addi	a0, a0, -1 !1715
	lw  	fa0, 8(sp) !1715
	lw  	fa1, 13(sp) !1715
	lw  	a1, 6(sp) !1715
	addi	sp, sp, 16 !1715
	jal 	ra, trace_reflections.2748 !1715
	addi	sp, sp, -16 !1715
	li  	fa0, 0.100000 !1718
	lw  	fa1, 2(sp) !121
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.128429 !1718
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128429: !1718
	lw  	a0, 1(sp) !1720
	addi	t0, zero, 4
	bge 	a0, t0, bge_cont.128432 !1720
	addi	a1, a0, 1 !1721
	addi	a2, zero, -1 !1721
	lw  	a3, 3(sp) !1721
	add 	t0, a3, a1 !1721
	sw  	a2, 0(t0) !1721
bge_cont.128432: !1720
	lw  	a1, 7(sp) !1724
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128433 !1724
	li  	fa0, 1.000000 !1725
	lw  	a1, 9(sp) !368
	lw  	a1, 7(a1) !368
	lw  	fa2, 0(a1) !373
	fsub	fa0, fa0, fa2 !1725
	fmul	fa0, fa1, fa0 !1725
	addi	a0, a0, 1 !1726
	sw  	fa0, 14(sp) !1726
	lw  	fa0, 137(zero) !1726
	lw  	fa1, 5(sp) !1726
	fadd	fa0, fa1, fa0 !1726
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.128434 !1669
	sw  	a0, 15(sp) !476
	lw  	a0, 4(sp) !476
	lw  	a0, 2(a0) !476
	sw  	fa0, 16(sp) !1390
	li  	fa0, 1000000000.000000 !1390
	sw  	fa0, 137(zero) !1390
	sw  	a0, 17(sp) !1391
	addi	a0, zero, 0 !1391
	lw  	a1, 134(zero) !1391
	lw  	a2, 6(sp) !1391
	addi	sp, sp, 20 !1391
	jal 	ra, trace_or_matrix.2712 !1391
	addi	sp, sp, -20 !1391
	lw  	fa0, 137(zero) !1392
	li  	fa1, -0.100000 !1394
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128435 !1394
	addi	a0, zero, 0 !1396
	jal 	zero, beq_cont.128436 !1394
beq_else.128435: !1394
	li  	fa1, 100000000.000000 !1395
	flt 	a0, fa0, fa1 !121
beq_cont.128436: !1394
	bne 	a0, zero, beq_else.128437 !1671
	addi	a0, zero, -1 !1734
	lw  	a1, 15(sp) !1734
	lw  	a2, 17(sp) !1734
	add 	t0, a2, a1 !1734
	sw  	a0, 0(t0) !1734
	bne 	a1, zero, beq_else.128438 !1736
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128438: !1736
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
	bne 	a0, zero, beq_else.128440 !1739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128440: !1739
	fmul	fa1, fa0, fa0 !126
	fmul	fa0, fa1, fa0 !1742
	lw  	fa1, 14(sp) !1742
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
beq_else.128437: !1671
	lw  	a0, 141(zero) !1673
	lw  	a1, 12(a0) !1674
	lw  	a2, 2(a1) !270
	sw  	a2, 18(sp) !368
	lw  	a2, 7(a1) !368
	lw  	fa0, 0(a2) !373
	lw  	fa1, 14(sp) !1676
	fmul	fa0, fa0, fa1 !1676
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128443 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lw  	a4, 6(sp) !1500
	lwr 	fa2, a4, a2 !1500
	feq 	a2, fa2, zero !124
	bne 	a2, zero, beq_else.128445 !147
	flt 	a2, zero, fa2 !122
	bne 	a2, zero, beq_else.128447 !148
	li  	fa2, -1.000000 !149
	jal 	zero, beq_cont.128448 !148
beq_else.128447: !148
	li  	fa2, 1.000000 !148
beq_cont.128448: !148
	jal 	zero, beq_cont.128446 !147
beq_else.128445: !147
	addi	fa2, zero, 0
beq_cont.128446: !147
	fsgnjn  fa2, fa2, fa2 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa2, 0(t0) !1500
	jal 	zero, beq_cont.128444 !1536
beq_else.128443: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128449 !1538
	lw  	a2, 4(a1) !298
	lw  	fa2, 0(a2) !303
	fsgnjn  fa2, fa2, fa2 !1506
	sw  	fa2, 142(zero) !1506
	lw  	a2, 4(a1) !308
	lw  	fa2, 1(a2) !313
	fsgnjn  fa2, fa2, fa2 !1507
	sw  	fa2, 143(zero) !1507
	lw  	a2, 4(a1) !318
	lw  	fa2, 2(a2) !323
	fsgnjn  fa2, fa2, fa2 !1508
	sw  	fa2, 144(zero) !1508
	jal 	zero, beq_cont.128450 !1538
beq_else.128449: !1538
	lw  	fa2, 138(zero) !1513
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1513
	lw  	fa3, 139(zero) !1514
	lw  	a2, 5(a1) !348
	lw  	fa4, 1(a2) !353
	fsub	fa3, fa3, fa4 !1514
	lw  	fa4, 140(zero) !1515
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
	bne 	a2, zero, beq_else.128451 !1521
	sw  	fa5, 142(zero) !1522
	sw  	fa6, 143(zero) !1523
	sw  	fa7, 144(zero) !1524
	jal 	zero, beq_cont.128452 !1521
beq_else.128451: !1521
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
	sw  	fa5, 142(zero) !1526
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
	sw  	fa4, 143(zero) !1527
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
	sw  	fa2, 144(zero) !1528
beq_cont.128452: !1521
	lw  	a2, 6(a1) !280
	lw  	fa2, 142(zero) !199
	fmul	fa2, fa2, fa2 !126
	lw  	fa3, 143(zero) !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	lw  	fa3, 144(zero) !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	fsqrt   fa2, fa2 !199
	feq 	a3, fa2, zero !124
	bne 	a3, zero, beq_else.128453 !200
	bne 	a2, zero, beq_else.128455 !200
	li  	fa3, 1.000000 !200
	fdiv	fa2, fa3, fa2 !200
	jal 	zero, beq_cont.128454 !200
beq_else.128455: !200
	li  	fa3, -1.000000 !200
	fdiv	fa2, fa3, fa2 !200
beq_cont.128456: !200
	jal 	zero, beq_cont.128454 !200
beq_else.128453: !200
	li  	fa2, 1.000000 !200
beq_cont.128454: !200
	lw  	fa3, 142(zero) !201
	fmul	fa3, fa3, fa2 !201
	sw  	fa3, 142(zero) !201
	lw  	fa3, 143(zero) !202
	fmul	fa3, fa3, fa2 !202
	sw  	fa3, 143(zero) !202
	lw  	fa3, 144(zero) !203
	fmul	fa2, fa3, fa2 !203
	sw  	fa2, 144(zero) !203
beq_cont.128450: !1538
beq_cont.128444: !1536
	lw  	fa2, 138(zero) !188
	sw  	fa2, 159(zero) !188
	lw  	fa2, 139(zero) !189
	sw  	fa2, 160(zero) !189
	lw  	fa2, 140(zero) !190
	sw  	fa2, 161(zero) !190
	lw  	a2, 0(a1) !250
	lw  	a3, 8(a1) !388
	lw  	fa2, 0(a3) !393
	sw  	fa2, 145(zero) !1551
	lw  	a3, 8(a1) !398
	lw  	fa2, 1(a3) !403
	sw  	fa2, 146(zero) !1552
	lw  	a3, 8(a1) !408
	lw  	fa2, 2(a3) !413
	sw  	fa2, 147(zero) !1553
	sw  	fa0, 19(sp) !1554
	sw  	a1, 20(sp) !1554
	sw  	a0, 21(sp) !1554
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128457 !1554
	lw  	fa2, 138(zero) !1557
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1557
	li  	fa3, 0.050000 !1559
	fmul	fa3, fa2, fa3 !1559
	ftoi	t0, fa3 !1559
	itof	ft0, t0
	flt 	t0, fa3, ft0
	itof	ft1, t0
	fsub	fa3, ft0, ft1
	li  	fa4, 20.000000 !1559
	fmul	fa3, fa3, fa4 !1559
	fsub	fa2, fa2, fa3 !1560
	li  	fa3, 10.000000 !1560
	flt 	a2, fa2, fa3 !121
	lw  	fa2, 140(zero) !1562
	lw  	a3, 5(a1) !358
	lw  	fa3, 2(a3) !363
	fsub	fa2, fa2, fa3 !1562
	li  	fa3, 0.050000 !1564
	fmul	fa3, fa2, fa3 !1564
	ftoi	t0, fa3 !1564
	itof	ft0, t0
	flt 	t0, fa3, ft0
	itof	ft1, t0
	fsub	fa3, ft0, ft1
	li  	fa4, 20.000000 !1564
	fmul	fa3, fa3, fa4 !1564
	fsub	fa2, fa2, fa3 !1565
	li  	fa3, 10.000000 !1565
	flt 	a3, fa2, fa3 !121
	bne 	a2, zero, beq_else.128459 !1570
	bne 	a3, zero, beq_else.128461 !1570
	li  	fa2, 255.000000 !1570
	jal 	zero, beq_cont.128460 !1570
beq_else.128461: !1570
	addi	fa2, zero, 0
beq_cont.128462: !1570
	jal 	zero, beq_cont.128460 !1570
beq_else.128459: !1570
	bne 	a3, zero, beq_else.128463 !1569
	addi	fa2, zero, 0
	jal 	zero, beq_cont.128464 !1569
beq_else.128463: !1569
	li  	fa2, 255.000000 !1569
beq_cont.128464: !1569
beq_cont.128460: !1570
	sw  	fa2, 146(zero) !1567
	jal 	zero, beq_cont.128458 !1554
beq_else.128457: !1554
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128465 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 24 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -24 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128466 !1572
beq_else.128465: !1572
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.128467 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a0, 5(a1) !338
	lw  	fa1, 0(a0) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
	lw  	a0, 5(a1) !358
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
	addi	sp, sp, 24 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -24 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128468 !1579
beq_else.128467: !1579
	addi	t0, zero, 4
	bne 	a2, t0, beq_cont.128470 !1590
	lw  	fa2, 138(zero) !1592
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1592
	lw  	a2, 4(a1) !298
	lw  	fa3, 0(a2) !303
	fsqrt   fa3, fa3 !1592
	fmul	fa2, fa2, fa3 !1592
	lw  	fa3, 140(zero) !1593
	lw  	a2, 5(a1) !358
	lw  	fa4, 2(a2) !363
	fsub	fa3, fa3, fa4 !1593
	lw  	a2, 4(a1) !318
	lw  	fa4, 2(a2) !323
	fsqrt   fa4, fa4 !1593
	fmul	fa3, fa3, fa4 !1593
	fmul	fa4, fa2, fa2 !126
	fmul	fa5, fa3, fa3 !126
	fadd	fa4, fa4, fa5 !1594
	fsgnjx  fa5, fa2, fa2 !1596
	li  	fa6, 0.000100 !1596
	flt 	a2, fa5, fa6 !121
	sw  	fa4, 22(sp) !1596
	bne 	a2, zero, beq_else.128471 !1596
	fdiv	fa0, fa3, fa2 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 24 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -24 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128472 !1596
beq_else.128471: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128472: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 20(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a1, 4(a0) !308
	lw  	fa2, 1(a1) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 22(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a1, fa3, fa4 !121
	sw  	fa0, 23(sp) !1607
	bne 	a1, zero, beq_else.128473 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 24 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -24 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128474 !1607
beq_else.128473: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128474: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 23(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.128475 !1615
	jal 	zero, beq_cont.128476 !1615
beq_else.128475: !1615
	addi	fa0, zero, 0
beq_cont.128476: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128470: !1590
beq_cont.128468: !1579
beq_cont.128466: !1572
beq_cont.128458: !1554
	lw  	a0, 21(sp) !1683
	slli	a0, a0, 2 !1683
	lw  	a1, 136(zero) !1683
	add 	a0, a0, a1 !1683
	lw  	a1, 15(sp) !1683
	lw  	a2, 17(sp) !1683
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
	lw  	a3, 20(sp) !368
	lw  	a4, 7(a3) !368
	lw  	fa0, 0(a4) !373
	li  	fa1, 0.500000 !1689
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.128477 !1689
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
	lw  	fa1, 19(sp) !1695
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
	lw  	fa0, 142(zero) !188
	sw  	fa0, 0(a0) !188
	lw  	fa0, 143(zero) !189
	sw  	fa0, 1(a0) !189
	lw  	fa0, 144(zero) !190
	sw  	fa0, 2(a0) !190
	jal 	zero, beq_cont.128478 !1689
beq_else.128477: !1689
	addi	a0, zero, 0 !1690
	add 	t0, a2, a1 !1690
	sw  	a0, 0(t0) !1690
beq_cont.128478: !1689
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
	lw  	a0, 7(a3) !378
	lw  	fa0, 1(a0) !383
	lw  	fa1, 14(sp) !1704
	fmul	fa0, fa1, fa0 !1704
	addi	a0, zero, 0 !1707
	lw  	a1, 134(zero) !1707
	sw  	fa0, 24(sp) !1707
	addi	sp, sp, 28 !1707
	jal 	ra, shadow_check_one_or_matrix.2701 !1707
	addi	sp, sp, -28 !1707
	bne 	a0, zero, beq_cont.128480 !1707
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
	lw  	fa1, 19(sp) !1708
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
	beq 	a0, zero, beq_cont.128482 !1627
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
beq_cont.128482: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.128484 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 24(sp) !1633
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
beq_cont.128484: !1632
beq_cont.128480: !1707
	lw  	fa0, 138(zero) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 139(zero) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 140(zero) !190
	sw  	fa0, 164(zero) !190
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, zero, 138 !0
	addi	sp, sp, 28 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -28 !1168
	lw  	a0, 434(zero) !1715
	addi	a0, a0, -1 !1715
	lw  	fa0, 19(sp) !1715
	lw  	fa1, 24(sp) !1715
	lw  	a1, 6(sp) !1715
	addi	sp, sp, 28 !1715
	jal 	ra, trace_reflections.2748 !1715
	addi	sp, sp, -28 !1715
	li  	fa0, 0.100000 !1718
	lw  	fa1, 14(sp) !121
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.128485 !1718
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128485: !1718
	lw  	a0, 15(sp) !1720
	addi	t0, zero, 4
	bge 	a0, t0, bge_cont.128488 !1720
	addi	a1, a0, 1 !1721
	addi	a2, zero, -1 !1721
	lw  	a3, 17(sp) !1721
	add 	t0, a3, a1 !1721
	sw  	a2, 0(t0) !1721
bge_cont.128488: !1720
	lw  	a1, 18(sp) !1724
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128489 !1724
	li  	fa0, 1.000000 !1725
	lw  	a1, 20(sp) !368
	lw  	a1, 7(a1) !368
	lw  	fa2, 0(a1) !373
	fsub	fa0, fa0, fa2 !1725
	fmul	fa0, fa1, fa0 !1725
	addi	a0, a0, 1 !1726
	sw  	fa0, 25(sp) !1726
	lw  	fa0, 137(zero) !1726
	lw  	fa1, 16(sp) !1726
	fadd	fa0, fa1, fa0 !1726
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.128490 !1669
	sw  	a0, 26(sp) !476
	lw  	a0, 4(sp) !476
	lw  	a0, 2(a0) !476
	sw  	fa0, 27(sp) !1390
	li  	fa0, 1000000000.000000 !1390
	sw  	fa0, 137(zero) !1390
	sw  	a0, 28(sp) !1391
	addi	a0, zero, 0 !1391
	lw  	a1, 134(zero) !1391
	lw  	a2, 6(sp) !1391
	addi	sp, sp, 32 !1391
	jal 	ra, trace_or_matrix.2712 !1391
	addi	sp, sp, -32 !1391
	lw  	fa0, 137(zero) !1392
	li  	fa1, -0.100000 !1394
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128491 !1394
	addi	a0, zero, 0 !1396
	jal 	zero, beq_cont.128492 !1394
beq_else.128491: !1394
	li  	fa1, 100000000.000000 !1395
	flt 	a0, fa0, fa1 !121
beq_cont.128492: !1394
	bne 	a0, zero, beq_else.128493 !1671
	addi	a0, zero, -1 !1734
	lw  	a1, 26(sp) !1734
	lw  	a2, 28(sp) !1734
	add 	t0, a2, a1 !1734
	sw  	a0, 0(t0) !1734
	bne 	a1, zero, beq_else.128494 !1736
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128494: !1736
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
	bne 	a0, zero, beq_else.128496 !1739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128496: !1739
	fmul	fa1, fa0, fa0 !126
	fmul	fa0, fa1, fa0 !1742
	lw  	fa1, 25(sp) !1742
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
beq_else.128493: !1671
	lw  	a0, 141(zero) !1673
	lw  	a1, 12(a0) !1674
	lw  	a2, 2(a1) !270
	sw  	a2, 29(sp) !368
	lw  	a2, 7(a1) !368
	lw  	fa0, 0(a2) !373
	lw  	fa1, 25(sp) !1676
	fmul	fa0, fa0, fa1 !1676
	lw  	a2, 1(a1) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128499 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lw  	a4, 6(sp) !1500
	lwr 	fa2, a4, a2 !1500
	feq 	a2, fa2, zero !124
	bne 	a2, zero, beq_else.128501 !147
	flt 	a2, zero, fa2 !122
	bne 	a2, zero, beq_else.128503 !148
	li  	fa2, -1.000000 !149
	jal 	zero, beq_cont.128504 !148
beq_else.128503: !148
	li  	fa2, 1.000000 !148
beq_cont.128504: !148
	jal 	zero, beq_cont.128502 !147
beq_else.128501: !147
	addi	fa2, zero, 0
beq_cont.128502: !147
	fsgnjn  fa2, fa2, fa2 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa2, 0(t0) !1500
	jal 	zero, beq_cont.128500 !1536
beq_else.128499: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128505 !1538
	lw  	a2, 4(a1) !298
	lw  	fa2, 0(a2) !303
	fsgnjn  fa2, fa2, fa2 !1506
	sw  	fa2, 142(zero) !1506
	lw  	a2, 4(a1) !308
	lw  	fa2, 1(a2) !313
	fsgnjn  fa2, fa2, fa2 !1507
	sw  	fa2, 143(zero) !1507
	lw  	a2, 4(a1) !318
	lw  	fa2, 2(a2) !323
	fsgnjn  fa2, fa2, fa2 !1508
	sw  	fa2, 144(zero) !1508
	jal 	zero, beq_cont.128506 !1538
beq_else.128505: !1538
	lw  	fa2, 138(zero) !1513
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1513
	lw  	fa3, 139(zero) !1514
	lw  	a2, 5(a1) !348
	lw  	fa4, 1(a2) !353
	fsub	fa3, fa3, fa4 !1514
	lw  	fa4, 140(zero) !1515
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
	bne 	a2, zero, beq_else.128507 !1521
	sw  	fa5, 142(zero) !1522
	sw  	fa6, 143(zero) !1523
	sw  	fa7, 144(zero) !1524
	jal 	zero, beq_cont.128508 !1521
beq_else.128507: !1521
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
	sw  	fa5, 142(zero) !1526
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
	sw  	fa4, 143(zero) !1527
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
	sw  	fa2, 144(zero) !1528
beq_cont.128508: !1521
	lw  	a2, 6(a1) !280
	lw  	fa2, 142(zero) !199
	fmul	fa2, fa2, fa2 !126
	lw  	fa3, 143(zero) !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	lw  	fa3, 144(zero) !199
	fmul	fa3, fa3, fa3 !126
	fadd	fa2, fa2, fa3 !199
	fsqrt   fa2, fa2 !199
	feq 	a3, fa2, zero !124
	bne 	a3, zero, beq_else.128509 !200
	bne 	a2, zero, beq_else.128511 !200
	li  	fa3, 1.000000 !200
	fdiv	fa2, fa3, fa2 !200
	jal 	zero, beq_cont.128510 !200
beq_else.128511: !200
	li  	fa3, -1.000000 !200
	fdiv	fa2, fa3, fa2 !200
beq_cont.128512: !200
	jal 	zero, beq_cont.128510 !200
beq_else.128509: !200
	li  	fa2, 1.000000 !200
beq_cont.128510: !200
	lw  	fa3, 142(zero) !201
	fmul	fa3, fa3, fa2 !201
	sw  	fa3, 142(zero) !201
	lw  	fa3, 143(zero) !202
	fmul	fa3, fa3, fa2 !202
	sw  	fa3, 143(zero) !202
	lw  	fa3, 144(zero) !203
	fmul	fa2, fa3, fa2 !203
	sw  	fa2, 144(zero) !203
beq_cont.128506: !1538
beq_cont.128500: !1536
	lw  	fa2, 138(zero) !188
	sw  	fa2, 159(zero) !188
	lw  	fa2, 139(zero) !189
	sw  	fa2, 160(zero) !189
	lw  	fa2, 140(zero) !190
	sw  	fa2, 161(zero) !190
	lw  	a2, 0(a1) !250
	lw  	a3, 8(a1) !388
	lw  	fa2, 0(a3) !393
	sw  	fa2, 145(zero) !1551
	lw  	a3, 8(a1) !398
	lw  	fa2, 1(a3) !403
	sw  	fa2, 146(zero) !1552
	lw  	a3, 8(a1) !408
	lw  	fa2, 2(a3) !413
	sw  	fa2, 147(zero) !1553
	sw  	fa0, 30(sp) !1554
	sw  	a1, 31(sp) !1554
	sw  	a0, 32(sp) !1554
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128513 !1554
	lw  	fa2, 138(zero) !1557
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1557
	li  	fa3, 0.050000 !1559
	fmul	fa3, fa2, fa3 !1559
	ftoi	t0, fa3 !1559
	itof	ft0, t0
	flt 	t0, fa3, ft0
	itof	ft1, t0
	fsub	fa3, ft0, ft1
	li  	fa4, 20.000000 !1559
	fmul	fa3, fa3, fa4 !1559
	fsub	fa2, fa2, fa3 !1560
	li  	fa3, 10.000000 !1560
	flt 	a2, fa2, fa3 !121
	lw  	fa2, 140(zero) !1562
	lw  	a3, 5(a1) !358
	lw  	fa3, 2(a3) !363
	fsub	fa2, fa2, fa3 !1562
	li  	fa3, 0.050000 !1564
	fmul	fa3, fa2, fa3 !1564
	ftoi	t0, fa3 !1564
	itof	ft0, t0
	flt 	t0, fa3, ft0
	itof	ft1, t0
	fsub	fa3, ft0, ft1
	li  	fa4, 20.000000 !1564
	fmul	fa3, fa3, fa4 !1564
	fsub	fa2, fa2, fa3 !1565
	li  	fa3, 10.000000 !1565
	flt 	a3, fa2, fa3 !121
	bne 	a2, zero, beq_else.128515 !1570
	bne 	a3, zero, beq_else.128517 !1570
	li  	fa2, 255.000000 !1570
	jal 	zero, beq_cont.128516 !1570
beq_else.128517: !1570
	addi	fa2, zero, 0
beq_cont.128518: !1570
	jal 	zero, beq_cont.128516 !1570
beq_else.128515: !1570
	bne 	a3, zero, beq_else.128519 !1569
	addi	fa2, zero, 0
	jal 	zero, beq_cont.128520 !1569
beq_else.128519: !1569
	li  	fa2, 255.000000 !1569
beq_cont.128520: !1569
beq_cont.128516: !1570
	sw  	fa2, 146(zero) !1567
	jal 	zero, beq_cont.128514 !1554
beq_else.128513: !1554
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128521 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 36 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -36 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128522 !1572
beq_else.128521: !1572
	addi	t0, zero, 3
	bne 	a2, t0, beq_else.128523 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a0, 5(a1) !338
	lw  	fa1, 0(a0) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
	lw  	a0, 5(a1) !358
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
	addi	sp, sp, 36 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -36 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128524 !1579
beq_else.128523: !1579
	addi	t0, zero, 4
	bne 	a2, t0, beq_cont.128526 !1590
	lw  	fa2, 138(zero) !1592
	lw  	a2, 5(a1) !338
	lw  	fa3, 0(a2) !343
	fsub	fa2, fa2, fa3 !1592
	lw  	a2, 4(a1) !298
	lw  	fa3, 0(a2) !303
	fsqrt   fa3, fa3 !1592
	fmul	fa2, fa2, fa3 !1592
	lw  	fa3, 140(zero) !1593
	lw  	a2, 5(a1) !358
	lw  	fa4, 2(a2) !363
	fsub	fa3, fa3, fa4 !1593
	lw  	a2, 4(a1) !318
	lw  	fa4, 2(a2) !323
	fsqrt   fa4, fa4 !1593
	fmul	fa3, fa3, fa4 !1593
	fmul	fa4, fa2, fa2 !126
	fmul	fa5, fa3, fa3 !126
	fadd	fa4, fa4, fa5 !1594
	fsgnjx  fa5, fa2, fa2 !1596
	li  	fa6, 0.000100 !1596
	flt 	a2, fa5, fa6 !121
	sw  	fa4, 33(sp) !1596
	bne 	a2, zero, beq_else.128527 !1596
	fdiv	fa0, fa3, fa2 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 36 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -36 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128528 !1596
beq_else.128527: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128528: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 31(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a1, 4(a0) !308
	lw  	fa2, 1(a1) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 33(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a1, fa3, fa4 !121
	sw  	fa0, 34(sp) !1607
	bne 	a1, zero, beq_else.128529 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 36 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -36 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128530 !1607
beq_else.128529: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128530: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 34(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.128531 !1615
	jal 	zero, beq_cont.128532 !1615
beq_else.128531: !1615
	addi	fa0, zero, 0
beq_cont.128532: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128526: !1590
beq_cont.128524: !1579
beq_cont.128522: !1572
beq_cont.128514: !1554
	lw  	a0, 32(sp) !1683
	slli	a0, a0, 2 !1683
	lw  	a1, 136(zero) !1683
	add 	a0, a0, a1 !1683
	lw  	a1, 26(sp) !1683
	lw  	a2, 28(sp) !1683
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
	lw  	a3, 31(sp) !368
	lw  	a4, 7(a3) !368
	lw  	fa0, 0(a4) !373
	li  	fa1, 0.500000 !1689
	flt 	a4, fa0, fa1 !121
	bne 	a4, zero, beq_else.128533 !1689
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
	lw  	fa1, 30(sp) !1695
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
	lw  	fa0, 142(zero) !188
	sw  	fa0, 0(a0) !188
	lw  	fa0, 143(zero) !189
	sw  	fa0, 1(a0) !189
	lw  	fa0, 144(zero) !190
	sw  	fa0, 2(a0) !190
	jal 	zero, beq_cont.128534 !1689
beq_else.128533: !1689
	addi	a0, zero, 0 !1690
	add 	t0, a2, a1 !1690
	sw  	a0, 0(t0) !1690
beq_cont.128534: !1689
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
	lw  	a0, 7(a3) !378
	lw  	fa0, 1(a0) !383
	lw  	fa1, 25(sp) !1704
	fmul	fa0, fa1, fa0 !1704
	addi	a0, zero, 0 !1707
	lw  	a1, 134(zero) !1707
	sw  	fa0, 35(sp) !1707
	addi	sp, sp, 36 !1707
	jal 	ra, shadow_check_one_or_matrix.2701 !1707
	addi	sp, sp, -36 !1707
	bne 	a0, zero, beq_cont.128536 !1707
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
	lw  	fa1, 30(sp) !1708
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
	beq 	a0, zero, beq_cont.128538 !1627
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
beq_cont.128538: !1627
	flt 	a0, zero, fa1 !122
	beq 	a0, zero, beq_cont.128540 !1632
	fmul	fa0, fa1, fa1 !126
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 35(sp) !1633
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
beq_cont.128540: !1632
beq_cont.128536: !1707
	lw  	fa0, 138(zero) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 139(zero) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 140(zero) !190
	sw  	fa0, 164(zero) !190
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, zero, 138 !0
	addi	sp, sp, 36 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -36 !1168
	lw  	a0, 434(zero) !1715
	addi	a0, a0, -1 !1715
	lw  	fa0, 30(sp) !1715
	lw  	fa1, 35(sp) !1715
	lw  	a1, 6(sp) !1715
	addi	sp, sp, 36 !1715
	jal 	ra, trace_reflections.2748 !1715
	addi	sp, sp, -36 !1715
	li  	fa0, 0.100000 !1718
	lw  	fa1, 25(sp) !121
	flt 	a0, fa0, fa1 !121
	bne 	a0, zero, beq_else.128541 !1718
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128541: !1718
	lw  	a0, 26(sp) !1720
	addi	t0, zero, 4
	bge 	a0, t0, bge_cont.128544 !1720
	addi	a1, a0, 1 !1721
	addi	a2, zero, -1 !1721
	lw  	a3, 28(sp) !1721
	add 	t0, a3, a1 !1721
	sw  	a2, 0(t0) !1721
bge_cont.128544: !1720
	lw  	a1, 29(sp) !1724
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128545 !1724
	li  	fa0, 1.000000 !1725
	lw  	a1, 31(sp) !368
	lw  	a1, 7(a1) !368
	lw  	fa2, 0(a1) !373
	fsub	fa0, fa0, fa2 !1725
	fmul	fa0, fa1, fa0 !1725
	addi	a0, a0, 1 !1726
	lw  	fa1, 137(zero) !1726
	lw  	fa2, 27(sp) !1726
	fadd	fa1, fa2, fa1 !1726
	lw  	a1, 6(sp) !1726
	lw  	a2, 4(sp) !1726
	lw  	ra, 0(sp)
	jal 	zero, trace_ray.2753 !1726
beq_else.128545: !1724
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128490: !1669
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128489: !1724
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128434: !1669
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.128433: !1724
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128378: !1669
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_trace_diffuse_rays.2762:
	sw  	ra, 0(sp)
	blt 	a3, zero, bge_else.128552 !1777
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
	bne 	a4, zero, beq_else.128553 !1781
	lwr 	a2, a0, a3 !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	sw  	fa0, 5(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 6(sp) !1480
	addi	sp, sp, 8 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -8 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128555 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128556 !1483
beq_else.128555: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128556: !1483
	beq 	a0, zero, beq_cont.128558 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 6(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128559 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.128561 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.128563 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.128564 !148
beq_else.128563: !148
	li  	fa0, 1.000000 !148
beq_cont.128564: !148
	jal 	zero, beq_cont.128562 !147
beq_else.128561: !147
	addi	fa0, zero, 0
beq_cont.128562: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.128560 !1536
beq_else.128559: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128565 !1538
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
	jal 	zero, beq_cont.128566 !1538
beq_else.128565: !1538
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
	bne 	a1, zero, beq_else.128567 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.128568 !1521
beq_else.128567: !1521
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
beq_cont.128568: !1521
	lw  	a1, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.128569 !200
	bne 	a1, zero, beq_else.128571 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128570 !200
beq_else.128571: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.128572: !200
	jal 	zero, beq_cont.128570 !200
beq_else.128569: !200
	li  	fa0, 1.000000 !200
beq_cont.128570: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
beq_cont.128566: !1538
beq_cont.128560: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	sw  	fa0, 145(zero) !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	sw  	fa0, 146(zero) !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	sw  	fa0, 147(zero) !1553
	sw  	a0, 7(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.128573 !1554
	lw  	fa0, 138(zero) !1557
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
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
	flt 	a1, fa0, fa1 !121
	lw  	fa0, 140(zero) !1562
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
	bne 	a1, zero, beq_else.128575 !1570
	bne 	a0, zero, beq_else.128577 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.128576 !1570
beq_else.128577: !1570
	addi	fa0, zero, 0
beq_cont.128578: !1570
	jal 	zero, beq_cont.128576 !1570
beq_else.128575: !1570
	bne 	a0, zero, beq_else.128579 !1569
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128580 !1569
beq_else.128579: !1569
	li  	fa0, 255.000000 !1569
beq_cont.128580: !1569
beq_cont.128576: !1570
	sw  	fa0, 146(zero) !1567
	jal 	zero, beq_cont.128574 !1554
beq_else.128573: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128581 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 8 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -8 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128582 !1572
beq_else.128581: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.128583 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
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
	addi	sp, sp, 8 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -8 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128584 !1579
beq_else.128583: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_cont.128586 !1590
	lw  	fa0, 138(zero) !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lw  	fa1, 140(zero) !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a1, 4(a0) !318
	lw  	fa2, 2(a1) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsgnjx  fa3, fa0, fa0 !1596
	li  	fa4, 0.000100 !1596
	flt 	a1, fa3, fa4 !121
	sw  	fa2, 8(sp) !1596
	bne 	a1, zero, beq_else.128587 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 12 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -12 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128588 !1596
beq_else.128587: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128588: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 7(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a0, 4(a0) !308
	lw  	fa2, 1(a0) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 8(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a0, fa3, fa4 !121
	sw  	fa0, 9(sp) !1607
	bne 	a0, zero, beq_else.128589 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 12 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -12 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128590 !1607
beq_else.128589: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128590: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 9(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.128591 !1615
	jal 	zero, beq_cont.128592 !1615
beq_else.128591: !1615
	addi	fa0, zero, 0
beq_cont.128592: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128586: !1590
beq_cont.128584: !1579
beq_cont.128582: !1572
beq_cont.128574: !1554
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 12 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -12 !1767
	bne 	a0, zero, beq_cont.128594 !1767
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
	bne 	a0, zero, beq_else.128595 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128596 !1769
beq_else.128595: !1769
beq_cont.128596: !1769
	lw  	fa1, 5(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 7(sp) !368
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
beq_cont.128594: !1767
beq_cont.128558: !1761
	jal 	zero, beq_cont.128554 !1781
beq_else.128553: !1781
	addi	a1, a3, 1 !1782
	lwr 	a2, a0, a1 !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	sw  	fa0, 10(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 11(sp) !1480
	addi	sp, sp, 12 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -12 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128597 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128598 !1483
beq_else.128597: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128598: !1483
	beq 	a0, zero, beq_cont.128600 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 11(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128601 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.128603 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.128605 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.128606 !148
beq_else.128605: !148
	li  	fa0, 1.000000 !148
beq_cont.128606: !148
	jal 	zero, beq_cont.128604 !147
beq_else.128603: !147
	addi	fa0, zero, 0
beq_cont.128604: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.128602 !1536
beq_else.128601: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128607 !1538
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
	jal 	zero, beq_cont.128608 !1538
beq_else.128607: !1538
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
	bne 	a1, zero, beq_else.128609 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.128610 !1521
beq_else.128609: !1521
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
beq_cont.128610: !1521
	lw  	a1, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.128611 !200
	bne 	a1, zero, beq_else.128613 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128612 !200
beq_else.128613: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.128614: !200
	jal 	zero, beq_cont.128612 !200
beq_else.128611: !200
	li  	fa0, 1.000000 !200
beq_cont.128612: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
beq_cont.128608: !1538
beq_cont.128602: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	sw  	fa0, 145(zero) !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	sw  	fa0, 146(zero) !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	sw  	fa0, 147(zero) !1553
	sw  	a0, 12(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.128615 !1554
	lw  	fa0, 138(zero) !1557
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
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
	flt 	a1, fa0, fa1 !121
	lw  	fa0, 140(zero) !1562
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
	bne 	a1, zero, beq_else.128617 !1570
	bne 	a0, zero, beq_else.128619 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.128618 !1570
beq_else.128619: !1570
	addi	fa0, zero, 0
beq_cont.128620: !1570
	jal 	zero, beq_cont.128618 !1570
beq_else.128617: !1570
	bne 	a0, zero, beq_else.128621 !1569
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128622 !1569
beq_else.128621: !1569
	li  	fa0, 255.000000 !1569
beq_cont.128622: !1569
beq_cont.128618: !1570
	sw  	fa0, 146(zero) !1567
	jal 	zero, beq_cont.128616 !1554
beq_else.128615: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128623 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 16 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -16 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128624 !1572
beq_else.128623: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.128625 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
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
	addi	sp, sp, 16 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -16 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128626 !1579
beq_else.128625: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_cont.128628 !1590
	lw  	fa0, 138(zero) !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lw  	fa1, 140(zero) !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a1, 4(a0) !318
	lw  	fa2, 2(a1) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsgnjx  fa3, fa0, fa0 !1596
	li  	fa4, 0.000100 !1596
	flt 	a1, fa3, fa4 !121
	sw  	fa2, 13(sp) !1596
	bne 	a1, zero, beq_else.128629 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 16 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -16 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128630 !1596
beq_else.128629: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128630: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 12(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a0, 4(a0) !308
	lw  	fa2, 1(a0) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 13(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a0, fa3, fa4 !121
	sw  	fa0, 14(sp) !1607
	bne 	a0, zero, beq_else.128631 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 16 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -16 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128632 !1607
beq_else.128631: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128632: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
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
	bne 	a0, zero, beq_else.128633 !1615
	jal 	zero, beq_cont.128634 !1615
beq_else.128633: !1615
	addi	fa0, zero, 0
beq_cont.128634: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128628: !1590
beq_cont.128626: !1579
beq_cont.128624: !1572
beq_cont.128616: !1554
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 16 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -16 !1767
	bne 	a0, zero, beq_cont.128636 !1767
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
	bne 	a0, zero, beq_else.128637 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128638 !1769
beq_else.128637: !1769
beq_cont.128638: !1769
	lw  	fa1, 10(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 12(sp) !368
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
beq_cont.128636: !1767
beq_cont.128600: !1761
beq_cont.128554: !1781
	lw  	a0, 4(sp) !1786
	addi	a0, a0, -2 !1786
	blt 	a0, zero, bge_else.128639 !1777
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
	bne 	a2, zero, beq_else.128640 !1781
	lwr 	a2, a1, a0 !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	sw  	fa0, 16(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 17(sp) !1480
	addi	sp, sp, 20 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -20 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128642 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128643 !1483
beq_else.128642: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128643: !1483
	beq 	a0, zero, beq_cont.128645 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 17(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128646 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.128648 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.128650 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.128651 !148
beq_else.128650: !148
	li  	fa0, 1.000000 !148
beq_cont.128651: !148
	jal 	zero, beq_cont.128649 !147
beq_else.128648: !147
	addi	fa0, zero, 0
beq_cont.128649: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.128647 !1536
beq_else.128646: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128652 !1538
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
	jal 	zero, beq_cont.128653 !1538
beq_else.128652: !1538
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
	bne 	a1, zero, beq_else.128654 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.128655 !1521
beq_else.128654: !1521
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
beq_cont.128655: !1521
	lw  	a1, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.128656 !200
	bne 	a1, zero, beq_else.128658 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128657 !200
beq_else.128658: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.128659: !200
	jal 	zero, beq_cont.128657 !200
beq_else.128656: !200
	li  	fa0, 1.000000 !200
beq_cont.128657: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
beq_cont.128653: !1538
beq_cont.128647: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	sw  	fa0, 145(zero) !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	sw  	fa0, 146(zero) !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	sw  	fa0, 147(zero) !1553
	sw  	a0, 18(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.128660 !1554
	lw  	fa0, 138(zero) !1557
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
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
	flt 	a1, fa0, fa1 !121
	lw  	fa0, 140(zero) !1562
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
	bne 	a1, zero, beq_else.128662 !1570
	bne 	a0, zero, beq_else.128664 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.128663 !1570
beq_else.128664: !1570
	addi	fa0, zero, 0
beq_cont.128665: !1570
	jal 	zero, beq_cont.128663 !1570
beq_else.128662: !1570
	bne 	a0, zero, beq_else.128666 !1569
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128667 !1569
beq_else.128666: !1569
	li  	fa0, 255.000000 !1569
beq_cont.128667: !1569
beq_cont.128663: !1570
	sw  	fa0, 146(zero) !1567
	jal 	zero, beq_cont.128661 !1554
beq_else.128660: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128668 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 20 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -20 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128669 !1572
beq_else.128668: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.128670 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
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
	addi	sp, sp, 20 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -20 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128671 !1579
beq_else.128670: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_cont.128673 !1590
	lw  	fa0, 138(zero) !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lw  	fa1, 140(zero) !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a1, 4(a0) !318
	lw  	fa2, 2(a1) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsgnjx  fa3, fa0, fa0 !1596
	li  	fa4, 0.000100 !1596
	flt 	a1, fa3, fa4 !121
	sw  	fa2, 19(sp) !1596
	bne 	a1, zero, beq_else.128674 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 20 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -20 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128675 !1596
beq_else.128674: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128675: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 18(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a0, 4(a0) !308
	lw  	fa2, 1(a0) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 19(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a0, fa3, fa4 !121
	sw  	fa0, 20(sp) !1607
	bne 	a0, zero, beq_else.128676 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 24 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -24 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128677 !1607
beq_else.128676: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128677: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 20(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.128678 !1615
	jal 	zero, beq_cont.128679 !1615
beq_else.128678: !1615
	addi	fa0, zero, 0
beq_cont.128679: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128673: !1590
beq_cont.128671: !1579
beq_cont.128669: !1572
beq_cont.128661: !1554
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 24 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -24 !1767
	bne 	a0, zero, beq_cont.128681 !1767
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
	bne 	a0, zero, beq_else.128682 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128683 !1769
beq_else.128682: !1769
beq_cont.128683: !1769
	lw  	fa1, 16(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 18(sp) !368
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
beq_cont.128681: !1767
beq_cont.128645: !1761
	jal 	zero, beq_cont.128641 !1781
beq_else.128640: !1781
	addi	a0, a0, 1 !1782
	lwr 	a2, a1, a0 !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	sw  	fa0, 21(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 22(sp) !1480
	addi	sp, sp, 24 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -24 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128684 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128685 !1483
beq_else.128684: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128685: !1483
	beq 	a0, zero, beq_cont.128687 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 22(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128688 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.128690 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.128692 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.128693 !148
beq_else.128692: !148
	li  	fa0, 1.000000 !148
beq_cont.128693: !148
	jal 	zero, beq_cont.128691 !147
beq_else.128690: !147
	addi	fa0, zero, 0
beq_cont.128691: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.128689 !1536
beq_else.128688: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128694 !1538
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
	jal 	zero, beq_cont.128695 !1538
beq_else.128694: !1538
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
	bne 	a1, zero, beq_else.128696 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.128697 !1521
beq_else.128696: !1521
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
beq_cont.128697: !1521
	lw  	a1, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.128698 !200
	bne 	a1, zero, beq_else.128700 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128699 !200
beq_else.128700: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.128701: !200
	jal 	zero, beq_cont.128699 !200
beq_else.128698: !200
	li  	fa0, 1.000000 !200
beq_cont.128699: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
beq_cont.128695: !1538
beq_cont.128689: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	sw  	fa0, 145(zero) !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	sw  	fa0, 146(zero) !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	sw  	fa0, 147(zero) !1553
	sw  	a0, 23(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.128702 !1554
	lw  	fa0, 138(zero) !1557
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
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
	flt 	a1, fa0, fa1 !121
	lw  	fa0, 140(zero) !1562
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
	bne 	a1, zero, beq_else.128704 !1570
	bne 	a0, zero, beq_else.128706 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.128705 !1570
beq_else.128706: !1570
	addi	fa0, zero, 0
beq_cont.128707: !1570
	jal 	zero, beq_cont.128705 !1570
beq_else.128704: !1570
	bne 	a0, zero, beq_else.128708 !1569
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128709 !1569
beq_else.128708: !1569
	li  	fa0, 255.000000 !1569
beq_cont.128709: !1569
beq_cont.128705: !1570
	sw  	fa0, 146(zero) !1567
	jal 	zero, beq_cont.128703 !1554
beq_else.128702: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128710 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 24 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -24 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128711 !1572
beq_else.128710: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.128712 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
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
	addi	sp, sp, 24 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -24 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128713 !1579
beq_else.128712: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_cont.128715 !1590
	lw  	fa0, 138(zero) !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lw  	fa1, 140(zero) !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a1, 4(a0) !318
	lw  	fa2, 2(a1) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsgnjx  fa3, fa0, fa0 !1596
	li  	fa4, 0.000100 !1596
	flt 	a1, fa3, fa4 !121
	sw  	fa2, 24(sp) !1596
	bne 	a1, zero, beq_else.128716 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 28 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -28 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128717 !1596
beq_else.128716: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128717: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 23(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a0, 4(a0) !308
	lw  	fa2, 1(a0) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 24(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a0, fa3, fa4 !121
	sw  	fa0, 25(sp) !1607
	bne 	a0, zero, beq_else.128718 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 28 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -28 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128719 !1607
beq_else.128718: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128719: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
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
	bne 	a0, zero, beq_else.128720 !1615
	jal 	zero, beq_cont.128721 !1615
beq_else.128720: !1615
	addi	fa0, zero, 0
beq_cont.128721: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128715: !1590
beq_cont.128713: !1579
beq_cont.128711: !1572
beq_cont.128703: !1554
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 28 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -28 !1767
	bne 	a0, zero, beq_cont.128723 !1767
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
	bne 	a0, zero, beq_else.128724 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128725 !1769
beq_else.128724: !1769
beq_cont.128725: !1769
	lw  	fa1, 21(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 23(sp) !368
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
beq_cont.128723: !1767
beq_cont.128687: !1761
beq_cont.128641: !1781
	lw  	a0, 15(sp) !1786
	addi	a0, a0, -2 !1786
	blt 	a0, zero, bge_else.128726 !1777
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
	sw  	a0, 26(sp) !1781
	bne 	a2, zero, beq_else.128727 !1781
	lwr 	a2, a1, a0 !1784
	li  	fa1, 150.000000 !1784
	fdiv	fa0, fa0, fa1 !1784
	sw  	fa0, 27(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 28(sp) !1480
	addi	sp, sp, 32 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -32 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128729 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128730 !1483
beq_else.128729: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128730: !1483
	beq 	a0, zero, beq_cont.128732 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 28(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128733 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.128735 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.128737 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.128738 !148
beq_else.128737: !148
	li  	fa0, 1.000000 !148
beq_cont.128738: !148
	jal 	zero, beq_cont.128736 !147
beq_else.128735: !147
	addi	fa0, zero, 0
beq_cont.128736: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.128734 !1536
beq_else.128733: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128739 !1538
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
	jal 	zero, beq_cont.128740 !1538
beq_else.128739: !1538
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
	bne 	a1, zero, beq_else.128741 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.128742 !1521
beq_else.128741: !1521
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
beq_cont.128742: !1521
	lw  	a1, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.128743 !200
	bne 	a1, zero, beq_else.128745 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128744 !200
beq_else.128745: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.128746: !200
	jal 	zero, beq_cont.128744 !200
beq_else.128743: !200
	li  	fa0, 1.000000 !200
beq_cont.128744: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
beq_cont.128740: !1538
beq_cont.128734: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	sw  	fa0, 145(zero) !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	sw  	fa0, 146(zero) !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	sw  	fa0, 147(zero) !1553
	sw  	a0, 29(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.128747 !1554
	lw  	fa0, 138(zero) !1557
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
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
	flt 	a1, fa0, fa1 !121
	lw  	fa0, 140(zero) !1562
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
	bne 	a1, zero, beq_else.128749 !1570
	bne 	a0, zero, beq_else.128751 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.128750 !1570
beq_else.128751: !1570
	addi	fa0, zero, 0
beq_cont.128752: !1570
	jal 	zero, beq_cont.128750 !1570
beq_else.128749: !1570
	bne 	a0, zero, beq_else.128753 !1569
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128754 !1569
beq_else.128753: !1569
	li  	fa0, 255.000000 !1569
beq_cont.128754: !1569
beq_cont.128750: !1570
	sw  	fa0, 146(zero) !1567
	jal 	zero, beq_cont.128748 !1554
beq_else.128747: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128755 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 32 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -32 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128756 !1572
beq_else.128755: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.128757 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
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
	addi	sp, sp, 32 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -32 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128758 !1579
beq_else.128757: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_cont.128760 !1590
	lw  	fa0, 138(zero) !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lw  	fa1, 140(zero) !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a1, 4(a0) !318
	lw  	fa2, 2(a1) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsgnjx  fa3, fa0, fa0 !1596
	li  	fa4, 0.000100 !1596
	flt 	a1, fa3, fa4 !121
	sw  	fa2, 30(sp) !1596
	bne 	a1, zero, beq_else.128761 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 32 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -32 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128762 !1596
beq_else.128761: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128762: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 29(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a0, 4(a0) !308
	lw  	fa2, 1(a0) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 30(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a0, fa3, fa4 !121
	sw  	fa0, 31(sp) !1607
	bne 	a0, zero, beq_else.128763 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 32 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -32 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128764 !1607
beq_else.128763: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128764: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 31(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.128765 !1615
	jal 	zero, beq_cont.128766 !1615
beq_else.128765: !1615
	addi	fa0, zero, 0
beq_cont.128766: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128760: !1590
beq_cont.128758: !1579
beq_cont.128756: !1572
beq_cont.128748: !1554
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 32 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -32 !1767
	bne 	a0, zero, beq_cont.128768 !1767
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
	bne 	a0, zero, beq_else.128769 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128770 !1769
beq_else.128769: !1769
beq_cont.128770: !1769
	lw  	fa1, 27(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 29(sp) !368
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
beq_cont.128768: !1767
beq_cont.128732: !1761
	jal 	zero, beq_cont.128728 !1781
beq_else.128727: !1781
	addi	a0, a0, 1 !1782
	lwr 	a2, a1, a0 !1782
	li  	fa1, -150.000000 !1782
	fdiv	fa0, fa0, fa1 !1782
	sw  	fa0, 32(sp) !1479
	li  	fa0, 1000000000.000000 !1479
	sw  	fa0, 137(zero) !1479
	addi	a0, zero, 0 !1480
	lw  	a1, 134(zero) !1480
	sw  	a2, 33(sp) !1480
	addi	sp, sp, 36 !1480
	jal 	ra, trace_or_matrix_fast.2726 !1480
	addi	sp, sp, -36 !1480
	lw  	fa0, 137(zero) !1481
	li  	fa1, -0.100000 !1483
	flt 	a0, fa1, fa0 !121
	bne 	a0, zero, beq_else.128771 !1483
	addi	a0, zero, 0 !1485
	jal 	zero, beq_cont.128772 !1483
beq_else.128771: !1483
	li  	fa1, 100000000.000000 !1484
	flt 	a0, fa0, fa1 !121
beq_cont.128772: !1483
	beq 	a0, zero, beq_cont.128774 !1761
	lw  	a0, 141(zero) !1762
	lw  	a0, 12(a0) !1762
	lw  	a1, 33(sp) !529
	lw  	a1, 0(a1) !529
	lw  	a2, 1(a0) !260
	addi	t0, zero, 1
	bne 	a2, t0, beq_else.128775 !1536
	lw  	a2, 136(zero) !1497
	sw  	zero, 142(zero) !176
	sw  	zero, 143(zero) !177
	sw  	zero, 144(zero) !178
	addi	a3, a2, -1 !1500
	addi	a2, a2, -1 !1500
	lwr 	fa0, a1, a2 !1500
	feq 	a1, fa0, zero !124
	bne 	a1, zero, beq_else.128777 !147
	flt 	a1, zero, fa0 !122
	bne 	a1, zero, beq_else.128779 !148
	li  	fa0, -1.000000 !149
	jal 	zero, beq_cont.128780 !148
beq_else.128779: !148
	li  	fa0, 1.000000 !148
beq_cont.128780: !148
	jal 	zero, beq_cont.128778 !147
beq_else.128777: !147
	addi	fa0, zero, 0
beq_cont.128778: !147
	fsgnjn  fa0, fa0, fa0 !1500
	li  	t0, 142
	add 	t0, t0, a3
	sw  	fa0, 0(t0) !1500
	jal 	zero, beq_cont.128776 !1536
beq_else.128775: !1536
	addi	t0, zero, 2
	bne 	a2, t0, beq_else.128781 !1538
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
	jal 	zero, beq_cont.128782 !1538
beq_else.128781: !1538
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
	bne 	a1, zero, beq_else.128783 !1521
	sw  	fa3, 142(zero) !1522
	sw  	fa4, 143(zero) !1523
	sw  	fa5, 144(zero) !1524
	jal 	zero, beq_cont.128784 !1521
beq_else.128783: !1521
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
beq_cont.128784: !1521
	lw  	a1, 6(a0) !280
	lw  	fa0, 142(zero) !199
	fmul	fa0, fa0, fa0 !126
	lw  	fa1, 143(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	lw  	fa1, 144(zero) !199
	fmul	fa1, fa1, fa1 !126
	fadd	fa0, fa0, fa1 !199
	fsqrt   fa0, fa0 !199
	feq 	a2, fa0, zero !124
	bne 	a2, zero, beq_else.128785 !200
	bne 	a1, zero, beq_else.128787 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128786 !200
beq_else.128787: !200
	li  	fa1, -1.000000 !200
	fdiv	fa0, fa1, fa0 !200
beq_cont.128788: !200
	jal 	zero, beq_cont.128786 !200
beq_else.128785: !200
	li  	fa0, 1.000000 !200
beq_cont.128786: !200
	lw  	fa1, 142(zero) !201
	fmul	fa1, fa1, fa0 !201
	sw  	fa1, 142(zero) !201
	lw  	fa1, 143(zero) !202
	fmul	fa1, fa1, fa0 !202
	sw  	fa1, 143(zero) !202
	lw  	fa1, 144(zero) !203
	fmul	fa0, fa1, fa0 !203
	sw  	fa0, 144(zero) !203
beq_cont.128782: !1538
beq_cont.128776: !1536
	lw  	a1, 0(a0) !250
	lw  	a2, 8(a0) !388
	lw  	fa0, 0(a2) !393
	sw  	fa0, 145(zero) !1551
	lw  	a2, 8(a0) !398
	lw  	fa0, 1(a2) !403
	sw  	fa0, 146(zero) !1552
	lw  	a2, 8(a0) !408
	lw  	fa0, 2(a2) !413
	sw  	fa0, 147(zero) !1553
	sw  	a0, 34(sp) !1554
	addi	t0, zero, 1
	bne 	a1, t0, beq_else.128789 !1554
	lw  	fa0, 138(zero) !1557
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
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
	flt 	a1, fa0, fa1 !121
	lw  	fa0, 140(zero) !1562
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
	bne 	a1, zero, beq_else.128791 !1570
	bne 	a0, zero, beq_else.128793 !1570
	li  	fa0, 255.000000 !1570
	jal 	zero, beq_cont.128792 !1570
beq_else.128793: !1570
	addi	fa0, zero, 0
beq_cont.128794: !1570
	jal 	zero, beq_cont.128792 !1570
beq_else.128791: !1570
	bne 	a0, zero, beq_else.128795 !1569
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128796 !1569
beq_else.128795: !1569
	li  	fa0, 255.000000 !1569
beq_cont.128796: !1569
beq_cont.128792: !1570
	sw  	fa0, 146(zero) !1567
	jal 	zero, beq_cont.128790 !1554
beq_else.128789: !1554
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.128797 !1572
	lw  	fa0, 139(zero) !1575
	li  	fa1, 0.250000 !1575
	fmul	fa0, fa0, fa1 !1575
	addi	sp, sp, 36 !1575
	jal 	ra, sin !1575
	addi	sp, sp, -36 !1575
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1576
	fmul	fa1, fa1, fa0 !1576
	sw  	fa1, 145(zero) !1576
	li  	fa1, 255.000000 !1577
	li  	fa2, 1.000000 !1577
	fsub	fa0, fa2, fa0 !1577
	fmul	fa0, fa1, fa0 !1577
	sw  	fa0, 146(zero) !1577
	jal 	zero, beq_cont.128798 !1572
beq_else.128797: !1572
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.128799 !1579
	lw  	fa0, 138(zero) !1582
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1582
	lw  	fa1, 140(zero) !1583
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
	addi	sp, sp, 36 !1586
	jal 	ra, cos !1586
	addi	sp, sp, -36 !1586
	fmul	fa0, fa0, fa0 !126
	li  	fa1, 255.000000 !1587
	fmul	fa1, fa0, fa1 !1587
	sw  	fa1, 146(zero) !1587
	li  	fa1, 1.000000 !1588
	fsub	fa0, fa1, fa0 !1588
	li  	fa1, 255.000000 !1588
	fmul	fa0, fa0, fa1 !1588
	sw  	fa0, 147(zero) !1588
	jal 	zero, beq_cont.128800 !1579
beq_else.128799: !1579
	addi	t0, zero, 4
	bne 	a1, t0, beq_cont.128802 !1590
	lw  	fa0, 138(zero) !1592
	lw  	a1, 5(a0) !338
	lw  	fa1, 0(a1) !343
	fsub	fa0, fa0, fa1 !1592
	lw  	a1, 4(a0) !298
	lw  	fa1, 0(a1) !303
	fsqrt   fa1, fa1 !1592
	fmul	fa0, fa0, fa1 !1592
	lw  	fa1, 140(zero) !1593
	lw  	a1, 5(a0) !358
	lw  	fa2, 2(a1) !363
	fsub	fa1, fa1, fa2 !1593
	lw  	a1, 4(a0) !318
	lw  	fa2, 2(a1) !323
	fsqrt   fa2, fa2 !1593
	fmul	fa1, fa1, fa2 !1593
	fmul	fa2, fa0, fa0 !126
	fmul	fa3, fa1, fa1 !126
	fadd	fa2, fa2, fa3 !1594
	fsgnjx  fa3, fa0, fa0 !1596
	li  	fa4, 0.000100 !1596
	flt 	a1, fa3, fa4 !121
	sw  	fa2, 35(sp) !1596
	bne 	a1, zero, beq_else.128803 !1596
	fdiv	fa0, fa1, fa0 !1599
	fsgnjx  fa0, fa0, fa0 !1599
	addi	sp, sp, 36 !1601
	jal 	ra, atan !1601
	addi	sp, sp, -36 !1601
	li  	fa1, 30.000000 !1601
	fmul	fa0, fa0, fa1 !1601
	li  	fa1, 3.141593 !1601
	fdiv	fa0, fa0, fa1 !1601
	jal 	zero, beq_cont.128804 !1596
beq_else.128803: !1596
	li  	fa0, 15.000000 !1597
beq_cont.128804: !1596
	ftoi	t0, fa0 !1603
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1603
	lw  	fa1, 139(zero) !1605
	lw  	a0, 34(sp) !348
	lw  	a1, 5(a0) !348
	lw  	fa2, 1(a1) !353
	fsub	fa1, fa1, fa2 !1605
	lw  	a0, 4(a0) !308
	lw  	fa2, 1(a0) !313
	fsqrt   fa2, fa2 !1605
	fmul	fa1, fa1, fa2 !1605
	lw  	fa2, 35(sp) !1607
	fsgnjx  fa3, fa2, fa2 !1607
	li  	fa4, 0.000100 !1607
	flt 	a0, fa3, fa4 !121
	sw  	fa0, 36(sp) !1607
	bne 	a0, zero, beq_else.128805 !1607
	fdiv	fa0, fa1, fa2 !1610
	fsgnjx  fa0, fa0, fa0 !1610
	addi	sp, sp, 40 !1611
	jal 	ra, atan !1611
	addi	sp, sp, -40 !1611
	li  	fa1, 30.000000 !1611
	fmul	fa0, fa0, fa1 !1611
	li  	fa1, 3.141593 !1611
	fdiv	fa0, fa0, fa1 !1611
	jal 	zero, beq_cont.128806 !1607
beq_else.128805: !1607
	li  	fa0, 15.000000 !1608
beq_cont.128806: !1607
	ftoi	t0, fa0 !1613
	itof	ft0, t0
	flt 	t0, fa0, ft0
	itof	ft1, t0
	fsub	fa1, ft0, ft1
	fsub	fa0, fa0, fa1 !1613
	li  	fa1, 0.150000 !1614
	li  	fa2, 0.500000 !1614
	lw  	fa3, 36(sp) !1614
	fsub	fa2, fa2, fa3 !1614
	fmul	fa2, fa2, fa2 !126
	fsub	fa1, fa1, fa2 !1614
	li  	fa2, 0.500000 !1614
	fsub	fa0, fa2, fa0 !1614
	fmul	fa0, fa0, fa0 !126
	fsub	fa0, fa1, fa0 !1614
	flt 	a0, fa0, zero !123
	bne 	a0, zero, beq_else.128807 !1615
	jal 	zero, beq_cont.128808 !1615
beq_else.128807: !1615
	addi	fa0, zero, 0
beq_cont.128808: !1615
	li  	fa1, 255.000000 !1616
	fmul	fa0, fa1, fa0 !1616
	li  	fa1, 0.300000 !1616
	fdiv	fa0, fa0, fa1 !1616
	sw  	fa0, 147(zero) !1616
beq_cont.128802: !1590
beq_cont.128800: !1579
beq_cont.128798: !1572
beq_cont.128790: !1554
	addi	a0, zero, 0 !1767
	lw  	a1, 134(zero) !1767
	addi	sp, sp, 40 !1767
	jal 	ra, shadow_check_one_or_matrix.2701 !1767
	addi	sp, sp, -40 !1767
	bne 	a0, zero, beq_cont.128810 !1767
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
	bne 	a0, zero, beq_else.128811 !1769
	addi	fa0, zero, 0
	jal 	zero, beq_cont.128812 !1769
beq_else.128811: !1769
beq_cont.128812: !1769
	lw  	fa1, 32(sp) !1770
	fmul	fa0, fa1, fa0 !1770
	lw  	a0, 34(sp) !368
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
beq_cont.128810: !1767
beq_cont.128774: !1761
beq_cont.128728: !1781
	lw  	a0, 26(sp) !1786
	addi	a3, a0, -2 !1786
	lw  	a0, 3(sp) !1786
	lw  	a1, 2(sp) !1786
	lw  	a2, 1(sp) !1786
	lw  	ra, 0(sp)
	jal 	zero, iter_trace_diffuse_rays.2762 !1786
bge_else.128726: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128639: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128552: !1777
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
do_without_neighbors.2784:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.128816 !1863
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1866
	blt 	a2, zero, bge_else.128817 !1866
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1868
	sw  	a0, 1(sp) !1868
	sw  	a1, 2(sp) !1868
	beq 	a2, zero, beq_cont.128819 !1868
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
	beq 	a2, zero, beq_cont.128821 !1801
	lw  	a0, 179(zero) !1802
	lw  	fa0, 0(a3) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a3) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a3) !190
	sw  	fa0, 164(zero) !190
	sw  	a0, 7(sp) !1168
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, a3, 0 !1168
	addi	sp, sp, 8 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -8 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 7(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 8 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -8 !1795
beq_cont.128821: !1801
	lw  	a0, 6(sp) !1805
	addi	t0, zero, 1
	beq 	a0, t0, beq_cont.128823 !1805
	lw  	a0, 180(zero) !1806
	sw  	a0, 8(sp) !188
	lw  	a0, 5(sp) !188
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
	addi	a3, zero, 118 !1795
	lw  	a0, 8(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.128823: !1805
	lw  	a0, 6(sp) !1809
	addi	t0, zero, 2
	beq 	a0, t0, beq_cont.128825 !1809
	lw  	a0, 181(zero) !1810
	sw  	a0, 9(sp) !188
	lw  	a0, 5(sp) !188
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
	addi	a3, zero, 118 !1795
	lw  	a0, 9(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.128825: !1809
	lw  	a0, 6(sp) !1813
	addi	t0, zero, 3
	beq 	a0, t0, beq_cont.128827 !1813
	lw  	a0, 182(zero) !1814
	sw  	a0, 10(sp) !188
	lw  	a0, 5(sp) !188
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
	addi	a3, zero, 118 !1795
	lw  	a0, 10(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.128827: !1813
	lw  	a0, 6(sp) !1817
	addi	t0, zero, 4
	beq 	a0, t0, beq_cont.128829 !1817
	lw  	a0, 183(zero) !1818
	sw  	a0, 11(sp) !188
	lw  	a0, 5(sp) !188
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
	addi	a3, zero, 118 !1795
	lw  	a0, 11(sp) !1795
	lw  	a1, 3(sp) !1795
	lw  	a2, 5(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
beq_cont.128829: !1817
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
beq_cont.128819: !1868
	lw  	a0, 2(sp) !1871
	addi	a0, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.128830 !1863
	lw  	a1, 1(sp) !476
	lw  	a2, 2(a1) !476
	lwr 	a2, a2, a0 !1866
	blt 	a2, zero, bge_else.128831 !1866
	lw  	a2, 3(a1) !483
	lwr 	a2, a2, a0 !1868
	beq 	a2, zero, beq_cont.128833 !1868
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
	lw  	a2, 6(a1) !506
	lw  	a2, 0(a2) !508
	lwr 	a3, a3, a0 !1834
	sw  	a3, 12(sp) !1835
	lwr 	a3, a4, a0 !1835
	sw  	a0, 13(sp) !1801
	sw  	a5, 14(sp) !1801
	sw  	a3, 15(sp) !1801
	sw  	a2, 16(sp) !1801
	beq 	a2, zero, beq_cont.128835 !1801
	lw  	a0, 179(zero) !1802
	lw  	fa0, 0(a3) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a3) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a3) !190
	sw  	fa0, 164(zero) !190
	sw  	a0, 17(sp) !1168
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, a3, 0 !1168
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 17(sp) !1795
	lw  	a1, 12(sp) !1795
	lw  	a2, 15(sp) !1795
	addi	sp, sp, 20 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -20 !1795
beq_cont.128835: !1801
	lw  	a0, 16(sp) !1805
	addi	t0, zero, 1
	beq 	a0, t0, beq_cont.128837 !1805
	lw  	a0, 180(zero) !1806
	sw  	a0, 18(sp) !188
	lw  	a0, 15(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 18(sp) !1795
	lw  	a1, 12(sp) !1795
	lw  	a2, 15(sp) !1795
	addi	sp, sp, 20 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -20 !1795
beq_cont.128837: !1805
	lw  	a0, 16(sp) !1809
	addi	t0, zero, 2
	beq 	a0, t0, beq_cont.128839 !1809
	lw  	a0, 181(zero) !1810
	sw  	a0, 19(sp) !188
	lw  	a0, 15(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 20 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -20 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 19(sp) !1795
	lw  	a1, 12(sp) !1795
	lw  	a2, 15(sp) !1795
	addi	sp, sp, 20 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -20 !1795
beq_cont.128839: !1809
	lw  	a0, 16(sp) !1813
	addi	t0, zero, 3
	beq 	a0, t0, beq_cont.128841 !1813
	lw  	a0, 182(zero) !1814
	sw  	a0, 20(sp) !188
	lw  	a0, 15(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 24 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -24 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 20(sp) !1795
	lw  	a1, 12(sp) !1795
	lw  	a2, 15(sp) !1795
	addi	sp, sp, 24 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -24 !1795
beq_cont.128841: !1813
	lw  	a0, 16(sp) !1817
	addi	t0, zero, 4
	beq 	a0, t0, beq_cont.128843 !1817
	lw  	a0, 183(zero) !1818
	sw  	a0, 21(sp) !188
	lw  	a0, 15(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 24 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -24 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 21(sp) !1795
	lw  	a1, 12(sp) !1795
	lw  	a2, 15(sp) !1795
	addi	sp, sp, 24 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -24 !1795
beq_cont.128843: !1817
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
beq_cont.128833: !1868
	addi	a0, a0, 1 !1871
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.128844 !1863
	lw  	a1, 1(sp) !476
	lw  	a2, 2(a1) !476
	lwr 	a2, a2, a0 !1866
	blt 	a2, zero, bge_else.128845 !1866
	lw  	a2, 3(a1) !483
	lwr 	a2, a2, a0 !1868
	beq 	a2, zero, beq_cont.128847 !1868
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
	lw  	a2, 6(a1) !506
	lw  	a2, 0(a2) !508
	lwr 	a3, a3, a0 !1834
	sw  	a3, 22(sp) !1835
	lwr 	a3, a4, a0 !1835
	sw  	a0, 23(sp) !1801
	sw  	a5, 24(sp) !1801
	sw  	a3, 25(sp) !1801
	sw  	a2, 26(sp) !1801
	beq 	a2, zero, beq_cont.128849 !1801
	lw  	a0, 179(zero) !1802
	lw  	fa0, 0(a3) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a3) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a3) !190
	sw  	fa0, 164(zero) !190
	sw  	a0, 27(sp) !1168
	lw  	a0, 0(zero) !1168
	addi	a1, a0, -1 !1168
	addi	a0, a3, 0 !1168
	addi	sp, sp, 28 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -28 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 27(sp) !1795
	lw  	a1, 22(sp) !1795
	lw  	a2, 25(sp) !1795
	addi	sp, sp, 28 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -28 !1795
beq_cont.128849: !1801
	lw  	a0, 26(sp) !1805
	addi	t0, zero, 1
	beq 	a0, t0, beq_cont.128851 !1805
	lw  	a0, 180(zero) !1806
	sw  	a0, 28(sp) !188
	lw  	a0, 25(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 32 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -32 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 28(sp) !1795
	lw  	a1, 22(sp) !1795
	lw  	a2, 25(sp) !1795
	addi	sp, sp, 32 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -32 !1795
beq_cont.128851: !1805
	lw  	a0, 26(sp) !1809
	addi	t0, zero, 2
	beq 	a0, t0, beq_cont.128853 !1809
	lw  	a0, 181(zero) !1810
	sw  	a0, 29(sp) !188
	lw  	a0, 25(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 32 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -32 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 29(sp) !1795
	lw  	a1, 22(sp) !1795
	lw  	a2, 25(sp) !1795
	addi	sp, sp, 32 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -32 !1795
beq_cont.128853: !1809
	lw  	a0, 26(sp) !1813
	addi	t0, zero, 3
	beq 	a0, t0, beq_cont.128855 !1813
	lw  	a0, 182(zero) !1814
	sw  	a0, 30(sp) !188
	lw  	a0, 25(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 32 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -32 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 30(sp) !1795
	lw  	a1, 22(sp) !1795
	lw  	a2, 25(sp) !1795
	addi	sp, sp, 32 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -32 !1795
beq_cont.128855: !1813
	lw  	a0, 26(sp) !1817
	addi	t0, zero, 4
	beq 	a0, t0, beq_cont.128857 !1817
	lw  	a0, 183(zero) !1818
	sw  	a0, 31(sp) !188
	lw  	a0, 25(sp) !188
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	addi	sp, sp, 32 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -32 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 31(sp) !1795
	lw  	a1, 22(sp) !1795
	lw  	a2, 25(sp) !1795
	addi	sp, sp, 32 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -32 !1795
beq_cont.128857: !1817
	lw  	a0, 23(sp) !1836
	lw  	a1, 24(sp) !1836
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
beq_cont.128847: !1868
	addi	a1, a0, 1 !1871
	lw  	a0, 1(sp) !1871
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1871
bge_else.128845: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128844: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128831: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128830: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128817: !1866
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128816: !1863
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
try_exploit_neighbors.2800:
	sw  	ra, 0(sp)
	lwr 	a6, a3, a0 !1912
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.128864 !1913
	lw  	a7, 2(a6) !476
	lwr 	a7, a7, a5 !1891
	blt 	a7, zero, bge_else.128865 !1916
	lwr 	a7, a3, a0 !1896
	lw  	a7, 2(a7) !476
	lwr 	a7, a7, a5 !1891
	lwr 	s1, a2, a0 !1898
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128866 !1898
	lwr 	s1, a4, a0 !1899
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128868 !1899
	addi	s1, a0, -1 !1900
	lwr 	s1, a3, s1 !1900
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128870 !1900
	addi	s1, a0, 1 !1901
	lwr 	s1, a3, s1 !1901
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128872 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.128873 !1901
beq_else.128872: !1901
	addi	a7, zero, 0 !1903
beq_cont.128873: !1901
	jal 	zero, beq_cont.128871 !1900
beq_else.128870: !1900
	addi	a7, zero, 0 !1904
beq_cont.128871: !1900
	jal 	zero, beq_cont.128869 !1899
beq_else.128868: !1899
	addi	a7, zero, 0 !1905
beq_cont.128869: !1899
	jal 	zero, beq_cont.128867 !1898
beq_else.128866: !1898
	addi	a7, zero, 0 !1906
beq_cont.128867: !1898
	bne 	a7, zero, beq_else.128874 !1918
	lwr 	a0, a3, a0 !1930
	addi	a1, a5, 0 !1930
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1930
beq_else.128874: !1918
	lw  	a6, 3(a6) !483
	lwr 	a6, a6, a5 !1922
	beq 	a6, zero, beq_cont.128876 !1922
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
beq_cont.128876: !1922
	addi	a5, a5, 1 !1927
	lwr 	a6, a3, a0 !1912
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.128877 !1913
	lw  	a7, 2(a6) !476
	lwr 	a7, a7, a5 !1891
	blt 	a7, zero, bge_else.128878 !1916
	lwr 	a7, a3, a0 !1896
	lw  	a7, 2(a7) !476
	lwr 	a7, a7, a5 !1891
	lwr 	s1, a2, a0 !1898
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128879 !1898
	lwr 	s1, a4, a0 !1899
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128881 !1899
	addi	s1, a0, -1 !1900
	lwr 	s1, a3, s1 !1900
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128883 !1900
	addi	s1, a0, 1 !1901
	lwr 	s1, a3, s1 !1901
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128885 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.128886 !1901
beq_else.128885: !1901
	addi	a7, zero, 0 !1903
beq_cont.128886: !1901
	jal 	zero, beq_cont.128884 !1900
beq_else.128883: !1900
	addi	a7, zero, 0 !1904
beq_cont.128884: !1900
	jal 	zero, beq_cont.128882 !1899
beq_else.128881: !1899
	addi	a7, zero, 0 !1905
beq_cont.128882: !1899
	jal 	zero, beq_cont.128880 !1898
beq_else.128879: !1898
	addi	a7, zero, 0 !1906
beq_cont.128880: !1898
	bne 	a7, zero, beq_else.128887 !1918
	lwr 	a0, a3, a0 !1930
	addi	a1, a5, 0 !1930
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1930
beq_else.128887: !1918
	lw  	a6, 3(a6) !483
	lwr 	a6, a6, a5 !1922
	beq 	a6, zero, beq_cont.128889 !1922
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
beq_cont.128889: !1922
	addi	a5, a5, 1 !1927
	lwr 	a6, a3, a0 !1912
	addi	t0, zero, 4
	blt 	t0, a5, bge_else.128890 !1913
	lw  	a7, 2(a6) !476
	lwr 	a7, a7, a5 !1891
	blt 	a7, zero, bge_else.128891 !1916
	lwr 	a7, a3, a0 !1896
	lw  	a7, 2(a7) !476
	lwr 	a7, a7, a5 !1891
	lwr 	s1, a2, a0 !1898
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128892 !1898
	lwr 	s1, a4, a0 !1899
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128894 !1899
	addi	s1, a0, -1 !1900
	lwr 	s1, a3, s1 !1900
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128896 !1900
	addi	s1, a0, 1 !1901
	lwr 	s1, a3, s1 !1901
	lw  	s1, 2(s1) !476
	lwr 	s1, s1, a5 !1891
	bne 	s1, a7, beq_else.128898 !1901
	addi	a7, zero, 1 !1902
	jal 	zero, beq_cont.128899 !1901
beq_else.128898: !1901
	addi	a7, zero, 0 !1903
beq_cont.128899: !1901
	jal 	zero, beq_cont.128897 !1900
beq_else.128896: !1900
	addi	a7, zero, 0 !1904
beq_cont.128897: !1900
	jal 	zero, beq_cont.128895 !1899
beq_else.128894: !1899
	addi	a7, zero, 0 !1905
beq_cont.128895: !1899
	jal 	zero, beq_cont.128893 !1898
beq_else.128892: !1898
	addi	a7, zero, 0 !1906
beq_cont.128893: !1898
	bne 	a7, zero, beq_else.128900 !1918
	lwr 	a0, a3, a0 !1930
	addi	a1, a5, 0 !1930
	lw  	ra, 0(sp)
	jal 	zero, do_without_neighbors.2784 !1930
beq_else.128900: !1918
	lw  	a6, 3(a6) !483
	lwr 	a6, a6, a5 !1922
	beq 	a6, zero, beq_cont.128902 !1922
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
beq_cont.128902: !1922
	addi	a5, a5, 1 !1927
	lw  	ra, 0(sp)
	jal 	zero, try_exploit_neighbors.2800 !1927
bge_else.128891: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128890: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128878: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128877: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128865: !1916
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128864: !1913
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_diffuse_rays.2815:
	sw  	ra, 0(sp)
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.128909 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.128910 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 1(sp) !1990
	beq 	a2, zero, beq_cont.128912 !1990
	lw  	a2, 6(a0) !506
	lw  	a2, 0(a2) !508
	sw  	zero, 148(zero) !176
	sw  	zero, 149(zero) !177
	sw  	zero, 150(zero) !178
	lw  	a3, 7(a0) !520
	sw  	a0, 2(sp) !468
	lw  	a0, 1(a0) !468
	lw  	a2, 179(a2) !1998
	sw  	a2, 3(sp) !1999
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
	sw  	a0, 4(sp) !1168
	sw  	a2, 5(sp) !1168
	addi	sp, sp, 8 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -8 !1168
	addi	a3, zero, 118 !1795
	lw  	a0, 3(sp) !1795
	lw  	a1, 5(sp) !1795
	lw  	a2, 4(sp) !1795
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
beq_cont.128912: !1990
	lw  	a1, 1(sp) !2004
	addi	a1, a1, 1 !2004
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.128913 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.128914 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 6(sp) !1990
	beq 	a2, zero, beq_cont.128916 !1990
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
	addi	a3, zero, 118 !1795
	lw  	a0, 7(sp) !1795
	lw  	a1, 9(sp) !1795
	lw  	a2, 8(sp) !1795
	addi	sp, sp, 12 !1795
	jal 	ra, iter_trace_diffuse_rays.2762 !1795
	addi	sp, sp, -12 !1795
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
beq_cont.128916: !1990
	lw  	a1, 6(sp) !2004
	addi	a1, a1, 1 !2004
	addi	t0, zero, 4
	blt 	t0, a1, bge_else.128917 !1983
	lw  	a2, 2(a0) !476
	lwr 	a2, a2, a1 !1891
	blt 	a2, zero, bge_else.128918 !1987
	lw  	a2, 3(a0) !483
	lwr 	a2, a2, a1 !1990
	sw  	a1, 10(sp) !1990
	beq 	a2, zero, beq_cont.128920 !1990
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
	lw  	fa0, 0(a0) !188
	sw  	fa0, 162(zero) !188
	lw  	fa0, 1(a0) !189
	sw  	fa0, 163(zero) !189
	lw  	fa0, 2(a0) !190
	sw  	fa0, 164(zero) !190
	lw  	a1, 0(zero) !1168
	addi	a1, a1, -1 !1168
	sw  	a0, 12(sp) !1168
	sw  	a2, 13(sp) !1168
	addi	sp, sp, 16 !1168
	jal 	ra, setup_startp_constants.2664 !1168
	addi	sp, sp, -16 !1168
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
beq_cont.128920: !1990
	lw  	a1, 10(sp) !2004
	addi	a1, a1, 1 !2004
	lw  	ra, 0(sp)
	jal 	zero, pretrace_diffuse_rays.2815 !2004
bge_else.128918: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128917: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128914: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128913: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128910: !1987
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128909: !1983
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_pixels.2818:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.128927 !2012
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
	bne 	a2, zero, beq_else.128928 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128929 !200
beq_else.128928: !200
	li  	fa0, 1.000000 !200
beq_cont.128929: !200
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
	lwr 	a0, a1, a0 !2028
	addi	a1, zero, 0 !2028
	addi	sp, sp, 8 !2028
	jal 	ra, pretrace_diffuse_rays.2815 !2028
	addi	sp, sp, -8 !2028
	lw  	a0, 5(sp) !2030
	addi	a0, a0, -1 !2030
	lw  	a1, 1(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.128930 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.128931 !160
bge_else.128930: !160
bge_cont.128931: !160
	blt 	a0, zero, bge_else.128932 !2012
	lw  	fa0, 158(zero) !2014
	sw  	a1, 7(sp) !2014
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
	bne 	a1, zero, beq_else.128933 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128934 !200
beq_else.128933: !200
	li  	fa0, 1.000000 !200
beq_cont.128934: !200
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
	sw  	a0, 8(sp) !0
	addi	a0, zero, 174 !0
	addi	t0, a1, 0 !2023
	addi	a1, a0, 0 !2023
	addi	a0, t0, 0 !2023
	addi	sp, sp, 12 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -12 !2023
	lw  	a0, 8(sp) !2024
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
	lw  	a3, 7(sp) !515
	sw  	a3, 0(a2) !515
	lwr 	a0, a1, a0 !2028
	addi	a1, zero, 0 !2028
	addi	sp, sp, 12 !2028
	jal 	ra, pretrace_diffuse_rays.2815 !2028
	addi	sp, sp, -12 !2028
	lw  	a0, 8(sp) !2030
	addi	a0, a0, -1 !2030
	lw  	a1, 7(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.128935 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.128936 !160
bge_else.128935: !160
bge_cont.128936: !160
	blt 	a0, zero, bge_else.128937 !2012
	lw  	fa0, 158(zero) !2014
	sw  	a1, 9(sp) !2014
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
	bne 	a1, zero, beq_else.128938 !200
	li  	fa1, 1.000000 !200
	fdiv	fa0, fa1, fa0 !200
	jal 	zero, beq_cont.128939 !200
beq_else.128938: !200
	li  	fa0, 1.000000 !200
beq_cont.128939: !200
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
	sw  	a0, 10(sp) !0
	addi	a0, zero, 174 !0
	addi	t0, a1, 0 !2023
	addi	a1, a0, 0 !2023
	addi	a0, t0, 0 !2023
	addi	sp, sp, 12 !2023
	jal 	ra, trace_ray.2753 !2023
	addi	sp, sp, -12 !2023
	lw  	a0, 10(sp) !2024
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
	lw  	a3, 9(sp) !515
	sw  	a3, 0(a2) !515
	lwr 	a0, a1, a0 !2028
	addi	a1, zero, 0 !2028
	addi	sp, sp, 12 !2028
	jal 	ra, pretrace_diffuse_rays.2815 !2028
	addi	sp, sp, -12 !2028
	lw  	a0, 10(sp) !2030
	addi	a1, a0, -1 !2030
	lw  	a0, 9(sp) !159
	addi	a0, a0, 1 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.128940 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.128941 !160
bge_else.128940: !160
	addi	a2, a0, 0 !160
bge_cont.128941: !160
	lw  	fa0, 2(sp) !2030
	lw  	fa1, 3(sp) !2030
	lw  	fa2, 6(sp) !2030
	lw  	a0, 4(sp) !2030
	lw  	ra, 0(sp)
	jal 	zero, pretrace_pixels.2818 !2030
bge_else.128937: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128932: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128927: !2012
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
scan_pixel.2829:
	sw  	ra, 0(sp)
	lw  	a6, 154(zero) !2051
	blt 	a0, a6, bge_else.128945 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128945: !2051
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
	blt 	a7, a6, bge_else.128947 !1878
	addi	a6, zero, 0 !1886
	jal 	zero, bge_cont.128948 !1878
bge_else.128947: !1878
	blt 	zero, a1, bge_else.128949 !1879
	addi	a6, zero, 0 !1885
	jal 	zero, bge_cont.128950 !1879
bge_else.128949: !1879
	lw  	a6, 154(zero) !1880
	addi	a7, a0, 1 !1880
	blt 	a7, a6, bge_else.128951 !1880
	addi	a6, zero, 0 !1884
	jal 	zero, bge_cont.128952 !1880
bge_else.128951: !1880
	blt 	zero, a0, bge_else.128953 !1881
	addi	a6, zero, 0 !1883
	jal 	zero, bge_cont.128954 !1881
bge_else.128953: !1881
	addi	a6, zero, 1 !1882
bge_cont.128954: !1881
bge_cont.128952: !1880
bge_cont.128950: !1879
bge_cont.128948: !1878
	sw  	a4, 1(sp) !2057
	sw  	a2, 2(sp) !2057
	sw  	a1, 3(sp) !2057
	sw  	a3, 4(sp) !2057
	sw  	a0, 5(sp) !2057
	sw  	a5, 6(sp) !2057
	bne 	a6, zero, beq_else.128955 !2057
	lwr 	a0, a3, a0 !2060
	addi	a1, zero, 0 !2060
	addi	sp, sp, 8 !2060
	jal 	ra, do_without_neighbors.2784 !2060
	addi	sp, sp, -8 !2060
	jal 	zero, beq_cont.128956 !2057
beq_else.128955: !2057
	addi	a5, zero, 0 !2058
	addi	sp, sp, 8 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -8 !2058
beq_cont.128956: !2057
	lw  	a0, 6(sp) !1963
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.128957 !1963
	lw  	fa0, 151(zero) !1964
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.128959 !1952
	blt 	a0, zero, bge_else.128961 !1952
	jal 	zero, bge_cont.128960 !1952
bge_else.128961: !1952
	addi	a0, zero, 0 !1952
bge_cont.128962: !1952
	jal 	zero, bge_cont.128960 !1952
bge_else.128959: !1952
	addi	a0, zero, 255 !1952
bge_cont.128960: !1952
	addi	sp, sp, 8 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -8 !1953
	addi	a0, zero, 32 !1965
	addi	sp, sp, 8 !1965
	jal 	ra, print_char !1965
	addi	sp, sp, -8 !1965
	lw  	fa0, 152(zero) !1966
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.128963 !1952
	blt 	a0, zero, bge_else.128965 !1952
	jal 	zero, bge_cont.128964 !1952
bge_else.128965: !1952
	addi	a0, zero, 0 !1952
bge_cont.128966: !1952
	jal 	zero, bge_cont.128964 !1952
bge_else.128963: !1952
	addi	a0, zero, 255 !1952
bge_cont.128964: !1952
	addi	sp, sp, 8 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -8 !1953
	addi	a0, zero, 32 !1967
	addi	sp, sp, 8 !1967
	jal 	ra, print_char !1967
	addi	sp, sp, -8 !1967
	lw  	fa0, 153(zero) !1968
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.128967 !1952
	blt 	a0, zero, bge_else.128969 !1952
	jal 	zero, bge_cont.128968 !1952
bge_else.128969: !1952
	addi	a0, zero, 0 !1952
bge_cont.128970: !1952
	jal 	zero, bge_cont.128968 !1952
bge_else.128967: !1952
	addi	a0, zero, 255 !1952
bge_cont.128968: !1952
	addi	sp, sp, 8 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -8 !1953
	addi	a0, zero, 10 !1969
	addi	sp, sp, 8 !1969
	jal 	ra, print_char !1969
	addi	sp, sp, -8 !1969
	jal 	zero, beq_cont.128958 !1963
beq_else.128957: !1963
	lw  	fa0, 151(zero) !1971
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.128971 !1958
	blt 	a0, zero, bge_else.128973 !1958
	jal 	zero, bge_cont.128972 !1958
bge_else.128973: !1958
	addi	a0, zero, 0 !1958
bge_cont.128974: !1958
	jal 	zero, bge_cont.128972 !1958
bge_else.128971: !1958
	addi	a0, zero, 255 !1958
bge_cont.128972: !1958
	addi	sp, sp, 8 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -8 !1959
	lw  	fa0, 152(zero) !1972
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.128975 !1958
	blt 	a0, zero, bge_else.128977 !1958
	jal 	zero, bge_cont.128976 !1958
bge_else.128977: !1958
	addi	a0, zero, 0 !1958
bge_cont.128978: !1958
	jal 	zero, bge_cont.128976 !1958
bge_else.128975: !1958
	addi	a0, zero, 255 !1958
bge_cont.128976: !1958
	addi	sp, sp, 8 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -8 !1959
	lw  	fa0, 153(zero) !1973
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.128979 !1958
	blt 	a0, zero, bge_else.128981 !1958
	jal 	zero, bge_cont.128980 !1958
bge_else.128981: !1958
	addi	a0, zero, 0 !1958
bge_cont.128982: !1958
	jal 	zero, bge_cont.128980 !1958
bge_else.128979: !1958
	addi	a0, zero, 255 !1958
bge_cont.128980: !1958
	addi	sp, sp, 8 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -8 !1959
beq_cont.128958: !1963
	lw  	a0, 5(sp) !2065
	addi	a0, a0, 1 !2065
	lw  	a1, 154(zero) !2051
	blt 	a0, a1, bge_else.128983 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.128983: !2051
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
	blt 	a4, a1, bge_else.128985 !1878
	addi	a1, zero, 0 !1886
	jal 	zero, bge_cont.128986 !1878
bge_else.128985: !1878
	blt 	zero, a2, bge_else.128987 !1879
	addi	a1, zero, 0 !1885
	jal 	zero, bge_cont.128988 !1879
bge_else.128987: !1879
	lw  	a1, 154(zero) !1880
	addi	a4, a0, 1 !1880
	blt 	a4, a1, bge_else.128989 !1880
	addi	a1, zero, 0 !1884
	jal 	zero, bge_cont.128990 !1880
bge_else.128989: !1880
	blt 	zero, a0, bge_else.128991 !1881
	addi	a1, zero, 0 !1883
	jal 	zero, bge_cont.128992 !1881
bge_else.128991: !1881
	addi	a1, zero, 1 !1882
bge_cont.128992: !1881
bge_cont.128990: !1880
bge_cont.128988: !1879
bge_cont.128986: !1878
	sw  	a0, 7(sp) !2057
	bne 	a1, zero, beq_else.128993 !2057
	lwr 	a0, a3, a0 !2060
	addi	a1, zero, 0 !2060
	addi	sp, sp, 8 !2060
	jal 	ra, do_without_neighbors.2784 !2060
	addi	sp, sp, -8 !2060
	jal 	zero, beq_cont.128994 !2057
beq_else.128993: !2057
	addi	a5, zero, 0 !2058
	lw  	a1, 2(sp) !2058
	lw  	a4, 1(sp) !2058
	addi	t0, a2, 0 !2058
	addi	a2, a1, 0 !2058
	addi	a1, t0, 0 !2058
	addi	sp, sp, 8 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -8 !2058
beq_cont.128994: !2057
	lw  	a0, 6(sp) !1963
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.128995 !1963
	lw  	fa0, 151(zero) !1964
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.128997 !1952
	blt 	a0, zero, bge_else.128999 !1952
	jal 	zero, bge_cont.128998 !1952
bge_else.128999: !1952
	addi	a0, zero, 0 !1952
bge_cont.129000: !1952
	jal 	zero, bge_cont.128998 !1952
bge_else.128997: !1952
	addi	a0, zero, 255 !1952
bge_cont.128998: !1952
	addi	sp, sp, 8 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -8 !1953
	addi	a0, zero, 32 !1965
	addi	sp, sp, 8 !1965
	jal 	ra, print_char !1965
	addi	sp, sp, -8 !1965
	lw  	fa0, 152(zero) !1966
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129001 !1952
	blt 	a0, zero, bge_else.129003 !1952
	jal 	zero, bge_cont.129002 !1952
bge_else.129003: !1952
	addi	a0, zero, 0 !1952
bge_cont.129004: !1952
	jal 	zero, bge_cont.129002 !1952
bge_else.129001: !1952
	addi	a0, zero, 255 !1952
bge_cont.129002: !1952
	addi	sp, sp, 8 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -8 !1953
	addi	a0, zero, 32 !1967
	addi	sp, sp, 8 !1967
	jal 	ra, print_char !1967
	addi	sp, sp, -8 !1967
	lw  	fa0, 153(zero) !1968
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129005 !1952
	blt 	a0, zero, bge_else.129007 !1952
	jal 	zero, bge_cont.129006 !1952
bge_else.129007: !1952
	addi	a0, zero, 0 !1952
bge_cont.129008: !1952
	jal 	zero, bge_cont.129006 !1952
bge_else.129005: !1952
	addi	a0, zero, 255 !1952
bge_cont.129006: !1952
	addi	sp, sp, 8 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -8 !1953
	addi	a0, zero, 10 !1969
	addi	sp, sp, 8 !1969
	jal 	ra, print_char !1969
	addi	sp, sp, -8 !1969
	jal 	zero, beq_cont.128996 !1963
beq_else.128995: !1963
	lw  	fa0, 151(zero) !1971
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129009 !1958
	blt 	a0, zero, bge_else.129011 !1958
	jal 	zero, bge_cont.129010 !1958
bge_else.129011: !1958
	addi	a0, zero, 0 !1958
bge_cont.129012: !1958
	jal 	zero, bge_cont.129010 !1958
bge_else.129009: !1958
	addi	a0, zero, 255 !1958
bge_cont.129010: !1958
	addi	sp, sp, 8 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -8 !1959
	lw  	fa0, 152(zero) !1972
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129013 !1958
	blt 	a0, zero, bge_else.129015 !1958
	jal 	zero, bge_cont.129014 !1958
bge_else.129015: !1958
	addi	a0, zero, 0 !1958
bge_cont.129016: !1958
	jal 	zero, bge_cont.129014 !1958
bge_else.129013: !1958
	addi	a0, zero, 255 !1958
bge_cont.129014: !1958
	addi	sp, sp, 8 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -8 !1959
	lw  	fa0, 153(zero) !1973
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129017 !1958
	blt 	a0, zero, bge_else.129019 !1958
	jal 	zero, bge_cont.129018 !1958
bge_else.129019: !1958
	addi	a0, zero, 0 !1958
bge_cont.129020: !1958
	jal 	zero, bge_cont.129018 !1958
bge_else.129017: !1958
	addi	a0, zero, 255 !1958
bge_cont.129018: !1958
	addi	sp, sp, 8 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -8 !1959
beq_cont.128996: !1963
	lw  	a0, 7(sp) !2065
	addi	a0, a0, 1 !2065
	lw  	a1, 154(zero) !2051
	blt 	a0, a1, bge_else.129021 !2051
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129021: !2051
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
	blt 	a4, a1, bge_else.129023 !1878
	addi	a1, zero, 0 !1886
	jal 	zero, bge_cont.129024 !1878
bge_else.129023: !1878
	blt 	zero, a2, bge_else.129025 !1879
	addi	a1, zero, 0 !1885
	jal 	zero, bge_cont.129026 !1879
bge_else.129025: !1879
	lw  	a1, 154(zero) !1880
	addi	a4, a0, 1 !1880
	blt 	a4, a1, bge_else.129027 !1880
	addi	a1, zero, 0 !1884
	jal 	zero, bge_cont.129028 !1880
bge_else.129027: !1880
	blt 	zero, a0, bge_else.129029 !1881
	addi	a1, zero, 0 !1883
	jal 	zero, bge_cont.129030 !1881
bge_else.129029: !1881
	addi	a1, zero, 1 !1882
bge_cont.129030: !1881
bge_cont.129028: !1880
bge_cont.129026: !1879
bge_cont.129024: !1878
	sw  	a0, 8(sp) !2057
	bne 	a1, zero, beq_else.129031 !2057
	lwr 	a0, a3, a0 !2060
	addi	a1, zero, 0 !2060
	addi	sp, sp, 12 !2060
	jal 	ra, do_without_neighbors.2784 !2060
	addi	sp, sp, -12 !2060
	jal 	zero, beq_cont.129032 !2057
beq_else.129031: !2057
	addi	a5, zero, 0 !2058
	lw  	a1, 2(sp) !2058
	lw  	a4, 1(sp) !2058
	addi	t0, a2, 0 !2058
	addi	a2, a1, 0 !2058
	addi	a1, t0, 0 !2058
	addi	sp, sp, 12 !2058
	jal 	ra, try_exploit_neighbors.2800 !2058
	addi	sp, sp, -12 !2058
beq_cont.129032: !2057
	lw  	a0, 6(sp) !1963
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.129033 !1963
	lw  	fa0, 151(zero) !1964
	ftoi	a0, fa0 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129035 !1952
	blt 	a0, zero, bge_else.129037 !1952
	jal 	zero, bge_cont.129036 !1952
bge_else.129037: !1952
	addi	a0, zero, 0 !1952
bge_cont.129038: !1952
	jal 	zero, bge_cont.129036 !1952
bge_else.129035: !1952
	addi	a0, zero, 255 !1952
bge_cont.129036: !1952
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
	blt 	t0, a0, bge_else.129039 !1952
	blt 	a0, zero, bge_else.129041 !1952
	jal 	zero, bge_cont.129040 !1952
bge_else.129041: !1952
	addi	a0, zero, 0 !1952
bge_cont.129042: !1952
	jal 	zero, bge_cont.129040 !1952
bge_else.129039: !1952
	addi	a0, zero, 255 !1952
bge_cont.129040: !1952
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
	blt 	t0, a0, bge_else.129043 !1952
	blt 	a0, zero, bge_else.129045 !1952
	jal 	zero, bge_cont.129044 !1952
bge_else.129045: !1952
	addi	a0, zero, 0 !1952
bge_cont.129046: !1952
	jal 	zero, bge_cont.129044 !1952
bge_else.129043: !1952
	addi	a0, zero, 255 !1952
bge_cont.129044: !1952
	addi	sp, sp, 12 !1953
	jal 	ra, print_int !1953
	addi	sp, sp, -12 !1953
	addi	a0, zero, 10 !1969
	addi	sp, sp, 12 !1969
	jal 	ra, print_char !1969
	addi	sp, sp, -12 !1969
	jal 	zero, beq_cont.129034 !1963
beq_else.129033: !1963
	lw  	fa0, 151(zero) !1971
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129047 !1958
	blt 	a0, zero, bge_else.129049 !1958
	jal 	zero, bge_cont.129048 !1958
bge_else.129049: !1958
	addi	a0, zero, 0 !1958
bge_cont.129050: !1958
	jal 	zero, bge_cont.129048 !1958
bge_else.129047: !1958
	addi	a0, zero, 255 !1958
bge_cont.129048: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
	lw  	fa0, 152(zero) !1972
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129051 !1958
	blt 	a0, zero, bge_else.129053 !1958
	jal 	zero, bge_cont.129052 !1958
bge_else.129053: !1958
	addi	a0, zero, 0 !1958
bge_cont.129054: !1958
	jal 	zero, bge_cont.129052 !1958
bge_else.129051: !1958
	addi	a0, zero, 255 !1958
bge_cont.129052: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
	lw  	fa0, 153(zero) !1973
	ftoi	a0, fa0 !1957
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.129055 !1958
	blt 	a0, zero, bge_else.129057 !1958
	jal 	zero, bge_cont.129056 !1958
bge_else.129057: !1958
	addi	a0, zero, 0 !1958
bge_cont.129058: !1958
	jal 	zero, bge_cont.129056 !1958
bge_else.129055: !1958
	addi	a0, zero, 255 !1958
bge_cont.129056: !1958
	addi	sp, sp, 12 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -12 !1959
beq_cont.129034: !1963
	lw  	a0, 8(sp) !2065
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
	blt 	a0, a6, bge_else.129059 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129059: !2072
	lw  	a6, 155(zero) !2074
	addi	a6, a6, -1 !2074
	sw  	a4, 1(sp) !2074
	sw  	a5, 2(sp) !2074
	sw  	a3, 3(sp) !2074
	sw  	a2, 4(sp) !2074
	sw  	a1, 5(sp) !2074
	sw  	a0, 6(sp) !2074
	bge 	a0, a6, bge_cont.129062 !2074
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
bge_cont.129062: !2074
	addi	a0, zero, 0 !2077
	lw  	a1, 6(sp) !2077
	lw  	a2, 5(sp) !2077
	lw  	a3, 4(sp) !2077
	lw  	a4, 3(sp) !2077
	lw  	a5, 2(sp) !2077
	addi	sp, sp, 8 !2077
	jal 	ra, scan_pixel.2829 !2077
	addi	sp, sp, -8 !2077
	lw  	a0, 6(sp) !2078
	addi	a1, a0, 1 !2078
	lw  	a0, 1(sp) !159
	addi	a0, a0, 2 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.129063 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.129064 !160
bge_else.129063: !160
	addi	a2, a0, 0 !160
bge_cont.129064: !160
	lw  	a0, 155(zero) !2072
	blt 	a1, a0, bge_else.129065 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129065: !2072
	lw  	a0, 155(zero) !2074
	addi	a0, a0, -1 !2074
	sw  	a2, 7(sp) !2074
	sw  	a1, 8(sp) !2074
	bge 	a1, a0, bge_cont.129068 !2074
	addi	a0, a1, 1 !2075
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
	lw  	a0, 5(sp) !2043
	fsgnj   t0, fa2, fa2 !2043
	fsgnj   fa2, fa0, fa0 !2043
	fsgnj   fa0, fa1, fa1 !2043
	fsgnj   fa1, t0, t0 !2043
	addi	sp, sp, 12 !2043
	jal 	ra, pretrace_pixels.2818 !2043
	addi	sp, sp, -12 !2043
bge_cont.129068: !2074
	addi	a0, zero, 0 !2077
	lw  	a1, 8(sp) !2077
	lw  	a2, 4(sp) !2077
	lw  	a3, 3(sp) !2077
	lw  	a4, 5(sp) !2077
	lw  	a5, 2(sp) !2077
	addi	sp, sp, 12 !2077
	jal 	ra, scan_pixel.2829 !2077
	addi	sp, sp, -12 !2077
	lw  	a0, 8(sp) !2078
	addi	a1, a0, 1 !2078
	lw  	a0, 7(sp) !159
	addi	a0, a0, 2 !159
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.129069 !160
	addi	a2, a0, -5 !160
	jal 	zero, bge_cont.129070 !160
bge_else.129069: !160
	addi	a2, a0, 0 !160
bge_cont.129070: !160
	lw  	a0, 155(zero) !2072
	blt 	a1, a0, bge_else.129071 !2072
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129071: !2072
	lw  	a0, 155(zero) !2074
	addi	a0, a0, -1 !2074
	sw  	a2, 9(sp) !2074
	sw  	a1, 10(sp) !2074
	bge 	a1, a0, bge_cont.129074 !2074
	addi	a0, a1, 1 !2075
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
	lw  	a0, 4(sp) !2043
	fsgnj   t0, fa2, fa2 !2043
	fsgnj   fa2, fa0, fa0 !2043
	fsgnj   fa0, fa1, fa1 !2043
	fsgnj   fa1, t0, t0 !2043
	addi	sp, sp, 12 !2043
	jal 	ra, pretrace_pixels.2818 !2043
	addi	sp, sp, -12 !2043
bge_cont.129074: !2074
	addi	a0, zero, 0 !2077
	lw  	a1, 10(sp) !2077
	lw  	a2, 3(sp) !2077
	lw  	a3, 5(sp) !2077
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
	blt 	a1, t0, bge_else.129075 !160
	addi	a4, a1, -5 !160
	jal 	zero, bge_cont.129076 !160
bge_else.129075: !160
	addi	a4, a1, 0 !160
bge_cont.129076: !160
	lw  	a1, 5(sp) !2078
	lw  	a2, 4(sp) !2078
	lw  	a3, 3(sp) !2078
	lw  	a5, 2(sp) !2078
	lw  	ra, 0(sp)
	jal 	zero, scan_line.2836 !2078
init_line_elements.2847:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.129077 !2112
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
	blt 	a0, zero, bge_else.129078 !2112
	sw  	a0, 11(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 12 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -12 !2099
	sw  	a0, 12(sp) !2087
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
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 16 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -16 !2101
	sw  	a0, 14(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 16 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -16 !2102
	sw  	a0, 15(sp) !2087
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
	sw  	a0, 16(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -20 !2089
	lw  	a1, 16(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -20 !2090
	lw  	a1, 16(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -20 !2091
	lw  	a1, 16(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -20 !2092
	lw  	a1, 16(sp) !2092
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
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 20 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -20 !2105
	sw  	a0, 18(sp) !2087
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
	sw  	a0, 19(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -20 !2089
	lw  	a1, 19(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -20 !2090
	lw  	a1, 19(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -20 !2091
	lw  	a1, 19(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 20 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -20 !2092
	lw  	a1, 19(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 18(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 17(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 16(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 15(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 14(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 13(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 12(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	a1, 11(sp) !2113
	lw  	a2, 1(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a0, a1, -1 !2114
	blt 	a0, zero, bge_else.129079 !2112
	sw  	a0, 20(sp) !2099
	addi	a0, zero, 3 !2099
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2099
	jal 	ra, create_float_array !2099
	addi	sp, sp, -24 !2099
	sw  	a0, 21(sp) !2087
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
	sw  	a0, 22(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -24 !2089
	lw  	a1, 22(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -24 !2090
	lw  	a1, 22(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -24 !2091
	lw  	a1, 22(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 24 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -24 !2092
	lw  	a1, 22(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 5 !2101
	addi	a1, zero, 0 !2101
	addi	sp, sp, 24 !2101
	jal 	ra, create_array !2101
	addi	sp, sp, -24 !2101
	sw  	a0, 23(sp) !2102
	addi	a0, zero, 5 !2102
	addi	a1, zero, 0 !2102
	addi	sp, sp, 24 !2102
	jal 	ra, create_array !2102
	addi	sp, sp, -24 !2102
	sw  	a0, 24(sp) !2087
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
	sw  	a0, 26(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -28 !2089
	lw  	a1, 26(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -28 !2090
	lw  	a1, 26(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -28 !2091
	lw  	a1, 26(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 28 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -28 !2092
	lw  	a1, 26(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, zero, 1 !2105
	addi	a1, zero, 0 !2105
	addi	sp, sp, 28 !2105
	jal 	ra, create_array !2105
	addi	sp, sp, -28 !2105
	sw  	a0, 27(sp) !2087
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
	sw  	a0, 28(sp) !2089
	addi	a0, zero, 3 !2089
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2089
	jal 	ra, create_float_array !2089
	addi	sp, sp, -32 !2089
	lw  	a1, 28(sp) !2089
	sw  	a0, 1(a1) !2089
	addi	a0, zero, 3 !2090
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2090
	jal 	ra, create_float_array !2090
	addi	sp, sp, -32 !2090
	lw  	a1, 28(sp) !2090
	sw  	a0, 2(a1) !2090
	addi	a0, zero, 3 !2091
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2091
	jal 	ra, create_float_array !2091
	addi	sp, sp, -32 !2091
	lw  	a1, 28(sp) !2091
	sw  	a0, 3(a1) !2091
	addi	a0, zero, 3 !2092
	addi	fa0, zero, 0
	addi	sp, sp, 32 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -32 !2092
	lw  	a1, 28(sp) !2092
	sw  	a0, 4(a1) !2092
	addi	a0, gp, 0 !2107
	addi	gp, gp, 8 !2107
	sw  	a1, 7(a0) !2107
	lw  	a1, 27(sp) !2107
	sw  	a1, 6(a0) !2107
	lw  	a1, 26(sp) !2107
	sw  	a1, 5(a0) !2107
	lw  	a1, 25(sp) !2107
	sw  	a1, 4(a0) !2107
	lw  	a1, 24(sp) !2107
	sw  	a1, 3(a0) !2107
	lw  	a1, 23(sp) !2107
	sw  	a1, 2(a0) !2107
	lw  	a1, 22(sp) !2107
	sw  	a1, 1(a0) !2107
	lw  	a1, 21(sp) !2107
	sw  	a1, 0(a0) !2107
	lw  	a1, 20(sp) !2113
	lw  	a2, 1(sp) !2113
	add 	t0, a2, a1 !2113
	sw  	a0, 0(t0) !2113
	addi	a1, a1, -1 !2114
	addi	a0, a2, 0 !2114
	lw  	ra, 0(sp)
	jal 	zero, init_line_elements.2847 !2114
bge_else.129079: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129078: !2112
	addi	a0, a2, 0 !2116
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129077: !2112
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec.2857:
	sw  	ra, 0(sp)
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.129080 !2144
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
bge_else.129080: !2144
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
	blt 	a0, t0, bge_else.129082 !2144
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
bge_else.129082: !2144
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
	fmul	fa0, fa0, fa1 !2139
	lw  	a0, 19(sp) !2144
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.129084 !2144
	lw  	fa1, 17(sp) !126
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
bge_else.129084: !2144
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 22(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	addi	sp, sp, 24 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -24 !2137
	lw  	fa1, 6(sp) !2138
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
	lw  	fa1, 22(sp) !2139
	fmul	fa0, fa0, fa1 !2139
	lw  	a0, 19(sp) !2160
	addi	a0, a0, 1 !2160
	sw  	fa0, 25(sp) !2135
	fmul	fa0, fa0, fa0 !2135
	li  	fa1, 0.100000 !2135
	fadd	fa0, fa0, fa1 !2135
	fsqrt   fa0, fa0 !2135
	li  	fa1, 1.000000 !2136
	sw  	fa0, 26(sp) !2136
	fdiv	fa0, fa1, fa0 !2136
	sw  	a0, 27(sp) !2137
	addi	sp, sp, 28 !2137
	jal 	ra, atan !2137
	addi	sp, sp, -28 !2137
	lw  	fa1, 4(sp) !2138
	fmul	fa0, fa0, fa1 !2138
	sw  	fa0, 28(sp) !2130
	addi	sp, sp, 32 !2130
	jal 	ra, sin !2130
	addi	sp, sp, -32 !2130
	sw  	fa0, 29(sp) !2130
	lw  	fa0, 28(sp) !2130
	addi	sp, sp, 32 !2130
	jal 	ra, cos !2130
	addi	sp, sp, -32 !2130
	lw  	fa1, 29(sp) !2130
	fdiv	fa0, fa1, fa0 !2130
	lw  	fa1, 26(sp) !2139
	fmul	fa1, fa0, fa1 !2139
	lw  	fa0, 25(sp) !2160
	lw  	fa2, 6(sp) !2160
	lw  	fa3, 4(sp) !2160
	lw  	a0, 27(sp) !2160
	lw  	a1, 3(sp) !2160
	lw  	a2, 2(sp) !2160
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec.2857 !2160
calc_dirvecs.2865:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.129086 !2165
	itof	fa1, a0 !2167
	li  	fa2, 0.200000 !2167
	fmul	fa1, fa1, fa2 !2167
	li  	fa2, 0.900000 !2167
	fsub	fa2, fa1, fa2 !2167
	sw  	a0, 1(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa1, zero, 0
	addi	fa3, zero, 0
	sw  	fa0, 2(sp) !2168
	sw  	a1, 3(sp) !2168
	sw  	a2, 4(sp) !2168
	fsgnj   t0, fa3, fa3 !2168
	fsgnj   fa3, fa0, fa0 !2168
	fsgnj   fa0, fa1, fa1 !2168
	fsgnj   fa1, t0, t0 !2168
	addi	sp, sp, 8 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -8 !2168
	lw  	a0, 1(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
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
	lw  	a0, 1(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 3(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.129087 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.129088 !160
bge_else.129087: !160
bge_cont.129088: !160
	blt 	a0, zero, bge_else.129089 !2165
	itof	fa0, a0 !2167
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa2, fa0, fa1 !2167
	sw  	a0, 5(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	fa3, 2(sp) !2168
	lw  	a2, 4(sp) !2168
	sw  	a1, 6(sp) !2168
	addi	sp, sp, 8 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -8 !2168
	lw  	a0, 5(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 4(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 2(sp) !2171
	lw  	a1, 6(sp) !2171
	addi	sp, sp, 8 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -8 !2171
	lw  	a0, 5(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 6(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.129090 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.129091 !160
bge_else.129090: !160
bge_cont.129091: !160
	blt 	a0, zero, bge_else.129092 !2165
	itof	fa0, a0 !2167
	li  	fa1, 0.200000 !2167
	fmul	fa0, fa0, fa1 !2167
	li  	fa1, 0.900000 !2167
	fsub	fa2, fa0, fa1 !2167
	sw  	a0, 7(sp) !2168
	addi	a0, zero, 0 !2168
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	fa3, 2(sp) !2168
	lw  	a2, 4(sp) !2168
	sw  	a1, 8(sp) !2168
	addi	sp, sp, 12 !2168
	jal 	ra, calc_dirvec.2857 !2168
	addi	sp, sp, -12 !2168
	lw  	a0, 7(sp) !2170
	itof	fa0, a0 !2170
	li  	fa1, 0.200000 !2170
	fmul	fa0, fa0, fa1 !2170
	li  	fa1, 0.100000 !2170
	fadd	fa2, fa0, fa1 !2170
	addi	a0, zero, 0 !2171
	addi	fa0, zero, 0
	addi	fa1, zero, 0
	lw  	a1, 4(sp) !2171
	addi	a2, a1, 2 !2171
	lw  	fa3, 2(sp) !2171
	lw  	a1, 8(sp) !2171
	addi	sp, sp, 12 !2171
	jal 	ra, calc_dirvec.2857 !2171
	addi	sp, sp, -12 !2171
	lw  	a0, 7(sp) !2173
	addi	a0, a0, -1 !2173
	lw  	a1, 8(sp) !159
	addi	a1, a1, 1 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.129093 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.129094 !160
bge_else.129093: !160
bge_cont.129094: !160
	lw  	fa0, 2(sp) !2173
	lw  	a2, 4(sp) !2173
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvecs.2865 !2173
bge_else.129092: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129089: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129086: !2165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec_rows.2870:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.129098 !2179
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
	blt 	a1, t0, bge_else.129099 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.129100 !160
bge_else.129099: !160
bge_cont.129100: !160
	lw  	a2, 2(sp) !2182
	addi	a2, a2, 4 !2182
	blt 	a0, zero, bge_else.129101 !2179
	itof	fa0, a0 !2180
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa0, fa0, fa1 !2180
	sw  	a0, 4(sp) !2181
	addi	a0, zero, 4 !2181
	sw  	a2, 5(sp) !2181
	sw  	a1, 6(sp) !2181
	addi	sp, sp, 8 !2181
	jal 	ra, calc_dirvecs.2865 !2181
	addi	sp, sp, -8 !2181
	lw  	a0, 4(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 6(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.129102 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.129103 !160
bge_else.129102: !160
bge_cont.129103: !160
	lw  	a2, 5(sp) !2182
	addi	a2, a2, 4 !2182
	blt 	a0, zero, bge_else.129104 !2179
	itof	fa0, a0 !2180
	li  	fa1, 0.200000 !2180
	fmul	fa0, fa0, fa1 !2180
	li  	fa1, 0.900000 !2180
	fsub	fa0, fa0, fa1 !2180
	sw  	a0, 7(sp) !2181
	addi	a0, zero, 4 !2181
	sw  	a2, 8(sp) !2181
	sw  	a1, 9(sp) !2181
	addi	sp, sp, 12 !2181
	jal 	ra, calc_dirvecs.2865 !2181
	addi	sp, sp, -12 !2181
	lw  	a0, 7(sp) !2182
	addi	a0, a0, -1 !2182
	lw  	a1, 9(sp) !159
	addi	a1, a1, 2 !159
	addi	t0, zero, 5
	blt 	a1, t0, bge_else.129105 !160
	addi	a1, a1, -5 !160
	jal 	zero, bge_cont.129106 !160
bge_else.129105: !160
bge_cont.129106: !160
	lw  	a2, 8(sp) !2182
	addi	a2, a2, 4 !2182
	lw  	ra, 0(sp)
	jal 	zero, calc_dirvec_rows.2870 !2182
bge_else.129104: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129101: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129098: !2179
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec_elements.2876:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.129110 !2196
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
	blt 	a0, zero, bge_else.129111 !2196
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
	blt 	a0, zero, bge_else.129112 !2196
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
	addi	a1, a1, -1 !2198
	addi	a0, a2, 0 !2198
	lw  	ra, 0(sp)
	jal 	zero, create_dirvec_elements.2876 !2198
bge_else.129112: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129111: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129110: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvecs.2879:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.129116 !2203
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
	addi	a1, zero, 118 !2205
	addi	sp, sp, 4 !2205
	jal 	ra, create_dirvec_elements.2876 !2205
	addi	sp, sp, -4 !2205
	lw  	a0, 1(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.129117 !2203
	sw  	a0, 4(sp) !2204
	addi	a0, zero, 120 !2204
	sw  	a0, 5(sp) !2190
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
	lw  	a0, 5(sp) !2204
	addi	sp, sp, 8 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -8 !2204
	lw  	a1, 4(sp) !2204
	li  	t0, 179
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2204
	lw  	a0, 179(a1) !2205
	addi	a1, zero, 118 !2205
	addi	sp, sp, 8 !2205
	jal 	ra, create_dirvec_elements.2876 !2205
	addi	sp, sp, -8 !2205
	lw  	a0, 4(sp) !2206
	addi	a0, a0, -1 !2206
	blt 	a0, zero, bge_else.129118 !2203
	sw  	a0, 7(sp) !2204
	addi	a0, zero, 120 !2204
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
	lw  	a0, 8(sp) !2204
	addi	sp, sp, 12 !2204
	jal 	ra, create_array !2204
	addi	sp, sp, -12 !2204
	lw  	a1, 7(sp) !2204
	li  	t0, 179
	add 	t0, t0, a1
	sw  	a0, 0(t0) !2204
	lw  	a0, 179(a1) !2205
	addi	a1, zero, 118 !2205
	addi	sp, sp, 12 !2205
	jal 	ra, create_dirvec_elements.2876 !2205
	addi	sp, sp, -12 !2205
	lw  	a0, 7(sp) !2206
	addi	a0, a0, -1 !2206
	lw  	ra, 0(sp)
	jal 	zero, create_dirvecs.2879 !2206
bge_else.129118: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129117: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129116: !2203
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvec_constants.2881:
	sw  	ra, 0(sp)
	blt 	a1, zero, bge_else.129122 !2213
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
	blt 	a0, zero, bge_else.129123 !2213
	sw  	a0, 3(sp) !2214
	lw  	a1, 1(sp) !2214
	lwr 	a0, a1, a0 !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 4 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -4 !1142
	lw  	a0, 3(sp) !2215
	addi	a0, a0, -1 !2215
	blt 	a0, zero, bge_else.129124 !2213
	sw  	a0, 4(sp) !2214
	lw  	a1, 1(sp) !2214
	lwr 	a0, a1, a0 !2214
	lw  	a1, 0(zero) !1142
	addi	a1, a1, -1 !1142
	addi	sp, sp, 8 !1142
	jal 	ra, iter_setup_dirvec_constants.2659 !1142
	addi	sp, sp, -8 !1142
	lw  	a0, 4(sp) !2215
	addi	a1, a0, -1 !2215
	lw  	a0, 1(sp) !2215
	lw  	ra, 0(sp)
	jal 	zero, init_dirvec_constants.2881 !2215
bge_else.129124: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129123: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129122: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_vecset_constants.2884:
	sw  	ra, 0(sp)
	blt 	a0, zero, bge_else.129128 !2220
	sw  	a0, 1(sp) !2221
	lw  	a0, 179(a0) !2221
	addi	a1, zero, 119 !2221
	addi	sp, sp, 4 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -4 !2221
	lw  	a0, 1(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.129129 !2220
	sw  	a0, 2(sp) !2221
	lw  	a0, 179(a0) !2221
	addi	a1, zero, 119 !2221
	addi	sp, sp, 4 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -4 !2221
	lw  	a0, 2(sp) !2222
	addi	a0, a0, -1 !2222
	blt 	a0, zero, bge_else.129130 !2220
	sw  	a0, 3(sp) !2221
	lw  	a0, 179(a0) !2221
	addi	a1, zero, 119 !2221
	addi	sp, sp, 4 !2221
	jal 	ra, init_dirvec_constants.2881 !2221
	addi	sp, sp, -4 !2221
	lw  	a0, 3(sp) !2222
	addi	a0, a0, -1 !2222
	lw  	ra, 0(sp)
	jal 	zero, init_vecset_constants.2884 !2222
bge_else.129130: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129129: !2220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.129128: !2220
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
