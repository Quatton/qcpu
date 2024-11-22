_min_caml_start:
	li  	ra, _min_caml_finish
	li  	sp, 524288
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	addi	a0, zero, 1 !6
	addi	a1, zero, 0 !6
	jal 	ra, create_array !6
	addi	a1, zero, 0 !11
	li  	fa0, 0.000000 !11
	sw  	a0, 0(sp) !11
	addi	a0, a1, 0 !11
	addi	sp, sp, 8 !11
	jal 	ra, create_float_array !11
	addi	sp, sp, -8 !11
	addi	a1, zero, 60 !12
	addi	a2, zero, 0 !12
	addi	a3, zero, 0 !12
	addi	a4, zero, 0 !12
	addi	a5, zero, 0 !12
	addi	a6, zero, 0 !12
	addi	a7, gp, 0 !12
	addi	gp, gp, 48 !12
	addi	t0, a7, 40 !12
	sw  	a0, 0(t0) !12
	addi	t0, a7, 36 !12
	sw  	a0, 0(t0) !12
	addi	t0, a7, 32 !12
	sw  	a0, 0(t0) !12
	addi	t0, a7, 28 !12
	sw  	a0, 0(t0) !12
	addi	t0, a7, 24 !12
	sw  	a6, 0(t0) !12
	addi	t0, a7, 20 !12
	sw  	a0, 0(t0) !12
	addi	t0, a7, 16 !12
	sw  	a0, 0(t0) !12
	addi	t0, a7, 12 !12
	sw  	a5, 0(t0) !12
	addi	t0, a7, 8 !12
	sw  	a4, 0(t0) !12
	addi	t0, a7, 4 !12
	sw  	a3, 0(t0) !12
	addi	t0, a7, 0 !12
	sw  	a2, 0(t0) !12
	addi	a0, a1, 0 !12
	addi	a1, a7, 0 !12
	addi	sp, sp, 8 !12
	jal 	ra, create_array !12
	addi	sp, sp, -8 !12
	addi	a1, zero, 3 !16
	li  	fa0, 0.000000 !16
	sw  	a0, 4(sp) !16
	addi	a0, a1, 0 !16
	addi	sp, sp, 8 !16
	jal 	ra, create_float_array !16
	addi	sp, sp, -8 !16
	addi	a1, zero, 3 !19
	li  	fa0, 0.000000 !19
	sw  	a0, 8(sp) !19
	addi	a0, a1, 0 !19
	addi	sp, sp, 16 !19
	jal 	ra, create_float_array !19
	addi	sp, sp, -16 !19
	addi	a1, zero, 3 !22
	li  	fa0, 0.000000 !22
	sw  	a0, 12(sp) !22
	addi	a0, a1, 0 !22
	addi	sp, sp, 16 !22
	jal 	ra, create_float_array !22
	addi	sp, sp, -16 !22
	addi	a1, zero, 1 !25
	li  	fa0, 255.000000 !25
	sw  	a0, 16(sp) !25
	addi	a0, a1, 0 !25
	addi	sp, sp, 24 !25
	jal 	ra, create_float_array !25
	addi	sp, sp, -24 !25
	addi	a1, zero, 50 !28
	addi	a2, zero, 1 !28
	addi	a3, zero, -1 !28
	sw  	a0, 20(sp) !28
	sw  	a1, 24(sp) !28
	addi	a1, a3, 0 !28
	addi	a0, a2, 0 !28
	addi	sp, sp, 32 !28
	jal 	ra, create_array !28
	addi	sp, sp, -32 !28
	addi	a1, a0, 0 !28
	lw  	a0, 24(sp) !28
	addi	sp, sp, 32 !28
	jal 	ra, create_array !28
	addi	sp, sp, -32 !28
	addi	a1, zero, 1 !31
	addi	a2, zero, 1 !31
	addi	t0, a0, 0 !31
	lw  	a3, 0(t0) !31
	sw  	a0, 28(sp) !31
	sw  	a1, 32(sp) !31
	addi	a1, a3, 0 !31
	addi	a0, a2, 0 !31
	addi	sp, sp, 40 !31
	jal 	ra, create_array !31
	addi	sp, sp, -40 !31
	addi	a1, a0, 0 !31
	lw  	a0, 32(sp) !31
	addi	sp, sp, 40 !31
	jal 	ra, create_array !31
	addi	sp, sp, -40 !31
	addi	a1, zero, 1 !36
	li  	fa0, 0.000000 !36
	sw  	a0, 36(sp) !36
	addi	a0, a1, 0 !36
	addi	sp, sp, 40 !36
	jal 	ra, create_float_array !36
	addi	sp, sp, -40 !36
	addi	a1, zero, 1 !39
	addi	a2, zero, 0 !39
	sw  	a0, 40(sp) !39
	addi	a0, a1, 0 !39
	addi	a1, a2, 0 !39
	addi	sp, sp, 48 !39
	jal 	ra, create_array !39
	addi	sp, sp, -48 !39
	addi	a1, zero, 1 !42
	li  	fa0, 1000000000.000000 !42
	sw  	a0, 44(sp) !42
	addi	a0, a1, 0 !42
	addi	sp, sp, 48 !42
	jal 	ra, create_float_array !42
	addi	sp, sp, -48 !42
	addi	a1, zero, 3 !45
	li  	fa0, 0.000000 !45
	sw  	a0, 48(sp) !45
	addi	a0, a1, 0 !45
	addi	sp, sp, 56 !45
	jal 	ra, create_float_array !45
	addi	sp, sp, -56 !45
	addi	a1, zero, 1 !48
	addi	a2, zero, 0 !48
	sw  	a0, 52(sp) !48
	addi	a0, a1, 0 !48
	addi	a1, a2, 0 !48
	addi	sp, sp, 56 !48
	jal 	ra, create_array !48
	addi	sp, sp, -56 !48
	addi	a1, zero, 3 !51
	li  	fa0, 0.000000 !51
	sw  	a0, 56(sp) !51
	addi	a0, a1, 0 !51
	addi	sp, sp, 64 !51
	jal 	ra, create_float_array !51
	addi	sp, sp, -64 !51
	addi	a1, zero, 3 !54
	li  	fa0, 0.000000 !54
	sw  	a0, 60(sp) !54
	addi	a0, a1, 0 !54
	addi	sp, sp, 64 !54
	jal 	ra, create_float_array !54
	addi	sp, sp, -64 !54
	addi	a1, zero, 3 !58
	li  	fa0, 0.000000 !58
	sw  	a0, 64(sp) !58
	addi	a0, a1, 0 !58
	addi	sp, sp, 72 !58
	jal 	ra, create_float_array !58
	addi	sp, sp, -72 !58
	addi	a1, zero, 3 !61
	li  	fa0, 0.000000 !61
	sw  	a0, 68(sp) !61
	addi	a0, a1, 0 !61
	addi	sp, sp, 72 !61
	jal 	ra, create_float_array !61
	addi	sp, sp, -72 !61
	addi	a1, zero, 2 !65
	addi	a2, zero, 0 !65
	sw  	a0, 72(sp) !65
	addi	a0, a1, 0 !65
	addi	a1, a2, 0 !65
	addi	sp, sp, 80 !65
	jal 	ra, create_array !65
	addi	sp, sp, -80 !65
	addi	a1, zero, 2 !68
	addi	a2, zero, 0 !68
	sw  	a0, 76(sp) !68
	addi	a0, a1, 0 !68
	addi	a1, a2, 0 !68
	addi	sp, sp, 80 !68
	jal 	ra, create_array !68
	addi	sp, sp, -80 !68
	addi	a1, zero, 1 !71
	li  	fa0, 0.000000 !71
	sw  	a0, 80(sp) !71
	addi	a0, a1, 0 !71
	addi	sp, sp, 88 !71
	jal 	ra, create_float_array !71
	addi	sp, sp, -88 !71
	addi	a1, zero, 3 !75
	li  	fa0, 0.000000 !75
	sw  	a0, 84(sp) !75
	addi	a0, a1, 0 !75
	addi	sp, sp, 88 !75
	jal 	ra, create_float_array !75
	addi	sp, sp, -88 !75
	addi	a1, zero, 3 !78
	li  	fa0, 0.000000 !78
	sw  	a0, 88(sp) !78
	addi	a0, a1, 0 !78
	addi	sp, sp, 96 !78
	jal 	ra, create_float_array !78
	addi	sp, sp, -96 !78
	addi	a1, zero, 3 !82
	li  	fa0, 0.000000 !82
	sw  	a0, 92(sp) !82
	addi	a0, a1, 0 !82
	addi	sp, sp, 96 !82
	jal 	ra, create_float_array !82
	addi	sp, sp, -96 !82
	addi	a1, zero, 3 !84
	li  	fa0, 0.000000 !84
	sw  	a0, 96(sp) !84
	addi	a0, a1, 0 !84
	addi	sp, sp, 104 !84
	jal 	ra, create_float_array !84
	addi	sp, sp, -104 !84
	addi	a1, zero, 3 !86
	li  	fa0, 0.000000 !86
	sw  	a0, 100(sp) !86
	addi	a0, a1, 0 !86
	addi	sp, sp, 104 !86
	jal 	ra, create_float_array !86
	addi	sp, sp, -104 !86
	addi	a1, zero, 3 !90
	li  	fa0, 0.000000 !90
	sw  	a0, 104(sp) !90
	addi	a0, a1, 0 !90
	addi	sp, sp, 112 !90
	jal 	ra, create_float_array !90
	addi	sp, sp, -112 !90
	addi	a1, zero, 0 !95
	li  	fa0, 0.000000 !95
	sw  	a0, 108(sp) !95
	addi	a0, a1, 0 !95
	addi	sp, sp, 112 !95
	jal 	ra, create_float_array !95
	addi	sp, sp, -112 !95
	addi	a1, a0, 0 !95
	addi	a0, zero, 0 !96
	sw  	a1, 112(sp) !96
	addi	sp, sp, 120 !96
	jal 	ra, create_array !96
	addi	sp, sp, -120 !96
	addi	a1, zero, 0 !97
	addi	a2, gp, 0 !97
	addi	gp, gp, 8 !97
	addi	t0, a2, 4 !97
	sw  	a0, 0(t0) !97
	lw  	a0, 112(sp) !97
	addi	t0, a2, 0 !97
	sw  	a0, 0(t0) !97
	addi	a0, a1, 0 !97
	addi	a1, a2, 0 !97
	addi	sp, sp, 120 !97
	jal 	ra, create_array !97
	addi	sp, sp, -120 !97
	addi	a1, a0, 0 !97
	addi	a0, zero, 5 !98
	addi	sp, sp, 120 !98
	jal 	ra, create_array !98
	addi	sp, sp, -120 !98
	addi	a1, zero, 0 !103
	li  	fa0, 0.000000 !103
	sw  	a0, 116(sp) !103
	addi	a0, a1, 0 !103
	addi	sp, sp, 120 !103
	jal 	ra, create_float_array !103
	addi	sp, sp, -120 !103
	addi	a1, zero, 3 !104
	li  	fa0, 0.000000 !104
	sw  	a0, 120(sp) !104
	addi	a0, a1, 0 !104
	addi	sp, sp, 128 !104
	jal 	ra, create_float_array !104
	addi	sp, sp, -128 !104
	addi	a1, zero, 60 !105
	lw  	a2, 120(sp) !105
	sw  	a0, 124(sp) !105
	addi	a0, a1, 0 !105
	addi	a1, a2, 0 !105
	addi	sp, sp, 128 !105
	jal 	ra, create_array !105
	addi	sp, sp, -128 !105
	addi	a1, gp, 0 !106
	addi	gp, gp, 8 !106
	addi	t0, a1, 4 !106
	sw  	a0, 0(t0) !106
	lw  	a0, 124(sp) !106
	addi	t0, a1, 0 !106
	sw  	a0, 0(t0) !106
	addi	a2, zero, 0 !111
	li  	fa0, 0.000000 !111
	sw  	a1, 128(sp) !111
	addi	a0, a2, 0 !111
	addi	sp, sp, 136 !111
	jal 	ra, create_float_array !111
	addi	sp, sp, -136 !111
	addi	a1, a0, 0 !111
	addi	a0, zero, 0 !112
	sw  	a1, 132(sp) !112
	addi	sp, sp, 136 !112
	jal 	ra, create_array !112
	addi	sp, sp, -136 !112
	addi	a1, gp, 0 !113
	addi	gp, gp, 8 !113
	addi	t0, a1, 4 !113
	sw  	a0, 0(t0) !113
	lw  	a0, 132(sp) !113
	addi	t0, a1, 0 !113
	sw  	a0, 0(t0) !113
	addi	a0, zero, 180 !114
	addi	a2, zero, 0 !114
	li  	fa0, 0.000000 !114
	addi	a3, gp, 0 !114
	addi	gp, gp, 16 !114
	addi	t0, a3, 8 !114
	fsw  	fa0, 0(t0) !114
	addi	t0, a3, 4 !114
	sw  	a1, 0(t0) !114
	addi	t0, a3, 0 !114
	sw  	a2, 0(t0) !114
	addi	a1, a3, 0 !114
	addi	sp, sp, 136 !114
	jal 	ra, create_array !114
	addi	sp, sp, -136 !114
	addi	a1, zero, 1 !118
	addi	a2, zero, 0 !118
	sw  	a0, 136(sp) !118
	addi	a0, a1, 0 !118
	addi	a1, a2, 0 !118
	addi	sp, sp, 144 !118
	jal 	ra, create_array !118
	addi	sp, sp, -144 !118
	addi	a1, gp, 0 !560
	addi	gp, gp, 24 !560
	li  	a2, read_screen_settings.2525 !560
	addi	t0, a1, 0 !560
	sw  	a2, 0(t0) !560
	lw  	a2, 12(sp) !560
	addi	t0, a1, 20 !560
	sw  	a2, 0(t0) !560
	lw  	a3, 104(sp) !560
	addi	t0, a1, 16 !560
	sw  	a3, 0(t0) !560
	lw  	a4, 100(sp) !560
	addi	t0, a1, 12 !560
	sw  	a4, 0(t0) !560
	lw  	a5, 96(sp) !560
	addi	t0, a1, 8 !560
	sw  	a5, 0(t0) !560
	lw  	a6, 8(sp) !560
	addi	t0, a1, 4 !560
	sw  	a6, 0(t0) !560
	addi	a6, gp, 0 !593
	addi	gp, gp, 16 !593
	li  	a7, read_light.2527 !593
	addi	t0, a6, 0 !593
	sw  	a7, 0(t0) !593
	lw  	a7, 16(sp) !593
	addi	t0, a6, 8 !593
	sw  	a7, 0(t0) !593
	lw  	s1, 20(sp) !593
	addi	t0, a6, 4 !593
	sw  	s1, 0(t0) !593
	addi	s2, gp, 0 !656
	addi	gp, gp, 8 !656
	li  	s3, read_nth_object.2532 !656
	addi	t0, s2, 0 !656
	sw  	s3, 0(t0) !656
	lw  	s3, 4(sp) !656
	addi	t0, s2, 4 !656
	sw  	s3, 0(t0) !656
	addi	s4, gp, 0 !739
	addi	gp, gp, 16 !739
	li  	s5, read_object.2534 !739
	addi	t0, s4, 0 !739
	sw  	s5, 0(t0) !739
	addi	t0, s4, 8 !739
	sw  	s2, 0(t0) !739
	lw  	s2, 0(sp) !739
	addi	t0, s4, 4 !739
	sw  	s2, 0(t0) !739
	addi	s5, gp, 0 !772
	addi	gp, gp, 8 !772
	li  	s6, read_and_network.2542 !772
	addi	t0, s5, 0 !772
	sw  	s6, 0(t0) !772
	lw  	s6, 28(sp) !772
	addi	t0, s5, 4 !772
	sw  	s6, 0(t0) !772
	addi	s7, gp, 0 !781
	addi	gp, gp, 24 !781
	li  	a4, read_parameter.2544 !781
	addi	t0, s7, 0 !781
	sw  	a4, 0(t0) !781
	addi	t0, s7, 20 !781
	sw  	a1, 0(t0) !781
	addi	t0, s7, 16 !781
	sw  	s4, 0(t0) !781
	addi	t0, s7, 12 !781
	sw  	a6, 0(t0) !781
	addi	t0, s7, 8 !781
	sw  	s5, 0(t0) !781
	lw  	a1, 36(sp) !781
	addi	t0, s7, 4 !781
	sw  	a1, 0(t0) !781
	addi	a4, gp, 0 !797
	addi	gp, gp, 8 !797
	li  	a6, solver_rect_surface.2546 !797
	addi	t0, a4, 0 !797
	sw  	a6, 0(t0) !797
	lw  	a6, 40(sp) !797
	addi	t0, a4, 4 !797
	sw  	a6, 0(t0) !797
	addi	s4, gp, 0 !812
	addi	gp, gp, 8 !812
	li  	s5, solver_rect.2555 !812
	addi	t0, s4, 0 !812
	sw  	s5, 0(t0) !812
	addi	t0, s4, 4 !812
	sw  	a4, 0(t0) !812
	addi	a4, gp, 0 !821
	addi	gp, gp, 8 !821
	li  	s5, solver_surface.2561 !821
	addi	t0, a4, 0 !821
	sw  	s5, 0(t0) !821
	addi	t0, a4, 4 !821
	sw  	a6, 0(t0) !821
	addi	s5, gp, 0 !868
	addi	gp, gp, 8 !868
	sw  	s7, 140(sp) !868
	li  	s7, solver_second.2580 !868
	addi	t0, s5, 0 !868
	sw  	s7, 0(t0) !868
	addi	t0, s5, 4 !868
	sw  	a6, 0(t0) !868
	addi	s7, gp, 0 !897
	addi	gp, gp, 24 !897
	li  	a3, solver.2586 !897
	addi	t0, s7, 0 !897
	sw  	a3, 0(t0) !897
	addi	t0, s7, 16 !897
	sw  	a4, 0(t0) !897
	addi	t0, s7, 12 !897
	sw  	s5, 0(t0) !897
	addi	t0, s7, 8 !897
	sw  	s4, 0(t0) !897
	addi	t0, s7, 4 !897
	sw  	s3, 0(t0) !897
	addi	a3, gp, 0 !914
	addi	gp, gp, 8 !914
	li  	a4, solver_rect_fast.2590 !914
	addi	t0, a3, 0 !914
	sw  	a4, 0(t0) !914
	addi	t0, a3, 4 !914
	sw  	a6, 0(t0) !914
	addi	a4, gp, 0 !947
	addi	gp, gp, 8 !947
	li  	s4, solver_surface_fast.2597 !947
	addi	t0, a4, 0 !947
	sw  	s4, 0(t0) !947
	addi	t0, a4, 4 !947
	sw  	a6, 0(t0) !947
	addi	s4, gp, 0 !956
	addi	gp, gp, 8 !956
	li  	s5, solver_second_fast.2603 !956
	addi	t0, s4, 0 !956
	sw  	s5, 0(t0) !956
	addi	t0, s4, 4 !956
	sw  	a6, 0(t0) !956
	addi	s5, gp, 0 !976
	addi	gp, gp, 24 !976
	li  	a5, solver_fast.2609 !976
	addi	t0, s5, 0 !976
	sw  	a5, 0(t0) !976
	addi	t0, s5, 16 !976
	sw  	a4, 0(t0) !976
	addi	t0, s5, 12 !976
	sw  	s4, 0(t0) !976
	addi	t0, s5, 8 !976
	sw  	a3, 0(t0) !976
	addi	t0, s5, 4 !976
	sw  	s3, 0(t0) !976
	addi	a4, gp, 0 !996
	addi	gp, gp, 8 !996
	li  	a5, solver_surface_fast2.2613 !996
	addi	t0, a4, 0 !996
	sw  	a5, 0(t0) !996
	addi	t0, a4, 4 !996
	sw  	a6, 0(t0) !996
	addi	a5, gp, 0 !1004
	addi	gp, gp, 8 !1004
	li  	s4, solver_second_fast2.2620 !1004
	addi	t0, a5, 0 !1004
	sw  	s4, 0(t0) !1004
	addi	t0, a5, 4 !1004
	sw  	a6, 0(t0) !1004
	addi	s4, gp, 0 !1023
	addi	gp, gp, 24 !1023
	li  	a2, solver_fast2.2627 !1023
	addi	t0, s4, 0 !1023
	sw  	a2, 0(t0) !1023
	addi	t0, s4, 16 !1023
	sw  	a4, 0(t0) !1023
	addi	t0, s4, 12 !1023
	sw  	a5, 0(t0) !1023
	addi	t0, s4, 8 !1023
	sw  	a3, 0(t0) !1023
	addi	t0, s4, 4 !1023
	sw  	s3, 0(t0) !1023
	addi	a2, gp, 0 !1117
	addi	gp, gp, 8 !1117
	li  	a3, iter_setup_dirvec_constants.2639 !1117
	addi	t0, a2, 0 !1117
	sw  	a3, 0(t0) !1117
	addi	t0, a2, 4 !1117
	sw  	s3, 0(t0) !1117
	addi	a3, gp, 0 !1140
	addi	gp, gp, 8 !1140
	li  	a4, setup_startp_constants.2644 !1140
	addi	t0, a3, 0 !1140
	sw  	a4, 0(t0) !1140
	addi	t0, a3, 4 !1140
	sw  	s3, 0(t0) !1140
	addi	a4, gp, 0 !1159
	addi	gp, gp, 16 !1159
	li  	a5, setup_startp.2647 !1159
	addi	t0, a4, 0 !1159
	sw  	a5, 0(t0) !1159
	lw  	a5, 92(sp) !1159
	addi	t0, a4, 12 !1159
	sw  	a5, 0(t0) !1159
	addi	t0, a4, 8 !1159
	sw  	a3, 0(t0) !1159
	addi	t0, a4, 4 !1159
	sw  	s2, 0(t0) !1159
	addi	a3, gp, 0 !1207
	addi	gp, gp, 8 !1207
	sw  	a2, 144(sp) !1207
	li  	a2, check_all_inside.2669 !1207
	addi	t0, a3, 0 !1207
	sw  	a2, 0(t0) !1207
	addi	t0, a3, 4 !1207
	sw  	s3, 0(t0) !1207
	addi	a2, gp, 0 !1225
	addi	gp, gp, 32 !1225
	li  	s2, shadow_check_and_group.2675 !1225
	addi	t0, a2, 0 !1225
	sw  	s2, 0(t0) !1225
	addi	t0, a2, 28 !1225
	sw  	s5, 0(t0) !1225
	addi	t0, a2, 24 !1225
	sw  	a6, 0(t0) !1225
	addi	t0, a2, 20 !1225
	sw  	s3, 0(t0) !1225
	lw  	s2, 128(sp) !1225
	addi	t0, a2, 16 !1225
	sw  	s2, 0(t0) !1225
	addi	t0, a2, 12 !1225
	sw  	a7, 0(t0) !1225
	lw  	s1, 52(sp) !1225
	addi	t0, a2, 8 !1225
	sw  	s1, 0(t0) !1225
	addi	t0, a2, 4 !1225
	sw  	a3, 0(t0) !1225
	addi	a7, gp, 0 !1255
	addi	gp, gp, 16 !1255
	sw  	a0, 148(sp) !1255
	li  	a0, shadow_check_one_or_group.2678 !1255
	addi	t0, a7, 0 !1255
	sw  	a0, 0(t0) !1255
	addi	t0, a7, 8 !1255
	sw  	a2, 0(t0) !1255
	addi	t0, a7, 4 !1255
	sw  	s6, 0(t0) !1255
	addi	a0, gp, 0 !1270
	addi	gp, gp, 24 !1270
	li  	a2, shadow_check_one_or_matrix.2681 !1270
	addi	t0, a0, 0 !1270
	sw  	a2, 0(t0) !1270
	addi	t0, a0, 20 !1270
	sw  	s5, 0(t0) !1270
	addi	t0, a0, 16 !1270
	sw  	a6, 0(t0) !1270
	addi	t0, a0, 12 !1270
	sw  	a7, 0(t0) !1270
	addi	t0, a0, 8 !1270
	sw  	s2, 0(t0) !1270
	addi	t0, a0, 4 !1270
	sw  	s1, 0(t0) !1270
	addi	a2, gp, 0 !1304
	addi	gp, gp, 40 !1304
	li  	a7, solve_each_element.2684 !1304
	addi	t0, a2, 0 !1304
	sw  	a7, 0(t0) !1304
	lw  	a7, 48(sp) !1304
	addi	t0, a2, 36 !1304
	sw  	a7, 0(t0) !1304
	lw  	s5, 88(sp) !1304
	addi	t0, a2, 32 !1304
	sw  	s5, 0(t0) !1304
	addi	t0, a2, 28 !1304
	sw  	a6, 0(t0) !1304
	addi	t0, a2, 24 !1304
	sw  	s7, 0(t0) !1304
	addi	t0, a2, 20 !1304
	sw  	s3, 0(t0) !1304
	lw  	s2, 44(sp) !1304
	addi	t0, a2, 16 !1304
	sw  	s2, 0(t0) !1304
	addi	t0, a2, 12 !1304
	sw  	s1, 0(t0) !1304
	sw  	a4, 152(sp) !1304
	lw  	a4, 56(sp) !1304
	addi	t0, a2, 8 !1304
	sw  	a4, 0(t0) !1304
	addi	t0, a2, 4 !1304
	sw  	a3, 0(t0) !1304
	sw  	a0, 156(sp) !1345
	addi	a0, gp, 0 !1345
	addi	gp, gp, 16 !1345
	sw  	a3, 160(sp) !1345
	li  	a3, solve_one_or_network.2688 !1345
	addi	t0, a0, 0 !1345
	sw  	a3, 0(t0) !1345
	addi	t0, a0, 8 !1345
	sw  	a2, 0(t0) !1345
	addi	t0, a0, 4 !1345
	sw  	s6, 0(t0) !1345
	addi	a2, gp, 0 !1355
	addi	gp, gp, 24 !1355
	li  	a3, trace_or_matrix.2692 !1355
	addi	t0, a2, 0 !1355
	sw  	a3, 0(t0) !1355
	addi	t0, a2, 20 !1355
	sw  	a7, 0(t0) !1355
	addi	t0, a2, 16 !1355
	sw  	s5, 0(t0) !1355
	addi	t0, a2, 12 !1355
	sw  	a6, 0(t0) !1355
	addi	t0, a2, 8 !1355
	sw  	s7, 0(t0) !1355
	addi	t0, a2, 4 !1355
	sw  	a0, 0(t0) !1355
	addi	a0, gp, 0 !1382
	addi	gp, gp, 16 !1382
	li  	a3, judge_intersection.2696 !1382
	addi	t0, a0, 0 !1382
	sw  	a3, 0(t0) !1382
	addi	t0, a0, 12 !1382
	sw  	a2, 0(t0) !1382
	addi	t0, a0, 8 !1382
	sw  	a7, 0(t0) !1382
	addi	t0, a0, 4 !1382
	sw  	a1, 0(t0) !1382
	addi	a2, gp, 0 !1395
	addi	gp, gp, 40 !1395
	li  	a3, solve_each_element_fast.2698 !1395
	addi	t0, a2, 0 !1395
	sw  	a3, 0(t0) !1395
	addi	t0, a2, 36 !1395
	sw  	a7, 0(t0) !1395
	addi	t0, a2, 32 !1395
	sw  	a5, 0(t0) !1395
	addi	t0, a2, 28 !1395
	sw  	s4, 0(t0) !1395
	addi	t0, a2, 24 !1395
	sw  	a6, 0(t0) !1395
	addi	t0, a2, 20 !1395
	sw  	s3, 0(t0) !1395
	addi	t0, a2, 16 !1395
	sw  	s2, 0(t0) !1395
	addi	t0, a2, 12 !1395
	sw  	s1, 0(t0) !1395
	addi	t0, a2, 8 !1395
	sw  	a4, 0(t0) !1395
	lw  	a3, 160(sp) !1395
	addi	t0, a2, 4 !1395
	sw  	a3, 0(t0) !1395
	addi	a3, gp, 0 !1436
	addi	gp, gp, 16 !1436
	li  	a5, solve_one_or_network_fast.2702 !1436
	addi	t0, a3, 0 !1436
	sw  	a5, 0(t0) !1436
	addi	t0, a3, 8 !1436
	sw  	a2, 0(t0) !1436
	addi	t0, a3, 4 !1436
	sw  	s6, 0(t0) !1436
	addi	a2, gp, 0 !1446
	addi	gp, gp, 24 !1446
	li  	a5, trace_or_matrix_fast.2706 !1446
	addi	t0, a2, 0 !1446
	sw  	a5, 0(t0) !1446
	addi	t0, a2, 16 !1446
	sw  	a7, 0(t0) !1446
	addi	t0, a2, 12 !1446
	sw  	s4, 0(t0) !1446
	addi	t0, a2, 8 !1446
	sw  	a6, 0(t0) !1446
	addi	t0, a2, 4 !1446
	sw  	a3, 0(t0) !1446
	addi	a3, gp, 0 !1470
	addi	gp, gp, 16 !1470
	li  	a5, judge_intersection_fast.2710 !1470
	addi	t0, a3, 0 !1470
	sw  	a5, 0(t0) !1470
	addi	t0, a3, 12 !1470
	sw  	a2, 0(t0) !1470
	addi	t0, a3, 8 !1470
	sw  	a7, 0(t0) !1470
	addi	t0, a3, 4 !1470
	sw  	a1, 0(t0) !1470
	addi	a2, gp, 0 !1489
	addi	gp, gp, 16 !1489
	li  	a5, get_nvector_rect.2712 !1489
	addi	t0, a2, 0 !1489
	sw  	a5, 0(t0) !1489
	lw  	a5, 60(sp) !1489
	addi	t0, a2, 8 !1489
	sw  	a5, 0(t0) !1489
	addi	t0, a2, 4 !1489
	sw  	s2, 0(t0) !1489
	addi	a6, gp, 0 !1497
	addi	gp, gp, 8 !1497
	li  	s4, get_nvector_plane.2714 !1497
	addi	t0, a6, 0 !1497
	sw  	s4, 0(t0) !1497
	addi	t0, a6, 4 !1497
	sw  	a5, 0(t0) !1497
	addi	s4, gp, 0 !1505
	addi	gp, gp, 16 !1505
	li  	s6, get_nvector_second.2716 !1505
	addi	t0, s4, 0 !1505
	sw  	s6, 0(t0) !1505
	addi	t0, s4, 8 !1505
	sw  	a5, 0(t0) !1505
	addi	t0, s4, 4 !1505
	sw  	s1, 0(t0) !1505
	addi	s6, gp, 0 !1541
	addi	gp, gp, 8 !1541
	li  	s7, utexture.2721 !1541
	addi	t0, s6, 0 !1541
	sw  	s7, 0(t0) !1541
	lw  	s7, 64(sp) !1541
	addi	t0, s6, 4 !1541
	sw  	s7, 0(t0) !1541
	sw  	a6, 164(sp) !1617
	addi	a6, gp, 0 !1617
	addi	gp, gp, 16 !1617
	sw  	a2, 168(sp) !1617
	li  	a2, add_light.2724 !1617
	addi	t0, a6, 0 !1617
	sw  	a2, 0(t0) !1617
	addi	t0, a6, 8 !1617
	sw  	s7, 0(t0) !1617
	lw  	a2, 72(sp) !1617
	addi	t0, a6, 4 !1617
	sw  	a2, 0(t0) !1617
	sw  	s4, 172(sp) !1634
	addi	s4, gp, 0 !1634
	addi	gp, gp, 40 !1634
	li  	s1, trace_reflections.2728 !1634
	addi	t0, s4, 0 !1634
	sw  	s1, 0(t0) !1634
	lw  	s1, 156(sp) !1634
	addi	t0, s4, 32 !1634
	sw  	s1, 0(t0) !1634
	sw  	a0, 176(sp) !1634
	lw  	a0, 136(sp) !1634
	addi	t0, s4, 28 !1634
	sw  	a0, 0(t0) !1634
	addi	t0, s4, 24 !1634
	sw  	a1, 0(t0) !1634
	addi	t0, s4, 20 !1634
	sw  	a5, 0(t0) !1634
	addi	t0, s4, 16 !1634
	sw  	a3, 0(t0) !1634
	addi	t0, s4, 12 !1634
	sw  	s2, 0(t0) !1634
	addi	t0, s4, 8 !1634
	sw  	a4, 0(t0) !1634
	addi	t0, s4, 4 !1634
	sw  	a6, 0(t0) !1634
	addi	a0, gp, 0 !1661
	addi	gp, gp, 96 !1661
	sw  	a3, 180(sp) !1661
	li  	a3, trace_ray.2733 !1661
	addi	t0, a0, 0 !1661
	sw  	a3, 0(t0) !1661
	addi	t0, a0, 88 !1661
	sw  	s6, 0(t0) !1661
	addi	t0, a0, 84 !1661
	sw  	s4, 0(t0) !1661
	addi	t0, a0, 80 !1661
	sw  	a7, 0(t0) !1661
	addi	t0, a0, 76 !1661
	sw  	s7, 0(t0) !1661
	addi	t0, a0, 72 !1661
	sw  	s5, 0(t0) !1661
	addi	t0, a0, 68 !1661
	sw  	s1, 0(t0) !1661
	lw  	a3, 152(sp) !1661
	addi	t0, a0, 64 !1661
	sw  	a3, 0(t0) !1661
	addi	t0, a0, 60 !1661
	sw  	a2, 0(t0) !1661
	addi	t0, a0, 56 !1661
	sw  	a1, 0(t0) !1661
	addi	t0, a0, 52 !1661
	sw  	s3, 0(t0) !1661
	addi	t0, a0, 48 !1661
	sw  	a5, 0(t0) !1661
	lw  	a7, 148(sp) !1661
	addi	t0, a0, 44 !1661
	sw  	a7, 0(t0) !1661
	lw  	s4, 16(sp) !1661
	addi	t0, a0, 40 !1661
	sw  	s4, 0(t0) !1661
	lw  	a7, 176(sp) !1661
	addi	t0, a0, 36 !1661
	sw  	a7, 0(t0) !1661
	addi	t0, a0, 32 !1661
	sw  	s2, 0(t0) !1661
	lw  	a7, 52(sp) !1661
	addi	t0, a0, 28 !1661
	sw  	a7, 0(t0) !1661
	addi	t0, a0, 24 !1661
	sw  	a4, 0(t0) !1661
	lw  	s2, 172(sp) !1661
	addi	t0, a0, 20 !1661
	sw  	s2, 0(t0) !1661
	lw  	s5, 168(sp) !1661
	addi	t0, a0, 16 !1661
	sw  	s5, 0(t0) !1661
	lw  	a2, 164(sp) !1661
	addi	t0, a0, 12 !1661
	sw  	a2, 0(t0) !1661
	lw  	a3, 20(sp) !1661
	addi	t0, a0, 8 !1661
	sw  	a3, 0(t0) !1661
	addi	t0, a0, 4 !1661
	sw  	a6, 0(t0) !1661
	addi	a3, gp, 0 !1751
	addi	gp, gp, 64 !1751
	li  	a6, trace_diffuse_ray.2739 !1751
	addi	t0, a3, 0 !1751
	sw  	a6, 0(t0) !1751
	addi	t0, a3, 56 !1751
	sw  	s6, 0(t0) !1751
	addi	t0, a3, 52 !1751
	sw  	s7, 0(t0) !1751
	addi	t0, a3, 48 !1751
	sw  	s1, 0(t0) !1751
	addi	t0, a3, 44 !1751
	sw  	a1, 0(t0) !1751
	addi	t0, a3, 40 !1751
	sw  	s3, 0(t0) !1751
	addi	t0, a3, 36 !1751
	sw  	a5, 0(t0) !1751
	addi	t0, a3, 32 !1751
	sw  	s4, 0(t0) !1751
	lw  	a1, 180(sp) !1751
	addi	t0, a3, 28 !1751
	sw  	a1, 0(t0) !1751
	addi	t0, a3, 24 !1751
	sw  	a7, 0(t0) !1751
	addi	t0, a3, 20 !1751
	sw  	a4, 0(t0) !1751
	addi	t0, a3, 16 !1751
	sw  	s2, 0(t0) !1751
	addi	t0, a3, 12 !1751
	sw  	s5, 0(t0) !1751
	addi	t0, a3, 8 !1751
	sw  	a2, 0(t0) !1751
	lw  	a1, 68(sp) !1751
	addi	t0, a3, 4 !1751
	sw  	a1, 0(t0) !1751
	addi	a2, gp, 0 !1769
	addi	gp, gp, 8 !1769
	li  	a4, iter_trace_diffuse_rays.2742 !1769
	addi	t0, a2, 0 !1769
	sw  	a4, 0(t0) !1769
	addi	t0, a2, 4 !1769
	sw  	a3, 0(t0) !1769
	addi	a3, gp, 0 !1792
	addi	gp, gp, 16 !1792
	li  	a4, trace_diffuse_ray_80percent.2751 !1792
	addi	t0, a3, 0 !1792
	sw  	a4, 0(t0) !1792
	lw  	a4, 152(sp) !1792
	addi	t0, a3, 12 !1792
	sw  	a4, 0(t0) !1792
	addi	t0, a3, 8 !1792
	sw  	a2, 0(t0) !1792
	lw  	a5, 116(sp) !1792
	addi	t0, a3, 4 !1792
	sw  	a5, 0(t0) !1792
	addi	a6, gp, 0 !1817
	addi	gp, gp, 16 !1817
	li  	a7, calc_diffuse_using_1point.2755 !1817
	addi	t0, a6, 0 !1817
	sw  	a7, 0(t0) !1817
	addi	t0, a6, 12 !1817
	sw  	a3, 0(t0) !1817
	lw  	a3, 72(sp) !1817
	addi	t0, a6, 8 !1817
	sw  	a3, 0(t0) !1817
	addi	t0, a6, 4 !1817
	sw  	a1, 0(t0) !1817
	addi	a7, gp, 0 !1835
	addi	gp, gp, 16 !1835
	li  	s1, calc_diffuse_using_5points.2758 !1835
	addi	t0, a7, 0 !1835
	sw  	s1, 0(t0) !1835
	addi	t0, a7, 8 !1835
	sw  	a3, 0(t0) !1835
	addi	t0, a7, 4 !1835
	sw  	a1, 0(t0) !1835
	addi	s1, gp, 0 !1855
	addi	gp, gp, 8 !1855
	li  	s2, do_without_neighbors.2764 !1855
	addi	t0, s1, 0 !1855
	sw  	s2, 0(t0) !1855
	addi	t0, s1, 4 !1855
	sw  	a6, 0(t0) !1855
	addi	a6, gp, 0 !1870
	addi	gp, gp, 8 !1870
	li  	s2, neighbors_exist.2767 !1870
	addi	t0, a6, 0 !1870
	sw  	s2, 0(t0) !1870
	lw  	s2, 76(sp) !1870
	addi	t0, a6, 4 !1870
	sw  	s2, 0(t0) !1870
	addi	s5, gp, 0 !1904
	addi	gp, gp, 16 !1904
	li  	s6, try_exploit_neighbors.2780 !1904
	addi	t0, s5, 0 !1904
	sw  	s6, 0(t0) !1904
	addi	t0, s5, 8 !1904
	sw  	s1, 0(t0) !1904
	addi	t0, s5, 4 !1904
	sw  	a7, 0(t0) !1904
	addi	a7, gp, 0 !1929
	addi	gp, gp, 8 !1929
	li  	s6, write_ppm_header.2787 !1929
	addi	t0, a7, 0 !1929
	sw  	s6, 0(t0) !1929
	addi	t0, a7, 4 !1929
	sw  	s2, 0(t0) !1929
	addi	s6, gp, 0 !1955
	addi	gp, gp, 8 !1955
	li  	s7, write_rgb.2793 !1955
	addi	t0, s6, 0 !1955
	sw  	s7, 0(t0) !1955
	addi	t0, s6, 4 !1955
	sw  	a3, 0(t0) !1955
	addi	s7, gp, 0 !1975
	addi	gp, gp, 24 !1975
	sw  	a7, 184(sp) !1975
	li  	a7, pretrace_diffuse_rays.2795 !1975
	addi	t0, s7, 0 !1975
	sw  	a7, 0(t0) !1975
	addi	t0, s7, 16 !1975
	sw  	a4, 0(t0) !1975
	addi	t0, s7, 12 !1975
	sw  	a2, 0(t0) !1975
	addi	t0, s7, 8 !1975
	sw  	a5, 0(t0) !1975
	addi	t0, s7, 4 !1975
	sw  	a1, 0(t0) !1975
	addi	a1, gp, 0 !2004
	addi	gp, gp, 40 !2004
	li  	a2, pretrace_pixels.2798 !2004
	addi	t0, a1, 0 !2004
	sw  	a2, 0(t0) !2004
	lw  	a2, 12(sp) !2004
	addi	t0, a1, 36 !2004
	sw  	a2, 0(t0) !2004
	addi	t0, a1, 32 !2004
	sw  	a0, 0(t0) !2004
	lw  	a0, 88(sp) !2004
	addi	t0, a1, 28 !2004
	sw  	a0, 0(t0) !2004
	lw  	a0, 96(sp) !2004
	addi	t0, a1, 24 !2004
	sw  	a0, 0(t0) !2004
	lw  	a0, 84(sp) !2004
	addi	t0, a1, 20 !2004
	sw  	a0, 0(t0) !2004
	addi	t0, a1, 16 !2004
	sw  	a3, 0(t0) !2004
	lw  	a2, 108(sp) !2004
	addi	t0, a1, 12 !2004
	sw  	a2, 0(t0) !2004
	addi	t0, a1, 8 !2004
	sw  	s7, 0(t0) !2004
	lw  	a2, 80(sp) !2004
	addi	t0, a1, 4 !2004
	sw  	a2, 0(t0) !2004
	addi	a4, gp, 0 !2029
	addi	gp, gp, 32 !2029
	li  	a7, pretrace_line.2805 !2029
	addi	t0, a4, 0 !2029
	sw  	a7, 0(t0) !2029
	lw  	a7, 104(sp) !2029
	addi	t0, a4, 24 !2029
	sw  	a7, 0(t0) !2029
	lw  	a7, 100(sp) !2029
	addi	t0, a4, 20 !2029
	sw  	a7, 0(t0) !2029
	addi	t0, a4, 16 !2029
	sw  	a0, 0(t0) !2029
	addi	t0, a4, 12 !2029
	sw  	a1, 0(t0) !2029
	addi	t0, a4, 8 !2029
	sw  	s2, 0(t0) !2029
	addi	t0, a4, 4 !2029
	sw  	a2, 0(t0) !2029
	addi	a1, gp, 0 !2043
	addi	gp, gp, 32 !2043
	li  	a7, scan_pixel.2809 !2043
	addi	t0, a1, 0 !2043
	sw  	a7, 0(t0) !2043
	addi	t0, a1, 24 !2043
	sw  	s6, 0(t0) !2043
	addi	t0, a1, 20 !2043
	sw  	s5, 0(t0) !2043
	addi	t0, a1, 16 !2043
	sw  	a3, 0(t0) !2043
	addi	t0, a1, 12 !2043
	sw  	a6, 0(t0) !2043
	addi	t0, a1, 8 !2043
	sw  	s2, 0(t0) !2043
	addi	t0, a1, 4 !2043
	sw  	s1, 0(t0) !2043
	addi	a3, gp, 0 !2063
	addi	gp, gp, 16 !2063
	li  	a6, scan_line.2816 !2063
	addi	t0, a3, 0 !2063
	sw  	a6, 0(t0) !2063
	addi	t0, a3, 12 !2063
	sw  	a1, 0(t0) !2063
	addi	t0, a3, 8 !2063
	sw  	a4, 0(t0) !2063
	addi	t0, a3, 4 !2063
	sw  	s2, 0(t0) !2063
	addi	a1, gp, 0 !2113
	addi	gp, gp, 8 !2113
	li  	a6, create_pixelline.2830 !2113
	addi	t0, a1, 0 !2113
	sw  	a6, 0(t0) !2113
	addi	t0, a1, 4 !2113
	sw  	s2, 0(t0) !2113
	addi	a6, gp, 0 !2136
	addi	gp, gp, 8 !2136
	li  	a7, calc_dirvec.2837 !2136
	addi	t0, a6, 0 !2136
	sw  	a7, 0(t0) !2136
	addi	t0, a6, 4 !2136
	sw  	a5, 0(t0) !2136
	addi	a7, gp, 0 !2157
	addi	gp, gp, 8 !2157
	li  	s1, calc_dirvecs.2845 !2157
	addi	t0, a7, 0 !2157
	sw  	s1, 0(t0) !2157
	addi	t0, a7, 4 !2157
	sw  	a6, 0(t0) !2157
	addi	a6, gp, 0 !2171
	addi	gp, gp, 8 !2171
	li  	s1, calc_dirvec_rows.2850 !2171
	addi	t0, a6, 0 !2171
	sw  	s1, 0(t0) !2171
	addi	t0, a6, 4 !2171
	sw  	a7, 0(t0) !2171
	addi	a7, gp, 0 !2182
	addi	gp, gp, 8 !2182
	li  	s1, create_dirvec.2854 !2182
	addi	t0, a7, 0 !2182
	sw  	s1, 0(t0) !2182
	lw  	s1, 0(sp) !2182
	addi	t0, a7, 4 !2182
	sw  	s1, 0(t0) !2182
	addi	s5, gp, 0 !2188
	addi	gp, gp, 8 !2188
	li  	s6, create_dirvec_elements.2856 !2188
	addi	t0, s5, 0 !2188
	sw  	s6, 0(t0) !2188
	addi	t0, s5, 4 !2188
	sw  	a7, 0(t0) !2188
	addi	s6, gp, 0 !2195
	addi	gp, gp, 16 !2195
	li  	s7, create_dirvecs.2859 !2195
	addi	t0, s6, 0 !2195
	sw  	s7, 0(t0) !2195
	addi	t0, s6, 12 !2195
	sw  	a5, 0(t0) !2195
	addi	t0, s6, 8 !2195
	sw  	s5, 0(t0) !2195
	addi	t0, s6, 4 !2195
	sw  	a7, 0(t0) !2195
	addi	s5, gp, 0 !2205
	addi	gp, gp, 16 !2205
	li  	s7, init_dirvec_constants.2861 !2205
	addi	t0, s5, 0 !2205
	sw  	s7, 0(t0) !2205
	addi	t0, s5, 8 !2205
	sw  	s1, 0(t0) !2205
	lw  	s7, 144(sp) !2205
	addi	t0, s5, 4 !2205
	sw  	s7, 0(t0) !2205
	sw  	a1, 188(sp) !2212
	addi	a1, gp, 0 !2212
	addi	gp, gp, 16 !2212
	li  	a2, init_vecset_constants.2864 !2212
	addi	t0, a1, 0 !2212
	sw  	a2, 0(t0) !2212
	addi	t0, a1, 8 !2212
	sw  	s5, 0(t0) !2212
	addi	t0, a1, 4 !2212
	sw  	a5, 0(t0) !2212
	addi	a2, gp, 0 !2219
	addi	gp, gp, 16 !2219
	li  	a5, init_dirvecs.2866 !2219
	addi	t0, a2, 0 !2219
	sw  	a5, 0(t0) !2219
	addi	t0, a2, 12 !2219
	sw  	a1, 0(t0) !2219
	addi	t0, a2, 8 !2219
	sw  	s6, 0(t0) !2219
	addi	t0, a2, 4 !2219
	sw  	a6, 0(t0) !2219
	addi	a1, gp, 0 !2228
	addi	gp, gp, 24 !2228
	li  	a5, add_reflection.2868 !2228
	addi	t0, a1, 0 !2228
	sw  	a5, 0(t0) !2228
	lw  	a5, 136(sp) !2228
	addi	t0, a1, 16 !2228
	sw  	a5, 0(t0) !2228
	addi	t0, a1, 12 !2228
	sw  	s1, 0(t0) !2228
	addi	t0, a1, 8 !2228
	sw  	s7, 0(t0) !2228
	addi	t0, a1, 4 !2228
	sw  	a7, 0(t0) !2228
	addi	a5, gp, 0 !2237
	addi	gp, gp, 16 !2237
	li  	a6, setup_rect_reflection.2875 !2237
	addi	t0, a5, 0 !2237
	sw  	a6, 0(t0) !2237
	lw  	a6, 148(sp) !2237
	addi	t0, a5, 12 !2237
	sw  	a6, 0(t0) !2237
	addi	t0, a5, 8 !2237
	sw  	s4, 0(t0) !2237
	addi	t0, a5, 4 !2237
	sw  	a1, 0(t0) !2237
	addi	a7, gp, 0 !2251
	addi	gp, gp, 16 !2251
	li  	s5, setup_surface_reflection.2878 !2251
	addi	t0, a7, 0 !2251
	sw  	s5, 0(t0) !2251
	addi	t0, a7, 12 !2251
	sw  	a6, 0(t0) !2251
	addi	t0, a7, 8 !2251
	sw  	s4, 0(t0) !2251
	addi	t0, a7, 4 !2251
	sw  	a1, 0(t0) !2251
	addi	a1, gp, 0 !2266
	addi	gp, gp, 16 !2266
	li  	a6, setup_reflections.2881 !2266
	addi	t0, a1, 0 !2266
	sw  	a6, 0(t0) !2266
	addi	t0, a1, 12 !2266
	sw  	a7, 0(t0) !2266
	addi	t0, a1, 8 !2266
	sw  	a5, 0(t0) !2266
	addi	t0, a1, 4 !2266
	sw  	s3, 0(t0) !2266
	addi	a5, gp, 0 !2286
	addi	gp, gp, 64 !2286
	li  	a6, rt.2883 !2286
	addi	t0, a5, 0 !2286
	sw  	a6, 0(t0) !2286
	lw  	a6, 184(sp) !2286
	addi	t0, a5, 60 !2286
	sw  	a6, 0(t0) !2286
	lw  	a6, 124(sp) !2286
	addi	t0, a5, 56 !2286
	sw  	a6, 0(t0) !2286
	addi	t0, a5, 52 !2286
	sw  	a1, 0(t0) !2286
	addi	t0, a5, 48 !2286
	sw  	a0, 0(t0) !2286
	addi	t0, a5, 44 !2286
	sw  	a3, 0(t0) !2286
	lw  	a0, 140(sp) !2286
	addi	t0, a5, 40 !2286
	sw  	a0, 0(t0) !2286
	addi	t0, a5, 36 !2286
	sw  	a4, 0(t0) !2286
	addi	t0, a5, 32 !2286
	sw  	s1, 0(t0) !2286
	lw  	a0, 128(sp) !2286
	addi	t0, a5, 28 !2286
	sw  	a0, 0(t0) !2286
	addi	t0, a5, 24 !2286
	sw  	s4, 0(t0) !2286
	addi	t0, a5, 20 !2286
	sw  	s7, 0(t0) !2286
	addi	t0, a5, 16 !2286
	sw  	a2, 0(t0) !2286
	addi	t0, a5, 12 !2286
	sw  	s2, 0(t0) !2286
	lw  	a0, 80(sp) !2286
	addi	t0, a5, 8 !2286
	sw  	a0, 0(t0) !2286
	lw  	a0, 188(sp) !2286
	addi	t0, a5, 4 !2286
	sw  	a0, 0(t0) !2286
	addi	a0, zero, 128 !2307
	addi	a1, zero, 128 !2307
	addi	a2, zero, 3 !2307
	addi	s7, a5, 0 !2307
	addi	sp, sp, 192 !2307
	lw  	t1, 0(s7) !2307
	jalr	ra, t1, 0 !2307
	addi	sp, sp, -192 !2307
	addi	sp, sp, -4
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
sgn.2406:
	sw  	ra, 0(sp)
	fsw 	fa0, 8(sp) !140
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !140
	bne 	a0, t0, beq_else.9506 !140
	flw  	fa0, 8(sp) !141
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !141
	bne 	a0, t0, beq_else.9507 !141
	li  	a0, -1.000000 !142
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9507: !141
	li  	a0, 1.000000 !141
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9506: !140
	li  	a0, 0.000000 !140
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecset.2414:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !162
	fsw  	fa0, 0(t0) !162
	addi	t0, a0, 4 !163
	fsw  	fa1, 0(t0) !163
	addi	t0, a0, 8 !164
	fsw  	fa2, 0(t0) !164
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecfill.2419:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !169
	fsw  	fa0, 0(t0) !169
	addi	t0, a0, 4 !170
	fsw  	fa0, 0(t0) !170
	addi	t0, a0, 8 !171
	fsw  	fa0, 0(t0) !171
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
veccpy.2424:
	sw  	ra, 0(sp)
	addi	t0, a1, 0 !181
	flw  	fa0, 0(t0) !181
	addi	t0, a0, 0 !181
	fsw  	fa0, 0(t0) !181
	addi	t0, a1, 4 !182
	flw  	fa0, 0(t0) !182
	addi	t0, a0, 4 !182
	fsw  	fa0, 0(t0) !182
	addi	t0, a1, 8 !183
	flw  	fa0, 0(t0) !183
	addi	t0, a0, 8 !183
	fsw  	fa0, 0(t0) !183
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecunit_sgn.2427:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !192
	flw  	fa0, 0(t0) !192
	sw  	a1, 4(sp) !192
	sw  	a0, 8(sp) !192
	fmul	fa0, fa0, fa0
	lw  	a0, 8(sp) !192
	addi	t0, a0, 4 !192
	flw  	fa1, 0(t0) !192
	fsw 	fa0, 16(sp) !192
	fsgnj   fa0, fa1, fa1 !192
	fmul	fa0, fa0, fa0
	flw  	fa1, 16(sp) !192
	fadd	fa1, fa1, fa0 !192
	lw  	a0, 8(sp) !192
	addi	t0, a0, 8 !192
	flw  	fa0, 0(t0) !192
	fsw 	fa1, 24(sp) !192
	fmul	fa0, fa0, fa0
	flw  	fa1, 24(sp) !192
	fadd	fa0, fa1, fa0 !192
	fsqrt   fa0, fa0
	fsw 	fa0, 32(sp) !193
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !193
	bne 	a0, t0, beq_else.9512 !193
	lw  	a0, 4(sp) !193
	addi	t0, zero, 0 !193
	bne 	a0, t0, beq_else.9514 !193
	li  	fa0, 1.000000 !193
	flw  	fa1, 32(sp) !193
	fdiv	fa0, fa0, fa1 !193
	jal 	zero, beq_cont.9515 !193
beq_else.9514: !193
	li  	fa0, -1.000000 !193
	flw  	fa1, 32(sp) !193
	fdiv	fa0, fa0, fa1 !193
beq_cont.9515: !193
	jal 	zero, beq_cont.9513 !193
beq_else.9512: !193
	li  	fa0, 1.000000 !193
beq_cont.9513: !193
	lw  	a0, 8(sp) !194
	addi	t0, a0, 0 !194
	flw  	fa1, 0(t0) !194
	fmul	fa1, fa1, fa0 !194
	addi	t0, a0, 0 !194
	fsw  	fa1, 0(t0) !194
	addi	t0, a0, 4 !195
	flw  	fa1, 0(t0) !195
	fmul	fa1, fa1, fa0 !195
	addi	t0, a0, 4 !195
	fsw  	fa1, 0(t0) !195
	addi	t0, a0, 8 !196
	flw  	fa1, 0(t0) !196
	fmul	fa1, fa1, fa0 !196
	addi	t0, a0, 8 !196
	fsw  	fa1, 0(t0) !196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
veciprod.2430:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !201
	flw  	fa0, 0(t0) !201
	addi	t0, a1, 0 !201
	flw  	fa1, 0(t0) !201
	fmul	fa0, fa0, fa1 !201
	addi	t0, a0, 4 !201
	flw  	fa1, 0(t0) !201
	addi	t0, a1, 4 !201
	flw  	fa2, 0(t0) !201
	fmul	fa1, fa1, fa2 !201
	fadd	fa0, fa0, fa1 !201
	addi	t0, a0, 8 !201
	flw  	fa1, 0(t0) !201
	addi	t0, a1, 8 !201
	flw  	fa2, 0(t0) !201
	fmul	fa1, fa1, fa2 !201
	fadd	fa0, fa0, fa1 !201
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
veciprod2.2433:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !206
	flw  	fa3, 0(t0) !206
	fmul	fa3, fa3, fa0 !206
	addi	t0, a0, 4 !206
	flw  	fa0, 0(t0) !206
	fmul	fa0, fa0, fa1 !206
	fadd	fa3, fa3, fa0 !206
	addi	t0, a0, 8 !206
	flw  	fa0, 0(t0) !206
	fmul	fa0, fa0, fa2 !206
	fadd	fa0, fa3, fa0 !206
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecaccum.2438:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !211
	flw  	fa1, 0(t0) !211
	addi	t0, a1, 0 !211
	flw  	fa2, 0(t0) !211
	fmul	fa2, fa0, fa2 !211
	fadd	fa1, fa1, fa2 !211
	addi	t0, a0, 0 !211
	fsw  	fa1, 0(t0) !211
	addi	t0, a0, 4 !212
	flw  	fa1, 0(t0) !212
	addi	t0, a1, 4 !212
	flw  	fa2, 0(t0) !212
	fmul	fa2, fa0, fa2 !212
	fadd	fa1, fa1, fa2 !212
	addi	t0, a0, 4 !212
	fsw  	fa1, 0(t0) !212
	addi	t0, a0, 8 !213
	flw  	fa1, 0(t0) !213
	addi	t0, a1, 8 !213
	flw  	fa2, 0(t0) !213
	fmul	fa0, fa0, fa2 !213
	fadd	fa1, fa1, fa0 !213
	addi	t0, a0, 8 !213
	fsw  	fa1, 0(t0) !213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecadd.2442:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !218
	flw  	fa0, 0(t0) !218
	addi	t0, a1, 0 !218
	flw  	fa1, 0(t0) !218
	fadd	fa0, fa0, fa1 !218
	addi	t0, a0, 0 !218
	fsw  	fa0, 0(t0) !218
	addi	t0, a0, 4 !219
	flw  	fa0, 0(t0) !219
	addi	t0, a1, 4 !219
	flw  	fa1, 0(t0) !219
	fadd	fa0, fa0, fa1 !219
	addi	t0, a0, 4 !219
	fsw  	fa0, 0(t0) !219
	addi	t0, a0, 8 !220
	flw  	fa0, 0(t0) !220
	addi	t0, a1, 8 !220
	flw  	fa1, 0(t0) !220
	fadd	fa0, fa0, fa1 !220
	addi	t0, a0, 8 !220
	fsw  	fa0, 0(t0) !220
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecscale.2445:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !227
	flw  	fa1, 0(t0) !227
	fmul	fa1, fa1, fa0 !227
	addi	t0, a0, 0 !227
	fsw  	fa1, 0(t0) !227
	addi	t0, a0, 4 !228
	flw  	fa1, 0(t0) !228
	fmul	fa1, fa1, fa0 !228
	addi	t0, a0, 4 !228
	fsw  	fa1, 0(t0) !228
	addi	t0, a0, 8 !229
	flw  	fa1, 0(t0) !229
	fmul	fa1, fa1, fa0 !229
	addi	t0, a0, 8 !229
	fsw  	fa1, 0(t0) !229
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecaccumv.2448:
	sw  	ra, 0(sp)
	addi	t0, a0, 0 !234
	flw  	fa0, 0(t0) !234
	addi	t0, a1, 0 !234
	flw  	fa1, 0(t0) !234
	addi	t0, a2, 0 !234
	flw  	fa2, 0(t0) !234
	fmul	fa1, fa1, fa2 !234
	fadd	fa0, fa0, fa1 !234
	addi	t0, a0, 0 !234
	fsw  	fa0, 0(t0) !234
	addi	t0, a0, 4 !235
	flw  	fa0, 0(t0) !235
	addi	t0, a1, 4 !235
	flw  	fa1, 0(t0) !235
	addi	t0, a2, 4 !235
	flw  	fa2, 0(t0) !235
	fmul	fa1, fa1, fa2 !235
	fadd	fa0, fa0, fa1 !235
	addi	t0, a0, 4 !235
	fsw  	fa0, 0(t0) !235
	addi	t0, a0, 8 !236
	flw  	fa0, 0(t0) !236
	addi	t0, a1, 8 !236
	flw  	fa1, 0(t0) !236
	addi	t0, a2, 8 !236
	flw  	fa2, 0(t0) !236
	fmul	fa1, fa1, fa2 !236
	fadd	fa0, fa0, fa1 !236
	addi	t0, a0, 8 !236
	fsw  	fa0, 0(t0) !236
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_screen_settings.2525:
	sw  	ra, 0(sp)
	addi	t0, s7, 20 !563
	lw  	a0, 0(t0) !563
	addi	t0, s7, 16 !563
	lw  	a1, 0(t0) !563
	addi	t0, s7, 12 !563
	lw  	a2, 0(t0) !563
	addi	t0, s7, 8 !563
	lw  	a3, 0(t0) !563
	addi	t0, s7, 4 !563
	lw  	a4, 0(t0) !563
	sw  	a0, 4(sp) !563
	sw  	a2, 8(sp) !563
	sw  	a3, 12(sp) !563
	sw  	a1, 16(sp) !563
	sw  	a4, 20(sp) !563
	inw 	fa0
	lw  	a0, 20(sp) !563
	addi	t0, a0, 0 !563
	fsw  	fa0, 0(t0) !563
	inw 	fa0
	lw  	a0, 20(sp) !564
	addi	t0, a0, 4 !564
	fsw  	fa0, 0(t0) !564
	inw 	fa0
	lw  	a0, 20(sp) !565
	addi	t0, a0, 8 !565
	fsw  	fa0, 0(t0) !565
	inw 	fa0
	li  	fa1, 0.017453 !556
	fmul	fa0, fa0, fa1 !556
	fsw 	fa0, 24(sp) !568
	addi	sp, sp, 32 !568
	jal 	ra, cos !568
	addi	sp, sp, -32 !568
	flw  	fa1, 24(sp) !569
	fsw 	fa0, 32(sp) !569
	fsgnj   fa0, fa1, fa1 !569
	addi	sp, sp, 40 !569
	jal 	ra, sin !569
	addi	sp, sp, -40 !569
	fsw 	fa0, 40(sp) !570
	inw 	fa0
	li  	fa1, 0.017453 !556
	fmul	fa0, fa0, fa1 !556
	fsw 	fa0, 48(sp) !571
	addi	sp, sp, 56 !571
	jal 	ra, cos !571
	addi	sp, sp, -56 !571
	flw  	fa1, 48(sp) !572
	fsw 	fa0, 56(sp) !572
	fsgnj   fa0, fa1, fa1 !572
	addi	sp, sp, 64 !572
	jal 	ra, sin !572
	addi	sp, sp, -64 !572
	flw  	fa1, 32(sp) !574
	fmul	fa2, fa1, fa0 !574
	li  	fa3, 200.000000 !574
	fmul	fa2, fa2, fa3 !574
	lw  	a0, 16(sp) !574
	addi	t0, a0, 0 !574
	fsw  	fa2, 0(t0) !574
	li  	fa2, -200.000000 !575
	flw  	fa3, 40(sp) !575
	fmul	fa2, fa3, fa2 !575
	addi	t0, a0, 4 !575
	fsw  	fa2, 0(t0) !575
	flw  	fa2, 56(sp) !576
	fmul	fa4, fa1, fa2 !576
	li  	fa5, 200.000000 !576
	fmul	fa4, fa4, fa5 !576
	addi	t0, a0, 8 !576
	fsw  	fa4, 0(t0) !576
	lw  	a1, 12(sp) !578
	addi	t0, a1, 0 !578
	fsw  	fa2, 0(t0) !578
	li  	fa4, 0.000000 !579
	addi	t0, a1, 4 !579
	fsw  	fa4, 0(t0) !579
	fsw 	fa0, 64(sp) !580
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 12(sp) !580
	addi	t0, a0, 8 !580
	fsw  	fa0, 0(t0) !580
	flw  	fa0, 40(sp) !582
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 64(sp) !582
	fmul	fa0, fa0, fa1 !582
	lw  	a0, 8(sp) !582
	addi	t0, a0, 0 !582
	fsw  	fa0, 0(t0) !582
	flw  	fa0, 32(sp) !583
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !583
	addi	t0, a0, 4 !583
	fsw  	fa0, 0(t0) !583
	flw  	fa0, 40(sp) !584
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 56(sp) !584
	fmul	fa0, fa0, fa1 !584
	lw  	a0, 8(sp) !584
	addi	t0, a0, 8 !584
	fsw  	fa0, 0(t0) !584
	lw  	a0, 20(sp) !586
	addi	t0, a0, 0 !586
	flw  	fa0, 0(t0) !586
	lw  	a1, 16(sp) !586
	addi	t0, a1, 0 !586
	flw  	fa1, 0(t0) !586
	fsub	fa0, fa0, fa1 !586
	lw  	a2, 4(sp) !586
	addi	t0, a2, 0 !586
	fsw  	fa0, 0(t0) !586
	addi	t0, a0, 4 !587
	flw  	fa0, 0(t0) !587
	addi	t0, a1, 4 !587
	flw  	fa1, 0(t0) !587
	fsub	fa0, fa0, fa1 !587
	addi	t0, a2, 4 !587
	fsw  	fa0, 0(t0) !587
	addi	t0, a0, 8 !588
	flw  	fa0, 0(t0) !588
	addi	t0, a1, 8 !588
	flw  	fa1, 0(t0) !588
	fsub	fa0, fa0, fa1 !588
	addi	t0, a2, 8 !588
	fsw  	fa0, 0(t0) !588
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_light.2527:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !595
	lw  	a0, 0(t0) !595
	addi	t0, s7, 4 !595
	lw  	a1, 0(t0) !595
	sw  	a1, 4(sp) !595
	sw  	a0, 8(sp) !595
	inw 	a0
	inw 	fa0
	li  	fa1, 0.017453 !556
	fmul	fa0, fa0, fa1 !556
	fsw 	fa0, 16(sp) !599
	addi	sp, sp, 24 !599
	jal 	ra, sin !599
	addi	sp, sp, -24 !599
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !600
	addi	t0, a0, 4 !600
	fsw  	fa0, 0(t0) !600
	inw 	fa0
	li  	fa1, 0.017453 !556
	fmul	fa0, fa0, fa1 !556
	flw  	fa1, 16(sp) !602
	fsw 	fa0, 24(sp) !602
	fsgnj   fa0, fa1, fa1 !602
	addi	sp, sp, 32 !602
	jal 	ra, cos !602
	addi	sp, sp, -32 !602
	flw  	fa1, 24(sp) !603
	fsw 	fa0, 32(sp) !603
	fsgnj   fa0, fa1, fa1 !603
	addi	sp, sp, 40 !603
	jal 	ra, sin !603
	addi	sp, sp, -40 !603
	flw  	fa1, 32(sp) !604
	fmul	fa0, fa1, fa0 !604
	lw  	a0, 8(sp) !604
	addi	t0, a0, 0 !604
	fsw  	fa0, 0(t0) !604
	flw  	fa0, 24(sp) !605
	addi	sp, sp, 40 !605
	jal 	ra, cos !605
	addi	sp, sp, -40 !605
	flw  	fa1, 32(sp) !606
	fmul	fa1, fa1, fa0 !606
	lw  	a0, 8(sp) !606
	addi	t0, a0, 8 !606
	fsw  	fa1, 0(t0) !606
	inw 	fa0
	lw  	a0, 4(sp) !607
	addi	t0, a0, 0 !607
	fsw  	fa0, 0(t0) !607
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
rotate_quadratic_matrix.2529:
	sw  	ra, 0(sp)
	addi	t0, a1, 0 !617
	flw  	fa0, 0(t0) !617
	sw  	a0, 4(sp) !617
	sw  	a1, 8(sp) !617
	addi	sp, sp, 16 !617
	jal 	ra, cos !617
	addi	sp, sp, -16 !617
	lw  	a0, 8(sp) !618
	addi	t0, a0, 0 !618
	flw  	fa1, 0(t0) !618
	fsw 	fa0, 16(sp) !618
	fsgnj   fa0, fa1, fa1 !618
	addi	sp, sp, 24 !618
	jal 	ra, sin !618
	addi	sp, sp, -24 !618
	lw  	a0, 8(sp) !619
	addi	t0, a0, 4 !619
	flw  	fa1, 0(t0) !619
	fsw 	fa0, 24(sp) !619
	fsgnj   fa0, fa1, fa1 !619
	addi	sp, sp, 32 !619
	jal 	ra, cos !619
	addi	sp, sp, -32 !619
	lw  	a0, 8(sp) !620
	addi	t0, a0, 4 !620
	flw  	fa1, 0(t0) !620
	fsw 	fa0, 32(sp) !620
	fsgnj   fa0, fa1, fa1 !620
	addi	sp, sp, 40 !620
	jal 	ra, sin !620
	addi	sp, sp, -40 !620
	lw  	a0, 8(sp) !621
	addi	t0, a0, 8 !621
	flw  	fa1, 0(t0) !621
	fsw 	fa0, 40(sp) !621
	fsgnj   fa0, fa1, fa1 !621
	addi	sp, sp, 48 !621
	jal 	ra, cos !621
	addi	sp, sp, -48 !621
	lw  	a0, 8(sp) !622
	addi	t0, a0, 8 !622
	flw  	fa1, 0(t0) !622
	fsw 	fa0, 48(sp) !622
	fsgnj   fa0, fa1, fa1 !622
	addi	sp, sp, 56 !622
	jal 	ra, sin !622
	addi	sp, sp, -56 !622
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
read_nth_object.2532:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !658
	lw  	a1, 0(t0) !658
	sw  	a0, 4(sp) !658
	sw  	a1, 8(sp) !658
	inw 	a0
	addi	t0, zero, -1 !659
	bne 	a0, t0, beq_else.9526 !659
	addi	a0, zero, 0 !735
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9526: !659
	sw  	a0, 12(sp) !661
	inw 	a0
	sw  	a0, 16(sp) !662
	inw 	a0
	sw  	a0, 20(sp) !663
	inw 	a0
	addi	a1, zero, 3 !665
	li  	fa0, 0.000000 !665
	sw  	a0, 24(sp) !665
	addi	a0, a1, 0 !665
	addi	sp, sp, 32 !665
	jal 	ra, create_float_array !665
	addi	sp, sp, -32 !665
	sw  	a0, 28(sp) !666
	inw 	fa0
	lw  	a0, 28(sp) !666
	addi	t0, a0, 0 !666
	fsw  	fa0, 0(t0) !666
	inw 	fa0
	lw  	a0, 28(sp) !667
	addi	t0, a0, 4 !667
	fsw  	fa0, 0(t0) !667
	inw 	fa0
	lw  	a0, 28(sp) !668
	addi	t0, a0, 8 !668
	fsw  	fa0, 0(t0) !668
	addi	a1, zero, 3 !670
	li  	fa0, 0.000000 !670
	addi	a0, a1, 0 !670
	addi	sp, sp, 32 !670
	jal 	ra, create_float_array !670
	addi	sp, sp, -32 !670
	sw  	a0, 32(sp) !671
	inw 	fa0
	lw  	a0, 32(sp) !671
	addi	t0, a0, 0 !671
	fsw  	fa0, 0(t0) !671
	inw 	fa0
	lw  	a0, 32(sp) !672
	addi	t0, a0, 4 !672
	fsw  	fa0, 0(t0) !672
	inw 	fa0
	lw  	a0, 32(sp) !673
	addi	t0, a0, 8 !673
	fsw  	fa0, 0(t0) !673
	inw 	fa0
	flt 	a0, fa0, zero
	addi	a1, zero, 2 !677
	li  	fa0, 0.000000 !677
	sw  	a0, 36(sp) !677
	addi	a0, a1, 0 !677
	addi	sp, sp, 40 !677
	jal 	ra, create_float_array !677
	addi	sp, sp, -40 !677
	sw  	a0, 40(sp) !678
	inw 	fa0
	lw  	a0, 40(sp) !678
	addi	t0, a0, 0 !678
	fsw  	fa0, 0(t0) !678
	inw 	fa0
	lw  	a0, 40(sp) !679
	addi	t0, a0, 4 !679
	fsw  	fa0, 0(t0) !679
	addi	a1, zero, 3 !681
	li  	fa0, 0.000000 !681
	addi	a0, a1, 0 !681
	addi	sp, sp, 48 !681
	jal 	ra, create_float_array !681
	addi	sp, sp, -48 !681
	sw  	a0, 44(sp) !682
	inw 	fa0
	lw  	a0, 44(sp) !682
	addi	t0, a0, 0 !682
	fsw  	fa0, 0(t0) !682
	inw 	fa0
	lw  	a0, 44(sp) !683
	addi	t0, a0, 4 !683
	fsw  	fa0, 0(t0) !683
	inw 	fa0
	lw  	a0, 44(sp) !684
	addi	t0, a0, 8 !684
	fsw  	fa0, 0(t0) !684
	addi	a1, zero, 3 !686
	li  	fa0, 0.000000 !686
	addi	a0, a1, 0 !686
	addi	sp, sp, 48 !686
	jal 	ra, create_float_array !686
	addi	sp, sp, -48 !686
	lw  	a1, 24(sp) !687
	addi	t0, zero, 0 !687
	bne 	a1, t0, beq_else.9527 !687
	jal 	zero, beq_cont.9528 !687
beq_else.9527: !687
	sw  	a0, 48(sp) !689
	inw 	fa0
	li  	fa1, 0.017453 !556
	fmul	fa0, fa0, fa1 !556
	lw  	a0, 48(sp) !689
	addi	t0, a0, 0 !689
	fsw  	fa0, 0(t0) !689
	inw 	fa0
	li  	fa1, 0.017453 !556
	fmul	fa0, fa0, fa1 !556
	lw  	a0, 48(sp) !690
	addi	t0, a0, 4 !690
	fsw  	fa0, 0(t0) !690
	inw 	fa0
	li  	fa1, 0.017453 !556
	fmul	fa0, fa0, fa1 !556
	lw  	a0, 48(sp) !691
	addi	t0, a0, 8 !691
	fsw  	fa0, 0(t0) !691
beq_cont.9528: !687
	lw  	a1, 16(sp) !698
	addi	t0, zero, 2 !698
	bne 	a1, t0, beq_else.9529 !698
	addi	a2, zero, 1 !698
	jal 	zero, beq_cont.9530 !698
beq_else.9529: !698
	lw  	a2, 36(sp) !698
beq_cont.9530: !698
	addi	a3, zero, 4 !699
	li  	fa0, 0.000000 !699
	sw  	a2, 52(sp) !699
	sw  	a0, 48(sp) !699
	addi	a0, a3, 0 !699
	addi	sp, sp, 56 !699
	jal 	ra, create_float_array !699
	addi	sp, sp, -56 !699
	addi	a1, gp, 0 !702
	addi	gp, gp, 48 !702
	addi	t0, a1, 40 !702
	sw  	a0, 0(t0) !702
	lw  	a0, 48(sp) !702
	addi	t0, a1, 36 !702
	sw  	a0, 0(t0) !702
	lw  	a2, 44(sp) !702
	addi	t0, a1, 32 !702
	sw  	a2, 0(t0) !702
	lw  	a2, 40(sp) !702
	addi	t0, a1, 28 !702
	sw  	a2, 0(t0) !702
	lw  	a2, 52(sp) !702
	addi	t0, a1, 24 !702
	sw  	a2, 0(t0) !702
	lw  	a2, 32(sp) !702
	addi	t0, a1, 20 !702
	sw  	a2, 0(t0) !702
	lw  	a2, 28(sp) !702
	addi	t0, a1, 16 !702
	sw  	a2, 0(t0) !702
	lw  	a3, 24(sp) !702
	addi	t0, a1, 12 !702
	sw  	a3, 0(t0) !702
	lw  	a4, 20(sp) !702
	addi	t0, a1, 8 !702
	sw  	a4, 0(t0) !702
	lw  	a4, 16(sp) !702
	addi	t0, a1, 4 !702
	sw  	a4, 0(t0) !702
	lw  	a5, 12(sp) !702
	addi	t0, a1, 0 !702
	sw  	a5, 0(t0) !702
	lw  	a5, 4(sp) !710
	lw  	a6, 8(sp) !710
	slli	t0, a5, 2 !710
	add 	t0, t0, a6 !710
	sw  	a1, 0(t0) !710
	addi	t0, zero, 3 !712
	bne 	a4, t0, beq_else.9531 !712
	addi	t0, a2, 0 !715
	flw  	fa0, 0(t0) !715
	fsw 	fa0, 56(sp) !716
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !716
	bne 	a0, t0, beq_else.9533 !716
	flw  	fa0, 56(sp) !716
	addi	sp, sp, 64 !716
	jal 	ra, sgn.2406 !716
	addi	sp, sp, -64 !716
	flw  	fa1, 56(sp) !716
	fsw 	fa0, 64(sp) !716
	fsgnj   fa0, fa1, fa1 !716
	fmul	fa0, fa0, fa0
	flw  	fa1, 64(sp) !716
	fdiv	fa1, fa1, fa0 !716
	jal 	zero, beq_cont.9534 !716
beq_else.9533: !716
	li  	fa1, 0.000000 !716
beq_cont.9534: !716
	lw  	a0, 28(sp) !716
	addi	t0, a0, 0 !716
	fsw  	fa1, 0(t0) !716
	addi	t0, a0, 4 !717
	flw  	fa0, 0(t0) !717
	fsw 	fa0, 72(sp) !718
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !718
	bne 	a0, t0, beq_else.9535 !718
	flw  	fa0, 72(sp) !718
	addi	sp, sp, 80 !718
	jal 	ra, sgn.2406 !718
	addi	sp, sp, -80 !718
	flw  	fa1, 72(sp) !718
	fsw 	fa0, 80(sp) !718
	fsgnj   fa0, fa1, fa1 !718
	fmul	fa0, fa0, fa0
	flw  	fa1, 80(sp) !718
	fdiv	fa1, fa1, fa0 !718
	jal 	zero, beq_cont.9536 !718
beq_else.9535: !718
	li  	fa1, 0.000000 !718
beq_cont.9536: !718
	lw  	a0, 28(sp) !718
	addi	t0, a0, 4 !718
	fsw  	fa1, 0(t0) !718
	addi	t0, a0, 8 !719
	flw  	fa0, 0(t0) !719
	fsw 	fa0, 88(sp) !720
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !720
	bne 	a0, t0, beq_else.9537 !720
	flw  	fa0, 88(sp) !720
	addi	sp, sp, 96 !720
	jal 	ra, sgn.2406 !720
	addi	sp, sp, -96 !720
	flw  	fa1, 88(sp) !720
	fsw 	fa0, 96(sp) !720
	fsgnj   fa0, fa1, fa1 !720
	fmul	fa0, fa0, fa0
	flw  	fa1, 96(sp) !720
	fdiv	fa1, fa1, fa0 !720
	jal 	zero, beq_cont.9538 !720
beq_else.9537: !720
	li  	fa1, 0.000000 !720
beq_cont.9538: !720
	lw  	a0, 28(sp) !720
	addi	t0, a0, 8 !720
	fsw  	fa1, 0(t0) !720
	jal 	zero, beq_cont.9532 !712
beq_else.9531: !712
	addi	t0, zero, 2 !722
	bne 	a4, t0, beq_else.9539 !722
	lw  	a1, 36(sp) !724
	addi	t0, zero, 0 !724
	bne 	a1, t0, beq_else.9541 !724
	addi	a1, zero, 1 !724
	jal 	zero, beq_cont.9542 !724
beq_else.9541: !724
	addi	a1, zero, 0 !724
beq_cont.9542: !724
	addi	a0, a2, 0 !724
	addi	sp, sp, 104 !724
	jal 	ra, vecunit_sgn.2427 !724
	addi	sp, sp, -104 !724
	jal 	zero, beq_cont.9540 !722
beq_else.9539: !722
beq_cont.9540: !722
beq_cont.9532: !712
	lw  	a0, 24(sp) !728
	addi	t0, zero, 0 !728
	bne 	a0, t0, beq_else.9543 !728
	jal 	zero, beq_cont.9544 !728
beq_else.9543: !728
	lw  	a0, 28(sp) !729
	lw  	a1, 48(sp) !729
	addi	sp, sp, 104 !729
	jal 	ra, rotate_quadratic_matrix.2529 !729
	addi	sp, sp, -104 !729
beq_cont.9544: !728
	addi	a0, zero, 1 !732
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_object.2534:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !740
	lw  	a1, 0(t0) !740
	addi	t0, s7, 4 !740
	lw  	a2, 0(t0) !740
	addi	t0, zero, 60 !740
	blt 	a0, t0, bge_else.9545 !740
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9545: !740
	sw  	s7, 4(sp) !741
	sw  	a2, 8(sp) !741
	sw  	a0, 12(sp) !741
	addi	s7, a1, 0 !741
	addi	sp, sp, 16 !741
	lw  	t1, 0(s7) !741
	jalr	ra, t1, 0 !741
	addi	sp, sp, -16 !741
	addi	t0, zero, 0 !741
	bne 	a0, t0, beq_else.9547 !741
	lw  	a0, 8(sp) !744
	lw  	a1, 12(sp) !744
	addi	t0, a0, 0 !744
	sw  	a1, 0(t0) !744
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9547: !741
	lw  	a0, 12(sp) !742
	addi	a0, a0, 1 !742
	lw  	s7, 4(sp) !742
	lw  	t1, 0(s7) !742
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !742
read_net_item.2538:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !756
	inw 	a0
	addi	t0, zero, -1 !757
	bne 	a0, t0, beq_else.9549 !757
	lw  	a0, 4(sp) !757
	addi	a0, a0, 1 !757
	addi	a1, zero, -1 !757
	lw  	ra, 0(sp)
	jal 	zero, create_array !757
beq_else.9549: !757
	lw  	a1, 4(sp) !759
	addi	a2, a1, 1 !759
	sw  	a0, 8(sp) !759
	addi	a0, a2, 0 !759
	addi	sp, sp, 16 !759
	jal 	ra, read_net_item.2538 !759
	addi	sp, sp, -16 !759
	lw  	a1, 4(sp) !760
	lw  	a2, 8(sp) !760
	slli	t0, a1, 2 !760
	add 	t0, t0, a0 !760
	sw  	a2, 0(t0) !760
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_or_network.2540:
	sw  	ra, 0(sp)
	addi	a1, zero, 0 !764
	sw  	a0, 4(sp) !764
	addi	a0, a1, 0 !764
	addi	sp, sp, 8 !764
	jal 	ra, read_net_item.2538 !764
	addi	sp, sp, -8 !764
	addi	a1, a0, 0 !764
	addi	t0, a1, 0 !765
	lw  	a0, 0(t0) !765
	addi	t0, zero, -1 !765
	bne 	a0, t0, beq_else.9550 !765
	lw  	a0, 4(sp) !766
	addi	a0, a0, 1 !766
	lw  	ra, 0(sp)
	jal 	zero, create_array !766
beq_else.9550: !765
	lw  	a0, 4(sp) !768
	addi	a2, a0, 1 !768
	sw  	a1, 8(sp) !768
	addi	a0, a2, 0 !768
	addi	sp, sp, 16 !768
	jal 	ra, read_or_network.2540 !768
	addi	sp, sp, -16 !768
	lw  	a1, 4(sp) !769
	lw  	a2, 8(sp) !769
	slli	t0, a1, 2 !769
	add 	t0, t0, a0 !769
	sw  	a2, 0(t0) !769
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_and_network.2542:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !773
	lw  	a1, 0(t0) !773
	addi	a2, zero, 0 !773
	sw  	s7, 4(sp) !773
	sw  	a0, 8(sp) !773
	sw  	a1, 12(sp) !773
	addi	a0, a2, 0 !773
	addi	sp, sp, 16 !773
	jal 	ra, read_net_item.2538 !773
	addi	sp, sp, -16 !773
	addi	t0, a0, 0 !774
	lw  	a1, 0(t0) !774
	addi	t0, zero, -1 !774
	bne 	a1, t0, beq_else.9551 !774
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9551: !774
	lw  	a1, 8(sp) !776
	lw  	a2, 12(sp) !776
	slli	t0, a1, 2 !776
	add 	t0, t0, a2 !776
	sw  	a0, 0(t0) !776
	addi	a0, a1, 1 !777
	lw  	s7, 4(sp) !777
	lw  	t1, 0(s7) !777
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !777
read_parameter.2544:
	sw  	ra, 0(sp)
	addi	t0, s7, 20 !783
	lw  	a0, 0(t0) !783
	addi	t0, s7, 16 !783
	lw  	a1, 0(t0) !783
	addi	t0, s7, 12 !783
	lw  	a2, 0(t0) !783
	addi	t0, s7, 8 !783
	lw  	a3, 0(t0) !783
	addi	t0, s7, 4 !783
	lw  	a4, 0(t0) !783
	sw  	a4, 4(sp) !783
	sw  	a3, 8(sp) !783
	sw  	a1, 12(sp) !783
	sw  	a2, 16(sp) !783
	addi	s7, a0, 0 !783
	addi	sp, sp, 24 !783
	lw  	t1, 0(s7) !783
	jalr	ra, t1, 0 !783
	addi	sp, sp, -24 !783
	lw  	s7, 16(sp) !784
	addi	sp, sp, 24 !784
	lw  	t1, 0(s7) !784
	jalr	ra, t1, 0 !784
	addi	sp, sp, -24 !784
	addi	a0, zero, 0 !749
	lw  	s7, 12(sp) !749
	addi	sp, sp, 24 !749
	lw  	t1, 0(s7) !749
	jalr	ra, t1, 0 !749
	addi	sp, sp, -24 !749
	addi	a0, zero, 0 !786
	lw  	s7, 8(sp) !786
	addi	sp, sp, 24 !786
	lw  	t1, 0(s7) !786
	jalr	ra, t1, 0 !786
	addi	sp, sp, -24 !786
	addi	a0, zero, 0 !787
	addi	sp, sp, 24 !787
	jal 	ra, read_or_network.2540 !787
	addi	sp, sp, -24 !787
	lw  	a1, 4(sp) !787
	addi	t0, a1, 0 !787
	sw  	a0, 0(t0) !787
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_rect_surface.2546:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !798
	lw  	a5, 0(t0) !798
	slli	t0, a2, 2 !798
	add 	t0, t0, a1 !798
	flw  	fa3, 0(t0) !798
	sw  	a5, 4(sp) !798
	fsw 	fa2, 8(sp) !798
	sw  	a4, 16(sp) !798
	fsw 	fa1, 24(sp) !798
	sw  	a3, 32(sp) !798
	fsw 	fa0, 40(sp) !798
	sw  	a2, 48(sp) !798
	sw  	a1, 52(sp) !798
	sw  	a0, 56(sp) !798
	fsgnj   fa0, fa3, fa3 !798
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !798
	bne 	a0, t0, beq_else.9556 !798
	lw  	a0, 56(sp) !321
	addi	t0, a0, 16 !321
	lw  	a1, 0(t0) !321
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	lw  	a2, 48(sp) !800
	lw  	a3, 52(sp) !800
	slli	t0, a2, 2 !800
	add 	t0, t0, a3 !800
	flw  	fa0, 0(t0) !800
	sw  	a1, 60(sp) !800
	sw  	a0, 64(sp) !800
	flt 	a0, fa0, zero
	lw  	a1, 64(sp) !134
	addi	t0, zero, 0 !134
	bne 	a1, t0, beq_else.9557 !134
	jal 	zero, beq_cont.9558 !134
beq_else.9557: !134
	addi	t0, zero, 0 !134
	bne 	a0, t0, beq_else.9559 !134
	addi	a0, zero, 1 !134
	jal 	zero, beq_cont.9560 !134
beq_else.9559: !134
	addi	a0, zero, 0 !134
beq_cont.9560: !134
beq_cont.9558: !134
	lw  	a1, 48(sp) !800
	lw  	a2, 60(sp) !800
	slli	t0, a1, 2 !800
	add 	t0, t0, a2 !800
	flw  	fa0, 0(t0) !800
	addi	t0, zero, 0 !147
	bne 	a0, t0, beq_else.9561 !147
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.9562 !147
beq_else.9561: !147
beq_cont.9562: !147
	flw  	fa1, 40(sp) !802
	fsub	fa0, fa0, fa1 !802
	lw  	a0, 48(sp) !802
	lw  	a1, 52(sp) !802
	slli	t0, a0, 2 !802
	add 	t0, t0, a1 !802
	flw  	fa1, 0(t0) !802
	fdiv	fa0, fa0, fa1 !802
	lw  	a0, 32(sp) !803
	slli	t0, a0, 2 !803
	add 	t0, t0, a1 !803
	flw  	fa1, 0(t0) !803
	fmul	fa1, fa0, fa1 !803
	flw  	fa2, 24(sp) !803
	fadd	fa1, fa1, fa2 !803
	fsw 	fa0, 72(sp) !803
	fsgnj   fa0, fa1, fa1 !803
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 32(sp) !803
	lw  	a1, 60(sp) !803
	slli	t0, a0, 2 !803
	add 	t0, t0, a1 !803
	flw  	fa1, 0(t0) !803
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !803
	bne 	a0, t0, beq_else.9564 !803
	addi	a0, zero, 0 !807
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9564: !803
	lw  	a0, 16(sp) !804
	lw  	a1, 52(sp) !804
	slli	t0, a0, 2 !804
	add 	t0, t0, a1 !804
	flw  	fa0, 0(t0) !804
	flw  	fa1, 72(sp) !804
	fmul	fa0, fa1, fa0 !804
	flw  	fa2, 8(sp) !804
	fadd	fa0, fa0, fa2 !804
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 16(sp) !804
	lw  	a1, 60(sp) !804
	slli	t0, a0, 2 !804
	add 	t0, t0, a1 !804
	flw  	fa1, 0(t0) !804
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !804
	bne 	a0, t0, beq_else.9565 !804
	addi	a0, zero, 0 !806
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9565: !804
	lw  	a0, 4(sp) !805
	flw  	fa0, 72(sp) !805
	addi	t0, a0, 0 !805
	fsw  	fa0, 0(t0) !805
	addi	a0, zero, 1 !805
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9556: !798
	addi	a0, zero, 0 !798
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_rect.2555:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !813
	lw  	s7, 0(t0) !813
	addi	a2, zero, 0 !813
	addi	a3, zero, 1 !813
	addi	a4, zero, 2 !813
	fsw 	fa0, 8(sp) !813
	fsw 	fa2, 16(sp) !813
	fsw 	fa1, 24(sp) !813
	sw  	a1, 32(sp) !813
	sw  	a0, 36(sp) !813
	sw  	s7, 40(sp) !813
	addi	sp, sp, 48 !813
	lw  	t1, 0(s7) !813
	jalr	ra, t1, 0 !813
	addi	sp, sp, -48 !813
	addi	t0, zero, 0 !813
	bne 	a0, t0, beq_else.9567 !813
	addi	a2, zero, 1 !814
	addi	a3, zero, 2 !814
	addi	a4, zero, 0 !814
	flw  	fa0, 24(sp) !814
	flw  	fa1, 16(sp) !814
	flw  	fa2, 8(sp) !814
	lw  	a0, 36(sp) !814
	lw  	a1, 32(sp) !814
	lw  	s7, 40(sp) !814
	addi	sp, sp, 48 !814
	lw  	t1, 0(s7) !814
	jalr	ra, t1, 0 !814
	addi	sp, sp, -48 !814
	addi	t0, zero, 0 !814
	bne 	a0, t0, beq_else.9568 !814
	addi	a2, zero, 2 !815
	addi	a3, zero, 0 !815
	addi	a4, zero, 1 !815
	flw  	fa0, 16(sp) !815
	flw  	fa1, 8(sp) !815
	flw  	fa2, 24(sp) !815
	lw  	a0, 36(sp) !815
	lw  	a1, 32(sp) !815
	lw  	s7, 40(sp) !815
	addi	sp, sp, 48 !815
	lw  	t1, 0(s7) !815
	jalr	ra, t1, 0 !815
	addi	sp, sp, -48 !815
	addi	t0, zero, 0 !815
	bne 	a0, t0, beq_else.9569 !815
	addi	a0, zero, 0 !816
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9569: !815
	addi	a0, zero, 3 !815
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9568: !814
	addi	a0, zero, 2 !814
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9567: !813
	addi	a0, zero, 1 !813
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_surface.2561:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !321
	lw  	a2, 0(t0) !321
	addi	t0, a0, 16 !321
	lw  	a0, 0(t0) !321
	sw  	a2, 4(sp) !825
	fsw 	fa2, 8(sp) !825
	fsw 	fa1, 16(sp) !825
	fsw 	fa0, 24(sp) !825
	sw  	a0, 32(sp) !825
	sw  	a1, 40(sp) !825
	addi	a1, a0, 0 !825
	lw  	a0, 40(sp) !825
	addi	sp, sp, 40 !825
	jal 	ra, veciprod.2430 !825
	addi	sp, sp, -40 !825
	fsw 	fa0, 40(sp) !826
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !826
	bne 	a0, t0, beq_else.9571 !826
	addi	a0, zero, 0 !829
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9571: !826
	flw  	fa0, 24(sp) !827
	flw  	fa1, 16(sp) !827
	flw  	fa2, 8(sp) !827
	lw  	a0, 32(sp) !827
	addi	sp, sp, 48 !827
	jal 	ra, veciprod2.2433 !827
	addi	sp, sp, -48 !827
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 40(sp) !827
	fdiv	fa0, fa0, fa1 !827
	lw  	a0, 4(sp) !827
	addi	t0, a0, 0 !827
	fsw  	fa0, 0(t0) !827
	addi	a0, zero, 1 !828
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
quadratic.2567:
	sw  	ra, 0(sp)
	fsw 	fa0, 8(sp) !837
	fsw 	fa2, 16(sp) !837
	fsw 	fa1, 24(sp) !837
	sw  	a0, 32(sp) !837
	fmul	fa0, fa0, fa0
	lw  	a0, 32(sp) !291
	addi	t0, a0, 16 !291
	lw  	a1, 0(t0) !291
	addi	t0, a1, 0 !296
	flw  	fa1, 0(t0) !296
	fmul	fa0, fa0, fa1 !837
	flw  	fa1, 24(sp) !837
	fsw 	fa0, 40(sp) !837
	fsgnj   fa0, fa1, fa1 !837
	fmul	fa0, fa0, fa0
	lw  	a0, 32(sp) !301
	addi	t0, a0, 16 !301
	lw  	a1, 0(t0) !301
	addi	t0, a1, 4 !306
	flw  	fa1, 0(t0) !306
	fmul	fa0, fa0, fa1 !837
	flw  	fa1, 40(sp) !837
	fadd	fa1, fa1, fa0 !837
	flw  	fa0, 16(sp) !837
	fsw 	fa1, 48(sp) !837
	fmul	fa0, fa0, fa0
	lw  	a0, 32(sp) !311
	addi	t0, a0, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa1, 0(t0) !316
	fmul	fa0, fa0, fa1 !837
	flw  	fa1, 48(sp) !837
	fadd	fa0, fa1, fa0 !837
	addi	t0, a0, 12 !282
	lw  	a1, 0(t0) !282
	addi	t0, zero, 0 !839
	bne 	a1, t0, beq_else.9574 !839
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9574: !839
	flw  	fa1, 16(sp) !843
	flw  	fa2, 24(sp) !843
	fmul	fa3, fa2, fa1 !843
	addi	t0, a0, 36 !411
	lw  	a1, 0(t0) !411
	addi	t0, a1, 0 !416
	flw  	fa4, 0(t0) !416
	fmul	fa3, fa3, fa4 !843
	fadd	fa0, fa0, fa3 !843
	flw  	fa3, 8(sp) !844
	fmul	fa1, fa1, fa3 !844
	addi	t0, a0, 36 !421
	lw  	a1, 0(t0) !421
	addi	t0, a1, 4 !426
	flw  	fa4, 0(t0) !426
	fmul	fa1, fa1, fa4 !844
	fadd	fa0, fa0, fa1 !844
	fmul	fa3, fa3, fa2 !845
	addi	t0, a0, 36 !431
	lw  	a0, 0(t0) !431
	addi	t0, a0, 8 !436
	flw  	fa1, 0(t0) !436
	fmul	fa3, fa3, fa1 !845
	fadd	fa0, fa0, fa3 !845
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bilinear.2572:
	sw  	ra, 0(sp)
	fmul	fa6, fa0, fa3 !851
	addi	t0, a0, 16 !291
	lw  	a1, 0(t0) !291
	addi	t0, a1, 0 !296
	flw  	fa7, 0(t0) !296
	fmul	fa6, fa6, fa7 !851
	fmul	fa7, fa1, fa4 !852
	addi	t0, a0, 16 !301
	lw  	a1, 0(t0) !301
	addi	t0, a1, 4 !306
	flw  	fs1, 0(t0) !306
	fmul	fa7, fa7, fs1 !852
	fadd	fa6, fa6, fa7 !852
	fmul	fa7, fa2, fa5 !853
	addi	t0, a0, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fs1, 0(t0) !316
	fmul	fa7, fa7, fs1 !853
	fadd	fa6, fa6, fa7 !853
	addi	t0, a0, 12 !282
	lw  	a1, 0(t0) !282
	addi	t0, zero, 0 !855
	bne 	a1, t0, beq_else.9575 !855
	fsgnj   fa0, fa6, fa6 !856
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9575: !855
	fmul	fa7, fa2, fa4 !859
	fmul	fs1, fa1, fa5 !859
	fadd	fa7, fa7, fs1 !859
	addi	t0, a0, 36 !411
	lw  	a1, 0(t0) !411
	addi	t0, a1, 0 !416
	flw  	fs1, 0(t0) !416
	fmul	fa7, fa7, fs1 !859
	fmul	fa5, fa0, fa5 !860
	fmul	fa2, fa2, fa3 !860
	fadd	fa5, fa5, fa2 !860
	addi	t0, a0, 36 !421
	lw  	a1, 0(t0) !421
	addi	t0, a1, 4 !426
	flw  	fa2, 0(t0) !426
	fmul	fa5, fa5, fa2 !860
	fadd	fa7, fa7, fa5 !860
	fmul	fa0, fa0, fa4 !861
	fmul	fa1, fa1, fa3 !861
	fadd	fa0, fa0, fa1 !861
	addi	t0, a0, 36 !431
	lw  	a0, 0(t0) !431
	addi	t0, a0, 8 !436
	flw  	fa1, 0(t0) !436
	fmul	fa0, fa0, fa1 !861
	fadd	fa0, fa7, fa0 !861
	fsw 	fa6, 8(sp) !858
	li  	ft0, 2.0
	fdiv	fa0, fa0, ft0
	flw  	fa1, 8(sp) !858
	fadd	fa0, fa1, fa0 !858
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second.2580:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !872
	lw  	a2, 0(t0) !872
	addi	t0, a1, 0 !872
	flw  	fa3, 0(t0) !872
	addi	t0, a1, 4 !872
	flw  	fa4, 0(t0) !872
	addi	t0, a1, 8 !872
	flw  	fa5, 0(t0) !872
	sw  	a2, 4(sp) !872
	fsw 	fa2, 8(sp) !872
	fsw 	fa1, 16(sp) !872
	fsw 	fa0, 24(sp) !872
	sw  	a0, 32(sp) !872
	sw  	a1, 36(sp) !872
	fsgnj   fa2, fa5, fa5 !872
	fsgnj   fa1, fa4, fa4 !872
	fsgnj   fa0, fa3, fa3 !872
	addi	sp, sp, 40 !872
	jal 	ra, quadratic.2567 !872
	addi	sp, sp, -40 !872
	fsw 	fa0, 40(sp) !874
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !874
	bne 	a0, t0, beq_else.9577 !874
	lw  	a0, 36(sp) !879
	addi	t0, a0, 0 !879
	flw  	fa0, 0(t0) !879
	addi	t0, a0, 4 !879
	flw  	fa1, 0(t0) !879
	addi	t0, a0, 8 !879
	flw  	fa2, 0(t0) !879
	flw  	fa3, 24(sp) !879
	flw  	fa4, 16(sp) !879
	flw  	fa5, 8(sp) !879
	lw  	a0, 32(sp) !879
	addi	sp, sp, 48 !879
	jal 	ra, bilinear.2572 !879
	addi	sp, sp, -48 !879
	flw  	fa1, 24(sp) !881
	flw  	fa2, 16(sp) !881
	flw  	fa3, 8(sp) !881
	lw  	a0, 32(sp) !881
	fsw 	fa0, 48(sp) !881
	fsgnj   fa0, fa1, fa1 !881
	fsgnj   fa1, fa2, fa2 !881
	fsgnj   fa2, fa3, fa3 !881
	addi	sp, sp, 56 !881
	jal 	ra, quadratic.2567 !881
	addi	sp, sp, -56 !881
	lw  	a0, 32(sp) !253
	addi	t0, a0, 4 !253
	lw  	a1, 0(t0) !253
	addi	t0, zero, 3 !882
	bne 	a1, t0, beq_else.9578 !882
	li  	fa1, 1.000000 !882
	fsub	fa0, fa0, fa1 !882
	jal 	zero, beq_cont.9579 !882
beq_else.9578: !882
beq_cont.9579: !882
	flw  	fa1, 48(sp) !884
	fsw 	fa0, 56(sp) !884
	fsgnj   fa0, fa1, fa1 !884
	fmul	fa0, fa0, fa0
	flw  	fa1, 56(sp) !884
	flw  	fa2, 40(sp) !884
	fmul	fa1, fa2, fa1 !884
	fsub	fa0, fa0, fa1 !884
	fsw 	fa0, 64(sp) !886
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !886
	bne 	a0, t0, beq_else.9580 !886
	addi	a0, zero, 0 !892
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9580: !886
	flw  	fa0, 64(sp) !887
	fsqrt   fa0, fa0
	lw  	a0, 32(sp) !273
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	addi	t0, zero, 0 !888
	bne 	a0, t0, beq_else.9581 !888
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.9582 !888
beq_else.9581: !888
beq_cont.9582: !888
	flw  	fa1, 48(sp) !889
	fsub	fa0, fa0, fa1 !889
	flw  	fa1, 40(sp) !889
	fdiv	fa0, fa0, fa1 !889
	lw  	a0, 4(sp) !889
	addi	t0, a0, 0 !889
	fsw  	fa0, 0(t0) !889
	addi	a0, zero, 1 !889
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9577: !874
	addi	a0, zero, 0 !875
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver.2586:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !898
	lw  	a3, 0(t0) !898
	addi	t0, s7, 12 !898
	lw  	a4, 0(t0) !898
	addi	t0, s7, 8 !898
	lw  	a5, 0(t0) !898
	addi	t0, s7, 4 !898
	lw  	a6, 0(t0) !898
	slli	t0, a0, 2 !898
	add 	t0, t0, a6 !898
	lw  	a0, 0(t0) !898
	addi	t0, a2, 0 !900
	flw  	fa0, 0(t0) !900
	addi	t0, a0, 20 !331
	lw  	a6, 0(t0) !331
	addi	t0, a6, 0 !336
	flw  	fa1, 0(t0) !336
	fsub	fa0, fa0, fa1 !900
	addi	t0, a2, 4 !901
	flw  	fa1, 0(t0) !901
	addi	t0, a0, 20 !341
	lw  	a6, 0(t0) !341
	addi	t0, a6, 4 !346
	flw  	fa2, 0(t0) !346
	fsub	fa1, fa1, fa2 !901
	addi	t0, a2, 8 !902
	flw  	fa2, 0(t0) !902
	addi	t0, a0, 20 !351
	lw  	a2, 0(t0) !351
	addi	t0, a2, 8 !356
	flw  	fa3, 0(t0) !356
	fsub	fa2, fa2, fa3 !902
	addi	t0, a0, 4 !253
	lw  	a2, 0(t0) !253
	addi	t0, zero, 1 !905
	bne 	a2, t0, beq_else.9583 !905
	addi	s7, a5, 0 !905
	lw  	t1, 0(s7) !905
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !905
beq_else.9583: !905
	addi	t0, zero, 2 !906
	bne 	a2, t0, beq_else.9584 !906
	addi	s7, a3, 0 !906
	lw  	t1, 0(s7) !906
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !906
beq_else.9584: !906
	addi	s7, a4, 0 !907
	lw  	t1, 0(s7) !907
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !907
solver_rect_fast.2590:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !915
	lw  	a3, 0(t0) !915
	addi	t0, a2, 0 !915
	flw  	fa3, 0(t0) !915
	fsub	fa3, fa3, fa0 !915
	addi	t0, a2, 4 !915
	flw  	fa4, 0(t0) !915
	fmul	fa3, fa3, fa4 !915
	addi	t0, a1, 4 !917
	flw  	fa4, 0(t0) !917
	fmul	fa4, fa3, fa4 !917
	fadd	fa4, fa4, fa1 !917
	sw  	a3, 4(sp) !917
	fsw 	fa0, 8(sp) !917
	fsw 	fa1, 16(sp) !917
	sw  	a2, 24(sp) !917
	fsw 	fa2, 32(sp) !917
	fsw 	fa3, 40(sp) !917
	sw  	a1, 48(sp) !917
	sw  	a0, 52(sp) !917
	fsgnj   fa0, fa4, fa4 !917
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !301
	addi	t0, a0, 16 !301
	lw  	a1, 0(t0) !301
	addi	t0, a1, 4 !306
	flw  	fa1, 0(t0) !306
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !917
	bne 	a0, t0, beq_else.9586 !917
	addi	a0, zero, 0 !921
	jal 	zero, beq_cont.9587 !917
beq_else.9586: !917
	lw  	a0, 48(sp) !918
	addi	t0, a0, 8 !918
	flw  	fa0, 0(t0) !918
	flw  	fa1, 40(sp) !918
	fmul	fa0, fa1, fa0 !918
	flw  	fa2, 32(sp) !918
	fadd	fa0, fa0, fa2 !918
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !311
	addi	t0, a0, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa1, 0(t0) !316
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !918
	bne 	a0, t0, beq_else.9588 !918
	addi	a0, zero, 0 !920
	jal 	zero, beq_cont.9589 !918
beq_else.9588: !918
	lw  	a0, 24(sp) !919
	addi	t0, a0, 4 !919
	flw  	fa0, 0(t0) !919
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !919
	bne 	a0, t0, beq_else.9590 !919
	addi	a0, zero, 1 !919
	jal 	zero, beq_cont.9591 !919
beq_else.9590: !919
	addi	a0, zero, 0 !919
beq_cont.9591: !919
beq_cont.9589: !918
beq_cont.9587: !917
	addi	t0, zero, 0 !916
	bne 	a0, t0, beq_else.9592 !916
	lw  	a0, 24(sp) !924
	addi	t0, a0, 8 !924
	flw  	fa0, 0(t0) !924
	flw  	fa1, 16(sp) !924
	fsub	fa0, fa0, fa1 !924
	addi	t0, a0, 12 !924
	flw  	fa2, 0(t0) !924
	fmul	fa0, fa0, fa2 !924
	lw  	a1, 48(sp) !926
	addi	t0, a1, 0 !926
	flw  	fa2, 0(t0) !926
	fmul	fa2, fa0, fa2 !926
	flw  	fa3, 8(sp) !926
	fadd	fa2, fa2, fa3 !926
	fsw 	fa0, 56(sp) !926
	fsgnj   fa0, fa2, fa2 !926
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !291
	addi	t0, a0, 16 !291
	lw  	a1, 0(t0) !291
	addi	t0, a1, 0 !296
	flw  	fa1, 0(t0) !296
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !926
	bne 	a0, t0, beq_else.9593 !926
	addi	a0, zero, 0 !930
	jal 	zero, beq_cont.9594 !926
beq_else.9593: !926
	lw  	a0, 48(sp) !927
	addi	t0, a0, 8 !927
	flw  	fa0, 0(t0) !927
	flw  	fa1, 56(sp) !927
	fmul	fa0, fa1, fa0 !927
	flw  	fa2, 32(sp) !927
	fadd	fa0, fa0, fa2 !927
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !311
	addi	t0, a0, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa1, 0(t0) !316
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !927
	bne 	a0, t0, beq_else.9595 !927
	addi	a0, zero, 0 !929
	jal 	zero, beq_cont.9596 !927
beq_else.9595: !927
	lw  	a0, 24(sp) !928
	addi	t0, a0, 12 !928
	flw  	fa0, 0(t0) !928
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !928
	bne 	a0, t0, beq_else.9597 !928
	addi	a0, zero, 1 !928
	jal 	zero, beq_cont.9598 !928
beq_else.9597: !928
	addi	a0, zero, 0 !928
beq_cont.9598: !928
beq_cont.9596: !927
beq_cont.9594: !926
	addi	t0, zero, 0 !925
	bne 	a0, t0, beq_else.9599 !925
	lw  	a0, 24(sp) !933
	addi	t0, a0, 16 !933
	flw  	fa0, 0(t0) !933
	flw  	fa1, 32(sp) !933
	fsub	fa0, fa0, fa1 !933
	addi	t0, a0, 20 !933
	flw  	fa1, 0(t0) !933
	fmul	fa0, fa0, fa1 !933
	lw  	a1, 48(sp) !935
	addi	t0, a1, 0 !935
	flw  	fa1, 0(t0) !935
	fmul	fa1, fa0, fa1 !935
	flw  	fa2, 8(sp) !935
	fadd	fa1, fa1, fa2 !935
	fsw 	fa0, 64(sp) !935
	fsgnj   fa0, fa1, fa1 !935
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !291
	addi	t0, a0, 16 !291
	lw  	a1, 0(t0) !291
	addi	t0, a1, 0 !296
	flw  	fa1, 0(t0) !296
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !935
	bne 	a0, t0, beq_else.9600 !935
	addi	a0, zero, 0 !939
	jal 	zero, beq_cont.9601 !935
beq_else.9600: !935
	lw  	a0, 48(sp) !936
	addi	t0, a0, 4 !936
	flw  	fa0, 0(t0) !936
	flw  	fa1, 64(sp) !936
	fmul	fa0, fa1, fa0 !936
	flw  	fa2, 16(sp) !936
	fadd	fa0, fa0, fa2 !936
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 52(sp) !301
	addi	t0, a0, 16 !301
	lw  	a0, 0(t0) !301
	addi	t0, a0, 4 !306
	flw  	fa1, 0(t0) !306
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !936
	bne 	a0, t0, beq_else.9602 !936
	addi	a0, zero, 0 !938
	jal 	zero, beq_cont.9603 !936
beq_else.9602: !936
	lw  	a0, 24(sp) !937
	addi	t0, a0, 20 !937
	flw  	fa0, 0(t0) !937
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !937
	bne 	a0, t0, beq_else.9604 !937
	addi	a0, zero, 1 !937
	jal 	zero, beq_cont.9605 !937
beq_else.9604: !937
	addi	a0, zero, 0 !937
beq_cont.9605: !937
beq_cont.9603: !936
beq_cont.9601: !935
	addi	t0, zero, 0 !934
	bne 	a0, t0, beq_else.9606 !934
	addi	a0, zero, 0 !943
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9606: !934
	lw  	a0, 4(sp) !941
	flw  	fa0, 64(sp) !941
	addi	t0, a0, 0 !941
	fsw  	fa0, 0(t0) !941
	addi	a0, zero, 3 !941
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9599: !925
	lw  	a0, 4(sp) !932
	flw  	fa0, 56(sp) !932
	addi	t0, a0, 0 !932
	fsw  	fa0, 0(t0) !932
	addi	a0, zero, 2 !932
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9592: !916
	lw  	a0, 4(sp) !923
	flw  	fa0, 40(sp) !923
	addi	t0, a0, 0 !923
	fsw  	fa0, 0(t0) !923
	addi	a0, zero, 1 !923
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_surface_fast.2597:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !948
	lw  	a0, 0(t0) !948
	addi	t0, a1, 0 !948
	flw  	fa3, 0(t0) !948
	sw  	a0, 4(sp) !948
	fsw 	fa2, 8(sp) !948
	fsw 	fa1, 16(sp) !948
	fsw 	fa0, 24(sp) !948
	sw  	a1, 32(sp) !948
	fsgnj   fa0, fa3, fa3 !948
	flt 	a0, fa0, zero
	addi	t0, zero, 0 !948
	bne 	a0, t0, beq_else.9607 !948
	addi	a0, zero, 0 !952
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9607: !948
	lw  	a0, 32(sp) !950
	addi	t0, a0, 4 !950
	flw  	fa0, 0(t0) !950
	flw  	fa1, 24(sp) !950
	fmul	fa0, fa0, fa1 !950
	addi	t0, a0, 8 !950
	flw  	fa1, 0(t0) !950
	flw  	fa2, 16(sp) !950
	fmul	fa1, fa1, fa2 !950
	fadd	fa0, fa0, fa1 !950
	addi	t0, a0, 12 !950
	flw  	fa1, 0(t0) !950
	flw  	fa2, 8(sp) !950
	fmul	fa1, fa1, fa2 !950
	fadd	fa0, fa0, fa1 !950
	lw  	a0, 4(sp) !949
	addi	t0, a0, 0 !949
	fsw  	fa0, 0(t0) !949
	addi	a0, zero, 1 !951
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second_fast.2603:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !958
	lw  	a2, 0(t0) !958
	addi	t0, a1, 0 !958
	flw  	fa3, 0(t0) !958
	sw  	a2, 4(sp) !959
	fsw 	fa3, 8(sp) !959
	sw  	a0, 16(sp) !959
	fsw 	fa2, 24(sp) !959
	fsw 	fa1, 32(sp) !959
	fsw 	fa0, 40(sp) !959
	sw  	a1, 48(sp) !959
	fsgnj   fa0, fa3, fa3 !959
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !959
	bne 	a0, t0, beq_else.9609 !959
	lw  	a0, 48(sp) !962
	addi	t0, a0, 4 !962
	flw  	fa0, 0(t0) !962
	flw  	fa1, 40(sp) !962
	fmul	fa0, fa0, fa1 !962
	addi	t0, a0, 8 !962
	flw  	fa2, 0(t0) !962
	flw  	fa3, 32(sp) !962
	fmul	fa2, fa2, fa3 !962
	fadd	fa0, fa0, fa2 !962
	addi	t0, a0, 12 !962
	flw  	fa2, 0(t0) !962
	flw  	fa4, 24(sp) !962
	fmul	fa2, fa2, fa4 !962
	fadd	fa0, fa0, fa2 !962
	lw  	a1, 16(sp) !963
	fsw 	fa0, 56(sp) !963
	addi	a0, a1, 0 !963
	fsgnj   fa2, fa4, fa4 !963
	fsgnj   fa0, fa1, fa1 !963
	fsgnj   fa1, fa3, fa3 !963
	addi	sp, sp, 64 !963
	jal 	ra, quadratic.2567 !963
	addi	sp, sp, -64 !963
	lw  	a0, 16(sp) !253
	addi	t0, a0, 4 !253
	lw  	a1, 0(t0) !253
	addi	t0, zero, 3 !964
	bne 	a1, t0, beq_else.9611 !964
	li  	fa1, 1.000000 !964
	fsub	fa0, fa0, fa1 !964
	jal 	zero, beq_cont.9612 !964
beq_else.9611: !964
beq_cont.9612: !964
	flw  	fa1, 56(sp) !965
	fsw 	fa0, 64(sp) !965
	fsgnj   fa0, fa1, fa1 !965
	fmul	fa0, fa0, fa0
	flw  	fa1, 64(sp) !965
	flw  	fa2, 8(sp) !965
	fmul	fa2, fa2, fa1 !965
	fsub	fa0, fa0, fa2 !965
	fsw 	fa0, 72(sp) !966
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !966
	bne 	a0, t0, beq_else.9613 !966
	addi	a0, zero, 0 !972
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9613: !966
	lw  	a0, 16(sp) !273
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	addi	t0, zero, 0 !967
	bne 	a0, t0, beq_else.9614 !967
	flw  	fa0, 72(sp) !970
	fsqrt   fa0, fa0
	flw  	fa1, 56(sp) !970
	fsub	fa1, fa1, fa0 !970
	lw  	a0, 48(sp) !970
	addi	t0, a0, 16 !970
	flw  	fa0, 0(t0) !970
	fmul	fa1, fa1, fa0 !970
	lw  	a0, 4(sp) !970
	addi	t0, a0, 0 !970
	fsw  	fa1, 0(t0) !970
	jal 	zero, beq_cont.9615 !967
beq_else.9614: !967
	flw  	fa0, 72(sp) !968
	fsqrt   fa0, fa0
	flw  	fa1, 56(sp) !968
	fadd	fa1, fa1, fa0 !968
	lw  	a0, 48(sp) !968
	addi	t0, a0, 16 !968
	flw  	fa0, 0(t0) !968
	fmul	fa1, fa1, fa0 !968
	lw  	a0, 4(sp) !968
	addi	t0, a0, 0 !968
	fsw  	fa1, 0(t0) !968
beq_cont.9615: !967
	addi	a0, zero, 1 !971
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9609: !959
	addi	a0, zero, 0 !960
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_fast.2609:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !977
	lw  	a3, 0(t0) !977
	addi	t0, s7, 12 !977
	lw  	a4, 0(t0) !977
	addi	t0, s7, 8 !977
	lw  	a5, 0(t0) !977
	addi	t0, s7, 4 !977
	lw  	a6, 0(t0) !977
	slli	t0, a0, 2 !977
	add 	t0, t0, a6 !977
	lw  	a6, 0(t0) !977
	addi	t0, a2, 0 !978
	flw  	fa0, 0(t0) !978
	addi	t0, a6, 20 !331
	lw  	a7, 0(t0) !331
	addi	t0, a7, 0 !336
	flw  	fa1, 0(t0) !336
	fsub	fa0, fa0, fa1 !978
	addi	t0, a2, 4 !979
	flw  	fa1, 0(t0) !979
	addi	t0, a6, 20 !341
	lw  	a7, 0(t0) !341
	addi	t0, a7, 4 !346
	flw  	fa2, 0(t0) !346
	fsub	fa1, fa1, fa2 !979
	addi	t0, a2, 8 !980
	flw  	fa2, 0(t0) !980
	addi	t0, a6, 20 !351
	lw  	a2, 0(t0) !351
	addi	t0, a2, 8 !356
	flw  	fa3, 0(t0) !356
	fsub	fa2, fa2, fa3 !980
	addi	t0, a1, 4 !528
	lw  	a2, 0(t0) !528
	slli	t0, a0, 2 !982
	add 	t0, t0, a2 !982
	lw  	a2, 0(t0) !982
	addi	t0, a6, 4 !253
	lw  	a0, 0(t0) !253
	addi	t0, zero, 1 !984
	bne 	a0, t0, beq_else.9616 !984
	addi	t0, a1, 0 !522
	lw  	a1, 0(t0) !522
	addi	a0, a6, 0 !985
	addi	s7, a5, 0 !985
	lw  	t1, 0(s7) !985
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !985
beq_else.9616: !984
	addi	t0, zero, 2 !986
	bne 	a0, t0, beq_else.9617 !986
	addi	a1, a2, 0 !987
	addi	a0, a6, 0 !987
	addi	s7, a3, 0 !987
	lw  	t1, 0(s7) !987
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !987
beq_else.9617: !986
	addi	a1, a2, 0 !989
	addi	a0, a6, 0 !989
	addi	s7, a4, 0 !989
	lw  	t1, 0(s7) !989
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !989
solver_surface_fast2.2613:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !997
	lw  	a0, 0(t0) !997
	addi	t0, a1, 0 !997
	flw  	fa0, 0(t0) !997
	sw  	a0, 4(sp) !997
	sw  	a2, 8(sp) !997
	sw  	a1, 12(sp) !997
	flt 	a0, fa0, zero
	addi	t0, zero, 0 !997
	bne 	a0, t0, beq_else.9618 !997
	addi	a0, zero, 0 !1000
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9618: !997
	lw  	a0, 12(sp) !998
	addi	t0, a0, 0 !998
	flw  	fa0, 0(t0) !998
	lw  	a0, 8(sp) !998
	addi	t0, a0, 12 !998
	flw  	fa1, 0(t0) !998
	fmul	fa0, fa0, fa1 !998
	lw  	a0, 4(sp) !998
	addi	t0, a0, 0 !998
	fsw  	fa0, 0(t0) !998
	addi	a0, zero, 1 !999
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second_fast2.2620:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1006
	lw  	a3, 0(t0) !1006
	addi	t0, a1, 0 !1006
	flw  	fa3, 0(t0) !1006
	sw  	a3, 4(sp) !1007
	sw  	a0, 8(sp) !1007
	fsw 	fa3, 16(sp) !1007
	sw  	a2, 24(sp) !1007
	fsw 	fa2, 32(sp) !1007
	fsw 	fa1, 40(sp) !1007
	fsw 	fa0, 48(sp) !1007
	sw  	a1, 56(sp) !1007
	fsgnj   fa0, fa3, fa3 !1007
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !1007
	bne 	a0, t0, beq_else.9621 !1007
	lw  	a0, 56(sp) !1010
	addi	t0, a0, 4 !1010
	flw  	fa0, 0(t0) !1010
	flw  	fa1, 48(sp) !1010
	fmul	fa0, fa0, fa1 !1010
	addi	t0, a0, 8 !1010
	flw  	fa1, 0(t0) !1010
	flw  	fa2, 40(sp) !1010
	fmul	fa1, fa1, fa2 !1010
	fadd	fa0, fa0, fa1 !1010
	addi	t0, a0, 12 !1010
	flw  	fa1, 0(t0) !1010
	flw  	fa2, 32(sp) !1010
	fmul	fa1, fa1, fa2 !1010
	fadd	fa0, fa0, fa1 !1010
	lw  	a1, 24(sp) !1011
	addi	t0, a1, 12 !1011
	flw  	fa1, 0(t0) !1011
	fsw 	fa0, 64(sp) !1012
	fsw 	fa1, 72(sp) !1012
	fmul	fa0, fa0, fa0
	flw  	fa1, 72(sp) !1012
	flw  	fa2, 16(sp) !1012
	fmul	fa2, fa2, fa1 !1012
	fsub	fa0, fa0, fa2 !1012
	fsw 	fa0, 80(sp) !1013
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !1013
	bne 	a0, t0, beq_else.9623 !1013
	addi	a0, zero, 0 !1019
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9623: !1013
	lw  	a0, 8(sp) !273
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	addi	t0, zero, 0 !1014
	bne 	a0, t0, beq_else.9624 !1014
	flw  	fa0, 80(sp) !1017
	fsqrt   fa0, fa0
	flw  	fa1, 64(sp) !1017
	fsub	fa1, fa1, fa0 !1017
	lw  	a0, 56(sp) !1017
	addi	t0, a0, 16 !1017
	flw  	fa0, 0(t0) !1017
	fmul	fa1, fa1, fa0 !1017
	lw  	a0, 4(sp) !1017
	addi	t0, a0, 0 !1017
	fsw  	fa1, 0(t0) !1017
	jal 	zero, beq_cont.9625 !1014
beq_else.9624: !1014
	flw  	fa0, 80(sp) !1015
	fsqrt   fa0, fa0
	flw  	fa1, 64(sp) !1015
	fadd	fa1, fa1, fa0 !1015
	lw  	a0, 56(sp) !1015
	addi	t0, a0, 16 !1015
	flw  	fa0, 0(t0) !1015
	fmul	fa1, fa1, fa0 !1015
	lw  	a0, 4(sp) !1015
	addi	t0, a0, 0 !1015
	fsw  	fa1, 0(t0) !1015
beq_cont.9625: !1014
	addi	a0, zero, 1 !1018
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9621: !1007
	addi	a0, zero, 0 !1008
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_fast2.2627:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !1024
	lw  	a2, 0(t0) !1024
	addi	t0, s7, 12 !1024
	lw  	a3, 0(t0) !1024
	addi	t0, s7, 8 !1024
	lw  	a4, 0(t0) !1024
	addi	t0, s7, 4 !1024
	lw  	a5, 0(t0) !1024
	slli	t0, a0, 2 !1024
	add 	t0, t0, a5 !1024
	lw  	a5, 0(t0) !1024
	addi	t0, a5, 40 !442
	lw  	a6, 0(t0) !442
	addi	t0, a6, 0 !1026
	flw  	fa0, 0(t0) !1026
	addi	t0, a6, 4 !1027
	flw  	fa1, 0(t0) !1027
	addi	t0, a6, 8 !1028
	flw  	fa2, 0(t0) !1028
	addi	t0, a1, 4 !528
	lw  	a7, 0(t0) !528
	slli	t0, a0, 2 !1030
	add 	t0, t0, a7 !1030
	lw  	a0, 0(t0) !1030
	addi	t0, a5, 4 !253
	lw  	a7, 0(t0) !253
	addi	t0, zero, 1 !1032
	bne 	a7, t0, beq_else.9626 !1032
	addi	t0, a1, 0 !522
	lw  	a1, 0(t0) !522
	addi	a2, a0, 0 !1033
	addi	s7, a4, 0 !1033
	addi	a0, a5, 0 !1033
	lw  	t1, 0(s7) !1033
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1033
beq_else.9626: !1032
	addi	t0, zero, 2 !1034
	bne 	a7, t0, beq_else.9627 !1034
	addi	a1, a0, 0 !1035
	addi	s7, a2, 0 !1035
	addi	a2, a6, 0 !1035
	addi	a0, a5, 0 !1035
	lw  	t1, 0(s7) !1035
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1035
beq_else.9627: !1034
	addi	a2, a6, 0 !1037
	addi	a1, a0, 0 !1037
	addi	s7, a3, 0 !1037
	addi	a0, a5, 0 !1037
	lw  	t1, 0(s7) !1037
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1037
setup_rect_table.2630:
	sw  	ra, 0(sp)
	addi	a2, zero, 6 !1044
	li  	fa0, 0.000000 !1044
	sw  	a1, 4(sp) !1044
	sw  	a0, 8(sp) !1044
	addi	a0, a2, 0 !1044
	addi	sp, sp, 16 !1044
	jal 	ra, create_float_array !1044
	addi	sp, sp, -16 !1044
	lw  	a1, 8(sp) !1046
	addi	t0, a1, 0 !1046
	flw  	fa0, 0(t0) !1046
	sw  	a0, 12(sp) !1046
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !1046
	bne 	a0, t0, beq_else.9628 !1046
	lw  	a0, 4(sp) !273
	addi	t0, a0, 24 !273
	lw  	a1, 0(t0) !273
	lw  	a2, 8(sp) !1050
	addi	t0, a2, 0 !1050
	flw  	fa0, 0(t0) !1050
	sw  	a1, 16(sp) !1050
	flt 	a0, fa0, zero
	lw  	a1, 16(sp) !134
	addi	t0, zero, 0 !134
	bne 	a1, t0, beq_else.9630 !134
	jal 	zero, beq_cont.9631 !134
beq_else.9630: !134
	addi	t0, zero, 0 !134
	bne 	a0, t0, beq_else.9632 !134
	addi	a0, zero, 1 !134
	jal 	zero, beq_cont.9633 !134
beq_else.9632: !134
	addi	a0, zero, 0 !134
beq_cont.9633: !134
beq_cont.9631: !134
	lw  	a1, 4(sp) !291
	addi	t0, a1, 16 !291
	lw  	a2, 0(t0) !291
	addi	t0, a2, 0 !296
	flw  	fa0, 0(t0) !296
	addi	t0, zero, 0 !147
	bne 	a0, t0, beq_else.9634 !147
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.9635 !147
beq_else.9634: !147
beq_cont.9635: !147
	lw  	a0, 12(sp) !1050
	addi	t0, a0, 0 !1050
	fsw  	fa0, 0(t0) !1050
	li  	fa0, 1.000000 !1052
	lw  	a1, 8(sp) !1052
	addi	t0, a1, 0 !1052
	flw  	fa1, 0(t0) !1052
	fdiv	fa0, fa0, fa1 !1052
	addi	t0, a0, 4 !1052
	fsw  	fa0, 0(t0) !1052
	jal 	zero, beq_cont.9629 !1046
beq_else.9628: !1046
	li  	fa0, 0.000000 !1047
	lw  	a0, 12(sp) !1047
	addi	t0, a0, 4 !1047
	fsw  	fa0, 0(t0) !1047
beq_cont.9629: !1046
	lw  	a1, 8(sp) !1054
	addi	t0, a1, 4 !1054
	flw  	fa0, 0(t0) !1054
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !1054
	bne 	a0, t0, beq_else.9636 !1054
	lw  	a0, 4(sp) !273
	addi	t0, a0, 24 !273
	lw  	a1, 0(t0) !273
	lw  	a2, 8(sp) !1057
	addi	t0, a2, 4 !1057
	flw  	fa0, 0(t0) !1057
	sw  	a1, 20(sp) !1057
	flt 	a0, fa0, zero
	lw  	a1, 20(sp) !134
	addi	t0, zero, 0 !134
	bne 	a1, t0, beq_else.9638 !134
	jal 	zero, beq_cont.9639 !134
beq_else.9638: !134
	addi	t0, zero, 0 !134
	bne 	a0, t0, beq_else.9640 !134
	addi	a0, zero, 1 !134
	jal 	zero, beq_cont.9641 !134
beq_else.9640: !134
	addi	a0, zero, 0 !134
beq_cont.9641: !134
beq_cont.9639: !134
	lw  	a1, 4(sp) !301
	addi	t0, a1, 16 !301
	lw  	a2, 0(t0) !301
	addi	t0, a2, 4 !306
	flw  	fa0, 0(t0) !306
	addi	t0, zero, 0 !147
	bne 	a0, t0, beq_else.9642 !147
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.9643 !147
beq_else.9642: !147
beq_cont.9643: !147
	lw  	a0, 12(sp) !1057
	addi	t0, a0, 8 !1057
	fsw  	fa0, 0(t0) !1057
	li  	fa0, 1.000000 !1058
	lw  	a1, 8(sp) !1058
	addi	t0, a1, 4 !1058
	flw  	fa1, 0(t0) !1058
	fdiv	fa0, fa0, fa1 !1058
	addi	t0, a0, 12 !1058
	fsw  	fa0, 0(t0) !1058
	jal 	zero, beq_cont.9637 !1054
beq_else.9636: !1054
	li  	fa0, 0.000000 !1055
	lw  	a0, 12(sp) !1055
	addi	t0, a0, 12 !1055
	fsw  	fa0, 0(t0) !1055
beq_cont.9637: !1054
	lw  	a1, 8(sp) !1060
	addi	t0, a1, 8 !1060
	flw  	fa0, 0(t0) !1060
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !1060
	bne 	a0, t0, beq_else.9644 !1060
	lw  	a0, 4(sp) !273
	addi	t0, a0, 24 !273
	lw  	a1, 0(t0) !273
	lw  	a2, 8(sp) !1063
	addi	t0, a2, 8 !1063
	flw  	fa0, 0(t0) !1063
	sw  	a1, 24(sp) !1063
	flt 	a0, fa0, zero
	lw  	a1, 24(sp) !134
	addi	t0, zero, 0 !134
	bne 	a1, t0, beq_else.9646 !134
	jal 	zero, beq_cont.9647 !134
beq_else.9646: !134
	addi	t0, zero, 0 !134
	bne 	a0, t0, beq_else.9648 !134
	addi	a0, zero, 1 !134
	jal 	zero, beq_cont.9649 !134
beq_else.9648: !134
	addi	a0, zero, 0 !134
beq_cont.9649: !134
beq_cont.9647: !134
	lw  	a1, 4(sp) !311
	addi	t0, a1, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa0, 0(t0) !316
	addi	t0, zero, 0 !147
	bne 	a0, t0, beq_else.9650 !147
	fsgnjn  fa0, fa0, fa0
	jal 	zero, beq_cont.9651 !147
beq_else.9650: !147
beq_cont.9651: !147
	lw  	a0, 12(sp) !1063
	addi	t0, a0, 16 !1063
	fsw  	fa0, 0(t0) !1063
	li  	fa0, 1.000000 !1064
	lw  	a1, 8(sp) !1064
	addi	t0, a1, 8 !1064
	flw  	fa1, 0(t0) !1064
	fdiv	fa0, fa0, fa1 !1064
	addi	t0, a0, 20 !1064
	fsw  	fa0, 0(t0) !1064
	jal 	zero, beq_cont.9645 !1060
beq_else.9644: !1060
	li  	fa0, 0.000000 !1061
	lw  	a0, 12(sp) !1061
	addi	t0, a0, 20 !1061
	fsw  	fa0, 0(t0) !1061
beq_cont.9645: !1060
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_surface_table.2633:
	sw  	ra, 0(sp)
	addi	a2, zero, 4 !1071
	li  	fa0, 0.000000 !1071
	sw  	a1, 4(sp) !1071
	sw  	a0, 8(sp) !1071
	addi	a0, a2, 0 !1071
	addi	sp, sp, 16 !1071
	jal 	ra, create_float_array !1071
	addi	sp, sp, -16 !1071
	lw  	a1, 8(sp) !1073
	addi	t0, a1, 0 !1073
	flw  	fa0, 0(t0) !1073
	lw  	a2, 4(sp) !291
	addi	t0, a2, 16 !291
	lw  	a3, 0(t0) !291
	addi	t0, a3, 0 !296
	flw  	fa1, 0(t0) !296
	fmul	fa0, fa0, fa1 !1073
	addi	t0, a1, 4 !1073
	flw  	fa1, 0(t0) !1073
	addi	t0, a2, 16 !301
	lw  	a3, 0(t0) !301
	addi	t0, a3, 4 !306
	flw  	fa2, 0(t0) !306
	fmul	fa1, fa1, fa2 !1073
	fadd	fa0, fa0, fa1 !1073
	addi	t0, a1, 8 !1073
	flw  	fa1, 0(t0) !1073
	addi	t0, a2, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa2, 0(t0) !316
	fmul	fa1, fa1, fa2 !1073
	fadd	fa0, fa0, fa1 !1073
	fsw 	fa0, 16(sp) !1075
	sw  	a0, 24(sp) !1075
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !1075
	bne 	a0, t0, beq_else.9653 !1075
	li  	fa0, 0.000000 !1083
	lw  	a0, 24(sp) !1083
	addi	t0, a0, 0 !1083
	fsw  	fa0, 0(t0) !1083
	jal 	zero, beq_cont.9654 !1075
beq_else.9653: !1075
	li  	fa0, -1.000000 !1077
	flw  	fa1, 16(sp) !1077
	fdiv	fa0, fa0, fa1 !1077
	lw  	a0, 24(sp) !1077
	addi	t0, a0, 0 !1077
	fsw  	fa0, 0(t0) !1077
	lw  	a1, 4(sp) !291
	addi	t0, a1, 16 !291
	lw  	a2, 0(t0) !291
	addi	t0, a2, 0 !296
	flw  	fa0, 0(t0) !296
	fdiv	fa0, fa0, fa1 !1079
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 24(sp) !1079
	addi	t0, a0, 4 !1079
	fsw  	fa0, 0(t0) !1079
	lw  	a1, 4(sp) !301
	addi	t0, a1, 16 !301
	lw  	a2, 0(t0) !301
	addi	t0, a2, 4 !306
	flw  	fa0, 0(t0) !306
	flw  	fa1, 16(sp) !1080
	fdiv	fa0, fa0, fa1 !1080
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 24(sp) !1080
	addi	t0, a0, 8 !1080
	fsw  	fa0, 0(t0) !1080
	lw  	a1, 4(sp) !311
	addi	t0, a1, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa0, 0(t0) !316
	flw  	fa1, 16(sp) !1081
	fdiv	fa0, fa0, fa1 !1081
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 24(sp) !1081
	addi	t0, a0, 12 !1081
	fsw  	fa0, 0(t0) !1081
beq_cont.9654: !1075
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_second_table.2636:
	sw  	ra, 0(sp)
	addi	a2, zero, 5 !1090
	li  	fa0, 0.000000 !1090
	sw  	a1, 4(sp) !1090
	sw  	a0, 8(sp) !1090
	addi	a0, a2, 0 !1090
	addi	sp, sp, 16 !1090
	jal 	ra, create_float_array !1090
	addi	sp, sp, -16 !1090
	lw  	a1, 8(sp) !1092
	addi	t0, a1, 0 !1092
	flw  	fa0, 0(t0) !1092
	addi	t0, a1, 4 !1092
	flw  	fa1, 0(t0) !1092
	addi	t0, a1, 8 !1092
	flw  	fa2, 0(t0) !1092
	lw  	a2, 4(sp) !1092
	sw  	a0, 12(sp) !1092
	addi	a0, a2, 0 !1092
	addi	sp, sp, 16 !1092
	jal 	ra, quadratic.2567 !1092
	addi	sp, sp, -16 !1092
	lw  	a0, 8(sp) !1093
	addi	t0, a0, 0 !1093
	flw  	fa1, 0(t0) !1093
	lw  	a1, 4(sp) !291
	addi	t0, a1, 16 !291
	lw  	a2, 0(t0) !291
	addi	t0, a2, 0 !296
	flw  	fa2, 0(t0) !296
	fmul	fa1, fa1, fa2 !1093
	fsw 	fa0, 16(sp) !1093
	fsgnj   fa0, fa1, fa1 !1093
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !1094
	addi	t0, a0, 4 !1094
	flw  	fa1, 0(t0) !1094
	lw  	a1, 4(sp) !301
	addi	t0, a1, 16 !301
	lw  	a2, 0(t0) !301
	addi	t0, a2, 4 !306
	flw  	fa2, 0(t0) !306
	fmul	fa1, fa1, fa2 !1094
	fsw 	fa0, 24(sp) !1094
	fsgnj   fa0, fa1, fa1 !1094
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !1095
	addi	t0, a0, 8 !1095
	flw  	fa1, 0(t0) !1095
	lw  	a1, 4(sp) !311
	addi	t0, a1, 16 !311
	lw  	a2, 0(t0) !311
	addi	t0, a2, 8 !316
	flw  	fa2, 0(t0) !316
	fmul	fa1, fa1, fa2 !1095
	fsw 	fa0, 32(sp) !1095
	fsgnj   fa0, fa1, fa1 !1095
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 12(sp) !1097
	flw  	fa1, 16(sp) !1097
	addi	t0, a0, 0 !1097
	fsw  	fa1, 0(t0) !1097
	lw  	a1, 4(sp) !282
	addi	t0, a1, 12 !282
	lw  	a2, 0(t0) !282
	addi	t0, zero, 0 !1100
	bne 	a2, t0, beq_else.9655 !1100
	flw  	fa2, 24(sp) !1105
	addi	t0, a0, 4 !1105
	fsw  	fa2, 0(t0) !1105
	flw  	fa2, 32(sp) !1106
	addi	t0, a0, 8 !1106
	fsw  	fa2, 0(t0) !1106
	addi	t0, a0, 12 !1107
	fsw  	fa0, 0(t0) !1107
	jal 	zero, beq_cont.9656 !1100
beq_else.9655: !1100
	lw  	a2, 8(sp) !1101
	addi	t0, a2, 8 !1101
	flw  	fa2, 0(t0) !1101
	addi	t0, a1, 36 !421
	lw  	a3, 0(t0) !421
	addi	t0, a3, 4 !426
	flw  	fa3, 0(t0) !426
	fmul	fa2, fa2, fa3 !1101
	addi	t0, a2, 4 !1101
	flw  	fa3, 0(t0) !1101
	addi	t0, a1, 36 !431
	lw  	a3, 0(t0) !431
	addi	t0, a3, 8 !436
	flw  	fa4, 0(t0) !436
	fmul	fa3, fa3, fa4 !1101
	fadd	fa2, fa2, fa3 !1101
	fsw 	fa0, 40(sp) !1101
	fsgnj   fa0, fa2, fa2 !1101
	li  	ft0, 2.0
	fdiv	fa0, fa0, ft0
	flw  	fa1, 24(sp) !1101
	fsub	fa1, fa1, fa0 !1101
	lw  	a0, 12(sp) !1101
	addi	t0, a0, 4 !1101
	fsw  	fa1, 0(t0) !1101
	lw  	a1, 8(sp) !1102
	addi	t0, a1, 8 !1102
	flw  	fa0, 0(t0) !1102
	lw  	a2, 4(sp) !411
	addi	t0, a2, 36 !411
	lw  	a3, 0(t0) !411
	addi	t0, a3, 0 !416
	flw  	fa1, 0(t0) !416
	fmul	fa0, fa0, fa1 !1102
	addi	t0, a1, 0 !1102
	flw  	fa1, 0(t0) !1102
	addi	t0, a2, 36 !431
	lw  	a3, 0(t0) !431
	addi	t0, a3, 8 !436
	flw  	fa2, 0(t0) !436
	fmul	fa1, fa1, fa2 !1102
	fadd	fa0, fa0, fa1 !1102
	li  	ft0, 2.0
	fdiv	fa0, fa0, ft0
	flw  	fa1, 32(sp) !1102
	fsub	fa1, fa1, fa0 !1102
	lw  	a0, 12(sp) !1102
	addi	t0, a0, 8 !1102
	fsw  	fa1, 0(t0) !1102
	lw  	a1, 8(sp) !1103
	addi	t0, a1, 4 !1103
	flw  	fa0, 0(t0) !1103
	lw  	a2, 4(sp) !411
	addi	t0, a2, 36 !411
	lw  	a3, 0(t0) !411
	addi	t0, a3, 0 !416
	flw  	fa1, 0(t0) !416
	fmul	fa0, fa0, fa1 !1103
	addi	t0, a1, 0 !1103
	flw  	fa1, 0(t0) !1103
	addi	t0, a2, 36 !421
	lw  	a1, 0(t0) !421
	addi	t0, a1, 4 !426
	flw  	fa2, 0(t0) !426
	fmul	fa1, fa1, fa2 !1103
	fadd	fa0, fa0, fa1 !1103
	li  	ft0, 2.0
	fdiv	fa0, fa0, ft0
	flw  	fa1, 40(sp) !1103
	fsub	fa1, fa1, fa0 !1103
	lw  	a0, 12(sp) !1103
	addi	t0, a0, 12 !1103
	fsw  	fa1, 0(t0) !1103
beq_cont.9656: !1100
	flw  	fa0, 16(sp) !1109
	feq 	a0, zero, fa0
	addi	t0, zero, 0 !1109
	bne 	a0, t0, beq_else.9657 !1109
	li  	fa0, 1.000000 !1110
	flw  	fa1, 16(sp) !1110
	fdiv	fa0, fa0, fa1 !1110
	lw  	a0, 12(sp) !1110
	addi	t0, a0, 16 !1110
	fsw  	fa0, 0(t0) !1110
	jal 	zero, beq_cont.9658 !1109
beq_else.9657: !1109
beq_cont.9658: !1109
	lw  	a0, 12(sp) !1112
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_setup_dirvec_constants.2639:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1118
	lw  	a2, 0(t0) !1118
	addi	t0, zero, 0 !1118
	blt 	a1, t0, bge_else.9659 !1118
	slli	t0, a1, 2 !1119
	add 	t0, t0, a2 !1119
	lw  	a2, 0(t0) !1119
	addi	t0, a0, 4 !528
	lw  	a3, 0(t0) !528
	addi	t0, a0, 0 !522
	lw  	a4, 0(t0) !522
	addi	t0, a2, 4 !253
	lw  	a5, 0(t0) !253
	sw  	a0, 4(sp) !1123
	sw  	s7, 8(sp) !1123
	addi	t0, zero, 1 !1123
	bne 	a5, t0, beq_else.9660 !1123
	sw  	a1, 12(sp) !1124
	sw  	a3, 16(sp) !1124
	addi	a1, a2, 0 !1124
	addi	a0, a4, 0 !1124
	addi	sp, sp, 24 !1124
	jal 	ra, setup_rect_table.2630 !1124
	addi	sp, sp, -24 !1124
	lw  	a1, 12(sp) !1124
	lw  	a2, 16(sp) !1124
	slli	t0, a1, 2 !1124
	add 	t0, t0, a2 !1124
	sw  	a0, 0(t0) !1124
	jal 	zero, beq_cont.9661 !1123
beq_else.9660: !1123
	addi	t0, zero, 2 !1125
	bne 	a5, t0, beq_else.9662 !1125
	sw  	a1, 12(sp) !1126
	sw  	a3, 16(sp) !1126
	addi	a1, a2, 0 !1126
	addi	a0, a4, 0 !1126
	addi	sp, sp, 24 !1126
	jal 	ra, setup_surface_table.2633 !1126
	addi	sp, sp, -24 !1126
	lw  	a1, 12(sp) !1126
	lw  	a2, 16(sp) !1126
	slli	t0, a1, 2 !1126
	add 	t0, t0, a2 !1126
	sw  	a0, 0(t0) !1126
	jal 	zero, beq_cont.9663 !1125
beq_else.9662: !1125
	sw  	a1, 12(sp) !1128
	sw  	a3, 16(sp) !1128
	addi	a1, a2, 0 !1128
	addi	a0, a4, 0 !1128
	addi	sp, sp, 24 !1128
	jal 	ra, setup_second_table.2636 !1128
	addi	sp, sp, -24 !1128
	lw  	a1, 12(sp) !1128
	lw  	a2, 16(sp) !1128
	slli	t0, a1, 2 !1128
	add 	t0, t0, a2 !1128
	sw  	a0, 0(t0) !1128
beq_cont.9663: !1125
beq_cont.9661: !1123
	addi	a1, a1, -1 !1130
	lw  	a0, 4(sp) !1130
	lw  	s7, 8(sp) !1130
	lw  	t1, 0(s7) !1130
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1130
bge_else.9659: !1118
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp_constants.2644:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1141
	lw  	a2, 0(t0) !1141
	addi	t0, zero, 0 !1141
	blt 	a1, t0, bge_else.9665 !1141
	slli	t0, a1, 2 !1142
	add 	t0, t0, a2 !1142
	lw  	a2, 0(t0) !1142
	addi	t0, a2, 40 !442
	lw  	a3, 0(t0) !442
	addi	t0, a2, 4 !253
	lw  	a4, 0(t0) !253
	addi	t0, a0, 0 !1145
	flw  	fa0, 0(t0) !1145
	addi	t0, a2, 20 !331
	lw  	a5, 0(t0) !331
	addi	t0, a5, 0 !336
	flw  	fa1, 0(t0) !336
	fsub	fa0, fa0, fa1 !1145
	addi	t0, a3, 0 !1145
	fsw  	fa0, 0(t0) !1145
	addi	t0, a0, 4 !1146
	flw  	fa0, 0(t0) !1146
	addi	t0, a2, 20 !341
	lw  	a5, 0(t0) !341
	addi	t0, a5, 4 !346
	flw  	fa1, 0(t0) !346
	fsub	fa0, fa0, fa1 !1146
	addi	t0, a3, 4 !1146
	fsw  	fa0, 0(t0) !1146
	addi	t0, a0, 8 !1147
	flw  	fa0, 0(t0) !1147
	addi	t0, a2, 20 !351
	lw  	a5, 0(t0) !351
	addi	t0, a5, 8 !356
	flw  	fa1, 0(t0) !356
	fsub	fa0, fa0, fa1 !1147
	addi	t0, a3, 8 !1147
	fsw  	fa0, 0(t0) !1147
	sw  	a0, 4(sp) !1148
	sw  	s7, 8(sp) !1148
	sw  	a1, 12(sp) !1148
	addi	t0, zero, 2 !1148
	bne 	a4, t0, beq_else.9666 !1148
	addi	t0, a2, 16 !321
	lw  	a2, 0(t0) !321
	addi	t0, a3, 0 !1150
	flw  	fa0, 0(t0) !1150
	addi	t0, a3, 4 !1150
	flw  	fa1, 0(t0) !1150
	addi	t0, a3, 8 !1150
	flw  	fa2, 0(t0) !1150
	sw  	a3, 16(sp) !1150
	addi	a0, a2, 0 !1150
	addi	sp, sp, 24 !1150
	jal 	ra, veciprod2.2433 !1150
	addi	sp, sp, -24 !1150
	lw  	a0, 16(sp) !1149
	addi	t0, a0, 12 !1149
	fsw  	fa0, 0(t0) !1149
	jal 	zero, beq_cont.9667 !1148
beq_else.9666: !1148
	addi	t0, zero, 2 !1151
	blt 	t0, a4, bge_else.9668 !1151
	jal 	zero, bge_cont.9669 !1151
bge_else.9668: !1151
	addi	t0, a3, 0 !1152
	flw  	fa0, 0(t0) !1152
	addi	t0, a3, 4 !1152
	flw  	fa1, 0(t0) !1152
	addi	t0, a3, 8 !1152
	flw  	fa2, 0(t0) !1152
	sw  	a3, 16(sp) !1152
	sw  	a4, 20(sp) !1152
	addi	a0, a2, 0 !1152
	addi	sp, sp, 24 !1152
	jal 	ra, quadratic.2567 !1152
	addi	sp, sp, -24 !1152
	lw  	a0, 20(sp) !1153
	addi	t0, zero, 3 !1153
	bne 	a0, t0, beq_else.9670 !1153
	li  	fa1, 1.000000 !1153
	fsub	fa0, fa0, fa1 !1153
	jal 	zero, beq_cont.9671 !1153
beq_else.9670: !1153
beq_cont.9671: !1153
	lw  	a0, 16(sp) !1153
	addi	t0, a0, 12 !1153
	fsw  	fa0, 0(t0) !1153
bge_cont.9669: !1151
beq_cont.9667: !1148
	lw  	a0, 12(sp) !1155
	addi	a1, a0, -1 !1155
	lw  	a0, 4(sp) !1155
	lw  	s7, 8(sp) !1155
	lw  	t1, 0(s7) !1155
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1155
bge_else.9665: !1141
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp.2647:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !1160
	lw  	a1, 0(t0) !1160
	addi	t0, s7, 8 !1160
	lw  	a2, 0(t0) !1160
	addi	t0, s7, 4 !1160
	lw  	a3, 0(t0) !1160
	sw  	a0, 4(sp) !1160
	sw  	a2, 8(sp) !1160
	sw  	a3, 12(sp) !1160
	sw  	a1, 16(sp) !1160
	addi	a1, a0, 0 !1160
	lw  	a0, 16(sp) !1160
	addi	sp, sp, 16 !1160
	jal 	ra, veccpy.2424 !1160
	addi	sp, sp, -16 !1160
	lw  	a0, 12(sp) !1161
	addi	t0, a0, 0 !1161
	lw  	a0, 0(t0) !1161
	addi	a1, a0, -1 !1161
	lw  	a0, 4(sp) !1161
	lw  	s7, 8(sp) !1161
	lw  	t1, 0(s7) !1161
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1161
is_rect_outside.2649:
	sw  	ra, 0(sp)
	fsw 	fa2, 8(sp) !1171
	fsw 	fa1, 16(sp) !1171
	sw  	a0, 24(sp) !1171
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 24(sp) !291
	addi	t0, a0, 16 !291
	lw  	a1, 0(t0) !291
	addi	t0, a1, 0 !296
	flw  	fa1, 0(t0) !296
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1171
	bne 	a0, t0, beq_else.9674 !1171
	addi	a0, zero, 0 !1175
	jal 	zero, beq_cont.9675 !1171
beq_else.9674: !1171
	flw  	fa0, 16(sp) !1172
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 24(sp) !301
	addi	t0, a0, 16 !301
	lw  	a1, 0(t0) !301
	addi	t0, a1, 4 !306
	flw  	fa1, 0(t0) !306
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1172
	bne 	a0, t0, beq_else.9676 !1172
	addi	a0, zero, 0 !1174
	jal 	zero, beq_cont.9677 !1172
beq_else.9676: !1172
	flw  	fa0, 8(sp) !1173
	fsgnjx  fa0, fa0, fa0
	lw  	a0, 24(sp) !311
	addi	t0, a0, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa1, 0(t0) !316
	fle 	a0, fa0, fa1
beq_cont.9677: !1172
beq_cont.9675: !1171
	addi	t0, zero, 0 !1170
	bne 	a0, t0, beq_else.9678 !1170
	lw  	a0, 24(sp) !273
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	addi	t0, zero, 0 !1176
	bne 	a0, t0, beq_else.9679 !1176
	addi	a0, zero, 1 !1176
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9679: !1176
	addi	a0, zero, 0 !1176
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9678: !1170
	lw  	a0, 24(sp) !273
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
is_plane_outside.2654:
	sw  	ra, 0(sp)
	addi	t0, a0, 16 !321
	lw  	a1, 0(t0) !321
	sw  	a0, 4(sp) !1181
	addi	a0, a1, 0 !1181
	addi	sp, sp, 8 !1181
	jal 	ra, veciprod2.2433 !1181
	addi	sp, sp, -8 !1181
	lw  	a0, 4(sp) !273
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	sw  	a0, 8(sp) !1182
	flt 	a0, fa0, zero
	lw  	a1, 8(sp) !134
	addi	t0, zero, 0 !134
	bne 	a1, t0, beq_else.9680 !134
	jal 	zero, beq_cont.9681 !134
beq_else.9680: !134
	addi	t0, zero, 0 !134
	bne 	a0, t0, beq_else.9682 !134
	addi	a0, zero, 1 !134
	jal 	zero, beq_cont.9683 !134
beq_else.9682: !134
	addi	a0, zero, 0 !134
beq_cont.9683: !134
beq_cont.9681: !134
	addi	t0, zero, 0 !1182
	bne 	a0, t0, beq_else.9684 !1182
	addi	a0, zero, 1 !1182
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9684: !1182
	addi	a0, zero, 0 !1182
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
is_second_outside.2659:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !1187
	addi	sp, sp, 8 !1187
	jal 	ra, quadratic.2567 !1187
	addi	sp, sp, -8 !1187
	lw  	a0, 4(sp) !253
	addi	t0, a0, 4 !253
	lw  	a1, 0(t0) !253
	addi	t0, zero, 3 !1188
	bne 	a1, t0, beq_else.9685 !1188
	li  	fa1, 1.000000 !1188
	fsub	fa0, fa0, fa1 !1188
	jal 	zero, beq_cont.9686 !1188
beq_else.9685: !1188
beq_cont.9686: !1188
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	sw  	a0, 8(sp) !1189
	flt 	a0, fa0, zero
	lw  	a1, 8(sp) !134
	addi	t0, zero, 0 !134
	bne 	a1, t0, beq_else.9687 !134
	jal 	zero, beq_cont.9688 !134
beq_else.9687: !134
	addi	t0, zero, 0 !134
	bne 	a0, t0, beq_else.9689 !134
	addi	a0, zero, 1 !134
	jal 	zero, beq_cont.9690 !134
beq_else.9689: !134
	addi	a0, zero, 0 !134
beq_cont.9690: !134
beq_cont.9688: !134
	addi	t0, zero, 0 !1189
	bne 	a0, t0, beq_else.9691 !1189
	addi	a0, zero, 1 !1189
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9691: !1189
	addi	a0, zero, 0 !1189
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
is_outside.2664:
	sw  	ra, 0(sp)
	addi	t0, a0, 20 !331
	lw  	a1, 0(t0) !331
	addi	t0, a1, 0 !336
	flw  	fa3, 0(t0) !336
	fsub	fa0, fa0, fa3 !1194
	addi	t0, a0, 20 !341
	lw  	a1, 0(t0) !341
	addi	t0, a1, 4 !346
	flw  	fa3, 0(t0) !346
	fsub	fa1, fa1, fa3 !1195
	addi	t0, a0, 20 !351
	lw  	a1, 0(t0) !351
	addi	t0, a1, 8 !356
	flw  	fa3, 0(t0) !356
	fsub	fa2, fa2, fa3 !1196
	addi	t0, a0, 4 !253
	lw  	a1, 0(t0) !253
	addi	t0, zero, 1 !1198
	bne 	a1, t0, beq_else.9692 !1198
	lw  	ra, 0(sp)
	jal 	zero, is_rect_outside.2649 !1199
beq_else.9692: !1198
	addi	t0, zero, 2 !1200
	bne 	a1, t0, beq_else.9693 !1200
	lw  	ra, 0(sp)
	jal 	zero, is_plane_outside.2654 !1201
beq_else.9693: !1200
	lw  	ra, 0(sp)
	jal 	zero, is_second_outside.2659 !1203
check_all_inside.2669:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1208
	lw  	a2, 0(t0) !1208
	slli	t0, a0, 2 !1208
	add 	t0, t0, a1 !1208
	lw  	a3, 0(t0) !1208
	addi	t0, zero, -1 !1209
	bne 	a3, t0, beq_else.9694 !1209
	addi	a0, zero, 1 !1210
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9694: !1209
	slli	t0, a3, 2 !1212
	add 	t0, t0, a2 !1212
	lw  	a2, 0(t0) !1212
	fsw 	fa2, 8(sp) !1212
	fsw 	fa1, 16(sp) !1212
	fsw 	fa0, 24(sp) !1212
	sw  	a1, 32(sp) !1212
	sw  	s7, 36(sp) !1212
	sw  	a0, 40(sp) !1212
	addi	a0, a2, 0 !1212
	addi	sp, sp, 48 !1212
	jal 	ra, is_outside.2664 !1212
	addi	sp, sp, -48 !1212
	addi	t0, zero, 0 !1212
	bne 	a0, t0, beq_else.9696 !1212
	lw  	a0, 40(sp) !1215
	addi	a0, a0, 1 !1215
	flw  	fa0, 24(sp) !1215
	flw  	fa1, 16(sp) !1215
	flw  	fa2, 8(sp) !1215
	lw  	a1, 32(sp) !1215
	lw  	s7, 36(sp) !1215
	lw  	t1, 0(s7) !1215
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1215
beq_else.9696: !1212
	addi	a0, zero, 0 !1213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_and_group.2675:
	sw  	ra, 0(sp)
	addi	t0, s7, 28 !1226
	lw  	a2, 0(t0) !1226
	addi	t0, s7, 24 !1226
	lw  	a3, 0(t0) !1226
	addi	t0, s7, 20 !1226
	lw  	a4, 0(t0) !1226
	addi	t0, s7, 16 !1226
	lw  	a5, 0(t0) !1226
	addi	t0, s7, 12 !1226
	lw  	a6, 0(t0) !1226
	addi	t0, s7, 8 !1226
	lw  	a7, 0(t0) !1226
	addi	t0, s7, 4 !1226
	lw  	s1, 0(t0) !1226
	slli	t0, a0, 2 !1226
	add 	t0, t0, a1 !1226
	lw  	s2, 0(t0) !1226
	addi	t0, zero, -1 !1226
	bne 	s2, t0, beq_else.9697 !1226
	addi	a0, zero, 0 !1227
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9697: !1226
	slli	t0, a0, 2 !1229
	add 	t0, t0, a1 !1229
	lw  	s2, 0(t0) !1229
	sw  	s1, 4(sp) !1230
	sw  	a7, 8(sp) !1230
	sw  	a6, 12(sp) !1230
	sw  	a1, 16(sp) !1230
	sw  	s7, 20(sp) !1230
	sw  	a0, 24(sp) !1230
	sw  	s2, 28(sp) !1230
	sw  	a4, 32(sp) !1230
	sw  	a3, 36(sp) !1230
	addi	a1, a5, 0 !1230
	addi	a0, s2, 0 !1230
	addi	s7, a2, 0 !1230
	addi	a2, a7, 0 !1230
	addi	sp, sp, 40 !1230
	lw  	t1, 0(s7) !1230
	jalr	ra, t1, 0 !1230
	addi	sp, sp, -40 !1230
	lw  	a1, 36(sp) !1231
	addi	t0, a1, 0 !1231
	flw  	fa0, 0(t0) !1231
	fsw 	fa0, 40(sp) !1232
	addi	t0, zero, 0 !1232
	bne 	a0, t0, beq_else.9698 !1232
	addi	a0, zero, 0 !1232
	jal 	zero, beq_cont.9699 !1232
beq_else.9698: !1232
	li  	fa1, -0.200000 !1232
	fle 	a0, fa0, fa1
beq_cont.9699: !1232
	addi	t0, zero, 0 !1232
	bne 	a0, t0, beq_else.9700 !1232
	lw  	a0, 28(sp) !1248
	lw  	a1, 32(sp) !1248
	slli	t0, a0, 2 !1248
	add 	t0, t0, a1 !1248
	lw  	a0, 0(t0) !1248
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	addi	t0, zero, 0 !1248
	bne 	a0, t0, beq_else.9701 !1248
	addi	a0, zero, 0 !1251
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9701: !1248
	lw  	a0, 24(sp) !1249
	addi	a0, a0, 1 !1249
	lw  	a1, 16(sp) !1249
	lw  	s7, 20(sp) !1249
	lw  	t1, 0(s7) !1249
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1249
beq_else.9700: !1232
	li  	fa0, 0.010000 !1235
	flw  	fa1, 40(sp) !1235
	fadd	fa1, fa1, fa0 !1235
	lw  	a0, 12(sp) !1236
	addi	t0, a0, 0 !1236
	flw  	fa0, 0(t0) !1236
	fmul	fa0, fa0, fa1 !1236
	lw  	a1, 8(sp) !1236
	addi	t0, a1, 0 !1236
	flw  	fa2, 0(t0) !1236
	fadd	fa0, fa0, fa2 !1236
	addi	t0, a0, 4 !1237
	flw  	fa2, 0(t0) !1237
	fmul	fa2, fa2, fa1 !1237
	addi	t0, a1, 4 !1237
	flw  	fa3, 0(t0) !1237
	fadd	fa2, fa2, fa3 !1237
	addi	t0, a0, 8 !1238
	flw  	fa3, 0(t0) !1238
	fmul	fa3, fa3, fa1 !1238
	addi	t0, a1, 8 !1238
	flw  	fa1, 0(t0) !1238
	fadd	fa3, fa3, fa1 !1238
	addi	a0, zero, 0 !1239
	lw  	a1, 16(sp) !1239
	lw  	s7, 4(sp) !1239
	fsgnj   fa1, fa2, fa2 !1239
	fsgnj   fa2, fa3, fa3 !1239
	addi	sp, sp, 48 !1239
	lw  	t1, 0(s7) !1239
	jalr	ra, t1, 0 !1239
	addi	sp, sp, -48 !1239
	addi	t0, zero, 0 !1239
	bne 	a0, t0, beq_else.9702 !1239
	lw  	a0, 24(sp) !1242
	addi	a0, a0, 1 !1242
	lw  	a1, 16(sp) !1242
	lw  	s7, 20(sp) !1242
	lw  	t1, 0(s7) !1242
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1242
beq_else.9702: !1239
	addi	a0, zero, 1 !1240
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_group.2678:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1256
	lw  	a2, 0(t0) !1256
	addi	t0, s7, 4 !1256
	lw  	a3, 0(t0) !1256
	slli	t0, a0, 2 !1256
	add 	t0, t0, a1 !1256
	lw  	a4, 0(t0) !1256
	addi	t0, zero, -1 !1257
	bne 	a4, t0, beq_else.9703 !1257
	addi	a0, zero, 0 !1258
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9703: !1257
	slli	t0, a4, 2 !1260
	add 	t0, t0, a3 !1260
	lw  	a3, 0(t0) !1260
	addi	a4, zero, 0 !1261
	sw  	a1, 4(sp) !1261
	sw  	s7, 8(sp) !1261
	sw  	a0, 12(sp) !1261
	addi	a1, a3, 0 !1261
	addi	a0, a4, 0 !1261
	addi	s7, a2, 0 !1261
	addi	sp, sp, 16 !1261
	lw  	t1, 0(s7) !1261
	jalr	ra, t1, 0 !1261
	addi	sp, sp, -16 !1261
	addi	t0, zero, 0 !1262
	bne 	a0, t0, beq_else.9704 !1262
	lw  	a0, 12(sp) !1265
	addi	a0, a0, 1 !1265
	lw  	a1, 4(sp) !1265
	lw  	s7, 8(sp) !1265
	lw  	t1, 0(s7) !1265
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1265
beq_else.9704: !1262
	addi	a0, zero, 1 !1263
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_matrix.2681:
	sw  	ra, 0(sp)
	addi	t0, s7, 20 !1271
	lw  	a2, 0(t0) !1271
	addi	t0, s7, 16 !1271
	lw  	a3, 0(t0) !1271
	addi	t0, s7, 12 !1271
	lw  	a4, 0(t0) !1271
	addi	t0, s7, 8 !1271
	lw  	a5, 0(t0) !1271
	addi	t0, s7, 4 !1271
	lw  	a6, 0(t0) !1271
	slli	t0, a0, 2 !1271
	add 	t0, t0, a1 !1271
	lw  	a7, 0(t0) !1271
	addi	t0, a7, 0 !1272
	lw  	s1, 0(t0) !1272
	addi	t0, zero, -1 !1273
	bne 	s1, t0, beq_else.9705 !1273
	addi	a0, zero, 0 !1274
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9705: !1273
	sw  	a7, 4(sp) !1277
	sw  	a4, 8(sp) !1277
	sw  	a1, 12(sp) !1277
	sw  	s7, 16(sp) !1277
	sw  	a0, 20(sp) !1277
	addi	t0, zero, 99 !1277
	bne 	s1, t0, beq_else.9706 !1277
	addi	a0, zero, 1 !1278
	jal 	zero, beq_cont.9707 !1277
beq_else.9706: !1277
	sw  	a3, 24(sp) !1280
	addi	a1, a5, 0 !1280
	addi	a0, s1, 0 !1280
	addi	s7, a2, 0 !1280
	addi	a2, a6, 0 !1280
	addi	sp, sp, 32 !1280
	lw  	t1, 0(s7) !1280
	jalr	ra, t1, 0 !1280
	addi	sp, sp, -32 !1280
	addi	t0, zero, 0 !1283
	bne 	a0, t0, beq_else.9708 !1283
	addi	a0, zero, 0 !1289
	jal 	zero, beq_cont.9709 !1283
beq_else.9708: !1283
	lw  	a0, 24(sp) !1284
	addi	t0, a0, 0 !1284
	flw  	fa0, 0(t0) !1284
	li  	fa1, -0.100000 !1284
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1284
	bne 	a0, t0, beq_else.9710 !1284
	addi	a0, zero, 0 !1288
	jal 	zero, beq_cont.9711 !1284
beq_else.9710: !1284
	addi	a0, zero, 1 !1285
	lw  	a1, 4(sp) !1285
	lw  	s7, 8(sp) !1285
	addi	sp, sp, 32 !1285
	lw  	t1, 0(s7) !1285
	jalr	ra, t1, 0 !1285
	addi	sp, sp, -32 !1285
	addi	t0, zero, 0 !1285
	bne 	a0, t0, beq_else.9712 !1285
	addi	a0, zero, 0 !1287
	jal 	zero, beq_cont.9713 !1285
beq_else.9712: !1285
	addi	a0, zero, 1 !1286
beq_cont.9713: !1285
beq_cont.9711: !1284
beq_cont.9709: !1283
beq_cont.9707: !1277
	addi	t0, zero, 0 !1276
	bne 	a0, t0, beq_else.9714 !1276
	lw  	a0, 20(sp) !1296
	addi	a0, a0, 1 !1296
	lw  	a1, 12(sp) !1296
	lw  	s7, 16(sp) !1296
	lw  	t1, 0(s7) !1296
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1296
beq_else.9714: !1276
	addi	a0, zero, 1 !1291
	lw  	a1, 4(sp) !1291
	lw  	s7, 8(sp) !1291
	addi	sp, sp, 32 !1291
	lw  	t1, 0(s7) !1291
	jalr	ra, t1, 0 !1291
	addi	sp, sp, -32 !1291
	addi	t0, zero, 0 !1291
	bne 	a0, t0, beq_else.9715 !1291
	lw  	a0, 20(sp) !1294
	addi	a0, a0, 1 !1294
	lw  	a1, 12(sp) !1294
	lw  	s7, 16(sp) !1294
	lw  	t1, 0(s7) !1294
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1294
beq_else.9715: !1291
	addi	a0, zero, 1 !1292
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_each_element.2684:
	sw  	ra, 0(sp)
	addi	t0, s7, 36 !1305
	lw  	a3, 0(t0) !1305
	addi	t0, s7, 32 !1305
	lw  	a4, 0(t0) !1305
	addi	t0, s7, 28 !1305
	lw  	a5, 0(t0) !1305
	addi	t0, s7, 24 !1305
	lw  	a6, 0(t0) !1305
	addi	t0, s7, 20 !1305
	lw  	a7, 0(t0) !1305
	addi	t0, s7, 16 !1305
	lw  	s1, 0(t0) !1305
	addi	t0, s7, 12 !1305
	lw  	s2, 0(t0) !1305
	addi	t0, s7, 8 !1305
	lw  	s3, 0(t0) !1305
	addi	t0, s7, 4 !1305
	lw  	s4, 0(t0) !1305
	slli	t0, a0, 2 !1305
	add 	t0, t0, a1 !1305
	lw  	s5, 0(t0) !1305
	addi	t0, zero, -1 !1306
	bne 	s5, t0, beq_else.9716 !1306
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9716: !1306
	sw  	s1, 4(sp) !1308
	sw  	s3, 8(sp) !1308
	sw  	s2, 12(sp) !1308
	sw  	s4, 16(sp) !1308
	sw  	a4, 20(sp) !1308
	sw  	a3, 24(sp) !1308
	sw  	a5, 28(sp) !1308
	sw  	a2, 32(sp) !1308
	sw  	a1, 36(sp) !1308
	sw  	s7, 40(sp) !1308
	sw  	a0, 44(sp) !1308
	sw  	s5, 48(sp) !1308
	sw  	a7, 52(sp) !1308
	addi	a1, a2, 0 !1308
	addi	a0, s5, 0 !1308
	addi	s7, a6, 0 !1308
	addi	a2, a4, 0 !1308
	addi	sp, sp, 56 !1308
	lw  	t1, 0(s7) !1308
	jalr	ra, t1, 0 !1308
	addi	sp, sp, -56 !1308
	addi	t0, zero, 0 !1309
	bne 	a0, t0, beq_else.9718 !1309
	lw  	a0, 48(sp) !1337
	lw  	a1, 52(sp) !1337
	slli	t0, a0, 2 !1337
	add 	t0, t0, a1 !1337
	lw  	a0, 0(t0) !1337
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	addi	t0, zero, 0 !1337
	bne 	a0, t0, beq_else.9719 !1337
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9719: !1337
	lw  	a0, 44(sp) !1338
	addi	a0, a0, 1 !1338
	lw  	a1, 36(sp) !1338
	lw  	a2, 32(sp) !1338
	lw  	s7, 40(sp) !1338
	lw  	t1, 0(s7) !1338
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1338
beq_else.9718: !1309
	lw  	a1, 28(sp) !1313
	addi	t0, a1, 0 !1313
	flw  	fa1, 0(t0) !1313
	li  	fa0, 0.000000 !1315
	sw  	a0, 56(sp) !1315
	fsw 	fa1, 64(sp) !1315
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1315
	bne 	a0, t0, beq_else.9722 !1315
	jal 	zero, beq_cont.9723 !1315
beq_else.9722: !1315
	lw  	a0, 24(sp) !1316
	addi	t0, a0, 0 !1316
	flw  	fa1, 0(t0) !1316
	flw  	fa0, 64(sp) !1316
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1316
	bne 	a0, t0, beq_else.9724 !1316
	jal 	zero, beq_cont.9725 !1316
beq_else.9724: !1316
	li  	fa0, 0.010000 !1318
	flw  	fa1, 64(sp) !1318
	fadd	fa1, fa1, fa0 !1318
	lw  	a0, 32(sp) !1319
	addi	t0, a0, 0 !1319
	flw  	fa0, 0(t0) !1319
	fmul	fa0, fa0, fa1 !1319
	lw  	a1, 20(sp) !1319
	addi	t0, a1, 0 !1319
	flw  	fa2, 0(t0) !1319
	fadd	fa0, fa0, fa2 !1319
	addi	t0, a0, 4 !1320
	flw  	fa2, 0(t0) !1320
	fmul	fa2, fa2, fa1 !1320
	addi	t0, a1, 4 !1320
	flw  	fa3, 0(t0) !1320
	fadd	fa2, fa2, fa3 !1320
	addi	t0, a0, 8 !1321
	flw  	fa3, 0(t0) !1321
	fmul	fa3, fa3, fa1 !1321
	addi	t0, a1, 8 !1321
	flw  	fa4, 0(t0) !1321
	fadd	fa3, fa3, fa4 !1321
	addi	a1, zero, 0 !1322
	lw  	a2, 36(sp) !1322
	lw  	s7, 16(sp) !1322
	fsw 	fa3, 72(sp) !1322
	fsw 	fa2, 80(sp) !1322
	fsw 	fa0, 88(sp) !1322
	fsw 	fa1, 96(sp) !1322
	addi	a0, a1, 0 !1322
	addi	a1, a2, 0 !1322
	fsgnj   fa1, fa2, fa2 !1322
	fsgnj   fa2, fa3, fa3 !1322
	addi	sp, sp, 104 !1322
	lw  	t1, 0(s7) !1322
	jalr	ra, t1, 0 !1322
	addi	sp, sp, -104 !1322
	addi	t0, zero, 0 !1322
	bne 	a0, t0, beq_else.9726 !1322
	jal 	zero, beq_cont.9727 !1322
beq_else.9726: !1322
	lw  	a0, 24(sp) !1324
	flw  	fa0, 96(sp) !1324
	addi	t0, a0, 0 !1324
	fsw  	fa0, 0(t0) !1324
	flw  	fa0, 88(sp) !1325
	flw  	fa1, 80(sp) !1325
	flw  	fa2, 72(sp) !1325
	lw  	a0, 12(sp) !1325
	addi	sp, sp, 104 !1325
	jal 	ra, vecset.2414 !1325
	addi	sp, sp, -104 !1325
	lw  	a0, 8(sp) !1326
	lw  	a1, 48(sp) !1326
	addi	t0, a0, 0 !1326
	sw  	a1, 0(t0) !1326
	lw  	a0, 4(sp) !1327
	lw  	a1, 56(sp) !1327
	addi	t0, a0, 0 !1327
	sw  	a1, 0(t0) !1327
beq_cont.9727: !1322
beq_cont.9725: !1316
beq_cont.9723: !1315
	lw  	a0, 44(sp) !1333
	addi	a0, a0, 1 !1333
	lw  	a1, 36(sp) !1333
	lw  	a2, 32(sp) !1333
	lw  	s7, 40(sp) !1333
	lw  	t1, 0(s7) !1333
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1333
solve_one_or_network.2688:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1346
	lw  	a3, 0(t0) !1346
	addi	t0, s7, 4 !1346
	lw  	a4, 0(t0) !1346
	slli	t0, a0, 2 !1346
	add 	t0, t0, a1 !1346
	lw  	a5, 0(t0) !1346
	addi	t0, zero, -1 !1347
	bne 	a5, t0, beq_else.9728 !1347
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9728: !1347
	slli	t0, a5, 2 !1348
	add 	t0, t0, a4 !1348
	lw  	a4, 0(t0) !1348
	addi	a5, zero, 0 !1349
	sw  	a2, 4(sp) !1349
	sw  	a1, 8(sp) !1349
	sw  	s7, 12(sp) !1349
	sw  	a0, 16(sp) !1349
	addi	a1, a4, 0 !1349
	addi	a0, a5, 0 !1349
	addi	s7, a3, 0 !1349
	addi	sp, sp, 24 !1349
	lw  	t1, 0(s7) !1349
	jalr	ra, t1, 0 !1349
	addi	sp, sp, -24 !1349
	lw  	a0, 16(sp) !1350
	addi	a0, a0, 1 !1350
	lw  	a1, 8(sp) !1350
	lw  	a2, 4(sp) !1350
	lw  	s7, 12(sp) !1350
	lw  	t1, 0(s7) !1350
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1350
trace_or_matrix.2692:
	sw  	ra, 0(sp)
	addi	t0, s7, 20 !1356
	lw  	a3, 0(t0) !1356
	addi	t0, s7, 16 !1356
	lw  	a4, 0(t0) !1356
	addi	t0, s7, 12 !1356
	lw  	a5, 0(t0) !1356
	addi	t0, s7, 8 !1356
	lw  	a6, 0(t0) !1356
	addi	t0, s7, 4 !1356
	lw  	a7, 0(t0) !1356
	slli	t0, a0, 2 !1356
	add 	t0, t0, a1 !1356
	lw  	s1, 0(t0) !1356
	addi	t0, s1, 0 !1357
	lw  	s2, 0(t0) !1357
	addi	t0, zero, -1 !1358
	bne 	s2, t0, beq_else.9730 !1358
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9730: !1358
	sw  	a2, 4(sp) !1361
	sw  	a1, 8(sp) !1361
	sw  	s7, 12(sp) !1361
	sw  	a0, 16(sp) !1361
	addi	t0, zero, 99 !1361
	bne 	s2, t0, beq_else.9732 !1361
	addi	a3, zero, 1 !1362
	addi	a1, s1, 0 !1362
	addi	a0, a3, 0 !1362
	addi	s7, a7, 0 !1362
	addi	sp, sp, 24 !1362
	lw  	t1, 0(s7) !1362
	jalr	ra, t1, 0 !1362
	addi	sp, sp, -24 !1362
	jal 	zero, beq_cont.9733 !1361
beq_else.9732: !1361
	sw  	s1, 20(sp) !1366
	sw  	a7, 24(sp) !1366
	sw  	a3, 28(sp) !1366
	sw  	a5, 32(sp) !1366
	addi	a1, a2, 0 !1366
	addi	a0, s2, 0 !1366
	addi	s7, a6, 0 !1366
	addi	a2, a4, 0 !1366
	addi	sp, sp, 40 !1366
	lw  	t1, 0(s7) !1366
	jalr	ra, t1, 0 !1366
	addi	sp, sp, -40 !1366
	addi	t0, zero, 0 !1367
	bne 	a0, t0, beq_else.9734 !1367
	jal 	zero, beq_cont.9735 !1367
beq_else.9734: !1367
	lw  	a0, 32(sp) !1368
	addi	t0, a0, 0 !1368
	flw  	fa0, 0(t0) !1368
	lw  	a0, 28(sp) !1369
	addi	t0, a0, 0 !1369
	flw  	fa1, 0(t0) !1369
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1369
	bne 	a0, t0, beq_else.9736 !1369
	jal 	zero, beq_cont.9737 !1369
beq_else.9736: !1369
	addi	a0, zero, 1 !1370
	lw  	a1, 20(sp) !1370
	lw  	a2, 4(sp) !1370
	lw  	s7, 24(sp) !1370
	addi	sp, sp, 40 !1370
	lw  	t1, 0(s7) !1370
	jalr	ra, t1, 0 !1370
	addi	sp, sp, -40 !1370
beq_cont.9737: !1369
beq_cont.9735: !1367
beq_cont.9733: !1361
	lw  	a0, 16(sp) !1374
	addi	a0, a0, 1 !1374
	lw  	a1, 8(sp) !1374
	lw  	a2, 4(sp) !1374
	lw  	s7, 12(sp) !1374
	lw  	t1, 0(s7) !1374
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1374
judge_intersection.2696:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !1383
	lw  	a1, 0(t0) !1383
	addi	t0, s7, 8 !1383
	lw  	a2, 0(t0) !1383
	addi	t0, s7, 4 !1383
	lw  	a3, 0(t0) !1383
	li  	fa0, 1000000000.000000 !1383
	addi	t0, a2, 0 !1383
	fsw  	fa0, 0(t0) !1383
	addi	a4, zero, 0 !1384
	addi	t0, a3, 0 !1384
	lw  	a3, 0(t0) !1384
	sw  	a2, 4(sp) !1384
	addi	a2, a0, 0 !1384
	addi	s7, a1, 0 !1384
	addi	a1, a3, 0 !1384
	addi	a0, a4, 0 !1384
	addi	sp, sp, 8 !1384
	lw  	t1, 0(s7) !1384
	jalr	ra, t1, 0 !1384
	addi	sp, sp, -8 !1384
	lw  	a0, 4(sp) !1385
	addi	t0, a0, 0 !1385
	flw  	fa1, 0(t0) !1385
	li  	fa0, -0.100000 !1387
	fsw 	fa1, 8(sp) !1387
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1387
	bne 	a0, t0, beq_else.9738 !1387
	addi	a0, zero, 0 !1389
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9738: !1387
	li  	fa1, 100000000.000000 !1388
	flw  	fa0, 8(sp) !1388
	fle 	a0, fa0, fa1
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_each_element_fast.2698:
	sw  	ra, 0(sp)
	addi	t0, s7, 36 !522
	lw  	a3, 0(t0) !522
	addi	t0, s7, 32 !522
	lw  	a4, 0(t0) !522
	addi	t0, s7, 28 !522
	lw  	a5, 0(t0) !522
	addi	t0, s7, 24 !522
	lw  	a6, 0(t0) !522
	addi	t0, s7, 20 !522
	lw  	a7, 0(t0) !522
	addi	t0, s7, 16 !522
	lw  	s1, 0(t0) !522
	addi	t0, s7, 12 !522
	lw  	s2, 0(t0) !522
	addi	t0, s7, 8 !522
	lw  	s3, 0(t0) !522
	addi	t0, s7, 4 !522
	lw  	s4, 0(t0) !522
	addi	t0, a2, 0 !522
	lw  	s5, 0(t0) !522
	slli	t0, a0, 2 !1397
	add 	t0, t0, a1 !1397
	lw  	s6, 0(t0) !1397
	addi	t0, zero, -1 !1398
	bne 	s6, t0, beq_else.9739 !1398
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9739: !1398
	sw  	s1, 4(sp) !1400
	sw  	s3, 8(sp) !1400
	sw  	s2, 12(sp) !1400
	sw  	s4, 16(sp) !1400
	sw  	a4, 20(sp) !1400
	sw  	s5, 24(sp) !1400
	sw  	a3, 28(sp) !1400
	sw  	a6, 32(sp) !1400
	sw  	a2, 36(sp) !1400
	sw  	a1, 40(sp) !1400
	sw  	s7, 44(sp) !1400
	sw  	a0, 48(sp) !1400
	sw  	s6, 52(sp) !1400
	sw  	a7, 56(sp) !1400
	addi	a1, a2, 0 !1400
	addi	a0, s6, 0 !1400
	addi	s7, a5, 0 !1400
	addi	sp, sp, 64 !1400
	lw  	t1, 0(s7) !1400
	jalr	ra, t1, 0 !1400
	addi	sp, sp, -64 !1400
	addi	t0, zero, 0 !1401
	bne 	a0, t0, beq_else.9741 !1401
	lw  	a0, 52(sp) !1429
	lw  	a1, 56(sp) !1429
	slli	t0, a0, 2 !1429
	add 	t0, t0, a1 !1429
	lw  	a0, 0(t0) !1429
	addi	t0, a0, 24 !273
	lw  	a0, 0(t0) !273
	addi	t0, zero, 0 !1429
	bne 	a0, t0, beq_else.9742 !1429
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9742: !1429
	lw  	a0, 48(sp) !1430
	addi	a0, a0, 1 !1430
	lw  	a1, 40(sp) !1430
	lw  	a2, 36(sp) !1430
	lw  	s7, 44(sp) !1430
	lw  	t1, 0(s7) !1430
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1430
beq_else.9741: !1401
	lw  	a1, 32(sp) !1405
	addi	t0, a1, 0 !1405
	flw  	fa1, 0(t0) !1405
	li  	fa0, 0.000000 !1407
	sw  	a0, 60(sp) !1407
	fsw 	fa1, 64(sp) !1407
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1407
	bne 	a0, t0, beq_else.9744 !1407
	jal 	zero, beq_cont.9745 !1407
beq_else.9744: !1407
	lw  	a0, 28(sp) !1408
	addi	t0, a0, 0 !1408
	flw  	fa1, 0(t0) !1408
	flw  	fa0, 64(sp) !1408
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1408
	bne 	a0, t0, beq_else.9746 !1408
	jal 	zero, beq_cont.9747 !1408
beq_else.9746: !1408
	li  	fa0, 0.010000 !1410
	flw  	fa1, 64(sp) !1410
	fadd	fa1, fa1, fa0 !1410
	lw  	a0, 24(sp) !1411
	addi	t0, a0, 0 !1411
	flw  	fa0, 0(t0) !1411
	fmul	fa0, fa0, fa1 !1411
	lw  	a1, 20(sp) !1411
	addi	t0, a1, 0 !1411
	flw  	fa2, 0(t0) !1411
	fadd	fa0, fa0, fa2 !1411
	addi	t0, a0, 4 !1412
	flw  	fa2, 0(t0) !1412
	fmul	fa2, fa2, fa1 !1412
	addi	t0, a1, 4 !1412
	flw  	fa3, 0(t0) !1412
	fadd	fa2, fa2, fa3 !1412
	addi	t0, a0, 8 !1413
	flw  	fa3, 0(t0) !1413
	fmul	fa3, fa3, fa1 !1413
	addi	t0, a1, 8 !1413
	flw  	fa4, 0(t0) !1413
	fadd	fa3, fa3, fa4 !1413
	addi	a0, zero, 0 !1414
	lw  	a1, 40(sp) !1414
	lw  	s7, 16(sp) !1414
	fsw 	fa3, 72(sp) !1414
	fsw 	fa2, 80(sp) !1414
	fsw 	fa0, 88(sp) !1414
	fsw 	fa1, 96(sp) !1414
	fsgnj   fa1, fa2, fa2 !1414
	fsgnj   fa2, fa3, fa3 !1414
	addi	sp, sp, 104 !1414
	lw  	t1, 0(s7) !1414
	jalr	ra, t1, 0 !1414
	addi	sp, sp, -104 !1414
	addi	t0, zero, 0 !1414
	bne 	a0, t0, beq_else.9748 !1414
	jal 	zero, beq_cont.9749 !1414
beq_else.9748: !1414
	lw  	a0, 28(sp) !1416
	flw  	fa0, 96(sp) !1416
	addi	t0, a0, 0 !1416
	fsw  	fa0, 0(t0) !1416
	flw  	fa0, 88(sp) !1417
	flw  	fa1, 80(sp) !1417
	flw  	fa2, 72(sp) !1417
	lw  	a0, 12(sp) !1417
	addi	sp, sp, 104 !1417
	jal 	ra, vecset.2414 !1417
	addi	sp, sp, -104 !1417
	lw  	a0, 8(sp) !1418
	lw  	a1, 52(sp) !1418
	addi	t0, a0, 0 !1418
	sw  	a1, 0(t0) !1418
	lw  	a0, 4(sp) !1419
	lw  	a1, 60(sp) !1419
	addi	t0, a0, 0 !1419
	sw  	a1, 0(t0) !1419
beq_cont.9749: !1414
beq_cont.9747: !1408
beq_cont.9745: !1407
	lw  	a0, 48(sp) !1425
	addi	a0, a0, 1 !1425
	lw  	a1, 40(sp) !1425
	lw  	a2, 36(sp) !1425
	lw  	s7, 44(sp) !1425
	lw  	t1, 0(s7) !1425
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1425
solve_one_or_network_fast.2702:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1437
	lw  	a3, 0(t0) !1437
	addi	t0, s7, 4 !1437
	lw  	a4, 0(t0) !1437
	slli	t0, a0, 2 !1437
	add 	t0, t0, a1 !1437
	lw  	a5, 0(t0) !1437
	addi	t0, zero, -1 !1438
	bne 	a5, t0, beq_else.9750 !1438
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9750: !1438
	slli	t0, a5, 2 !1439
	add 	t0, t0, a4 !1439
	lw  	a4, 0(t0) !1439
	addi	a5, zero, 0 !1440
	sw  	a2, 4(sp) !1440
	sw  	a1, 8(sp) !1440
	sw  	s7, 12(sp) !1440
	sw  	a0, 16(sp) !1440
	addi	a1, a4, 0 !1440
	addi	a0, a5, 0 !1440
	addi	s7, a3, 0 !1440
	addi	sp, sp, 24 !1440
	lw  	t1, 0(s7) !1440
	jalr	ra, t1, 0 !1440
	addi	sp, sp, -24 !1440
	lw  	a0, 16(sp) !1441
	addi	a0, a0, 1 !1441
	lw  	a1, 8(sp) !1441
	lw  	a2, 4(sp) !1441
	lw  	s7, 12(sp) !1441
	lw  	t1, 0(s7) !1441
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1441
trace_or_matrix_fast.2706:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !1447
	lw  	a3, 0(t0) !1447
	addi	t0, s7, 12 !1447
	lw  	a4, 0(t0) !1447
	addi	t0, s7, 8 !1447
	lw  	a5, 0(t0) !1447
	addi	t0, s7, 4 !1447
	lw  	a6, 0(t0) !1447
	slli	t0, a0, 2 !1447
	add 	t0, t0, a1 !1447
	lw  	a7, 0(t0) !1447
	addi	t0, a7, 0 !1448
	lw  	s1, 0(t0) !1448
	addi	t0, zero, -1 !1449
	bne 	s1, t0, beq_else.9752 !1449
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9752: !1449
	sw  	a2, 4(sp) !1452
	sw  	a1, 8(sp) !1452
	sw  	s7, 12(sp) !1452
	sw  	a0, 16(sp) !1452
	addi	t0, zero, 99 !1452
	bne 	s1, t0, beq_else.9754 !1452
	addi	a3, zero, 1 !1453
	addi	a1, a7, 0 !1453
	addi	a0, a3, 0 !1453
	addi	s7, a6, 0 !1453
	addi	sp, sp, 24 !1453
	lw  	t1, 0(s7) !1453
	jalr	ra, t1, 0 !1453
	addi	sp, sp, -24 !1453
	jal 	zero, beq_cont.9755 !1452
beq_else.9754: !1452
	sw  	a7, 20(sp) !1457
	sw  	a6, 24(sp) !1457
	sw  	a3, 28(sp) !1457
	sw  	a5, 32(sp) !1457
	addi	a1, a2, 0 !1457
	addi	a0, s1, 0 !1457
	addi	s7, a4, 0 !1457
	addi	sp, sp, 40 !1457
	lw  	t1, 0(s7) !1457
	jalr	ra, t1, 0 !1457
	addi	sp, sp, -40 !1457
	addi	t0, zero, 0 !1458
	bne 	a0, t0, beq_else.9756 !1458
	jal 	zero, beq_cont.9757 !1458
beq_else.9756: !1458
	lw  	a0, 32(sp) !1459
	addi	t0, a0, 0 !1459
	flw  	fa0, 0(t0) !1459
	lw  	a0, 28(sp) !1460
	addi	t0, a0, 0 !1460
	flw  	fa1, 0(t0) !1460
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1460
	bne 	a0, t0, beq_else.9758 !1460
	jal 	zero, beq_cont.9759 !1460
beq_else.9758: !1460
	addi	a0, zero, 1 !1461
	lw  	a1, 20(sp) !1461
	lw  	a2, 4(sp) !1461
	lw  	s7, 24(sp) !1461
	addi	sp, sp, 40 !1461
	lw  	t1, 0(s7) !1461
	jalr	ra, t1, 0 !1461
	addi	sp, sp, -40 !1461
beq_cont.9759: !1460
beq_cont.9757: !1458
beq_cont.9755: !1452
	lw  	a0, 16(sp) !1465
	addi	a0, a0, 1 !1465
	lw  	a1, 8(sp) !1465
	lw  	a2, 4(sp) !1465
	lw  	s7, 12(sp) !1465
	lw  	t1, 0(s7) !1465
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1465
judge_intersection_fast.2710:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !1472
	lw  	a1, 0(t0) !1472
	addi	t0, s7, 8 !1472
	lw  	a2, 0(t0) !1472
	addi	t0, s7, 4 !1472
	lw  	a3, 0(t0) !1472
	li  	fa0, 1000000000.000000 !1472
	addi	t0, a2, 0 !1472
	fsw  	fa0, 0(t0) !1472
	addi	a4, zero, 0 !1473
	addi	t0, a3, 0 !1473
	lw  	a3, 0(t0) !1473
	sw  	a2, 4(sp) !1473
	addi	a2, a0, 0 !1473
	addi	s7, a1, 0 !1473
	addi	a1, a3, 0 !1473
	addi	a0, a4, 0 !1473
	addi	sp, sp, 8 !1473
	lw  	t1, 0(s7) !1473
	jalr	ra, t1, 0 !1473
	addi	sp, sp, -8 !1473
	lw  	a0, 4(sp) !1474
	addi	t0, a0, 0 !1474
	flw  	fa1, 0(t0) !1474
	li  	fa0, -0.100000 !1476
	fsw 	fa1, 8(sp) !1476
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1476
	bne 	a0, t0, beq_else.9760 !1476
	addi	a0, zero, 0 !1478
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9760: !1476
	li  	fa1, 100000000.000000 !1477
	flw  	fa0, 8(sp) !1477
	fle 	a0, fa0, fa1
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
get_nvector_rect.2712:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1490
	lw  	a1, 0(t0) !1490
	addi	t0, s7, 4 !1490
	lw  	a2, 0(t0) !1490
	addi	t0, a2, 0 !1490
	lw  	a2, 0(t0) !1490
	li  	fa0, 0.000000 !176
	sw  	a1, 4(sp) !176
	sw  	a0, 8(sp) !176
	sw  	a2, 12(sp) !176
	addi	a0, a1, 0 !176
	addi	sp, sp, 16 !176
	jal 	ra, vecfill.2419 !176
	addi	sp, sp, -16 !176
	lw  	a0, 12(sp) !1493
	addi	a1, a0, -1 !1493
	addi	a0, a0, -1 !1493
	lw  	a2, 8(sp) !1493
	slli	t0, a0, 2 !1493
	add 	t0, t0, a2 !1493
	flw  	fa0, 0(t0) !1493
	sw  	a1, 16(sp) !1493
	addi	sp, sp, 24 !1493
	jal 	ra, sgn.2406 !1493
	addi	sp, sp, -24 !1493
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 16(sp) !1493
	lw  	a1, 4(sp) !1493
	slli	t0, a0, 2 !1493
	add 	t0, t0, a1 !1493
	fsw  	fa0, 0(t0) !1493
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
get_nvector_plane.2714:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1499
	lw  	a1, 0(t0) !1499
	addi	t0, a0, 16 !291
	lw  	a2, 0(t0) !291
	addi	t0, a2, 0 !296
	flw  	fa0, 0(t0) !296
	sw  	a0, 4(sp) !1499
	sw  	a1, 8(sp) !1499
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !1499
	addi	t0, a0, 0 !1499
	fsw  	fa0, 0(t0) !1499
	lw  	a1, 4(sp) !301
	addi	t0, a1, 16 !301
	lw  	a2, 0(t0) !301
	addi	t0, a2, 4 !306
	flw  	fa0, 0(t0) !306
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !1500
	addi	t0, a0, 4 !1500
	fsw  	fa0, 0(t0) !1500
	lw  	a1, 4(sp) !311
	addi	t0, a1, 16 !311
	lw  	a1, 0(t0) !311
	addi	t0, a1, 8 !316
	flw  	fa0, 0(t0) !316
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 8(sp) !1501
	addi	t0, a0, 8 !1501
	fsw  	fa0, 0(t0) !1501
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
get_nvector_second.2716:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1506
	lw  	a1, 0(t0) !1506
	addi	t0, s7, 4 !1506
	lw  	a2, 0(t0) !1506
	addi	t0, a2, 0 !1506
	flw  	fa0, 0(t0) !1506
	addi	t0, a0, 20 !331
	lw  	a3, 0(t0) !331
	addi	t0, a3, 0 !336
	flw  	fa1, 0(t0) !336
	fsub	fa0, fa0, fa1 !1506
	addi	t0, a2, 4 !1507
	flw  	fa1, 0(t0) !1507
	addi	t0, a0, 20 !341
	lw  	a3, 0(t0) !341
	addi	t0, a3, 4 !346
	flw  	fa2, 0(t0) !346
	fsub	fa1, fa1, fa2 !1507
	addi	t0, a2, 8 !1508
	flw  	fa2, 0(t0) !1508
	addi	t0, a0, 20 !351
	lw  	a2, 0(t0) !351
	addi	t0, a2, 8 !356
	flw  	fa3, 0(t0) !356
	fsub	fa2, fa2, fa3 !1508
	addi	t0, a0, 16 !291
	lw  	a2, 0(t0) !291
	addi	t0, a2, 0 !296
	flw  	fa3, 0(t0) !296
	fmul	fa3, fa0, fa3 !1510
	addi	t0, a0, 16 !301
	lw  	a2, 0(t0) !301
	addi	t0, a2, 4 !306
	flw  	fa4, 0(t0) !306
	fmul	fa4, fa1, fa4 !1511
	addi	t0, a0, 16 !311
	lw  	a2, 0(t0) !311
	addi	t0, a2, 8 !316
	flw  	fa5, 0(t0) !316
	fmul	fa5, fa2, fa5 !1512
	addi	t0, a0, 12 !282
	lw  	a2, 0(t0) !282
	sw  	a1, 4(sp) !1514
	sw  	a0, 8(sp) !1514
	addi	t0, zero, 0 !1514
	bne 	a2, t0, beq_else.9763 !1514
	addi	t0, a1, 0 !1515
	fsw  	fa3, 0(t0) !1515
	addi	t0, a1, 4 !1516
	fsw  	fa4, 0(t0) !1516
	addi	t0, a1, 8 !1517
	fsw  	fa5, 0(t0) !1517
	jal 	zero, beq_cont.9764 !1514
beq_else.9763: !1514
	addi	t0, a0, 36 !431
	lw  	a2, 0(t0) !431
	addi	t0, a2, 8 !436
	flw  	fa6, 0(t0) !436
	fmul	fa6, fa1, fa6 !1519
	addi	t0, a0, 36 !421
	lw  	a2, 0(t0) !421
	addi	t0, a2, 4 !426
	flw  	fa7, 0(t0) !426
	fmul	fa7, fa2, fa7 !1519
	fadd	fa6, fa6, fa7 !1519
	fsw 	fa5, 16(sp) !1519
	fsw 	fa1, 24(sp) !1519
	fsw 	fa4, 32(sp) !1519
	fsw 	fa2, 40(sp) !1519
	fsw 	fa0, 48(sp) !1519
	fsw 	fa3, 56(sp) !1519
	fsgnj   fa0, fa6, fa6 !1519
	li  	ft0, 2.0
	fdiv	fa0, fa0, ft0
	flw  	fa1, 56(sp) !1519
	fadd	fa1, fa1, fa0 !1519
	lw  	a0, 4(sp) !1519
	addi	t0, a0, 0 !1519
	fsw  	fa1, 0(t0) !1519
	lw  	a1, 8(sp) !431
	addi	t0, a1, 36 !431
	lw  	a2, 0(t0) !431
	addi	t0, a2, 8 !436
	flw  	fa0, 0(t0) !436
	flw  	fa1, 48(sp) !1520
	fmul	fa0, fa1, fa0 !1520
	addi	t0, a1, 36 !411
	lw  	a2, 0(t0) !411
	addi	t0, a2, 0 !416
	flw  	fa2, 0(t0) !416
	flw  	fa3, 40(sp) !1520
	fmul	fa3, fa3, fa2 !1520
	fadd	fa0, fa0, fa3 !1520
	li  	ft0, 2.0
	fdiv	fa0, fa0, ft0
	flw  	fa1, 32(sp) !1520
	fadd	fa1, fa1, fa0 !1520
	lw  	a0, 4(sp) !1520
	addi	t0, a0, 4 !1520
	fsw  	fa1, 0(t0) !1520
	lw  	a1, 8(sp) !421
	addi	t0, a1, 36 !421
	lw  	a2, 0(t0) !421
	addi	t0, a2, 4 !426
	flw  	fa0, 0(t0) !426
	flw  	fa1, 48(sp) !1521
	fmul	fa1, fa1, fa0 !1521
	addi	t0, a1, 36 !411
	lw  	a2, 0(t0) !411
	addi	t0, a2, 0 !416
	flw  	fa0, 0(t0) !416
	flw  	fa2, 24(sp) !1521
	fmul	fa2, fa2, fa0 !1521
	fadd	fa0, fa1, fa2 !1521
	li  	ft0, 2.0
	fdiv	fa0, fa0, ft0
	flw  	fa1, 16(sp) !1521
	fadd	fa1, fa1, fa0 !1521
	lw  	a0, 4(sp) !1521
	addi	t0, a0, 8 !1521
	fsw  	fa1, 0(t0) !1521
beq_cont.9764: !1514
	lw  	a0, 8(sp) !273
	addi	t0, a0, 24 !273
	lw  	a1, 0(t0) !273
	lw  	a0, 4(sp) !1523
	lw  	ra, 0(sp)
	jal 	zero, vecunit_sgn.2427 !1523
utexture.2721:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !243
	lw  	a2, 0(t0) !243
	addi	t0, a0, 0 !243
	lw  	a3, 0(t0) !243
	addi	t0, a0, 32 !381
	lw  	a4, 0(t0) !381
	addi	t0, a4, 0 !386
	flw  	fa0, 0(t0) !386
	addi	t0, a2, 0 !1544
	fsw  	fa0, 0(t0) !1544
	addi	t0, a0, 32 !391
	lw  	a4, 0(t0) !391
	addi	t0, a4, 4 !396
	flw  	fa0, 0(t0) !396
	addi	t0, a2, 4 !1545
	fsw  	fa0, 0(t0) !1545
	addi	t0, a0, 32 !401
	lw  	a4, 0(t0) !401
	addi	t0, a4, 8 !406
	flw  	fa0, 0(t0) !406
	addi	t0, a2, 8 !1546
	fsw  	fa0, 0(t0) !1546
	addi	t0, zero, 1 !1547
	bne 	a3, t0, beq_else.9766 !1547
	addi	t0, a1, 0 !1550
	flw  	fa0, 0(t0) !1550
	addi	t0, a0, 20 !331
	lw  	a3, 0(t0) !331
	addi	t0, a3, 0 !336
	flw  	fa1, 0(t0) !336
	fsub	fa0, fa0, fa1 !1550
	li  	fa1, 0.050000 !1552
	fmul	fa1, fa0, fa1 !1552
	sw  	a2, 4(sp) !1552
	sw  	a0, 8(sp) !1552
	sw  	a1, 12(sp) !1552
	fsw 	fa0, 16(sp) !1552
	fsgnj   fa0, fa1, fa1 !1552
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.9767
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.9767:
	fsgnj   fa0, ft0, ft0
	li  	fa1, 20.000000 !1552
	fmul	fa0, fa0, fa1 !1552
	flw  	fa1, 16(sp) !1553
	fsub	fa0, fa1, fa0 !1553
	li  	fa1, 10.000000 !1553
	fle 	a0, fa0, fa1
	lw  	a1, 12(sp) !1555
	addi	t0, a1, 8 !1555
	flw  	fa0, 0(t0) !1555
	lw  	a1, 8(sp) !351
	addi	t0, a1, 20 !351
	lw  	a1, 0(t0) !351
	addi	t0, a1, 8 !356
	flw  	fa1, 0(t0) !356
	fsub	fa0, fa0, fa1 !1555
	li  	fa1, 0.050000 !1557
	fmul	fa1, fa0, fa1 !1557
	sw  	a0, 24(sp) !1557
	fsw 	fa0, 32(sp) !1557
	fsgnj   fa0, fa1, fa1 !1557
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.9769
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.9769:
	fsgnj   fa0, ft0, ft0
	li  	fa1, 20.000000 !1557
	fmul	fa0, fa0, fa1 !1557
	flw  	fa1, 32(sp) !1558
	fsub	fa0, fa1, fa0 !1558
	li  	fa1, 10.000000 !1558
	fle 	a0, fa0, fa1
	lw  	a1, 24(sp) !1561
	addi	t0, zero, 0 !1561
	bne 	a1, t0, beq_else.9770 !1561
	addi	t0, zero, 0 !1563
	bne 	a0, t0, beq_else.9772 !1563
	li  	fa0, 255.000000 !1563
	jal 	zero, beq_cont.9773 !1563
beq_else.9772: !1563
	li  	fa0, 0.000000 !1563
beq_cont.9773: !1563
	jal 	zero, beq_cont.9771 !1561
beq_else.9770: !1561
	addi	t0, zero, 0 !1562
	bne 	a0, t0, beq_else.9774 !1562
	li  	fa0, 0.000000 !1562
	jal 	zero, beq_cont.9775 !1562
beq_else.9774: !1562
	li  	fa0, 255.000000 !1562
beq_cont.9775: !1562
beq_cont.9771: !1561
	lw  	a0, 4(sp) !1560
	addi	t0, a0, 4 !1560
	fsw  	fa0, 0(t0) !1560
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9766: !1547
	addi	t0, zero, 2 !1565
	bne 	a3, t0, beq_else.9777 !1565
	addi	t0, a1, 4 !1568
	flw  	fa0, 0(t0) !1568
	li  	fa1, 0.250000 !1568
	fmul	fa0, fa0, fa1 !1568
	sw  	a2, 4(sp) !1568
	addi	sp, sp, 40 !1568
	jal 	ra, sin !1568
	addi	sp, sp, -40 !1568
	fmul	fa0, fa0, fa0
	li  	fa1, 255.000000 !1569
	fmul	fa1, fa1, fa0 !1569
	lw  	a0, 4(sp) !1569
	addi	t0, a0, 0 !1569
	fsw  	fa1, 0(t0) !1569
	li  	fa1, 255.000000 !1570
	li  	fa2, 1.000000 !1570
	fsub	fa2, fa2, fa0 !1570
	fmul	fa1, fa1, fa2 !1570
	addi	t0, a0, 4 !1570
	fsw  	fa1, 0(t0) !1570
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9777: !1565
	addi	t0, zero, 3 !1572
	bne 	a3, t0, beq_else.9779 !1572
	addi	t0, a1, 0 !1575
	flw  	fa0, 0(t0) !1575
	addi	t0, a0, 20 !331
	lw  	a3, 0(t0) !331
	addi	t0, a3, 0 !336
	flw  	fa1, 0(t0) !336
	fsub	fa0, fa0, fa1 !1575
	addi	t0, a1, 8 !1576
	flw  	fa1, 0(t0) !1576
	addi	t0, a0, 20 !351
	lw  	a0, 0(t0) !351
	addi	t0, a0, 8 !356
	flw  	fa2, 0(t0) !356
	fsub	fa1, fa1, fa2 !1576
	sw  	a2, 4(sp) !1577
	fsw 	fa1, 40(sp) !1577
	fmul	fa0, fa0, fa0
	flw  	fa1, 40(sp) !1577
	fsw 	fa0, 48(sp) !1577
	fsgnj   fa0, fa1, fa1 !1577
	fmul	fa0, fa0, fa0
	flw  	fa1, 48(sp) !1577
	fadd	fa0, fa1, fa0 !1577
	fsqrt   fa0, fa0
	li  	fa1, 10.000000 !1577
	fdiv	fa0, fa0, fa1 !1577
	fsw 	fa0, 56(sp) !1578
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.9780
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.9780:
	fsgnj   fa0, ft0, ft0
	flw  	fa1, 56(sp) !1578
	fsub	fa1, fa1, fa0 !1578
	li  	fa0, 3.141593 !1578
	fmul	fa0, fa1, fa0 !1578
	addi	sp, sp, 64 !1579
	jal 	ra, cos !1579
	addi	sp, sp, -64 !1579
	fmul	fa0, fa0, fa0
	li  	fa1, 255.000000 !1580
	fmul	fa1, fa0, fa1 !1580
	lw  	a0, 4(sp) !1580
	addi	t0, a0, 4 !1580
	fsw  	fa1, 0(t0) !1580
	li  	fa1, 1.000000 !1581
	fsub	fa1, fa1, fa0 !1581
	li  	fa0, 255.000000 !1581
	fmul	fa1, fa1, fa0 !1581
	addi	t0, a0, 8 !1581
	fsw  	fa1, 0(t0) !1581
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9779: !1572
	addi	t0, zero, 4 !1583
	bne 	a3, t0, beq_else.9782 !1583
	addi	t0, a1, 0 !1585
	flw  	fa0, 0(t0) !1585
	addi	t0, a0, 20 !331
	lw  	a3, 0(t0) !331
	addi	t0, a3, 0 !336
	flw  	fa1, 0(t0) !336
	fsub	fa0, fa0, fa1 !1585
	addi	t0, a0, 16 !291
	lw  	a3, 0(t0) !291
	addi	t0, a3, 0 !296
	flw  	fa1, 0(t0) !296
	sw  	a2, 4(sp) !1585
	sw  	a0, 8(sp) !1585
	sw  	a1, 12(sp) !1585
	fsw 	fa0, 64(sp) !1585
	fsgnj   fa0, fa1, fa1 !1585
	fsqrt   fa0, fa0
	flw  	fa1, 64(sp) !1585
	fmul	fa0, fa1, fa0 !1585
	lw  	a0, 12(sp) !1586
	addi	t0, a0, 8 !1586
	flw  	fa1, 0(t0) !1586
	lw  	a1, 8(sp) !351
	addi	t0, a1, 20 !351
	lw  	a2, 0(t0) !351
	addi	t0, a2, 8 !356
	flw  	fa2, 0(t0) !356
	fsub	fa1, fa1, fa2 !1586
	addi	t0, a1, 16 !311
	lw  	a2, 0(t0) !311
	addi	t0, a2, 8 !316
	flw  	fa2, 0(t0) !316
	fsw 	fa0, 72(sp) !1586
	fsw 	fa1, 80(sp) !1586
	fsgnj   fa0, fa2, fa2 !1586
	fsqrt   fa0, fa0
	flw  	fa1, 80(sp) !1586
	fmul	fa0, fa1, fa0 !1586
	flw  	fa1, 72(sp) !1587
	fsw 	fa0, 88(sp) !1587
	fsgnj   fa0, fa1, fa1 !1587
	fmul	fa0, fa0, fa0
	flw  	fa1, 88(sp) !1587
	fsw 	fa0, 96(sp) !1587
	fsgnj   fa0, fa1, fa1 !1587
	fmul	fa0, fa0, fa0
	flw  	fa1, 96(sp) !1587
	fadd	fa0, fa1, fa0 !1587
	flw  	fa1, 72(sp) !1589
	fsw 	fa0, 104(sp) !1589
	fsgnj   fa0, fa1, fa1 !1589
	fsgnjx  fa0, fa0, fa0
	li  	fa1, 0.000100 !1589
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1589
	bne 	a0, t0, beq_else.9783 !1589
	flw  	fa0, 72(sp) !1592
	flw  	fa1, 88(sp) !1592
	fdiv	fa0, fa1, fa0 !1592
	fsgnjx  fa0, fa0, fa0
	addi	sp, sp, 112 !1594
	jal 	ra, atan !1594
	addi	sp, sp, -112 !1594
	li  	fa1, 30.000000 !1594
	fmul	fa0, fa0, fa1 !1594
	li  	fa1, 3.141593 !1594
	fdiv	fa0, fa0, fa1 !1594
	jal 	zero, beq_cont.9784 !1589
beq_else.9783: !1589
	li  	fa0, 15.000000 !1590
beq_cont.9784: !1589
	fsw 	fa0, 112(sp) !1596
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.9785
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.9785:
	fsgnj   fa0, ft0, ft0
	flw  	fa1, 112(sp) !1596
	fsub	fa1, fa1, fa0 !1596
	lw  	a0, 12(sp) !1598
	addi	t0, a0, 4 !1598
	flw  	fa0, 0(t0) !1598
	lw  	a0, 8(sp) !341
	addi	t0, a0, 20 !341
	lw  	a1, 0(t0) !341
	addi	t0, a1, 4 !346
	flw  	fa2, 0(t0) !346
	fsub	fa0, fa0, fa2 !1598
	addi	t0, a0, 16 !301
	lw  	a0, 0(t0) !301
	addi	t0, a0, 4 !306
	flw  	fa2, 0(t0) !306
	fsw 	fa1, 120(sp) !1598
	fsw 	fa0, 128(sp) !1598
	fsgnj   fa0, fa2, fa2 !1598
	fsqrt   fa0, fa0
	flw  	fa1, 128(sp) !1598
	fmul	fa1, fa1, fa0 !1598
	flw  	fa0, 104(sp) !1600
	fsw 	fa1, 136(sp) !1600
	fsgnjx  fa0, fa0, fa0
	li  	fa1, 0.000100 !1600
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1600
	bne 	a0, t0, beq_else.9786 !1600
	flw  	fa0, 104(sp) !1603
	flw  	fa1, 136(sp) !1603
	fdiv	fa0, fa1, fa0 !1603
	fsgnjx  fa0, fa0, fa0
	addi	sp, sp, 144 !1604
	jal 	ra, atan !1604
	addi	sp, sp, -144 !1604
	li  	fa1, 30.000000 !1604
	fmul	fa0, fa0, fa1 !1604
	li  	fa1, 3.141593 !1604
	fdiv	fa0, fa0, fa1 !1604
	jal 	zero, beq_cont.9787 !1600
beq_else.9786: !1600
	li  	fa0, 15.000000 !1601
beq_cont.9787: !1600
	fsw 	fa0, 144(sp) !1606
	fcvt.w.s a0, fa0
	fcvt.s.w ft0, a0
	fle 	a1, ft0, fa0
	bne 	a1, zero, bne_else.9788
	li  	ft1, 1.0
	fsub	ft0, ft0, ft1
bne_else.9788:
	fsgnj   fa0, ft0, ft0
	flw  	fa1, 144(sp) !1606
	fsub	fa1, fa1, fa0 !1606
	li  	fa0, 0.150000 !1607
	li  	fa2, 0.500000 !1607
	flw  	fa3, 120(sp) !1607
	fsub	fa2, fa2, fa3 !1607
	fsw 	fa1, 152(sp) !1607
	fsw 	fa0, 160(sp) !1607
	fsgnj   fa0, fa2, fa2 !1607
	fmul	fa0, fa0, fa0
	flw  	fa1, 160(sp) !1607
	fsub	fa1, fa1, fa0 !1607
	li  	fa0, 0.500000 !1607
	flw  	fa2, 152(sp) !1607
	fsub	fa0, fa0, fa2 !1607
	fsw 	fa1, 168(sp) !1607
	fmul	fa0, fa0, fa0
	flw  	fa1, 168(sp) !1607
	fsub	fa0, fa1, fa0 !1607
	fsw 	fa0, 176(sp) !1608
	flt 	a0, fa0, zero
	addi	t0, zero, 0 !1608
	bne 	a0, t0, beq_else.9789 !1608
	flw  	fa0, 176(sp) !1608
	jal 	zero, beq_cont.9790 !1608
beq_else.9789: !1608
	li  	fa0, 0.000000 !1608
beq_cont.9790: !1608
	li  	fa1, 255.000000 !1609
	fmul	fa1, fa1, fa0 !1609
	li  	fa0, 0.300000 !1609
	fdiv	fa1, fa1, fa0 !1609
	lw  	a0, 4(sp) !1609
	addi	t0, a0, 8 !1609
	fsw  	fa1, 0(t0) !1609
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9782: !1583
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
add_light.2724:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1620
	lw  	a1, 0(t0) !1620
	addi	t0, s7, 4 !1620
	lw  	a0, 0(t0) !1620
	fsw 	fa2, 8(sp) !1620
	fsw 	fa1, 16(sp) !1620
	fsw 	fa0, 24(sp) !1620
	sw  	a1, 32(sp) !1620
	sw  	a0, 36(sp) !1620
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !1620
	bne 	a0, t0, beq_else.9794 !1620
	jal 	zero, beq_cont.9795 !1620
beq_else.9794: !1620
	flw  	fa0, 24(sp) !1621
	lw  	a0, 36(sp) !1621
	lw  	a1, 32(sp) !1621
	addi	sp, sp, 40 !1621
	jal 	ra, vecaccum.2438 !1621
	addi	sp, sp, -40 !1621
beq_cont.9795: !1620
	flw  	fa0, 16(sp) !1625
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !1625
	bne 	a0, t0, beq_else.9796 !1625
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9796: !1625
	flw  	fa0, 16(sp) !1626
	fmul	fa0, fa0, fa0
	fmul	fa0, fa0, fa0
	flw  	fa1, 8(sp) !1626
	fmul	fa0, fa0, fa1 !1626
	lw  	a0, 36(sp) !1627
	addi	t0, a0, 0 !1627
	flw  	fa1, 0(t0) !1627
	fadd	fa1, fa1, fa0 !1627
	addi	t0, a0, 0 !1627
	fsw  	fa1, 0(t0) !1627
	addi	t0, a0, 4 !1628
	flw  	fa1, 0(t0) !1628
	fadd	fa1, fa1, fa0 !1628
	addi	t0, a0, 4 !1628
	fsw  	fa1, 0(t0) !1628
	addi	t0, a0, 8 !1629
	flw  	fa1, 0(t0) !1629
	fadd	fa1, fa1, fa0 !1629
	addi	t0, a0, 8 !1629
	fsw  	fa1, 0(t0) !1629
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_reflections.2728:
	sw  	ra, 0(sp)
	addi	t0, s7, 32 !1636
	lw  	a2, 0(t0) !1636
	addi	t0, s7, 28 !1636
	lw  	a3, 0(t0) !1636
	addi	t0, s7, 24 !1636
	lw  	a4, 0(t0) !1636
	addi	t0, s7, 20 !1636
	lw  	a5, 0(t0) !1636
	addi	t0, s7, 16 !1636
	lw  	a6, 0(t0) !1636
	addi	t0, s7, 12 !1636
	lw  	a7, 0(t0) !1636
	addi	t0, s7, 8 !1636
	lw  	s1, 0(t0) !1636
	addi	t0, s7, 4 !1636
	lw  	s2, 0(t0) !1636
	addi	t0, zero, 0 !1636
	blt 	a0, t0, bge_else.9799 !1636
	slli	t0, a0, 2 !1637
	add 	t0, t0, a3 !1637
	lw  	a3, 0(t0) !1637
	addi	t0, a3, 4 !542
	lw  	s3, 0(t0) !542
	sw  	s7, 4(sp) !1641
	sw  	a0, 8(sp) !1641
	fsw 	fa1, 16(sp) !1641
	sw  	s2, 24(sp) !1641
	sw  	a1, 28(sp) !1641
	fsw 	fa0, 32(sp) !1641
	sw  	a5, 40(sp) !1641
	sw  	s3, 44(sp) !1641
	sw  	a2, 48(sp) !1641
	sw  	a4, 52(sp) !1641
	sw  	a3, 56(sp) !1641
	sw  	a7, 60(sp) !1641
	sw  	s1, 64(sp) !1641
	addi	a0, s3, 0 !1641
	addi	s7, a6, 0 !1641
	addi	sp, sp, 72 !1641
	lw  	t1, 0(s7) !1641
	jalr	ra, t1, 0 !1641
	addi	sp, sp, -72 !1641
	addi	t0, zero, 0 !1641
	bne 	a0, t0, beq_else.9801 !1641
	jal 	zero, beq_cont.9802 !1641
beq_else.9801: !1641
	lw  	a0, 64(sp) !1642
	addi	t0, a0, 0 !1642
	lw  	a0, 0(t0) !1642
	slli	a0, a0, 2 !1642
	lw  	a1, 60(sp) !1642
	addi	t0, a1, 0 !1642
	lw  	a1, 0(t0) !1642
	add 	a0, a0, a1 !1642
	lw  	a1, 56(sp) !536
	addi	t0, a1, 0 !536
	lw  	a2, 0(t0) !536
	bne 	a0, a2, beq_else.9803 !1643
	addi	a0, zero, 0 !1645
	lw  	a2, 52(sp) !1645
	addi	t0, a2, 0 !1645
	lw  	a2, 0(t0) !1645
	lw  	s7, 48(sp) !1645
	addi	a1, a2, 0 !1645
	addi	sp, sp, 72 !1645
	lw  	t1, 0(s7) !1645
	jalr	ra, t1, 0 !1645
	addi	sp, sp, -72 !1645
	addi	t0, zero, 0 !1645
	bne 	a0, t0, beq_else.9805 !1645
	lw  	a0, 44(sp) !522
	addi	t0, a0, 0 !522
	lw  	a1, 0(t0) !522
	lw  	a2, 40(sp) !1647
	addi	a0, a2, 0 !1647
	addi	sp, sp, 72 !1647
	jal 	ra, veciprod.2430 !1647
	addi	sp, sp, -72 !1647
	lw  	a0, 56(sp) !548
	addi	t0, a0, 8 !548
	flw  	fa1, 0(t0) !548
	flw  	fa2, 32(sp) !1649
	fmul	fa3, fa1, fa2 !1649
	fmul	fa3, fa3, fa0 !1649
	lw  	a0, 44(sp) !522
	addi	t0, a0, 0 !522
	lw  	a1, 0(t0) !522
	lw  	a0, 28(sp) !1650
	fsw 	fa3, 72(sp) !1650
	fsw 	fa1, 80(sp) !1650
	addi	sp, sp, 88 !1650
	jal 	ra, veciprod.2430 !1650
	addi	sp, sp, -88 !1650
	flw  	fa1, 80(sp) !1650
	fmul	fa1, fa1, fa0 !1650
	flw  	fa0, 72(sp) !1651
	flw  	fa2, 16(sp) !1651
	lw  	s7, 24(sp) !1651
	addi	sp, sp, 88 !1651
	lw  	t1, 0(s7) !1651
	jalr	ra, t1, 0 !1651
	addi	sp, sp, -88 !1651
	jal 	zero, beq_cont.9806 !1645
beq_else.9805: !1645
beq_cont.9806: !1645
	jal 	zero, beq_cont.9804 !1643
beq_else.9803: !1643
beq_cont.9804: !1643
beq_cont.9802: !1641
	lw  	a0, 8(sp) !1655
	addi	a0, a0, -1 !1655
	flw  	fa0, 32(sp) !1655
	flw  	fa1, 16(sp) !1655
	lw  	a1, 28(sp) !1655
	lw  	s7, 4(sp) !1655
	lw  	t1, 0(s7) !1655
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1655
bge_else.9799: !1636
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_ray.2733:
	sw  	ra, 0(sp)
	addi	t0, s7, 88 !1662
	lw  	a3, 0(t0) !1662
	addi	t0, s7, 84 !1662
	lw  	a4, 0(t0) !1662
	addi	t0, s7, 80 !1662
	lw  	a5, 0(t0) !1662
	addi	t0, s7, 76 !1662
	lw  	a6, 0(t0) !1662
	addi	t0, s7, 72 !1662
	lw  	a7, 0(t0) !1662
	addi	t0, s7, 68 !1662
	lw  	s1, 0(t0) !1662
	addi	t0, s7, 64 !1662
	lw  	s2, 0(t0) !1662
	addi	t0, s7, 60 !1662
	lw  	s3, 0(t0) !1662
	addi	t0, s7, 56 !1662
	lw  	s4, 0(t0) !1662
	addi	t0, s7, 52 !1662
	lw  	s5, 0(t0) !1662
	addi	t0, s7, 48 !1662
	lw  	s6, 0(t0) !1662
	sw  	a5, 4(sp) !1662
	addi	t0, s7, 44 !1662
	lw  	a5, 0(t0) !1662
	sw  	a4, 8(sp) !1662
	addi	t0, s7, 40 !1662
	lw  	a4, 0(t0) !1662
	sw  	a5, 12(sp) !1662
	addi	t0, s7, 36 !1662
	lw  	a5, 0(t0) !1662
	sw  	s2, 16(sp) !1662
	addi	t0, s7, 32 !1662
	lw  	s2, 0(t0) !1662
	sw  	s1, 20(sp) !1662
	addi	t0, s7, 28 !1662
	lw  	s1, 0(t0) !1662
	sw  	s4, 24(sp) !1662
	addi	t0, s7, 24 !1662
	lw  	s4, 0(t0) !1662
	sw  	s6, 28(sp) !1662
	addi	t0, s7, 20 !1662
	lw  	s6, 0(t0) !1662
	sw  	a6, 32(sp) !1662
	addi	t0, s7, 16 !1662
	lw  	a6, 0(t0) !1662
	sw  	s2, 36(sp) !1662
	addi	t0, s7, 12 !1662
	lw  	s2, 0(t0) !1662
	sw  	a3, 40(sp) !1662
	addi	t0, s7, 8 !1662
	lw  	a3, 0(t0) !1662
	sw  	s7, 44(sp) !1662
	addi	t0, s7, 4 !1662
	lw  	s7, 0(t0) !1662
	addi	t0, zero, 4 !1662
	blt 	t0, a0, bge_else.9809 !1662
	sw  	s7, 48(sp) !469
	addi	t0, a2, 8 !469
	lw  	s7, 0(t0) !469
	fsw 	fa1, 56(sp) !1664
	sw  	a2, 64(sp) !1664
	sw  	s1, 68(sp) !1664
	sw  	a7, 72(sp) !1664
	sw  	s6, 76(sp) !1664
	sw  	s2, 80(sp) !1664
	sw  	a6, 84(sp) !1664
	sw  	s5, 88(sp) !1664
	sw  	s4, 92(sp) !1664
	sw  	s3, 96(sp) !1664
	sw  	a3, 100(sp) !1664
	fsw 	fa0, 104(sp) !1664
	sw  	a4, 112(sp) !1664
	sw  	a1, 116(sp) !1664
	sw  	a0, 120(sp) !1664
	sw  	s7, 124(sp) !1664
	addi	a0, a1, 0 !1664
	addi	s7, a5, 0 !1664
	addi	sp, sp, 128 !1664
	lw  	t1, 0(s7) !1664
	jalr	ra, t1, 0 !1664
	addi	sp, sp, -128 !1664
	addi	t0, zero, 0 !1664
	bne 	a0, t0, beq_else.9811 !1664
	addi	a0, zero, -1 !1727
	lw  	a1, 120(sp) !1727
	lw  	a2, 124(sp) !1727
	slli	t0, a1, 2 !1727
	add 	t0, t0, a2 !1727
	sw  	a0, 0(t0) !1727
	addi	t0, zero, 0 !1729
	bne 	a1, t0, beq_else.9812 !1729
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9812: !1729
	lw  	a0, 116(sp) !1730
	lw  	a1, 112(sp) !1730
	addi	sp, sp, 128 !1730
	jal 	ra, veciprod.2430 !1730
	addi	sp, sp, -128 !1730
	fsgnjn  fa0, fa0, fa0
	fsw 	fa0, 128(sp) !1732
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !1732
	bne 	a0, t0, beq_else.9814 !1732
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9814: !1732
	flw  	fa0, 128(sp) !1735
	fmul	fa0, fa0, fa0
	flw  	fa1, 128(sp) !1735
	fmul	fa0, fa0, fa1 !1735
	flw  	fa1, 104(sp) !1735
	fmul	fa0, fa0, fa1 !1735
	lw  	a0, 100(sp) !1735
	addi	t0, a0, 0 !1735
	flw  	fa1, 0(t0) !1735
	fmul	fa0, fa0, fa1 !1735
	lw  	a0, 96(sp) !1736
	addi	t0, a0, 0 !1736
	flw  	fa1, 0(t0) !1736
	fadd	fa1, fa1, fa0 !1736
	addi	t0, a0, 0 !1736
	fsw  	fa1, 0(t0) !1736
	addi	t0, a0, 4 !1737
	flw  	fa1, 0(t0) !1737
	fadd	fa1, fa1, fa0 !1737
	addi	t0, a0, 4 !1737
	fsw  	fa1, 0(t0) !1737
	addi	t0, a0, 8 !1738
	flw  	fa1, 0(t0) !1738
	fadd	fa1, fa1, fa0 !1738
	addi	t0, a0, 8 !1738
	fsw  	fa1, 0(t0) !1738
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9811: !1664
	lw  	a0, 92(sp) !1666
	addi	t0, a0, 0 !1666
	lw  	a0, 0(t0) !1666
	lw  	a1, 88(sp) !1667
	slli	t0, a0, 2 !1667
	add 	t0, t0, a1 !1667
	lw  	a1, 0(t0) !1667
	addi	t0, a1, 8 !263
	lw  	a2, 0(t0) !263
	addi	t0, a1, 28 !361
	lw  	a3, 0(t0) !361
	addi	t0, a3, 0 !366
	flw  	fa0, 0(t0) !366
	flw  	fa1, 104(sp) !1669
	fmul	fa0, fa0, fa1 !1669
	addi	t0, a1, 4 !253
	lw  	a3, 0(t0) !253
	sw  	a2, 136(sp) !1529
	fsw 	fa0, 144(sp) !1529
	sw  	a0, 152(sp) !1529
	sw  	a1, 156(sp) !1529
	addi	t0, zero, 1 !1529
	bne 	a3, t0, beq_else.9818 !1529
	lw  	a3, 116(sp) !1530
	lw  	s7, 84(sp) !1530
	addi	a0, a3, 0 !1530
	addi	sp, sp, 160 !1530
	lw  	t1, 0(s7) !1530
	jalr	ra, t1, 0 !1530
	addi	sp, sp, -160 !1530
	jal 	zero, beq_cont.9819 !1529
beq_else.9818: !1529
	addi	t0, zero, 2 !1531
	bne 	a3, t0, beq_else.9820 !1531
	lw  	s7, 80(sp) !1532
	addi	a0, a1, 0 !1532
	addi	sp, sp, 160 !1532
	lw  	t1, 0(s7) !1532
	jalr	ra, t1, 0 !1532
	addi	sp, sp, -160 !1532
	jal 	zero, beq_cont.9821 !1531
beq_else.9820: !1531
	lw  	s7, 76(sp) !1534
	addi	a0, a1, 0 !1534
	addi	sp, sp, 160 !1534
	lw  	t1, 0(s7) !1534
	jalr	ra, t1, 0 !1534
	addi	sp, sp, -160 !1534
beq_cont.9821: !1531
beq_cont.9819: !1529
	lw  	a0, 72(sp) !1672
	lw  	a1, 68(sp) !1672
	addi	sp, sp, 160 !1672
	jal 	ra, veccpy.2424 !1672
	addi	sp, sp, -160 !1672
	lw  	a0, 156(sp) !1673
	lw  	a1, 68(sp) !1673
	lw  	s7, 40(sp) !1673
	addi	sp, sp, 160 !1673
	lw  	t1, 0(s7) !1673
	jalr	ra, t1, 0 !1673
	addi	sp, sp, -160 !1673
	lw  	a0, 152(sp) !1676
	slli	a0, a0, 2 !1676
	lw  	a1, 36(sp) !1676
	addi	t0, a1, 0 !1676
	lw  	a1, 0(t0) !1676
	add 	a0, a0, a1 !1676
	lw  	a1, 120(sp) !1676
	lw  	a2, 124(sp) !1676
	slli	t0, a1, 2 !1676
	add 	t0, t0, a2 !1676
	sw  	a0, 0(t0) !1676
	lw  	a0, 64(sp) !461
	addi	t0, a0, 4 !461
	lw  	a3, 0(t0) !461
	slli	t0, a1, 2 !1678
	add 	t0, t0, a3 !1678
	lw  	a3, 0(t0) !1678
	lw  	a4, 68(sp) !1678
	addi	a1, a4, 0 !1678
	addi	a0, a3, 0 !1678
	addi	sp, sp, 160 !1678
	jal 	ra, veccpy.2424 !1678
	addi	sp, sp, -160 !1678
	lw  	a0, 64(sp) !476
	addi	t0, a0, 12 !476
	lw  	a1, 0(t0) !476
	lw  	a2, 156(sp) !361
	addi	t0, a2, 28 !361
	lw  	a3, 0(t0) !361
	addi	t0, a3, 0 !366
	flw  	fa0, 0(t0) !366
	li  	fa1, 0.500000 !1682
	sw  	a1, 160(sp) !1682
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1682
	bne 	a0, t0, beq_else.9822 !1682
	addi	a0, zero, 1 !1685
	lw  	a1, 120(sp) !1685
	lw  	a2, 160(sp) !1685
	slli	t0, a1, 2 !1685
	add 	t0, t0, a2 !1685
	sw  	a0, 0(t0) !1685
	lw  	a0, 64(sp) !483
	addi	t0, a0, 16 !483
	lw  	a2, 0(t0) !483
	slli	t0, a1, 2 !1687
	add 	t0, t0, a2 !1687
	lw  	a3, 0(t0) !1687
	lw  	a4, 32(sp) !1687
	sw  	a2, 164(sp) !1687
	addi	a1, a4, 0 !1687
	addi	a0, a3, 0 !1687
	addi	sp, sp, 168 !1687
	jal 	ra, veccpy.2424 !1687
	addi	sp, sp, -168 !1687
	lw  	a0, 120(sp) !1688
	lw  	a1, 164(sp) !1688
	slli	t0, a0, 2 !1688
	add 	t0, t0, a1 !1688
	lw  	a1, 0(t0) !1688
	li  	fa0, 0.003906 !1688
	flw  	fa1, 144(sp) !1688
	fmul	fa0, fa0, fa1 !1688
	addi	a0, a1, 0 !1688
	addi	sp, sp, 168 !1688
	jal 	ra, vecscale.2445 !1688
	addi	sp, sp, -168 !1688
	lw  	a0, 64(sp) !513
	addi	t0, a0, 28 !513
	lw  	a1, 0(t0) !513
	lw  	a2, 120(sp) !1690
	slli	t0, a2, 2 !1690
	add 	t0, t0, a1 !1690
	lw  	a1, 0(t0) !1690
	lw  	a3, 28(sp) !1690
	addi	a0, a1, 0 !1690
	addi	a1, a3, 0 !1690
	addi	sp, sp, 168 !1690
	jal 	ra, veccpy.2424 !1690
	addi	sp, sp, -168 !1690
	jal 	zero, beq_cont.9823 !1682
beq_else.9822: !1682
	addi	a0, zero, 0 !1683
	lw  	a1, 120(sp) !1683
	lw  	a2, 160(sp) !1683
	slli	t0, a1, 2 !1683
	add 	t0, t0, a2 !1683
	sw  	a0, 0(t0) !1683
beq_cont.9823: !1682
	li  	fa0, -2.000000 !1693
	lw  	a0, 116(sp) !1693
	lw  	a1, 28(sp) !1693
	fsw 	fa0, 168(sp) !1693
	addi	sp, sp, 176 !1693
	jal 	ra, veciprod.2430 !1693
	addi	sp, sp, -176 !1693
	flw  	fa1, 168(sp) !1693
	fmul	fa0, fa1, fa0 !1693
	lw  	a0, 116(sp) !1695
	lw  	a1, 28(sp) !1695
	addi	sp, sp, 176 !1695
	jal 	ra, vecaccum.2438 !1695
	addi	sp, sp, -176 !1695
	lw  	a0, 156(sp) !371
	addi	t0, a0, 28 !371
	lw  	a1, 0(t0) !371
	addi	t0, a1, 4 !376
	flw  	fa0, 0(t0) !376
	flw  	fa1, 104(sp) !1697
	fmul	fa0, fa1, fa0 !1697
	addi	a1, zero, 0 !1700
	lw  	a2, 24(sp) !1700
	addi	t0, a2, 0 !1700
	lw  	a2, 0(t0) !1700
	lw  	s7, 20(sp) !1700
	fsw 	fa0, 176(sp) !1700
	addi	a0, a1, 0 !1700
	addi	a1, a2, 0 !1700
	addi	sp, sp, 184 !1700
	lw  	t1, 0(s7) !1700
	jalr	ra, t1, 0 !1700
	addi	sp, sp, -184 !1700
	addi	t0, zero, 0 !1700
	bne 	a0, t0, beq_else.9824 !1700
	lw  	a0, 28(sp) !1701
	lw  	a1, 112(sp) !1701
	addi	sp, sp, 184 !1701
	jal 	ra, veciprod.2430 !1701
	addi	sp, sp, -184 !1701
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 144(sp) !1701
	fmul	fa0, fa0, fa1 !1701
	lw  	a0, 116(sp) !1702
	lw  	a1, 112(sp) !1702
	fsw 	fa0, 184(sp) !1702
	addi	sp, sp, 192 !1702
	jal 	ra, veciprod.2430 !1702
	addi	sp, sp, -192 !1702
	fsgnjn  fa1, fa0, fa0
	flw  	fa0, 184(sp) !1703
	flw  	fa2, 176(sp) !1703
	lw  	s7, 48(sp) !1703
	addi	sp, sp, 192 !1703
	lw  	t1, 0(s7) !1703
	jalr	ra, t1, 0 !1703
	addi	sp, sp, -192 !1703
	jal 	zero, beq_cont.9825 !1700
beq_else.9824: !1700
beq_cont.9825: !1700
	lw  	a0, 68(sp) !1707
	lw  	s7, 16(sp) !1707
	addi	sp, sp, 192 !1707
	lw  	t1, 0(s7) !1707
	jalr	ra, t1, 0 !1707
	addi	sp, sp, -192 !1707
	lw  	a0, 12(sp) !1708
	addi	t0, a0, 0 !1708
	lw  	a0, 0(t0) !1708
	addi	a0, a0, -1 !1708
	flw  	fa0, 144(sp) !1708
	flw  	fa1, 176(sp) !1708
	lw  	a1, 116(sp) !1708
	lw  	s7, 8(sp) !1708
	addi	sp, sp, 192 !1708
	lw  	t1, 0(s7) !1708
	jalr	ra, t1, 0 !1708
	addi	sp, sp, -192 !1708
	li  	fa0, 0.100000 !1711
	flw  	fa1, 104(sp) !1711
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !1711
	bne 	a0, t0, beq_else.9826 !1711
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9826: !1711
	lw  	a0, 120(sp) !1713
	addi	t0, zero, 4 !1713
	blt 	a0, t0, bge_else.9828 !1713
	jal 	zero, bge_cont.9829 !1713
bge_else.9828: !1713
	addi	a1, a0, 1 !1714
	addi	a2, zero, -1 !1714
	lw  	a3, 124(sp) !1714
	slli	t0, a1, 2 !1714
	add 	t0, t0, a3 !1714
	sw  	a2, 0(t0) !1714
bge_cont.9829: !1713
	lw  	a1, 136(sp) !1717
	addi	t0, zero, 2 !1717
	bne 	a1, t0, beq_else.9830 !1717
	li  	fa0, 1.000000 !1718
	lw  	a1, 156(sp) !361
	addi	t0, a1, 28 !361
	lw  	a1, 0(t0) !361
	addi	t0, a1, 0 !366
	flw  	fa1, 0(t0) !366
	fsub	fa0, fa0, fa1 !1718
	flw  	fa1, 104(sp) !1718
	fmul	fa0, fa1, fa0 !1718
	addi	a0, a0, 1 !1719
	lw  	a1, 4(sp) !1719
	addi	t0, a1, 0 !1719
	flw  	fa1, 0(t0) !1719
	flw  	fa2, 56(sp) !1719
	fadd	fa1, fa2, fa1 !1719
	lw  	a1, 116(sp) !1719
	lw  	a2, 64(sp) !1719
	lw  	s7, 44(sp) !1719
	lw  	t1, 0(s7) !1719
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1719
beq_else.9830: !1717
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9809: !1662
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_ray.2739:
	sw  	ra, 0(sp)
	addi	t0, s7, 56 !1754
	lw  	a1, 0(t0) !1754
	addi	t0, s7, 52 !1754
	lw  	a2, 0(t0) !1754
	addi	t0, s7, 48 !1754
	lw  	a3, 0(t0) !1754
	addi	t0, s7, 44 !1754
	lw  	a4, 0(t0) !1754
	addi	t0, s7, 40 !1754
	lw  	a5, 0(t0) !1754
	addi	t0, s7, 36 !1754
	lw  	a6, 0(t0) !1754
	addi	t0, s7, 32 !1754
	lw  	a7, 0(t0) !1754
	addi	t0, s7, 28 !1754
	lw  	s1, 0(t0) !1754
	addi	t0, s7, 24 !1754
	lw  	s2, 0(t0) !1754
	addi	t0, s7, 20 !1754
	lw  	s3, 0(t0) !1754
	addi	t0, s7, 16 !1754
	lw  	s4, 0(t0) !1754
	addi	t0, s7, 12 !1754
	lw  	s5, 0(t0) !1754
	addi	t0, s7, 8 !1754
	lw  	s6, 0(t0) !1754
	addi	t0, s7, 4 !1754
	lw  	s7, 0(t0) !1754
	sw  	a2, 4(sp) !1754
	sw  	s7, 8(sp) !1754
	fsw 	fa0, 16(sp) !1754
	sw  	a7, 24(sp) !1754
	sw  	a6, 28(sp) !1754
	sw  	a3, 32(sp) !1754
	sw  	a4, 36(sp) !1754
	sw  	s2, 40(sp) !1754
	sw  	a1, 44(sp) !1754
	sw  	s4, 48(sp) !1754
	sw  	s6, 52(sp) !1754
	sw  	s5, 56(sp) !1754
	sw  	a0, 60(sp) !1754
	sw  	a5, 64(sp) !1754
	sw  	s3, 68(sp) !1754
	addi	s7, s1, 0 !1754
	addi	sp, sp, 72 !1754
	lw  	t1, 0(s7) !1754
	jalr	ra, t1, 0 !1754
	addi	sp, sp, -72 !1754
	addi	t0, zero, 0 !1754
	bne 	a0, t0, beq_else.9834 !1754
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9834: !1754
	lw  	a0, 68(sp) !1755
	addi	t0, a0, 0 !1755
	lw  	a0, 0(t0) !1755
	lw  	a1, 64(sp) !1755
	slli	t0, a0, 2 !1755
	add 	t0, t0, a1 !1755
	lw  	a0, 0(t0) !1755
	lw  	a1, 60(sp) !522
	addi	t0, a1, 0 !522
	lw  	a1, 0(t0) !522
	addi	t0, a0, 4 !253
	lw  	a2, 0(t0) !253
	sw  	a0, 72(sp) !1529
	addi	t0, zero, 1 !1529
	bne 	a2, t0, beq_else.9836 !1529
	lw  	s7, 56(sp) !1530
	addi	a0, a1, 0 !1530
	addi	sp, sp, 80 !1530
	lw  	t1, 0(s7) !1530
	jalr	ra, t1, 0 !1530
	addi	sp, sp, -80 !1530
	jal 	zero, beq_cont.9837 !1529
beq_else.9836: !1529
	addi	t0, zero, 2 !1531
	bne 	a2, t0, beq_else.9838 !1531
	lw  	s7, 52(sp) !1532
	addi	sp, sp, 80 !1532
	lw  	t1, 0(s7) !1532
	jalr	ra, t1, 0 !1532
	addi	sp, sp, -80 !1532
	jal 	zero, beq_cont.9839 !1531
beq_else.9838: !1531
	lw  	s7, 48(sp) !1534
	addi	sp, sp, 80 !1534
	lw  	t1, 0(s7) !1534
	jalr	ra, t1, 0 !1534
	addi	sp, sp, -80 !1534
beq_cont.9839: !1531
beq_cont.9837: !1529
	lw  	a0, 72(sp) !1757
	lw  	a1, 40(sp) !1757
	lw  	s7, 44(sp) !1757
	addi	sp, sp, 80 !1757
	lw  	t1, 0(s7) !1757
	jalr	ra, t1, 0 !1757
	addi	sp, sp, -80 !1757
	addi	a0, zero, 0 !1760
	lw  	a1, 36(sp) !1760
	addi	t0, a1, 0 !1760
	lw  	a1, 0(t0) !1760
	lw  	s7, 32(sp) !1760
	addi	sp, sp, 80 !1760
	lw  	t1, 0(s7) !1760
	jalr	ra, t1, 0 !1760
	addi	sp, sp, -80 !1760
	addi	t0, zero, 0 !1760
	bne 	a0, t0, beq_else.9840 !1760
	lw  	a0, 28(sp) !1761
	lw  	a1, 24(sp) !1761
	addi	sp, sp, 80 !1761
	jal 	ra, veciprod.2430 !1761
	addi	sp, sp, -80 !1761
	fsgnjn  fa0, fa0, fa0
	fsw 	fa0, 80(sp) !1762
	flt 	a0, zero, fa0
	addi	t0, zero, 0 !1762
	bne 	a0, t0, beq_else.9842 !1762
	li  	fa0, 0.000000 !1762
	jal 	zero, beq_cont.9843 !1762
beq_else.9842: !1762
	flw  	fa0, 80(sp) !1762
beq_cont.9843: !1762
	flw  	fa1, 16(sp) !1763
	fmul	fa1, fa1, fa0 !1763
	lw  	a0, 72(sp) !361
	addi	t0, a0, 28 !361
	lw  	a0, 0(t0) !361
	addi	t0, a0, 0 !366
	flw  	fa0, 0(t0) !366
	fmul	fa0, fa1, fa0 !1763
	lw  	a0, 8(sp) !1763
	lw  	a1, 4(sp) !1763
	lw  	ra, 0(sp)
	jal 	zero, vecaccum.2438 !1763
beq_else.9840: !1760
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_trace_diffuse_rays.2742:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1770
	lw  	a4, 0(t0) !1770
	addi	t0, zero, 0 !1770
	blt 	a3, t0, bge_else.9845 !1770
	slli	t0, a3, 2 !1771
	add 	t0, t0, a0 !1771
	lw  	a5, 0(t0) !1771
	addi	t0, a5, 0 !522
	lw  	a5, 0(t0) !522
	sw  	a2, 4(sp) !1771
	sw  	a1, 8(sp) !1771
	sw  	s7, 12(sp) !1771
	sw  	a4, 16(sp) !1771
	sw  	a3, 20(sp) !1771
	sw  	a0, 24(sp) !1771
	addi	a0, a5, 0 !1771
	addi	sp, sp, 32 !1771
	jal 	ra, veciprod.2430 !1771
	addi	sp, sp, -32 !1771
	fsw 	fa0, 32(sp) !1774
	flt 	a0, fa0, zero
	addi	t0, zero, 0 !1774
	bne 	a0, t0, beq_else.9847 !1774
	lw  	a0, 20(sp) !1777
	lw  	a1, 24(sp) !1777
	slli	t0, a0, 2 !1777
	add 	t0, t0, a1 !1777
	lw  	a2, 0(t0) !1777
	li  	fa0, 150.000000 !1777
	flw  	fa1, 32(sp) !1777
	fdiv	fa0, fa1, fa0 !1777
	lw  	s7, 16(sp) !1777
	addi	a0, a2, 0 !1777
	addi	sp, sp, 40 !1777
	lw  	t1, 0(s7) !1777
	jalr	ra, t1, 0 !1777
	addi	sp, sp, -40 !1777
	jal 	zero, beq_cont.9848 !1774
beq_else.9847: !1774
	lw  	a0, 20(sp) !1775
	addi	a1, a0, 1 !1775
	lw  	a2, 24(sp) !1775
	slli	t0, a1, 2 !1775
	add 	t0, t0, a2 !1775
	lw  	a1, 0(t0) !1775
	li  	fa0, -150.000000 !1775
	flw  	fa1, 32(sp) !1775
	fdiv	fa0, fa1, fa0 !1775
	lw  	s7, 16(sp) !1775
	addi	a0, a1, 0 !1775
	addi	sp, sp, 40 !1775
	lw  	t1, 0(s7) !1775
	jalr	ra, t1, 0 !1775
	addi	sp, sp, -40 !1775
beq_cont.9848: !1774
	lw  	a0, 20(sp) !1779
	addi	a3, a0, -2 !1779
	lw  	a0, 24(sp) !1779
	lw  	a1, 8(sp) !1779
	lw  	a2, 4(sp) !1779
	lw  	s7, 12(sp) !1779
	lw  	t1, 0(s7) !1779
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1779
bge_else.9845: !1770
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_ray_80percent.2751:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !1794
	lw  	a3, 0(t0) !1794
	addi	t0, s7, 8 !1794
	lw  	a4, 0(t0) !1794
	addi	t0, s7, 4 !1794
	lw  	a5, 0(t0) !1794
	sw  	a1, 4(sp) !1794
	sw  	a4, 8(sp) !1794
	sw  	a2, 12(sp) !1794
	sw  	a3, 16(sp) !1794
	sw  	a5, 20(sp) !1794
	sw  	a0, 24(sp) !1794
	addi	t0, zero, 0 !1794
	bne 	a0, t0, beq_else.9850 !1794
	jal 	zero, beq_cont.9851 !1794
beq_else.9850: !1794
	addi	t0, a5, 0 !1795
	lw  	a6, 0(t0) !1795
	sw  	a6, 28(sp) !1785
	addi	a0, a2, 0 !1785
	addi	s7, a3, 0 !1785
	addi	sp, sp, 32 !1785
	lw  	t1, 0(s7) !1785
	jalr	ra, t1, 0 !1785
	addi	sp, sp, -32 !1785
	addi	a3, zero, 118 !1788
	lw  	a0, 28(sp) !1788
	lw  	a1, 4(sp) !1788
	lw  	a2, 12(sp) !1788
	lw  	s7, 8(sp) !1788
	addi	sp, sp, 32 !1788
	lw  	t1, 0(s7) !1788
	jalr	ra, t1, 0 !1788
	addi	sp, sp, -32 !1788
beq_cont.9851: !1794
	lw  	a0, 24(sp) !1798
	addi	t0, zero, 1 !1798
	bne 	a0, t0, beq_else.9852 !1798
	jal 	zero, beq_cont.9853 !1798
beq_else.9852: !1798
	lw  	a1, 20(sp) !1799
	addi	t0, a1, 4 !1799
	lw  	a2, 0(t0) !1799
	lw  	a3, 12(sp) !1785
	lw  	s7, 16(sp) !1785
	sw  	a2, 32(sp) !1785
	addi	a0, a3, 0 !1785
	addi	sp, sp, 40 !1785
	lw  	t1, 0(s7) !1785
	jalr	ra, t1, 0 !1785
	addi	sp, sp, -40 !1785
	addi	a3, zero, 118 !1788
	lw  	a0, 32(sp) !1788
	lw  	a1, 4(sp) !1788
	lw  	a2, 12(sp) !1788
	lw  	s7, 8(sp) !1788
	addi	sp, sp, 40 !1788
	lw  	t1, 0(s7) !1788
	jalr	ra, t1, 0 !1788
	addi	sp, sp, -40 !1788
beq_cont.9853: !1798
	lw  	a0, 24(sp) !1802
	addi	t0, zero, 2 !1802
	bne 	a0, t0, beq_else.9854 !1802
	jal 	zero, beq_cont.9855 !1802
beq_else.9854: !1802
	lw  	a1, 20(sp) !1803
	addi	t0, a1, 8 !1803
	lw  	a2, 0(t0) !1803
	lw  	a3, 12(sp) !1785
	lw  	s7, 16(sp) !1785
	sw  	a2, 36(sp) !1785
	addi	a0, a3, 0 !1785
	addi	sp, sp, 40 !1785
	lw  	t1, 0(s7) !1785
	jalr	ra, t1, 0 !1785
	addi	sp, sp, -40 !1785
	addi	a3, zero, 118 !1788
	lw  	a0, 36(sp) !1788
	lw  	a1, 4(sp) !1788
	lw  	a2, 12(sp) !1788
	lw  	s7, 8(sp) !1788
	addi	sp, sp, 40 !1788
	lw  	t1, 0(s7) !1788
	jalr	ra, t1, 0 !1788
	addi	sp, sp, -40 !1788
beq_cont.9855: !1802
	lw  	a0, 24(sp) !1806
	addi	t0, zero, 3 !1806
	bne 	a0, t0, beq_else.9856 !1806
	jal 	zero, beq_cont.9857 !1806
beq_else.9856: !1806
	lw  	a1, 20(sp) !1807
	addi	t0, a1, 12 !1807
	lw  	a2, 0(t0) !1807
	lw  	a3, 12(sp) !1785
	lw  	s7, 16(sp) !1785
	sw  	a2, 40(sp) !1785
	addi	a0, a3, 0 !1785
	addi	sp, sp, 48 !1785
	lw  	t1, 0(s7) !1785
	jalr	ra, t1, 0 !1785
	addi	sp, sp, -48 !1785
	addi	a3, zero, 118 !1788
	lw  	a0, 40(sp) !1788
	lw  	a1, 4(sp) !1788
	lw  	a2, 12(sp) !1788
	lw  	s7, 8(sp) !1788
	addi	sp, sp, 48 !1788
	lw  	t1, 0(s7) !1788
	jalr	ra, t1, 0 !1788
	addi	sp, sp, -48 !1788
beq_cont.9857: !1806
	lw  	a0, 24(sp) !1810
	addi	t0, zero, 4 !1810
	bne 	a0, t0, beq_else.9858 !1810
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9858: !1810
	lw  	a0, 20(sp) !1811
	addi	t0, a0, 16 !1811
	lw  	a0, 0(t0) !1811
	lw  	a1, 12(sp) !1785
	lw  	s7, 16(sp) !1785
	sw  	a0, 44(sp) !1785
	addi	a0, a1, 0 !1785
	addi	sp, sp, 48 !1785
	lw  	t1, 0(s7) !1785
	jalr	ra, t1, 0 !1785
	addi	sp, sp, -48 !1785
	addi	a3, zero, 118 !1788
	lw  	a0, 44(sp) !1788
	lw  	a1, 4(sp) !1788
	lw  	a2, 12(sp) !1788
	lw  	s7, 8(sp) !1788
	lw  	t1, 0(s7) !1788
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1788
calc_diffuse_using_1point.2755:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !490
	lw  	a2, 0(t0) !490
	addi	t0, s7, 8 !490
	lw  	a3, 0(t0) !490
	addi	t0, s7, 4 !490
	lw  	a4, 0(t0) !490
	addi	t0, a0, 20 !490
	lw  	a5, 0(t0) !490
	addi	t0, a0, 28 !513
	lw  	a6, 0(t0) !513
	addi	t0, a0, 4 !461
	lw  	a7, 0(t0) !461
	addi	t0, a0, 16 !483
	lw  	s1, 0(t0) !483
	slli	t0, a1, 2 !1824
	add 	t0, t0, a5 !1824
	lw  	a5, 0(t0) !1824
	sw  	a4, 4(sp) !1824
	sw  	a3, 8(sp) !1824
	sw  	s1, 12(sp) !1824
	sw  	a2, 16(sp) !1824
	sw  	a7, 20(sp) !1824
	sw  	a1, 24(sp) !1824
	sw  	a6, 28(sp) !1824
	sw  	a0, 32(sp) !1824
	addi	a1, a5, 0 !1824
	addi	a0, a4, 0 !1824
	addi	sp, sp, 40 !1824
	jal 	ra, veccpy.2424 !1824
	addi	sp, sp, -40 !1824
	lw  	a0, 32(sp) !499
	addi	t0, a0, 24 !499
	lw  	a0, 0(t0) !499
	addi	t0, a0, 0 !501
	lw  	a0, 0(t0) !501
	lw  	a1, 24(sp) !1827
	lw  	a2, 28(sp) !1827
	slli	t0, a1, 2 !1827
	add 	t0, t0, a2 !1827
	lw  	a2, 0(t0) !1827
	lw  	a3, 20(sp) !1828
	slli	t0, a1, 2 !1828
	add 	t0, t0, a3 !1828
	lw  	a3, 0(t0) !1828
	lw  	s7, 16(sp) !1825
	addi	a1, a2, 0 !1825
	addi	a2, a3, 0 !1825
	addi	sp, sp, 40 !1825
	lw  	t1, 0(s7) !1825
	jalr	ra, t1, 0 !1825
	addi	sp, sp, -40 !1825
	lw  	a0, 24(sp) !1829
	lw  	a1, 12(sp) !1829
	slli	t0, a0, 2 !1829
	add 	t0, t0, a1 !1829
	lw  	a1, 0(t0) !1829
	lw  	a0, 8(sp) !1829
	lw  	a2, 4(sp) !1829
	lw  	ra, 0(sp)
	jal 	zero, vecaccumv.2448 !1829
calc_diffuse_using_5points.2758:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1837
	lw  	a5, 0(t0) !1837
	addi	t0, s7, 4 !1837
	lw  	a6, 0(t0) !1837
	slli	t0, a0, 2 !1837
	add 	t0, t0, a1 !1837
	lw  	a1, 0(t0) !1837
	addi	t0, a1, 20 !490
	lw  	a1, 0(t0) !490
	addi	a7, a0, -1 !1838
	slli	t0, a7, 2 !1838
	add 	t0, t0, a2 !1838
	lw  	a7, 0(t0) !1838
	addi	t0, a7, 20 !490
	lw  	a7, 0(t0) !490
	slli	t0, a0, 2 !1839
	add 	t0, t0, a2 !1839
	lw  	s1, 0(t0) !1839
	addi	t0, s1, 20 !490
	lw  	s1, 0(t0) !490
	addi	s2, a0, 1 !1840
	slli	t0, s2, 2 !1840
	add 	t0, t0, a2 !1840
	lw  	s2, 0(t0) !1840
	addi	t0, s2, 20 !490
	lw  	s2, 0(t0) !490
	slli	t0, a0, 2 !1841
	add 	t0, t0, a3 !1841
	lw  	a3, 0(t0) !1841
	addi	t0, a3, 20 !490
	lw  	a3, 0(t0) !490
	slli	t0, a4, 2 !1843
	add 	t0, t0, a1 !1843
	lw  	a1, 0(t0) !1843
	sw  	a5, 4(sp) !1843
	sw  	a0, 8(sp) !1843
	sw  	a2, 12(sp) !1843
	sw  	a3, 16(sp) !1843
	sw  	s2, 20(sp) !1843
	sw  	s1, 24(sp) !1843
	sw  	a6, 28(sp) !1843
	sw  	a4, 32(sp) !1843
	sw  	a7, 36(sp) !1843
	addi	a0, a6, 0 !1843
	addi	sp, sp, 40 !1843
	jal 	ra, veccpy.2424 !1843
	addi	sp, sp, -40 !1843
	lw  	a0, 32(sp) !1844
	lw  	a1, 36(sp) !1844
	slli	t0, a0, 2 !1844
	add 	t0, t0, a1 !1844
	lw  	a1, 0(t0) !1844
	lw  	a2, 28(sp) !1844
	addi	a0, a2, 0 !1844
	addi	sp, sp, 40 !1844
	jal 	ra, vecadd.2442 !1844
	addi	sp, sp, -40 !1844
	lw  	a0, 32(sp) !1845
	lw  	a1, 24(sp) !1845
	slli	t0, a0, 2 !1845
	add 	t0, t0, a1 !1845
	lw  	a1, 0(t0) !1845
	lw  	a2, 28(sp) !1845
	addi	a0, a2, 0 !1845
	addi	sp, sp, 40 !1845
	jal 	ra, vecadd.2442 !1845
	addi	sp, sp, -40 !1845
	lw  	a0, 32(sp) !1846
	lw  	a1, 20(sp) !1846
	slli	t0, a0, 2 !1846
	add 	t0, t0, a1 !1846
	lw  	a1, 0(t0) !1846
	lw  	a2, 28(sp) !1846
	addi	a0, a2, 0 !1846
	addi	sp, sp, 40 !1846
	jal 	ra, vecadd.2442 !1846
	addi	sp, sp, -40 !1846
	lw  	a0, 32(sp) !1847
	lw  	a1, 16(sp) !1847
	slli	t0, a0, 2 !1847
	add 	t0, t0, a1 !1847
	lw  	a1, 0(t0) !1847
	lw  	a2, 28(sp) !1847
	addi	a0, a2, 0 !1847
	addi	sp, sp, 40 !1847
	jal 	ra, vecadd.2442 !1847
	addi	sp, sp, -40 !1847
	lw  	a0, 8(sp) !1849
	lw  	a1, 12(sp) !1849
	slli	t0, a0, 2 !1849
	add 	t0, t0, a1 !1849
	lw  	a0, 0(t0) !1849
	addi	t0, a0, 16 !483
	lw  	a0, 0(t0) !483
	lw  	a1, 32(sp) !1850
	slli	t0, a1, 2 !1850
	add 	t0, t0, a0 !1850
	lw  	a1, 0(t0) !1850
	lw  	a0, 4(sp) !1850
	lw  	a2, 28(sp) !1850
	lw  	ra, 0(sp)
	jal 	zero, vecaccumv.2448 !1850
do_without_neighbors.2764:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1856
	lw  	a2, 0(t0) !1856
	addi	t0, zero, 4 !1856
	blt 	t0, a1, bge_else.9860 !1856
	addi	t0, a0, 8 !469
	lw  	a3, 0(t0) !469
	slli	t0, a1, 2 !1859
	add 	t0, t0, a3 !1859
	lw  	a3, 0(t0) !1859
	addi	t0, zero, 0 !1859
	blt 	a3, t0, bge_else.9861 !1859
	addi	t0, a0, 12 !476
	lw  	a3, 0(t0) !476
	slli	t0, a1, 2 !1861
	add 	t0, t0, a3 !1861
	lw  	a3, 0(t0) !1861
	sw  	a0, 4(sp) !1861
	sw  	s7, 8(sp) !1861
	sw  	a1, 12(sp) !1861
	addi	t0, zero, 0 !1861
	bne 	a3, t0, beq_else.9862 !1861
	jal 	zero, beq_cont.9863 !1861
beq_else.9862: !1861
	addi	s7, a2, 0 !1862
	addi	sp, sp, 16 !1862
	lw  	t1, 0(s7) !1862
	jalr	ra, t1, 0 !1862
	addi	sp, sp, -16 !1862
beq_cont.9863: !1861
	lw  	a0, 12(sp) !1864
	addi	a1, a0, 1 !1864
	lw  	a0, 4(sp) !1864
	lw  	s7, 8(sp) !1864
	lw  	t1, 0(s7) !1864
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1864
bge_else.9861: !1859
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9860: !1856
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
neighbors_exist.2767:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1871
	lw  	a2, 0(t0) !1871
	addi	t0, a2, 4 !1871
	lw  	a3, 0(t0) !1871
	addi	a4, a1, 1 !1871
	blt 	a4, a3, bge_else.9866 !1871
	addi	a0, zero, 0 !1879
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9866: !1871
	addi	t0, zero, 0 !1872
	blt 	t0, a1, bge_else.9867 !1872
	addi	a0, zero, 0 !1878
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9867: !1872
	addi	t0, a2, 0 !1873
	lw  	a1, 0(t0) !1873
	addi	a2, a0, 1 !1873
	blt 	a2, a1, bge_else.9868 !1873
	addi	a0, zero, 0 !1877
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9868: !1873
	addi	t0, zero, 0 !1874
	blt 	t0, a0, bge_else.9869 !1874
	addi	a0, zero, 0 !1876
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9869: !1874
	addi	a0, zero, 1 !1875
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
neighbors_are_available.2774:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1889
	add 	t0, t0, a2 !1889
	lw  	a5, 0(t0) !1889
	addi	t0, a5, 8 !469
	lw  	a5, 0(t0) !469
	slli	t0, a4, 2 !1884
	add 	t0, t0, a5 !1884
	lw  	a5, 0(t0) !1884
	slli	t0, a0, 2 !1891
	add 	t0, t0, a1 !1891
	lw  	a1, 0(t0) !1891
	addi	t0, a1, 8 !469
	lw  	a1, 0(t0) !469
	slli	t0, a4, 2 !1884
	add 	t0, t0, a1 !1884
	lw  	a1, 0(t0) !1884
	bne 	a1, a5, beq_else.9870 !1891
	slli	t0, a0, 2 !1892
	add 	t0, t0, a3 !1892
	lw  	a1, 0(t0) !1892
	addi	t0, a1, 8 !469
	lw  	a1, 0(t0) !469
	slli	t0, a4, 2 !1884
	add 	t0, t0, a1 !1884
	lw  	a1, 0(t0) !1884
	bne 	a1, a5, beq_else.9871 !1892
	addi	a1, a0, -1 !1893
	slli	t0, a1, 2 !1893
	add 	t0, t0, a2 !1893
	lw  	a1, 0(t0) !1893
	addi	t0, a1, 8 !469
	lw  	a1, 0(t0) !469
	slli	t0, a4, 2 !1884
	add 	t0, t0, a1 !1884
	lw  	a1, 0(t0) !1884
	bne 	a1, a5, beq_else.9872 !1893
	addi	a0, a0, 1 !1894
	slli	t0, a0, 2 !1894
	add 	t0, t0, a2 !1894
	lw  	a0, 0(t0) !1894
	addi	t0, a0, 8 !469
	lw  	a0, 0(t0) !469
	slli	t0, a4, 2 !1884
	add 	t0, t0, a0 !1884
	lw  	a0, 0(t0) !1884
	bne 	a0, a5, beq_else.9873 !1894
	addi	a0, zero, 1 !1895
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9873: !1894
	addi	a0, zero, 0 !1896
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9872: !1893
	addi	a0, zero, 0 !1897
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9871: !1892
	addi	a0, zero, 0 !1898
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9870: !1891
	addi	a0, zero, 0 !1899
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
try_exploit_neighbors.2780:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !1905
	lw  	a6, 0(t0) !1905
	addi	t0, s7, 4 !1905
	lw  	a7, 0(t0) !1905
	slli	t0, a0, 2 !1905
	add 	t0, t0, a3 !1905
	lw  	s1, 0(t0) !1905
	addi	t0, zero, 4 !1906
	blt 	t0, a5, bge_else.9874 !1906
	addi	t0, s1, 8 !469
	lw  	s2, 0(t0) !469
	slli	t0, a5, 2 !1884
	add 	t0, t0, s2 !1884
	lw  	s2, 0(t0) !1884
	addi	t0, zero, 0 !1909
	blt 	s2, t0, bge_else.9875 !1909
	sw  	a1, 4(sp) !1911
	sw  	s7, 8(sp) !1911
	sw  	a4, 12(sp) !1911
	sw  	a2, 16(sp) !1911
	sw  	a7, 20(sp) !1911
	sw  	s1, 24(sp) !1911
	sw  	a5, 28(sp) !1911
	sw  	a6, 32(sp) !1911
	sw  	a0, 36(sp) !1911
	sw  	a3, 40(sp) !1911
	addi	a1, a2, 0 !1911
	addi	a2, a3, 0 !1911
	addi	a3, a4, 0 !1911
	addi	a4, a5, 0 !1911
	addi	sp, sp, 48 !1911
	jal 	ra, neighbors_are_available.2774 !1911
	addi	sp, sp, -48 !1911
	addi	t0, zero, 0 !1911
	bne 	a0, t0, beq_else.9876 !1911
	lw  	a0, 36(sp) !1923
	lw  	a1, 40(sp) !1923
	slli	t0, a0, 2 !1923
	add 	t0, t0, a1 !1923
	lw  	a0, 0(t0) !1923
	lw  	a1, 28(sp) !1923
	lw  	s7, 32(sp) !1923
	lw  	t1, 0(s7) !1923
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1923
beq_else.9876: !1911
	lw  	a0, 24(sp) !476
	addi	t0, a0, 12 !476
	lw  	a0, 0(t0) !476
	lw  	a4, 28(sp) !1915
	slli	t0, a4, 2 !1915
	add 	t0, t0, a0 !1915
	lw  	a0, 0(t0) !1915
	addi	t0, zero, 0 !1915
	bne 	a0, t0, beq_else.9877 !1915
	jal 	zero, beq_cont.9878 !1915
beq_else.9877: !1915
	lw  	a0, 36(sp) !1916
	lw  	a1, 16(sp) !1916
	lw  	a2, 40(sp) !1916
	lw  	a3, 12(sp) !1916
	lw  	s7, 20(sp) !1916
	addi	sp, sp, 48 !1916
	lw  	t1, 0(s7) !1916
	jalr	ra, t1, 0 !1916
	addi	sp, sp, -48 !1916
beq_cont.9878: !1915
	lw  	a0, 28(sp) !1920
	addi	a5, a0, 1 !1920
	lw  	a0, 36(sp) !1920
	lw  	a1, 4(sp) !1920
	lw  	a2, 16(sp) !1920
	lw  	a3, 40(sp) !1920
	lw  	a4, 12(sp) !1920
	lw  	s7, 8(sp) !1920
	lw  	t1, 0(s7) !1920
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1920
bge_else.9875: !1909
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9874: !1906
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
write_ppm_header.2787:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1931
	lw  	a1, 0(t0) !1931
	addi	a2, zero, 80 !1931
	sw  	a1, 4(sp) !1931
	sw  	a0, 8(sp) !1931
	addi	a0, a2, 0 !1931
	outb	a0
	lw  	a0, 8(sp) !1932
	addi	a0, a0, 48 !1932
	outb	a0
	addi	a0, zero, 10 !1933
	outb	a0
	lw  	a0, 4(sp) !1934
	addi	t0, a0, 0 !1934
	lw  	a1, 0(t0) !1934
	addi	a0, a1, 0 !1934
	addi	sp, sp, 16 !1934
	jal 	ra, print_int !1934
	addi	sp, sp, -16 !1934
	addi	a0, zero, 32 !1935
	outb	a0
	lw  	a0, 4(sp) !1936
	addi	t0, a0, 4 !1936
	lw  	a0, 0(t0) !1936
	addi	sp, sp, 16 !1936
	jal 	ra, print_int !1936
	addi	sp, sp, -16 !1936
	addi	a0, zero, 32 !1937
	outb	a0
	addi	a0, zero, 255 !1938
	addi	sp, sp, 16 !1938
	jal 	ra, print_int !1938
	addi	sp, sp, -16 !1938
	addi	a0, zero, 10 !1939
	outb	a0
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
write_rgb_element_int.2789:
	sw  	ra, 0(sp)
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1945
	blt 	t0, a0, bge_else.9881 !1945
	addi	t0, zero, 0 !1945
	blt 	a0, t0, bge_else.9883 !1945
	jal 	zero, bge_cont.9884 !1945
bge_else.9883: !1945
	addi	a0, zero, 0 !1945
bge_cont.9884: !1945
	jal 	zero, bge_cont.9882 !1945
bge_else.9881: !1945
	addi	a0, zero, 255 !1945
bge_cont.9882: !1945
	lw  	ra, 0(sp)
	jal 	zero, print_int !1946
write_rgb_element_char.2791:
	sw  	ra, 0(sp)
	fcvt.w.s a0, fa0
	addi	t0, zero, 255 !1951
	blt 	t0, a0, bge_else.9885 !1951
	addi	t0, zero, 0 !1951
	blt 	a0, t0, bge_else.9887 !1951
	jal 	zero, bge_cont.9888 !1951
bge_else.9887: !1951
	addi	a0, zero, 0 !1951
bge_cont.9888: !1951
	jal 	zero, bge_cont.9886 !1951
bge_else.9885: !1951
	addi	a0, zero, 255 !1951
bge_cont.9886: !1951
	outb	a0
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
write_rgb.2793:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !1956
	lw  	a1, 0(t0) !1956
	addi	t0, zero, 3 !1956
	bne 	a0, t0, beq_else.9889 !1956
	addi	t0, a1, 0 !1957
	flw  	fa0, 0(t0) !1957
	sw  	a1, 4(sp) !1957
	addi	sp, sp, 8 !1957
	jal 	ra, write_rgb_element_int.2789 !1957
	addi	sp, sp, -8 !1957
	addi	a0, zero, 32 !1958
	outb	a0
	lw  	a0, 4(sp) !1959
	addi	t0, a0, 4 !1959
	flw  	fa0, 0(t0) !1959
	addi	sp, sp, 8 !1959
	jal 	ra, write_rgb_element_int.2789 !1959
	addi	sp, sp, -8 !1959
	addi	a0, zero, 32 !1960
	outb	a0
	lw  	a0, 4(sp) !1961
	addi	t0, a0, 8 !1961
	flw  	fa0, 0(t0) !1961
	addi	sp, sp, 8 !1961
	jal 	ra, write_rgb_element_int.2789 !1961
	addi	sp, sp, -8 !1961
	addi	a0, zero, 10 !1962
	outb	a0
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9889: !1956
	addi	t0, a1, 0 !1964
	flw  	fa0, 0(t0) !1964
	sw  	a1, 4(sp) !1964
	addi	sp, sp, 8 !1964
	jal 	ra, write_rgb_element_char.2791 !1964
	addi	sp, sp, -8 !1964
	lw  	a0, 4(sp) !1965
	addi	t0, a0, 4 !1965
	flw  	fa0, 0(t0) !1965
	addi	sp, sp, 8 !1965
	jal 	ra, write_rgb_element_char.2791 !1965
	addi	sp, sp, -8 !1965
	lw  	a0, 4(sp) !1966
	addi	t0, a0, 8 !1966
	flw  	fa0, 0(t0) !1966
	lw  	ra, 0(sp)
	jal 	zero, write_rgb_element_char.2791 !1966
pretrace_diffuse_rays.2795:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !1976
	lw  	a2, 0(t0) !1976
	addi	t0, s7, 12 !1976
	lw  	a3, 0(t0) !1976
	addi	t0, s7, 8 !1976
	lw  	a4, 0(t0) !1976
	addi	t0, s7, 4 !1976
	lw  	a5, 0(t0) !1976
	addi	t0, zero, 4 !1976
	blt 	t0, a1, bge_else.9890 !1976
	addi	t0, a0, 8 !469
	lw  	a6, 0(t0) !469
	slli	t0, a1, 2 !1884
	add 	t0, t0, a6 !1884
	lw  	a6, 0(t0) !1884
	addi	t0, zero, 0 !1980
	blt 	a6, t0, bge_else.9891 !1980
	addi	t0, a0, 12 !476
	lw  	a6, 0(t0) !476
	slli	t0, a1, 2 !1983
	add 	t0, t0, a6 !1983
	lw  	a6, 0(t0) !1983
	sw  	a0, 4(sp) !1983
	sw  	s7, 8(sp) !1983
	sw  	a1, 12(sp) !1983
	addi	t0, zero, 0 !1983
	bne 	a6, t0, beq_else.9892 !1983
	jal 	zero, beq_cont.9893 !1983
beq_else.9892: !1983
	addi	t0, a0, 24 !499
	lw  	a6, 0(t0) !499
	addi	t0, a6, 0 !501
	lw  	a6, 0(t0) !501
	li  	fa0, 0.000000 !176
	sw  	a5, 16(sp) !176
	sw  	a3, 20(sp) !176
	sw  	a2, 24(sp) !176
	sw  	a6, 28(sp) !176
	sw  	a4, 32(sp) !176
	addi	a0, a5, 0 !176
	addi	sp, sp, 40 !176
	jal 	ra, vecfill.2419 !176
	addi	sp, sp, -40 !176
	lw  	a0, 4(sp) !513
	addi	t0, a0, 28 !513
	lw  	a1, 0(t0) !513
	addi	t0, a0, 4 !461
	lw  	a2, 0(t0) !461
	lw  	a3, 28(sp) !1991
	lw  	a4, 32(sp) !1991
	slli	t0, a3, 2 !1991
	add 	t0, t0, a4 !1991
	lw  	a3, 0(t0) !1991
	lw  	a4, 12(sp) !1992
	slli	t0, a4, 2 !1992
	add 	t0, t0, a1 !1992
	lw  	a1, 0(t0) !1992
	slli	t0, a4, 2 !1993
	add 	t0, t0, a2 !1993
	lw  	a2, 0(t0) !1993
	lw  	s7, 24(sp) !1785
	sw  	a2, 36(sp) !1785
	sw  	a1, 40(sp) !1785
	sw  	a3, 44(sp) !1785
	addi	a0, a2, 0 !1785
	addi	sp, sp, 48 !1785
	lw  	t1, 0(s7) !1785
	jalr	ra, t1, 0 !1785
	addi	sp, sp, -48 !1785
	addi	a3, zero, 118 !1788
	lw  	a0, 44(sp) !1788
	lw  	a1, 40(sp) !1788
	lw  	a2, 36(sp) !1788
	lw  	s7, 20(sp) !1788
	addi	sp, sp, 48 !1788
	lw  	t1, 0(s7) !1788
	jalr	ra, t1, 0 !1788
	addi	sp, sp, -48 !1788
	lw  	a0, 4(sp) !490
	addi	t0, a0, 20 !490
	lw  	a1, 0(t0) !490
	lw  	a2, 12(sp) !1995
	slli	t0, a2, 2 !1995
	add 	t0, t0, a1 !1995
	lw  	a1, 0(t0) !1995
	lw  	a3, 16(sp) !1995
	addi	a0, a1, 0 !1995
	addi	a1, a3, 0 !1995
	addi	sp, sp, 48 !1995
	jal 	ra, veccpy.2424 !1995
	addi	sp, sp, -48 !1995
beq_cont.9893: !1983
	lw  	a0, 12(sp) !1997
	addi	a1, a0, 1 !1997
	lw  	a0, 4(sp) !1997
	lw  	s7, 8(sp) !1997
	lw  	t1, 0(s7) !1997
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1997
bge_else.9891: !1980
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9890: !1976
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_pixels.2798:
	sw  	ra, 0(sp)
	addi	t0, s7, 36 !2005
	lw  	a3, 0(t0) !2005
	addi	t0, s7, 32 !2005
	lw  	a4, 0(t0) !2005
	addi	t0, s7, 28 !2005
	lw  	a5, 0(t0) !2005
	addi	t0, s7, 24 !2005
	lw  	a6, 0(t0) !2005
	addi	t0, s7, 20 !2005
	lw  	a7, 0(t0) !2005
	addi	t0, s7, 16 !2005
	lw  	s1, 0(t0) !2005
	addi	t0, s7, 12 !2005
	lw  	s2, 0(t0) !2005
	addi	t0, s7, 8 !2005
	lw  	s3, 0(t0) !2005
	addi	t0, s7, 4 !2005
	lw  	s4, 0(t0) !2005
	addi	t0, zero, 0 !2005
	blt 	a1, t0, bge_else.9896 !2005
	addi	t0, a7, 0 !2007
	flw  	fa3, 0(t0) !2007
	addi	t0, s4, 0 !2007
	lw  	a7, 0(t0) !2007
	sub 	a7, a1, a7 !2007
	sw  	s7, 4(sp) !2007
	sw  	s3, 8(sp) !2007
	sw  	a2, 12(sp) !2007
	sw  	a4, 16(sp) !2007
	sw  	a1, 20(sp) !2007
	sw  	a0, 24(sp) !2007
	sw  	a3, 28(sp) !2007
	sw  	a5, 32(sp) !2007
	sw  	s1, 36(sp) !2007
	fsw 	fa2, 40(sp) !2007
	fsw 	fa1, 48(sp) !2007
	sw  	s2, 56(sp) !2007
	fsw 	fa0, 64(sp) !2007
	sw  	a6, 72(sp) !2007
	fsw 	fa3, 80(sp) !2007
	addi	a0, a7, 0 !2007
	fcvt.s.w fa0, a0
	flw  	fa1, 80(sp) !2007
	fmul	fa1, fa1, fa0 !2007
	lw  	a0, 72(sp) !2008
	addi	t0, a0, 0 !2008
	flw  	fa0, 0(t0) !2008
	fmul	fa0, fa1, fa0 !2008
	flw  	fa2, 64(sp) !2008
	fadd	fa0, fa0, fa2 !2008
	lw  	a1, 56(sp) !2008
	addi	t0, a1, 0 !2008
	fsw  	fa0, 0(t0) !2008
	addi	t0, a0, 4 !2009
	flw  	fa0, 0(t0) !2009
	fmul	fa0, fa1, fa0 !2009
	flw  	fa3, 48(sp) !2009
	fadd	fa0, fa0, fa3 !2009
	addi	t0, a1, 4 !2009
	fsw  	fa0, 0(t0) !2009
	addi	t0, a0, 8 !2010
	flw  	fa0, 0(t0) !2010
	fmul	fa1, fa1, fa0 !2010
	flw  	fa0, 40(sp) !2010
	fadd	fa1, fa1, fa0 !2010
	addi	t0, a1, 8 !2010
	fsw  	fa1, 0(t0) !2010
	addi	a0, zero, 0 !2011
	sw  	a1, 88(sp) !2011
	addi	a1, a0, 0 !2011
	lw  	a0, 88(sp) !2011
	addi	sp, sp, 88 !2011
	jal 	ra, vecunit_sgn.2427 !2011
	addi	sp, sp, -88 !2011
	li  	fa0, 0.000000 !176
	lw  	a0, 36(sp) !176
	addi	sp, sp, 88 !176
	jal 	ra, vecfill.2419 !176
	addi	sp, sp, -88 !176
	lw  	a0, 32(sp) !2013
	lw  	a1, 28(sp) !2013
	addi	sp, sp, 88 !2013
	jal 	ra, veccpy.2424 !2013
	addi	sp, sp, -88 !2013
	addi	a0, zero, 0 !2016
	li  	fa0, 1.000000 !2016
	lw  	a1, 20(sp) !2016
	lw  	a2, 24(sp) !2016
	slli	t0, a1, 2 !2016
	add 	t0, t0, a2 !2016
	lw  	a3, 0(t0) !2016
	li  	fa1, 0.000000 !2016
	lw  	a4, 56(sp) !2016
	lw  	s7, 16(sp) !2016
	addi	a2, a3, 0 !2016
	addi	a1, a4, 0 !2016
	addi	sp, sp, 88 !2016
	lw  	t1, 0(s7) !2016
	jalr	ra, t1, 0 !2016
	addi	sp, sp, -88 !2016
	lw  	a0, 20(sp) !2017
	lw  	a1, 24(sp) !2017
	slli	t0, a0, 2 !2017
	add 	t0, t0, a1 !2017
	lw  	a2, 0(t0) !2017
	addi	t0, a2, 0 !454
	lw  	a2, 0(t0) !454
	lw  	a3, 36(sp) !2017
	addi	a1, a3, 0 !2017
	addi	a0, a2, 0 !2017
	addi	sp, sp, 88 !2017
	jal 	ra, veccpy.2424 !2017
	addi	sp, sp, -88 !2017
	lw  	a0, 20(sp) !2018
	lw  	a1, 24(sp) !2018
	slli	t0, a0, 2 !2018
	add 	t0, t0, a1 !2018
	lw  	a2, 0(t0) !2018
	addi	t0, a2, 24 !506
	lw  	a2, 0(t0) !506
	lw  	a3, 12(sp) !508
	addi	t0, a2, 0 !508
	sw  	a3, 0(t0) !508
	slli	t0, a0, 2 !2021
	add 	t0, t0, a1 !2021
	lw  	a2, 0(t0) !2021
	addi	a4, zero, 0 !2021
	lw  	s7, 8(sp) !2021
	addi	a1, a4, 0 !2021
	addi	a0, a2, 0 !2021
	addi	sp, sp, 88 !2021
	lw  	t1, 0(s7) !2021
	jalr	ra, t1, 0 !2021
	addi	sp, sp, -88 !2021
	lw  	a0, 20(sp) !2023
	addi	a1, a0, -1 !2023
	lw  	a0, 12(sp) !152
	addi	a0, a0, 1 !152
	addi	t0, zero, 5 !153
	blt 	a0, t0, bge_else.9899 !153
	addi	a2, a0, -5 !153
	jal 	zero, bge_cont.9900 !153
bge_else.9899: !153
	addi	a2, a0, 0 !153
bge_cont.9900: !153
	flw  	fa0, 64(sp) !2023
	flw  	fa1, 48(sp) !2023
	flw  	fa2, 40(sp) !2023
	lw  	a0, 24(sp) !2023
	lw  	s7, 4(sp) !2023
	lw  	t1, 0(s7) !2023
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2023
bge_else.9896: !2005
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_line.2805:
	sw  	ra, 0(sp)
	addi	t0, s7, 24 !2030
	lw  	a3, 0(t0) !2030
	addi	t0, s7, 20 !2030
	lw  	a4, 0(t0) !2030
	addi	t0, s7, 16 !2030
	lw  	a5, 0(t0) !2030
	addi	t0, s7, 12 !2030
	lw  	a6, 0(t0) !2030
	addi	t0, s7, 8 !2030
	lw  	a7, 0(t0) !2030
	addi	t0, s7, 4 !2030
	lw  	s1, 0(t0) !2030
	addi	t0, a5, 0 !2030
	flw  	fa0, 0(t0) !2030
	addi	t0, s1, 4 !2030
	lw  	a5, 0(t0) !2030
	sub 	a1, a1, a5 !2030
	sw  	a2, 4(sp) !2030
	sw  	a0, 8(sp) !2030
	sw  	a6, 12(sp) !2030
	sw  	a7, 16(sp) !2030
	sw  	a3, 20(sp) !2030
	sw  	a4, 24(sp) !2030
	fsw 	fa0, 32(sp) !2030
	addi	a0, a1, 0 !2030
	fcvt.s.w fa0, a0
	flw  	fa1, 32(sp) !2030
	fmul	fa1, fa1, fa0 !2030
	lw  	a0, 24(sp) !2033
	addi	t0, a0, 0 !2033
	flw  	fa0, 0(t0) !2033
	fmul	fa0, fa1, fa0 !2033
	lw  	a1, 20(sp) !2033
	addi	t0, a1, 0 !2033
	flw  	fa2, 0(t0) !2033
	fadd	fa0, fa0, fa2 !2033
	addi	t0, a0, 4 !2034
	flw  	fa2, 0(t0) !2034
	fmul	fa2, fa1, fa2 !2034
	addi	t0, a1, 4 !2034
	flw  	fa3, 0(t0) !2034
	fadd	fa2, fa2, fa3 !2034
	addi	t0, a0, 8 !2035
	flw  	fa3, 0(t0) !2035
	fmul	fa1, fa1, fa3 !2035
	addi	t0, a1, 8 !2035
	flw  	fa3, 0(t0) !2035
	fadd	fa1, fa1, fa3 !2035
	lw  	a0, 16(sp) !2036
	addi	t0, a0, 0 !2036
	lw  	a0, 0(t0) !2036
	addi	a1, a0, -1 !2036
	lw  	a0, 8(sp) !2036
	lw  	a2, 4(sp) !2036
	lw  	s7, 12(sp) !2036
	fsw  	fa2, 40(sp) !2036
	fsgnj   fa2, fa1, fa1 !2036
	flw  	fa1, 40(sp) !2036
	lw  	t1, 0(s7) !2036
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2036
scan_pixel.2809:
	sw  	ra, 0(sp)
	addi	t0, s7, 24 !2044
	lw  	a6, 0(t0) !2044
	addi	t0, s7, 20 !2044
	lw  	a7, 0(t0) !2044
	addi	t0, s7, 16 !2044
	lw  	s1, 0(t0) !2044
	addi	t0, s7, 12 !2044
	lw  	s2, 0(t0) !2044
	addi	t0, s7, 8 !2044
	lw  	s3, 0(t0) !2044
	addi	t0, s7, 4 !2044
	lw  	s4, 0(t0) !2044
	addi	t0, s3, 0 !2044
	lw  	s3, 0(t0) !2044
	blt 	a0, s3, bge_else.9903 !2044
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9903: !2044
	slli	t0, a0, 2 !2047
	add 	t0, t0, a3 !2047
	lw  	s3, 0(t0) !2047
	addi	t0, s3, 0 !454
	lw  	s3, 0(t0) !454
	sw  	s7, 4(sp) !2047
	sw  	a5, 8(sp) !2047
	sw  	a6, 12(sp) !2047
	sw  	a2, 16(sp) !2047
	sw  	a7, 20(sp) !2047
	sw  	s4, 24(sp) !2047
	sw  	a3, 28(sp) !2047
	sw  	a4, 32(sp) !2047
	sw  	a1, 36(sp) !2047
	sw  	a0, 40(sp) !2047
	sw  	s2, 44(sp) !2047
	addi	a1, s3, 0 !2047
	addi	a0, s1, 0 !2047
	addi	sp, sp, 48 !2047
	jal 	ra, veccpy.2424 !2047
	addi	sp, sp, -48 !2047
	lw  	a0, 40(sp) !2050
	lw  	a1, 36(sp) !2050
	lw  	a2, 32(sp) !2050
	lw  	s7, 44(sp) !2050
	addi	sp, sp, 48 !2050
	lw  	t1, 0(s7) !2050
	jalr	ra, t1, 0 !2050
	addi	sp, sp, -48 !2050
	addi	t0, zero, 0 !2050
	bne 	a0, t0, beq_else.9905 !2050
	lw  	a0, 40(sp) !2053
	lw  	a1, 28(sp) !2053
	slli	t0, a0, 2 !2053
	add 	t0, t0, a1 !2053
	lw  	a2, 0(t0) !2053
	addi	a3, zero, 0 !2053
	lw  	s7, 24(sp) !2053
	addi	a1, a3, 0 !2053
	addi	a0, a2, 0 !2053
	addi	sp, sp, 48 !2053
	lw  	t1, 0(s7) !2053
	jalr	ra, t1, 0 !2053
	addi	sp, sp, -48 !2053
	jal 	zero, beq_cont.9906 !2050
beq_else.9905: !2050
	addi	a5, zero, 0 !2051
	lw  	a0, 40(sp) !2051
	lw  	a1, 36(sp) !2051
	lw  	a2, 16(sp) !2051
	lw  	a3, 28(sp) !2051
	lw  	a4, 32(sp) !2051
	lw  	s7, 20(sp) !2051
	addi	sp, sp, 48 !2051
	lw  	t1, 0(s7) !2051
	jalr	ra, t1, 0 !2051
	addi	sp, sp, -48 !2051
beq_cont.9906: !2050
	lw  	a0, 8(sp) !2056
	lw  	s7, 12(sp) !2056
	addi	sp, sp, 48 !2056
	lw  	t1, 0(s7) !2056
	jalr	ra, t1, 0 !2056
	addi	sp, sp, -48 !2056
	lw  	a0, 40(sp) !2058
	addi	a0, a0, 1 !2058
	lw  	a1, 36(sp) !2058
	lw  	a2, 16(sp) !2058
	lw  	a3, 28(sp) !2058
	lw  	a4, 32(sp) !2058
	lw  	a5, 8(sp) !2058
	lw  	s7, 4(sp) !2058
	lw  	t1, 0(s7) !2058
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2058
scan_line.2816:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !2065
	lw  	a6, 0(t0) !2065
	addi	t0, s7, 8 !2065
	lw  	a7, 0(t0) !2065
	addi	t0, s7, 4 !2065
	lw  	s1, 0(t0) !2065
	addi	t0, s1, 4 !2065
	lw  	s2, 0(t0) !2065
	blt 	a0, s2, bge_else.9907 !2065
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9907: !2065
	addi	t0, s1, 4 !2067
	lw  	s1, 0(t0) !2067
	addi	s1, s1, -1 !2067
	sw  	s7, 4(sp) !2067
	sw  	a4, 8(sp) !2067
	sw  	a5, 12(sp) !2067
	sw  	a3, 16(sp) !2067
	sw  	a2, 20(sp) !2067
	sw  	a1, 24(sp) !2067
	sw  	a0, 28(sp) !2067
	sw  	a6, 32(sp) !2067
	blt 	a0, s1, bge_else.9909 !2067
	jal 	zero, bge_cont.9910 !2067
bge_else.9909: !2067
	addi	s1, a0, 1 !2068
	addi	a2, a4, 0 !2068
	addi	a1, s1, 0 !2068
	addi	a0, a3, 0 !2068
	addi	s7, a7, 0 !2068
	addi	sp, sp, 40 !2068
	lw  	t1, 0(s7) !2068
	jalr	ra, t1, 0 !2068
	addi	sp, sp, -40 !2068
bge_cont.9910: !2067
	addi	a0, zero, 0 !2070
	lw  	a1, 28(sp) !2070
	lw  	a2, 24(sp) !2070
	lw  	a3, 20(sp) !2070
	lw  	a4, 16(sp) !2070
	lw  	a5, 12(sp) !2070
	lw  	s7, 32(sp) !2070
	addi	sp, sp, 40 !2070
	lw  	t1, 0(s7) !2070
	jalr	ra, t1, 0 !2070
	addi	sp, sp, -40 !2070
	lw  	a0, 28(sp) !2071
	addi	a0, a0, 1 !2071
	lw  	a1, 8(sp) !152
	addi	a1, a1, 2 !152
	addi	t0, zero, 5 !153
	blt 	a1, t0, bge_else.9911 !153
	addi	a4, a1, -5 !153
	jal 	zero, bge_cont.9912 !153
bge_else.9911: !153
	addi	a4, a1, 0 !153
bge_cont.9912: !153
	lw  	a1, 20(sp) !2071
	lw  	a2, 16(sp) !2071
	lw  	a3, 24(sp) !2071
	lw  	a5, 12(sp) !2071
	lw  	s7, 4(sp) !2071
	lw  	t1, 0(s7) !2071
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2071
create_float5x3array.2823:
	sw  	ra, 0(sp)
	addi	a0, zero, 3 !2080
	li  	fa0, 0.000000 !2080
	addi	sp, sp, 8 !2080
	jal 	ra, create_float_array !2080
	addi	sp, sp, -8 !2080
	addi	a1, a0, 0 !2080
	addi	a0, zero, 5 !2081
	addi	sp, sp, 8 !2081
	jal 	ra, create_array !2081
	addi	sp, sp, -8 !2081
	addi	a1, zero, 3 !2082
	li  	fa0, 0.000000 !2082
	sw  	a0, 4(sp) !2082
	addi	a0, a1, 0 !2082
	addi	sp, sp, 8 !2082
	jal 	ra, create_float_array !2082
	addi	sp, sp, -8 !2082
	lw  	a1, 4(sp) !2082
	addi	t0, a1, 4 !2082
	sw  	a0, 0(t0) !2082
	addi	a0, zero, 3 !2083
	li  	fa0, 0.000000 !2083
	addi	sp, sp, 8 !2083
	jal 	ra, create_float_array !2083
	addi	sp, sp, -8 !2083
	lw  	a1, 4(sp) !2083
	addi	t0, a1, 8 !2083
	sw  	a0, 0(t0) !2083
	addi	a0, zero, 3 !2084
	li  	fa0, 0.000000 !2084
	addi	sp, sp, 8 !2084
	jal 	ra, create_float_array !2084
	addi	sp, sp, -8 !2084
	lw  	a1, 4(sp) !2084
	addi	t0, a1, 12 !2084
	sw  	a0, 0(t0) !2084
	addi	a0, zero, 3 !2085
	li  	fa0, 0.000000 !2085
	addi	sp, sp, 8 !2085
	jal 	ra, create_float_array !2085
	addi	sp, sp, -8 !2085
	lw  	a1, 4(sp) !2085
	addi	t0, a1, 16 !2085
	sw  	a0, 0(t0) !2085
	addi	a0, a1, 0 !2086
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_pixel.2825:
	sw  	ra, 0(sp)
	addi	a0, zero, 3 !2092
	li  	fa0, 0.000000 !2092
	addi	sp, sp, 8 !2092
	jal 	ra, create_float_array !2092
	addi	sp, sp, -8 !2092
	sw  	a0, 4(sp) !2093
	addi	sp, sp, 8 !2093
	jal 	ra, create_float5x3array.2823 !2093
	addi	sp, sp, -8 !2093
	addi	a1, zero, 5 !2094
	addi	a2, zero, 0 !2094
	sw  	a0, 8(sp) !2094
	addi	a0, a1, 0 !2094
	addi	a1, a2, 0 !2094
	addi	sp, sp, 16 !2094
	jal 	ra, create_array !2094
	addi	sp, sp, -16 !2094
	addi	a1, zero, 5 !2095
	addi	a2, zero, 0 !2095
	sw  	a0, 12(sp) !2095
	addi	a0, a1, 0 !2095
	addi	a1, a2, 0 !2095
	addi	sp, sp, 16 !2095
	jal 	ra, create_array !2095
	addi	sp, sp, -16 !2095
	sw  	a0, 16(sp) !2096
	addi	sp, sp, 24 !2096
	jal 	ra, create_float5x3array.2823 !2096
	addi	sp, sp, -24 !2096
	sw  	a0, 20(sp) !2097
	addi	sp, sp, 24 !2097
	jal 	ra, create_float5x3array.2823 !2097
	addi	sp, sp, -24 !2097
	addi	a1, zero, 1 !2098
	addi	a2, zero, 0 !2098
	sw  	a0, 24(sp) !2098
	addi	a0, a1, 0 !2098
	addi	a1, a2, 0 !2098
	addi	sp, sp, 32 !2098
	jal 	ra, create_array !2098
	addi	sp, sp, -32 !2098
	sw  	a0, 28(sp) !2099
	addi	sp, sp, 32 !2099
	jal 	ra, create_float5x3array.2823 !2099
	addi	sp, sp, -32 !2099
	addi	a1, gp, 0 !2100
	addi	gp, gp, 32 !2100
	addi	t0, a1, 28 !2100
	sw  	a0, 0(t0) !2100
	lw  	a0, 28(sp) !2100
	addi	t0, a1, 24 !2100
	sw  	a0, 0(t0) !2100
	lw  	a0, 24(sp) !2100
	addi	t0, a1, 20 !2100
	sw  	a0, 0(t0) !2100
	lw  	a0, 20(sp) !2100
	addi	t0, a1, 16 !2100
	sw  	a0, 0(t0) !2100
	lw  	a0, 16(sp) !2100
	addi	t0, a1, 12 !2100
	sw  	a0, 0(t0) !2100
	lw  	a0, 12(sp) !2100
	addi	t0, a1, 8 !2100
	sw  	a0, 0(t0) !2100
	lw  	a0, 8(sp) !2100
	addi	t0, a1, 4 !2100
	sw  	a0, 0(t0) !2100
	lw  	a0, 4(sp) !2100
	addi	t0, a1, 0 !2100
	sw  	a0, 0(t0) !2100
	addi	a0, a1, 0 !2100
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_line_elements.2827:
	sw  	ra, 0(sp)
	addi	t0, zero, 0 !2105
	blt 	a1, t0, bge_else.9913 !2105
	sw  	a1, 4(sp) !2106
	sw  	a0, 8(sp) !2106
	addi	sp, sp, 16 !2106
	jal 	ra, create_pixel.2825 !2106
	addi	sp, sp, -16 !2106
	lw  	a1, 4(sp) !2106
	lw  	a2, 8(sp) !2106
	slli	t0, a1, 2 !2106
	add 	t0, t0, a2 !2106
	sw  	a0, 0(t0) !2106
	addi	a1, a1, -1 !2107
	addi	a0, a2, 0 !2107
	lw  	ra, 0(sp)
	jal 	zero, init_line_elements.2827 !2107
bge_else.9913: !2105
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_pixelline.2830:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !2114
	lw  	a0, 0(t0) !2114
	addi	t0, a0, 0 !2114
	lw  	a1, 0(t0) !2114
	sw  	a0, 4(sp) !2114
	sw  	a1, 8(sp) !2114
	addi	sp, sp, 16 !2114
	jal 	ra, create_pixel.2825 !2114
	addi	sp, sp, -16 !2114
	addi	a1, a0, 0 !2114
	lw  	a0, 8(sp) !2114
	addi	sp, sp, 16 !2114
	jal 	ra, create_array !2114
	addi	sp, sp, -16 !2114
	lw  	a1, 4(sp) !2115
	addi	t0, a1, 0 !2115
	lw  	a1, 0(t0) !2115
	addi	a1, a1, -2 !2115
	lw  	ra, 0(sp)
	jal 	zero, init_line_elements.2827 !2115
adjust_position.2834:
	sw  	ra, 0(sp)
	fmul	fa0, fa0, fa0 !2128
	li  	fa2, 0.100000 !2128
	fadd	fa0, fa0, fa2 !2128
	fsw 	fa1, 8(sp) !2128
	fsqrt   fa0, fa0
	li  	fa1, 1.000000 !2129
	fdiv	fa1, fa1, fa0 !2129
	fsw 	fa0, 16(sp) !2130
	fsgnj   fa0, fa1, fa1 !2130
	addi	sp, sp, 24 !2130
	jal 	ra, atan !2130
	addi	sp, sp, -24 !2130
	flw  	fa1, 8(sp) !2131
	fmul	fa0, fa0, fa1 !2131
	fsw 	fa0, 24(sp) !2123
	addi	sp, sp, 32 !2123
	jal 	ra, sin !2123
	addi	sp, sp, -32 !2123
	flw  	fa1, 24(sp) !2123
	fsw 	fa0, 32(sp) !2123
	fsgnj   fa0, fa1, fa1 !2123
	addi	sp, sp, 40 !2123
	jal 	ra, cos !2123
	addi	sp, sp, -40 !2123
	flw  	fa1, 32(sp) !2123
	fdiv	fa1, fa1, fa0 !2123
	flw  	fa0, 16(sp) !2132
	fmul	fa0, fa1, fa0 !2132
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec.2837:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !2137
	lw  	a3, 0(t0) !2137
	addi	t0, zero, 5 !2137
	blt 	a0, t0, bge_else.9915 !2137
	sw  	a2, 4(sp) !2138
	sw  	a1, 8(sp) !2138
	sw  	a3, 12(sp) !2138
	fsw 	fa0, 16(sp) !2138
	fsw 	fa1, 24(sp) !2138
	fmul	fa0, fa0, fa0
	flw  	fa1, 24(sp) !2138
	fsw 	fa0, 32(sp) !2138
	fsgnj   fa0, fa1, fa1 !2138
	fmul	fa0, fa0, fa0
	flw  	fa1, 32(sp) !2138
	fadd	fa1, fa1, fa0 !2138
	li  	fa0, 1.000000 !2138
	fadd	fa0, fa1, fa0 !2138
	fsqrt   fa0, fa0
	flw  	fa1, 16(sp) !2139
	fdiv	fa1, fa1, fa0 !2139
	flw  	fa2, 24(sp) !2140
	fdiv	fa2, fa2, fa0 !2140
	li  	fa3, 1.000000 !2141
	fdiv	fa3, fa3, fa0 !2141
	lw  	a0, 8(sp) !2144
	lw  	a1, 12(sp) !2144
	slli	t0, a0, 2 !2144
	add 	t0, t0, a1 !2144
	lw  	a0, 0(t0) !2144
	lw  	a1, 4(sp) !2145
	slli	t0, a1, 2 !2145
	add 	t0, t0, a0 !2145
	lw  	a2, 0(t0) !2145
	addi	t0, a2, 0 !522
	lw  	a2, 0(t0) !522
	fsw 	fa3, 40(sp) !2145
	fsw 	fa1, 48(sp) !2145
	fsw 	fa2, 56(sp) !2145
	sw  	a0, 64(sp) !2145
	addi	a0, a2, 0 !2145
	fsgnj   fa0, fa1, fa1 !2145
	fsgnj   fa1, fa2, fa2 !2145
	fsgnj   fa2, fa3, fa3 !2145
	addi	sp, sp, 72 !2145
	jal 	ra, vecset.2414 !2145
	addi	sp, sp, -72 !2145
	lw  	a0, 4(sp) !2146
	addi	a1, a0, 40 !2146
	lw  	a2, 64(sp) !2146
	slli	t0, a1, 2 !2146
	add 	t0, t0, a2 !2146
	lw  	a1, 0(t0) !2146
	addi	t0, a1, 0 !522
	lw  	a1, 0(t0) !522
	flw  	fa0, 56(sp) !2146
	sw  	a1, 68(sp) !2146
	fsgnjn  fa2, fa0, fa0
	flw  	fa0, 48(sp) !2146
	flw  	fa1, 40(sp) !2146
	lw  	a0, 68(sp) !2146
	addi	sp, sp, 72 !2146
	jal 	ra, vecset.2414 !2146
	addi	sp, sp, -72 !2146
	lw  	a0, 4(sp) !2147
	addi	a1, a0, 80 !2147
	lw  	a2, 64(sp) !2147
	slli	t0, a1, 2 !2147
	add 	t0, t0, a2 !2147
	lw  	a1, 0(t0) !2147
	addi	t0, a1, 0 !522
	lw  	a1, 0(t0) !522
	flw  	fa0, 48(sp) !2147
	sw  	a1, 72(sp) !2147
	fsgnjn  fa1, fa0, fa0
	flw  	fa0, 56(sp) !2147
	fsw 	fa1, 80(sp) !2147
	fsgnjn  fa2, fa0, fa0
	flw  	fa0, 40(sp) !2147
	flw  	fa1, 80(sp) !2147
	lw  	a0, 72(sp) !2147
	addi	sp, sp, 88 !2147
	jal 	ra, vecset.2414 !2147
	addi	sp, sp, -88 !2147
	lw  	a0, 4(sp) !2148
	addi	a1, a0, 1 !2148
	lw  	a2, 64(sp) !2148
	slli	t0, a1, 2 !2148
	add 	t0, t0, a2 !2148
	lw  	a1, 0(t0) !2148
	addi	t0, a1, 0 !522
	lw  	a1, 0(t0) !522
	flw  	fa0, 48(sp) !2148
	sw  	a1, 88(sp) !2148
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 56(sp) !2148
	fsw 	fa0, 96(sp) !2148
	fsgnj   fa0, fa1, fa1 !2148
	fsgnjn  fa1, fa0, fa0
	flw  	fa0, 40(sp) !2148
	fsw 	fa1, 104(sp) !2148
	fsgnjn  fa2, fa0, fa0
	flw  	fa0, 96(sp) !2148
	flw  	fa1, 104(sp) !2148
	lw  	a0, 88(sp) !2148
	addi	sp, sp, 112 !2148
	jal 	ra, vecset.2414 !2148
	addi	sp, sp, -112 !2148
	lw  	a0, 4(sp) !2149
	addi	a1, a0, 41 !2149
	lw  	a2, 64(sp) !2149
	slli	t0, a1, 2 !2149
	add 	t0, t0, a2 !2149
	lw  	a1, 0(t0) !2149
	addi	t0, a1, 0 !522
	lw  	a1, 0(t0) !522
	flw  	fa0, 48(sp) !2149
	sw  	a1, 112(sp) !2149
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 40(sp) !2149
	fsw 	fa0, 120(sp) !2149
	fsgnj   fa0, fa1, fa1 !2149
	fsgnjn  fa1, fa0, fa0
	flw  	fa0, 120(sp) !2149
	flw  	fa2, 56(sp) !2149
	lw  	a0, 112(sp) !2149
	addi	sp, sp, 128 !2149
	jal 	ra, vecset.2414 !2149
	addi	sp, sp, -128 !2149
	lw  	a0, 4(sp) !2150
	addi	a0, a0, 81 !2150
	lw  	a1, 64(sp) !2150
	slli	t0, a0, 2 !2150
	add 	t0, t0, a1 !2150
	lw  	a0, 0(t0) !2150
	addi	t0, a0, 0 !522
	lw  	a0, 0(t0) !522
	flw  	fa0, 40(sp) !2150
	sw  	a0, 128(sp) !2150
	fsgnjn  fa0, fa0, fa0
	flw  	fa1, 48(sp) !2150
	flw  	fa2, 56(sp) !2150
	lw  	a0, 128(sp) !2150
	lw  	ra, 0(sp)
	jal 	zero, vecset.2414 !2150
bge_else.9915: !2137
	fsw 	fa2, 136(sp) !2152
	sw  	a2, 4(sp) !2152
	sw  	a1, 8(sp) !2152
	sw  	s7, 144(sp) !2152
	fsw 	fa3, 152(sp) !2152
	sw  	a0, 160(sp) !2152
	fsgnj   fa0, fa1, fa1 !2152
	fsgnj   fa1, fa2, fa2 !2152
	addi	sp, sp, 168 !2152
	jal 	ra, adjust_position.2834 !2152
	addi	sp, sp, -168 !2152
	lw  	a0, 160(sp) !2153
	addi	a0, a0, 1 !2153
	flw  	fa1, 152(sp) !2153
	fsw 	fa0, 168(sp) !2153
	sw  	a0, 176(sp) !2153
	addi	sp, sp, 184 !2153
	jal 	ra, adjust_position.2834 !2153
	addi	sp, sp, -184 !2153
	fsgnj   fa0, fa1, fa1 !2153
	flw  	fa0, 168(sp) !2153
	flw  	fa2, 136(sp) !2153
	flw  	fa3, 152(sp) !2153
	lw  	a0, 176(sp) !2153
	lw  	a1, 8(sp) !2153
	lw  	a2, 4(sp) !2153
	lw  	s7, 144(sp) !2153
	lw  	t1, 0(s7) !2153
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2153
calc_dirvecs.2845:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !2158
	lw  	a3, 0(t0) !2158
	addi	t0, zero, 0 !2158
	blt 	a0, t0, bge_else.9922 !2158
	sw  	s7, 4(sp) !2160
	sw  	a0, 8(sp) !2160
	fsw 	fa0, 16(sp) !2160
	sw  	a2, 24(sp) !2160
	sw  	a1, 28(sp) !2160
	sw  	a3, 32(sp) !2160
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2160
	fmul	fa0, fa0, fa1 !2160
	li  	fa1, 0.900000 !2160
	fsub	fa2, fa0, fa1 !2160
	addi	a0, zero, 0 !2161
	li  	fa0, 0.000000 !2161
	li  	fa1, 0.000000 !2161
	flw  	fa3, 16(sp) !2161
	lw  	a1, 28(sp) !2161
	lw  	a2, 24(sp) !2161
	lw  	s7, 32(sp) !2161
	addi	sp, sp, 40 !2161
	lw  	t1, 0(s7) !2161
	jalr	ra, t1, 0 !2161
	addi	sp, sp, -40 !2161
	lw  	a0, 8(sp) !2163
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2163
	fmul	fa0, fa0, fa1 !2163
	li  	fa1, 0.100000 !2163
	fadd	fa2, fa0, fa1 !2163
	addi	a0, zero, 0 !2164
	li  	fa0, 0.000000 !2164
	li  	fa1, 0.000000 !2164
	lw  	a1, 24(sp) !2164
	addi	a2, a1, 2 !2164
	flw  	fa3, 16(sp) !2164
	lw  	a3, 28(sp) !2164
	lw  	s7, 32(sp) !2164
	addi	a1, a3, 0 !2164
	addi	sp, sp, 40 !2164
	lw  	t1, 0(s7) !2164
	jalr	ra, t1, 0 !2164
	addi	sp, sp, -40 !2164
	lw  	a0, 8(sp) !2166
	addi	a0, a0, -1 !2166
	lw  	a1, 28(sp) !152
	addi	a1, a1, 1 !152
	addi	t0, zero, 5 !153
	blt 	a1, t0, bge_else.9924 !153
	addi	a1, a1, -5 !153
	jal 	zero, bge_cont.9925 !153
bge_else.9924: !153
bge_cont.9925: !153
	flw  	fa0, 16(sp) !2166
	lw  	a2, 24(sp) !2166
	lw  	s7, 4(sp) !2166
	lw  	t1, 0(s7) !2166
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2166
bge_else.9922: !2158
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec_rows.2850:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !2172
	lw  	a3, 0(t0) !2172
	addi	t0, zero, 0 !2172
	blt 	a0, t0, bge_else.9927 !2172
	sw  	s7, 4(sp) !2173
	sw  	a0, 8(sp) !2173
	sw  	a2, 12(sp) !2173
	sw  	a1, 16(sp) !2173
	sw  	a3, 20(sp) !2173
	fcvt.s.w fa0, a0
	li  	fa1, 0.200000 !2173
	fmul	fa0, fa0, fa1 !2173
	li  	fa1, 0.900000 !2173
	fsub	fa0, fa0, fa1 !2173
	addi	a0, zero, 4 !2174
	lw  	a1, 16(sp) !2174
	lw  	a2, 12(sp) !2174
	lw  	s7, 20(sp) !2174
	addi	sp, sp, 24 !2174
	lw  	t1, 0(s7) !2174
	jalr	ra, t1, 0 !2174
	addi	sp, sp, -24 !2174
	lw  	a0, 8(sp) !2175
	addi	a0, a0, -1 !2175
	lw  	a1, 16(sp) !152
	addi	a1, a1, 2 !152
	addi	t0, zero, 5 !153
	blt 	a1, t0, bge_else.9928 !153
	addi	a1, a1, -5 !153
	jal 	zero, bge_cont.9929 !153
bge_else.9928: !153
bge_cont.9929: !153
	lw  	a2, 12(sp) !2175
	addi	a2, a2, 4 !2175
	lw  	s7, 4(sp) !2175
	lw  	t1, 0(s7) !2175
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2175
bge_else.9927: !2172
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec.2854:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !2183
	lw  	a0, 0(t0) !2183
	addi	a1, zero, 3 !2183
	li  	fa0, 0.000000 !2183
	sw  	a0, 4(sp) !2183
	addi	a0, a1, 0 !2183
	addi	sp, sp, 8 !2183
	jal 	ra, create_float_array !2183
	addi	sp, sp, -8 !2183
	addi	a1, a0, 0 !2183
	lw  	a0, 4(sp) !2184
	addi	t0, a0, 0 !2184
	lw  	a0, 0(t0) !2184
	sw  	a1, 8(sp) !2184
	addi	sp, sp, 16 !2184
	jal 	ra, create_array !2184
	addi	sp, sp, -16 !2184
	addi	a1, gp, 0 !2185
	addi	gp, gp, 8 !2185
	addi	t0, a1, 4 !2185
	sw  	a0, 0(t0) !2185
	lw  	a0, 8(sp) !2185
	addi	t0, a1, 0 !2185
	sw  	a0, 0(t0) !2185
	addi	a0, a1, 0 !2185
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec_elements.2856:
	sw  	ra, 0(sp)
	addi	t0, s7, 4 !2189
	lw  	a2, 0(t0) !2189
	addi	t0, zero, 0 !2189
	blt 	a1, t0, bge_else.9931 !2189
	sw  	s7, 4(sp) !2190
	sw  	a1, 8(sp) !2190
	sw  	a0, 12(sp) !2190
	addi	s7, a2, 0 !2190
	addi	sp, sp, 16 !2190
	lw  	t1, 0(s7) !2190
	jalr	ra, t1, 0 !2190
	addi	sp, sp, -16 !2190
	lw  	a1, 8(sp) !2190
	lw  	a2, 12(sp) !2190
	slli	t0, a1, 2 !2190
	add 	t0, t0, a2 !2190
	sw  	a0, 0(t0) !2190
	addi	a1, a1, -1 !2191
	lw  	s7, 4(sp) !2191
	addi	a0, a2, 0 !2191
	lw  	t1, 0(s7) !2191
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2191
bge_else.9931: !2189
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvecs.2859:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !2196
	lw  	a1, 0(t0) !2196
	addi	t0, s7, 8 !2196
	lw  	a2, 0(t0) !2196
	addi	t0, s7, 4 !2196
	lw  	a3, 0(t0) !2196
	addi	t0, zero, 0 !2196
	blt 	a0, t0, bge_else.9933 !2196
	addi	a4, zero, 120 !2197
	sw  	s7, 4(sp) !2197
	sw  	a2, 8(sp) !2197
	sw  	a0, 12(sp) !2197
	sw  	a1, 16(sp) !2197
	sw  	a4, 20(sp) !2197
	addi	s7, a3, 0 !2197
	addi	sp, sp, 24 !2197
	lw  	t1, 0(s7) !2197
	jalr	ra, t1, 0 !2197
	addi	sp, sp, -24 !2197
	addi	a1, a0, 0 !2197
	lw  	a0, 20(sp) !2197
	addi	sp, sp, 24 !2197
	jal 	ra, create_array !2197
	addi	sp, sp, -24 !2197
	lw  	a1, 12(sp) !2197
	lw  	a2, 16(sp) !2197
	slli	t0, a1, 2 !2197
	add 	t0, t0, a2 !2197
	sw  	a0, 0(t0) !2197
	slli	t0, a1, 2 !2198
	add 	t0, t0, a2 !2198
	lw  	a0, 0(t0) !2198
	addi	a2, zero, 118 !2198
	lw  	s7, 8(sp) !2198
	addi	a1, a2, 0 !2198
	addi	sp, sp, 24 !2198
	lw  	t1, 0(s7) !2198
	jalr	ra, t1, 0 !2198
	addi	sp, sp, -24 !2198
	lw  	a0, 12(sp) !2199
	addi	a0, a0, -1 !2199
	lw  	s7, 4(sp) !2199
	lw  	t1, 0(s7) !2199
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2199
bge_else.9933: !2196
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvec_constants.2861:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !2206
	lw  	a2, 0(t0) !2206
	addi	t0, s7, 4 !2206
	lw  	a3, 0(t0) !2206
	addi	t0, zero, 0 !2206
	blt 	a1, t0, bge_else.9935 !2206
	slli	t0, a1, 2 !2207
	add 	t0, t0, a0 !2207
	lw  	a4, 0(t0) !2207
	addi	t0, a2, 0 !1135
	lw  	a2, 0(t0) !1135
	addi	a2, a2, -1 !1135
	sw  	a0, 4(sp) !1135
	sw  	s7, 8(sp) !1135
	sw  	a1, 12(sp) !1135
	addi	a1, a2, 0 !1135
	addi	a0, a4, 0 !1135
	addi	s7, a3, 0 !1135
	addi	sp, sp, 16 !1135
	lw  	t1, 0(s7) !1135
	jalr	ra, t1, 0 !1135
	addi	sp, sp, -16 !1135
	lw  	a0, 12(sp) !2208
	addi	a1, a0, -1 !2208
	lw  	a0, 4(sp) !2208
	lw  	s7, 8(sp) !2208
	lw  	t1, 0(s7) !2208
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2208
bge_else.9935: !2206
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_vecset_constants.2864:
	sw  	ra, 0(sp)
	addi	t0, s7, 8 !2213
	lw  	a1, 0(t0) !2213
	addi	t0, s7, 4 !2213
	lw  	a2, 0(t0) !2213
	addi	t0, zero, 0 !2213
	blt 	a0, t0, bge_else.9937 !2213
	slli	t0, a0, 2 !2214
	add 	t0, t0, a2 !2214
	lw  	a2, 0(t0) !2214
	addi	a3, zero, 119 !2214
	sw  	s7, 4(sp) !2214
	sw  	a0, 8(sp) !2214
	addi	a0, a2, 0 !2214
	addi	s7, a1, 0 !2214
	addi	a1, a3, 0 !2214
	addi	sp, sp, 16 !2214
	lw  	t1, 0(s7) !2214
	jalr	ra, t1, 0 !2214
	addi	sp, sp, -16 !2214
	lw  	a0, 8(sp) !2215
	addi	a0, a0, -1 !2215
	lw  	s7, 4(sp) !2215
	lw  	t1, 0(s7) !2215
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2215
bge_else.9937: !2213
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvecs.2866:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !2220
	lw  	a0, 0(t0) !2220
	addi	t0, s7, 8 !2220
	lw  	a1, 0(t0) !2220
	addi	t0, s7, 4 !2220
	lw  	a2, 0(t0) !2220
	addi	a3, zero, 4 !2220
	sw  	a0, 4(sp) !2220
	sw  	a2, 8(sp) !2220
	addi	a0, a3, 0 !2220
	addi	s7, a1, 0 !2220
	addi	sp, sp, 16 !2220
	lw  	t1, 0(s7) !2220
	jalr	ra, t1, 0 !2220
	addi	sp, sp, -16 !2220
	addi	a0, zero, 9 !2221
	addi	a1, zero, 0 !2221
	addi	a2, zero, 0 !2221
	lw  	s7, 8(sp) !2221
	addi	sp, sp, 16 !2221
	lw  	t1, 0(s7) !2221
	jalr	ra, t1, 0 !2221
	addi	sp, sp, -16 !2221
	addi	a0, zero, 4 !2222
	lw  	s7, 4(sp) !2222
	lw  	t1, 0(s7) !2222
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2222
add_reflection.2868:
	sw  	ra, 0(sp)
	addi	t0, s7, 16 !2229
	lw  	a2, 0(t0) !2229
	addi	t0, s7, 12 !2229
	lw  	a3, 0(t0) !2229
	addi	t0, s7, 8 !2229
	lw  	a4, 0(t0) !2229
	addi	t0, s7, 4 !2229
	lw  	s7, 0(t0) !2229
	sw  	a0, 4(sp) !2229
	sw  	a2, 8(sp) !2229
	sw  	a1, 12(sp) !2229
	fsw 	fa0, 16(sp) !2229
	sw  	a4, 24(sp) !2229
	sw  	a3, 28(sp) !2229
	fsw 	fa3, 32(sp) !2229
	fsw 	fa2, 40(sp) !2229
	fsw 	fa1, 48(sp) !2229
	addi	sp, sp, 56 !2229
	lw  	t1, 0(s7) !2229
	jalr	ra, t1, 0 !2229
	addi	sp, sp, -56 !2229
	addi	t0, a0, 0 !522
	lw  	a1, 0(t0) !522
	flw  	fa0, 48(sp) !2230
	flw  	fa1, 40(sp) !2230
	flw  	fa2, 32(sp) !2230
	sw  	a0, 56(sp) !2230
	addi	a0, a1, 0 !2230
	addi	sp, sp, 64 !2230
	jal 	ra, vecset.2414 !2230
	addi	sp, sp, -64 !2230
	lw  	a0, 28(sp) !1135
	addi	t0, a0, 0 !1135
	lw  	a0, 0(t0) !1135
	addi	a1, a0, -1 !1135
	lw  	a0, 56(sp) !1135
	lw  	s7, 24(sp) !1135
	addi	sp, sp, 64 !1135
	lw  	t1, 0(s7) !1135
	jalr	ra, t1, 0 !1135
	addi	sp, sp, -64 !1135
	addi	a0, gp, 0 !2233
	addi	gp, gp, 16 !2233
	flw  	fa0, 16(sp) !2233
	addi	t0, a0, 8 !2233
	fsw  	fa0, 0(t0) !2233
	lw  	a1, 56(sp) !2233
	addi	t0, a0, 4 !2233
	sw  	a1, 0(t0) !2233
	lw  	a1, 12(sp) !2233
	addi	t0, a0, 0 !2233
	sw  	a1, 0(t0) !2233
	lw  	a1, 4(sp) !2233
	lw  	a2, 8(sp) !2233
	slli	t0, a1, 2 !2233
	add 	t0, t0, a2 !2233
	sw  	a0, 0(t0) !2233
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_rect_reflection.2875:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !2238
	lw  	a2, 0(t0) !2238
	addi	t0, s7, 8 !2238
	lw  	a3, 0(t0) !2238
	addi	t0, s7, 4 !2238
	lw  	s7, 0(t0) !2238
	slli	a0, a0, 2 !2238
	addi	t0, a2, 0 !2239
	lw  	a4, 0(t0) !2239
	li  	fa0, 1.000000 !2240
	addi	t0, a1, 28 !361
	lw  	a1, 0(t0) !361
	addi	t0, a1, 0 !366
	flw  	fa1, 0(t0) !366
	fsub	fa0, fa0, fa1 !2240
	addi	t0, a3, 0 !2241
	flw  	fa1, 0(t0) !2241
	sw  	a2, 4(sp) !2241
	fsw 	fa0, 8(sp) !2241
	sw  	a4, 16(sp) !2241
	sw  	s7, 20(sp) !2241
	sw  	a0, 24(sp) !2241
	sw  	a3, 28(sp) !2241
	fsgnj   fa0, fa1, fa1 !2241
	fsgnjn  fa0, fa0, fa0
	lw  	a0, 28(sp) !2242
	addi	t0, a0, 4 !2242
	flw  	fa1, 0(t0) !2242
	fsw 	fa0, 32(sp) !2242
	fsgnj   fa0, fa1, fa1 !2242
	fsgnjn  fa2, fa0, fa0
	lw  	a0, 28(sp) !2243
	addi	t0, a0, 8 !2243
	flw  	fa0, 0(t0) !2243
	fsw 	fa2, 40(sp) !2243
	fsgnjn  fa3, fa0, fa0
	lw  	a0, 24(sp) !2244
	addi	a1, a0, 1 !2244
	lw  	a2, 28(sp) !2244
	addi	t0, a2, 0 !2244
	flw  	fa1, 0(t0) !2244
	flw  	fa0, 8(sp) !2244
	flw  	fa2, 40(sp) !2244
	lw  	a3, 16(sp) !2244
	lw  	s7, 20(sp) !2244
	fsw 	fa3, 48(sp) !2244
	addi	a0, a3, 0 !2244
	addi	sp, sp, 56 !2244
	lw  	t1, 0(s7) !2244
	jalr	ra, t1, 0 !2244
	addi	sp, sp, -56 !2244
	lw  	a0, 16(sp) !2245
	addi	a1, a0, 1 !2245
	lw  	a2, 24(sp) !2245
	addi	a3, a2, 2 !2245
	lw  	a4, 28(sp) !2245
	addi	t0, a4, 4 !2245
	flw  	fa2, 0(t0) !2245
	flw  	fa0, 8(sp) !2245
	flw  	fa1, 32(sp) !2245
	flw  	fa3, 48(sp) !2245
	lw  	s7, 20(sp) !2245
	addi	a0, a1, 0 !2245
	addi	a1, a3, 0 !2245
	addi	sp, sp, 56 !2245
	lw  	t1, 0(s7) !2245
	jalr	ra, t1, 0 !2245
	addi	sp, sp, -56 !2245
	lw  	a0, 16(sp) !2246
	addi	a1, a0, 2 !2246
	lw  	a2, 24(sp) !2246
	addi	a2, a2, 3 !2246
	lw  	a3, 28(sp) !2246
	addi	t0, a3, 8 !2246
	flw  	fa3, 0(t0) !2246
	flw  	fa0, 8(sp) !2246
	flw  	fa1, 32(sp) !2246
	flw  	fa2, 40(sp) !2246
	lw  	s7, 20(sp) !2246
	addi	a0, a1, 0 !2246
	addi	a1, a2, 0 !2246
	addi	sp, sp, 56 !2246
	lw  	t1, 0(s7) !2246
	jalr	ra, t1, 0 !2246
	addi	sp, sp, -56 !2246
	lw  	a0, 16(sp) !2247
	addi	a0, a0, 3 !2247
	lw  	a1, 4(sp) !2247
	addi	t0, a1, 0 !2247
	sw  	a0, 0(t0) !2247
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_surface_reflection.2878:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !2252
	lw  	a2, 0(t0) !2252
	addi	t0, s7, 8 !2252
	lw  	a3, 0(t0) !2252
	addi	t0, s7, 4 !2252
	lw  	a4, 0(t0) !2252
	slli	a0, a0, 2 !2252
	addi	a0, a0, 1 !2252
	addi	t0, a2, 0 !2253
	lw  	a5, 0(t0) !2253
	li  	fa0, 1.000000 !2254
	addi	t0, a1, 28 !361
	lw  	a6, 0(t0) !361
	addi	t0, a6, 0 !366
	flw  	fa1, 0(t0) !366
	fsub	fa0, fa0, fa1 !2254
	addi	t0, a1, 16 !321
	lw  	a6, 0(t0) !321
	sw  	a2, 4(sp) !2255
	fsw 	fa0, 8(sp) !2255
	sw  	a0, 16(sp) !2255
	sw  	a5, 20(sp) !2255
	sw  	a4, 24(sp) !2255
	sw  	a3, 28(sp) !2255
	sw  	a1, 32(sp) !2255
	addi	a1, a6, 0 !2255
	addi	a0, a3, 0 !2255
	addi	sp, sp, 40 !2255
	jal 	ra, veciprod.2430 !2255
	addi	sp, sp, -40 !2255
	li  	fa1, 2.000000 !2258
	lw  	a0, 32(sp) !291
	addi	t0, a0, 16 !291
	lw  	a1, 0(t0) !291
	addi	t0, a1, 0 !296
	flw  	fa2, 0(t0) !296
	fmul	fa1, fa1, fa2 !2258
	fmul	fa1, fa1, fa0 !2258
	lw  	a1, 28(sp) !2258
	addi	t0, a1, 0 !2258
	flw  	fa2, 0(t0) !2258
	fsub	fa1, fa1, fa2 !2258
	li  	fa2, 2.000000 !2259
	addi	t0, a0, 16 !301
	lw  	a2, 0(t0) !301
	addi	t0, a2, 4 !306
	flw  	fa3, 0(t0) !306
	fmul	fa2, fa2, fa3 !2259
	fmul	fa2, fa2, fa0 !2259
	addi	t0, a1, 4 !2259
	flw  	fa3, 0(t0) !2259
	fsub	fa2, fa2, fa3 !2259
	li  	fa3, 2.000000 !2260
	addi	t0, a0, 16 !311
	lw  	a0, 0(t0) !311
	addi	t0, a0, 8 !316
	flw  	fa4, 0(t0) !316
	fmul	fa3, fa3, fa4 !2260
	fmul	fa3, fa3, fa0 !2260
	addi	t0, a1, 8 !2260
	flw  	fa0, 0(t0) !2260
	fsub	fa3, fa3, fa0 !2260
	flw  	fa0, 8(sp) !2257
	lw  	a0, 20(sp) !2257
	lw  	a1, 16(sp) !2257
	lw  	s7, 24(sp) !2257
	addi	sp, sp, 40 !2257
	lw  	t1, 0(s7) !2257
	jalr	ra, t1, 0 !2257
	addi	sp, sp, -40 !2257
	lw  	a0, 20(sp) !2261
	addi	a0, a0, 1 !2261
	lw  	a1, 4(sp) !2261
	addi	t0, a1, 0 !2261
	sw  	a0, 0(t0) !2261
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_reflections.2881:
	sw  	ra, 0(sp)
	addi	t0, s7, 12 !2267
	lw  	a1, 0(t0) !2267
	addi	t0, s7, 8 !2267
	lw  	a2, 0(t0) !2267
	addi	t0, s7, 4 !2267
	lw  	a3, 0(t0) !2267
	addi	t0, zero, 0 !2267
	blt 	a0, t0, bge_else.9942 !2267
	slli	t0, a0, 2 !2268
	add 	t0, t0, a3 !2268
	lw  	a3, 0(t0) !2268
	addi	t0, a3, 8 !263
	lw  	a4, 0(t0) !263
	addi	t0, zero, 2 !2269
	bne 	a4, t0, beq_else.9943 !2269
	addi	t0, a3, 28 !361
	lw  	a4, 0(t0) !361
	addi	t0, a4, 0 !366
	flw  	fa0, 0(t0) !366
	li  	fa1, 1.000000 !2270
	sw  	a1, 4(sp) !2270
	sw  	a0, 8(sp) !2270
	sw  	a2, 12(sp) !2270
	sw  	a3, 16(sp) !2270
	fle 	a0, fa0, fa1
	addi	t0, zero, 0 !2270
	bne 	a0, t0, beq_else.9944 !2270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9944: !2270
	lw  	a1, 16(sp) !253
	addi	t0, a1, 4 !253
	lw  	a0, 0(t0) !253
	addi	t0, zero, 1 !2273
	bne 	a0, t0, beq_else.9946 !2273
	lw  	a0, 8(sp) !2274
	lw  	s7, 12(sp) !2274
	lw  	t1, 0(s7) !2274
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2274
beq_else.9946: !2273
	addi	t0, zero, 2 !2275
	bne 	a0, t0, beq_else.9947 !2275
	lw  	a0, 8(sp) !2276
	lw  	s7, 4(sp) !2276
	lw  	t1, 0(s7) !2276
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2276
beq_else.9947: !2275
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.9943: !2269
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.9942: !2267
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
rt.2883:
	sw  	ra, 0(sp)
	addi	t0, s7, 60 !2287
	lw  	a3, 0(t0) !2287
	addi	t0, s7, 56 !2287
	lw  	a4, 0(t0) !2287
	addi	t0, s7, 52 !2287
	lw  	a5, 0(t0) !2287
	addi	t0, s7, 48 !2287
	lw  	a6, 0(t0) !2287
	addi	t0, s7, 44 !2287
	lw  	a7, 0(t0) !2287
	addi	t0, s7, 40 !2287
	lw  	s1, 0(t0) !2287
	addi	t0, s7, 36 !2287
	lw  	s2, 0(t0) !2287
	addi	t0, s7, 32 !2287
	lw  	s3, 0(t0) !2287
	addi	t0, s7, 28 !2287
	lw  	s4, 0(t0) !2287
	addi	t0, s7, 24 !2287
	lw  	s5, 0(t0) !2287
	addi	t0, s7, 20 !2287
	lw  	s6, 0(t0) !2287
	sw  	a7, 4(sp) !2287
	addi	t0, s7, 16 !2287
	lw  	a7, 0(t0) !2287
	sw  	s2, 8(sp) !2287
	addi	t0, s7, 12 !2287
	lw  	s2, 0(t0) !2287
	sw  	a5, 12(sp) !2287
	addi	t0, s7, 8 !2287
	lw  	a5, 0(t0) !2287
	addi	t0, s7, 4 !2287
	lw  	s7, 0(t0) !2287
	addi	t0, s2, 0 !2287
	sw  	a0, 0(t0) !2287
	addi	t0, s2, 4 !2288
	sw  	a1, 0(t0) !2288
	srai	s2, a0, 1 !2289
	addi	t0, a5, 0 !2289
	sw  	s2, 0(t0) !2289
	srai	a1, a1, 1 !2290
	addi	t0, a5, 4 !2290
	sw  	a1, 0(t0) !2290
	li  	fa0, 128.000000 !2291
	sw  	s4, 16(sp) !2291
	sw  	s6, 20(sp) !2291
	sw  	s3, 24(sp) !2291
	sw  	s5, 28(sp) !2291
	sw  	a4, 32(sp) !2291
	sw  	a7, 36(sp) !2291
	sw  	a2, 40(sp) !2291
	sw  	a3, 44(sp) !2291
	sw  	s1, 48(sp) !2291
	sw  	s7, 52(sp) !2291
	sw  	a6, 56(sp) !2291
	fsw 	fa0, 64(sp) !2291
	fcvt.s.w fa0, a0
	flw  	fa1, 64(sp) !2291
	fdiv	fa1, fa1, fa0 !2291
	lw  	a0, 56(sp) !2291
	addi	t0, a0, 0 !2291
	fsw  	fa1, 0(t0) !2291
	lw  	s7, 52(sp) !2292
	addi	sp, sp, 72 !2292
	lw  	t1, 0(s7) !2292
	jalr	ra, t1, 0 !2292
	addi	sp, sp, -72 !2292
	lw  	s7, 52(sp) !2293
	sw  	a0, 72(sp) !2293
	addi	sp, sp, 80 !2293
	lw  	t1, 0(s7) !2293
	jalr	ra, t1, 0 !2293
	addi	sp, sp, -80 !2293
	lw  	s7, 52(sp) !2294
	sw  	a0, 76(sp) !2294
	addi	sp, sp, 80 !2294
	lw  	t1, 0(s7) !2294
	jalr	ra, t1, 0 !2294
	addi	sp, sp, -80 !2294
	lw  	s7, 48(sp) !2295
	sw  	a0, 80(sp) !2295
	addi	sp, sp, 88 !2295
	lw  	t1, 0(s7) !2295
	jalr	ra, t1, 0 !2295
	addi	sp, sp, -88 !2295
	lw  	a0, 40(sp) !2296
	lw  	s7, 44(sp) !2296
	addi	sp, sp, 88 !2296
	lw  	t1, 0(s7) !2296
	jalr	ra, t1, 0 !2296
	addi	sp, sp, -88 !2296
	lw  	s7, 36(sp) !2297
	addi	sp, sp, 88 !2297
	lw  	t1, 0(s7) !2297
	jalr	ra, t1, 0 !2297
	addi	sp, sp, -88 !2297
	lw  	a0, 32(sp) !2298
	lw  	a1, 28(sp) !2298
	addi	sp, sp, 88 !2298
	jal 	ra, veccpy.2424 !2298
	addi	sp, sp, -88 !2298
	lw  	a0, 24(sp) !1135
	addi	t0, a0, 0 !1135
	lw  	a1, 0(t0) !1135
	addi	a1, a1, -1 !1135
	lw  	a2, 16(sp) !1135
	lw  	s7, 20(sp) !1135
	addi	a0, a2, 0 !1135
	addi	sp, sp, 88 !1135
	lw  	t1, 0(s7) !1135
	jalr	ra, t1, 0 !1135
	addi	sp, sp, -88 !1135
	lw  	a0, 24(sp) !2300
	addi	t0, a0, 0 !2300
	lw  	a0, 0(t0) !2300
	addi	a0, a0, -1 !2300
	lw  	s7, 12(sp) !2300
	addi	sp, sp, 88 !2300
	lw  	t1, 0(s7) !2300
	jalr	ra, t1, 0 !2300
	addi	sp, sp, -88 !2300
	addi	a1, zero, 0 !2301
	addi	a2, zero, 0 !2301
	lw  	a0, 76(sp) !2301
	lw  	s7, 8(sp) !2301
	addi	sp, sp, 88 !2301
	lw  	t1, 0(s7) !2301
	jalr	ra, t1, 0 !2301
	addi	sp, sp, -88 !2301
	addi	a0, zero, 0 !2302
	addi	a4, zero, 2 !2302
	lw  	a1, 72(sp) !2302
	lw  	a2, 76(sp) !2302
	lw  	a3, 80(sp) !2302
	lw  	a5, 40(sp) !2302
	lw  	s7, 4(sp) !2302
	lw  	t1, 0(s7) !2302
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2302
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
