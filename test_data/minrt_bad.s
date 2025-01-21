_min_caml_start:
	li  	ra, _min_caml_finish
	li  	sp, 524288
	li  	gp, 1048576
	sw  	ra, 0(sp)
	addi	sp, sp, 4
	addi	a0, zero, 1 !6
	addi	a1, zero, 0 !6
	jal 	ra, create_array !6
	addi	a1, zero, 0 !11
	li  	fa0, 0.000000 !11
	sw  	a0, 0(sp) !11
	addi	a0, a1, 0 !11
	addi	sp, sp, 4 !11
	jal 	ra, create_float_array !11
	addi	sp, sp, -4 !11
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
	addi	a0, a7, 0 !12
	addi	t0, a1, 0 !12
	addi	a1, a0, 0 !12
	addi	a0, t0, 0 !12
	addi	sp, sp, 4 !12
	jal 	ra, create_array !12
	addi	sp, sp, -4 !12
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
	addi	sp, sp, 12 !19
	jal 	ra, create_float_array !19
	addi	sp, sp, -12 !19
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
	addi	sp, sp, 20 !25
	jal 	ra, create_float_array !25
	addi	sp, sp, -20 !25
	addi	a1, zero, 50 !28
	addi	a2, zero, 1 !28
	addi	a3, zero, -1 !28
	sw  	a0, 20(sp) !28
	sw  	a1, 24(sp) !28
	addi	a1, a3, 0 !28
	addi	a0, a2, 0 !28
	addi	sp, sp, 28 !28
	jal 	ra, create_array !28
	addi	sp, sp, -28 !28
	lw  	a1, 24(sp) !28
	addi	t0, a1, 0 !28
	addi	a1, a0, 0 !28
	addi	a0, t0, 0 !28
	addi	sp, sp, 28 !28
	jal 	ra, create_array !28
	addi	sp, sp, -28 !28
	addi	a1, zero, 1 !31
	addi	a2, zero, 1 !31
	lw  	a3, 0(a0) !31
	sw  	a0, 28(sp) !31
	sw  	a1, 32(sp) !31
	addi	a1, a3, 0 !31
	addi	a0, a2, 0 !31
	addi	sp, sp, 36 !31
	jal 	ra, create_array !31
	addi	sp, sp, -36 !31
	lw  	a1, 32(sp) !31
	addi	t0, a1, 0 !31
	addi	a1, a0, 0 !31
	addi	a0, t0, 0 !31
	addi	sp, sp, 36 !31
	jal 	ra, create_array !31
	addi	sp, sp, -36 !31
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
	addi	sp, sp, 44 !39
	jal 	ra, create_array !39
	addi	sp, sp, -44 !39
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
	addi	sp, sp, 52 !45
	jal 	ra, create_float_array !45
	addi	sp, sp, -52 !45
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
	addi	sp, sp, 60 !51
	jal 	ra, create_float_array !51
	addi	sp, sp, -60 !51
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
	addi	sp, sp, 68 !58
	jal 	ra, create_float_array !58
	addi	sp, sp, -68 !58
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
	addi	sp, sp, 76 !65
	jal 	ra, create_array !65
	addi	sp, sp, -76 !65
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
	addi	sp, sp, 84 !71
	jal 	ra, create_float_array !71
	addi	sp, sp, -84 !71
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
	addi	sp, sp, 92 !78
	jal 	ra, create_float_array !78
	addi	sp, sp, -92 !78
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
	addi	sp, sp, 100 !84
	jal 	ra, create_float_array !84
	addi	sp, sp, -100 !84
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
	addi	sp, sp, 108 !90
	jal 	ra, create_float_array !90
	addi	sp, sp, -108 !90
	addi	a1, zero, 0 !95
	li  	fa0, 0.000000 !95
	sw  	a0, 108(sp) !95
	addi	a0, a1, 0 !95
	addi	sp, sp, 112 !95
	jal 	ra, create_float_array !95
	addi	sp, sp, -112 !95
	addi	a1, zero, 0 !96
	sw  	a0, 112(sp) !96
	addi	t0, a1, 0 !96
	addi	a1, a0, 0 !96
	addi	a0, t0, 0 !96
	addi	sp, sp, 116 !96
	jal 	ra, create_array !96
	addi	sp, sp, -116 !96
	addi	a1, zero, 0 !97
	addi	a2, gp, 0 !97
	addi	gp, gp, 8 !97
	sw  	a0, 4(a2) !97
	lw  	a0, 112(sp) !97
	sw  	a0, 0(a2) !97
	addi	a0, a2, 0 !97
	addi	t0, a1, 0 !97
	addi	a1, a0, 0 !97
	addi	a0, t0, 0 !97
	addi	sp, sp, 116 !97
	jal 	ra, create_array !97
	addi	sp, sp, -116 !97
	addi	a1, zero, 5 !98
	addi	t0, a1, 0 !98
	addi	a1, a0, 0 !98
	addi	a0, t0, 0 !98
	addi	sp, sp, 116 !98
	jal 	ra, create_array !98
	addi	sp, sp, -116 !98
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
	addi	sp, sp, 124 !104
	jal 	ra, create_float_array !104
	addi	sp, sp, -124 !104
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
	sw  	a0, 4(a1) !106
	lw  	a0, 124(sp) !106
	sw  	a0, 0(a1) !106
	addi	a0, a1, 0 !106
	addi	a1, zero, 0 !111
	li  	fa0, 0.000000 !111
	sw  	a0, 128(sp) !111
	addi	a0, a1, 0 !111
	addi	sp, sp, 132 !111
	jal 	ra, create_float_array !111
	addi	sp, sp, -132 !111
	addi	a1, zero, 0 !112
	sw  	a0, 132(sp) !112
	addi	t0, a1, 0 !112
	addi	a1, a0, 0 !112
	addi	a0, t0, 0 !112
	addi	sp, sp, 136 !112
	jal 	ra, create_array !112
	addi	sp, sp, -136 !112
	addi	a1, gp, 0 !113
	addi	gp, gp, 8 !113
	sw  	a0, 4(a1) !113
	lw  	a0, 132(sp) !113
	sw  	a0, 0(a1) !113
	addi	a0, a1, 0 !113
	addi	a1, zero, 180 !114
	addi	a2, zero, 0 !114
	li  	fa0, 0.000000 !114
	addi	a3, gp, 0 !114
	addi	gp, gp, 12 !114
	sw  	fa0, 8(a3) !114
	sw  	a0, 4(a3) !114
	sw  	a2, 0(a3) !114
	addi	a0, a3, 0 !114
	addi	t0, a1, 0 !114
	addi	a1, a0, 0 !114
	addi	a0, t0, 0 !114
	addi	sp, sp, 136 !114
	jal 	ra, create_array !114
	addi	sp, sp, -136 !114
	addi	a1, zero, 1 !118
	addi	a2, zero, 0 !118
	sw  	a0, 136(sp) !118
	addi	a0, a1, 0 !118
	addi	a1, a2, 0 !118
	addi	sp, sp, 140 !118
	jal 	ra, create_array !118
	addi	sp, sp, -140 !118
	addi	a1, gp, 0 !561
	addi	gp, gp, 24 !561
	li  	a2, read_screen_settings.2525 !561
	sw  	a2, 0(a1) !561
	lw  	a2, 12(sp) !561
	sw  	a2, 20(a1) !561
	lw  	a3, 104(sp) !561
	sw  	a3, 16(a1) !561
	lw  	a4, 100(sp) !561
	sw  	a4, 12(a1) !561
	lw  	a5, 96(sp) !561
	sw  	a5, 8(a1) !561
	lw  	a6, 8(sp) !561
	sw  	a6, 4(a1) !561
	addi	a6, gp, 0 !594
	addi	gp, gp, 12 !594
	li  	a7, read_light.2527 !594
	sw  	a7, 0(a6) !594
	lw  	a7, 16(sp) !594
	sw  	a7, 8(a6) !594
	lw  	s1, 20(sp) !594
	sw  	s1, 4(a6) !594
	addi	s2, gp, 0 !657
	addi	gp, gp, 8 !657
	li  	s3, read_nth_object.2532 !657
	sw  	s3, 0(s2) !657
	lw  	s3, 4(sp) !657
	sw  	s3, 4(s2) !657
	addi	s4, gp, 0 !740
	addi	gp, gp, 12 !740
	li  	s5, read_object.2534 !740
	sw  	s5, 0(s4) !740
	sw  	s2, 8(s4) !740
	lw  	s2, 0(sp) !740
	sw  	s2, 4(s4) !740
	addi	s5, gp, 0 !749
	addi	gp, gp, 8 !749
	li  	s6, read_all_object.2536 !749
	sw  	s6, 0(s5) !749
	sw  	s4, 4(s5) !749
	addi	s4, gp, 0 !773
	addi	gp, gp, 8 !773
	li  	s6, read_and_network.2542 !773
	sw  	s6, 0(s4) !773
	lw  	s6, 28(sp) !773
	sw  	s6, 4(s4) !773
	addi	s7, gp, 0 !782
	addi	gp, gp, 24 !782
	li  	a4, read_parameter.2544 !782
	sw  	a4, 0(s7) !782
	sw  	a1, 20(s7) !782
	sw  	a6, 16(s7) !782
	sw  	s4, 12(s7) !782
	sw  	s5, 8(s7) !782
	lw  	a1, 36(sp) !782
	sw  	a1, 4(s7) !782
	addi	a4, gp, 0 !798
	addi	gp, gp, 8 !798
	li  	a6, solver_rect_surface.2546 !798
	sw  	a6, 0(a4) !798
	lw  	a6, 40(sp) !798
	sw  	a6, 4(a4) !798
	addi	s4, gp, 0 !813
	addi	gp, gp, 8 !813
	li  	s5, solver_rect.2555 !813
	sw  	s5, 0(s4) !813
	sw  	a4, 4(s4) !813
	addi	a4, gp, 0 !822
	addi	gp, gp, 8 !822
	li  	s5, solver_surface.2561 !822
	sw  	s5, 0(a4) !822
	sw  	a6, 4(a4) !822
	addi	s5, gp, 0 !869
	addi	gp, gp, 8 !869
	sw  	s7, 140(sp) !869
	li  	s7, solver_second.2580 !869
	sw  	s7, 0(s5) !869
	sw  	a6, 4(s5) !869
	addi	s7, gp, 0 !898
	addi	gp, gp, 20 !898
	li  	a3, solver.2586 !898
	sw  	a3, 0(s7) !898
	sw  	a4, 16(s7) !898
	sw  	s5, 12(s7) !898
	sw  	s4, 8(s7) !898
	sw  	s3, 4(s7) !898
	addi	a3, gp, 0 !915
	addi	gp, gp, 8 !915
	li  	a4, solver_rect_fast.2590 !915
	sw  	a4, 0(a3) !915
	sw  	a6, 4(a3) !915
	addi	a4, gp, 0 !948
	addi	gp, gp, 8 !948
	li  	s4, solver_surface_fast.2597 !948
	sw  	s4, 0(a4) !948
	sw  	a6, 4(a4) !948
	addi	s4, gp, 0 !957
	addi	gp, gp, 8 !957
	li  	s5, solver_second_fast.2603 !957
	sw  	s5, 0(s4) !957
	sw  	a6, 4(s4) !957
	addi	s5, gp, 0 !977
	addi	gp, gp, 20 !977
	li  	a5, solver_fast.2609 !977
	sw  	a5, 0(s5) !977
	sw  	a4, 16(s5) !977
	sw  	s4, 12(s5) !977
	sw  	a3, 8(s5) !977
	sw  	s3, 4(s5) !977
	addi	a4, gp, 0 !997
	addi	gp, gp, 8 !997
	li  	a5, solver_surface_fast2.2613 !997
	sw  	a5, 0(a4) !997
	sw  	a6, 4(a4) !997
	addi	a5, gp, 0 !1005
	addi	gp, gp, 8 !1005
	li  	s4, solver_second_fast2.2620 !1005
	sw  	s4, 0(a5) !1005
	sw  	a6, 4(a5) !1005
	addi	s4, gp, 0 !1024
	addi	gp, gp, 20 !1024
	li  	a2, solver_fast2.2627 !1024
	sw  	a2, 0(s4) !1024
	sw  	a4, 16(s4) !1024
	sw  	a5, 12(s4) !1024
	sw  	a3, 8(s4) !1024
	sw  	s3, 4(s4) !1024
	addi	a2, gp, 0 !1118
	addi	gp, gp, 8 !1118
	li  	a3, iter_setup_dirvec_constants.2639 !1118
	sw  	a3, 0(a2) !1118
	sw  	s3, 4(a2) !1118
	addi	a3, gp, 0 !1135
	addi	gp, gp, 12 !1135
	li  	a4, setup_dirvec_constants.2642 !1135
	sw  	a4, 0(a3) !1135
	sw  	s2, 8(a3) !1135
	sw  	a2, 4(a3) !1135
	addi	a2, gp, 0 !1141
	addi	gp, gp, 8 !1141
	li  	a4, setup_startp_constants.2644 !1141
	sw  	a4, 0(a2) !1141
	sw  	s3, 4(a2) !1141
	addi	a4, gp, 0 !1160
	addi	gp, gp, 16 !1160
	li  	a5, setup_startp.2647 !1160
	sw  	a5, 0(a4) !1160
	lw  	a5, 92(sp) !1160
	sw  	a5, 12(a4) !1160
	sw  	a2, 8(a4) !1160
	sw  	s2, 4(a4) !1160
	addi	a2, gp, 0 !1208
	addi	gp, gp, 8 !1208
	sw  	a3, 144(sp) !1208
	li  	a3, check_all_inside.2669 !1208
	sw  	a3, 0(a2) !1208
	sw  	s3, 4(a2) !1208
	addi	a3, gp, 0 !1226
	addi	gp, gp, 32 !1226
	li  	s2, shadow_check_and_group.2675 !1226
	sw  	s2, 0(a3) !1226
	sw  	s5, 28(a3) !1226
	sw  	a6, 24(a3) !1226
	sw  	s3, 20(a3) !1226
	lw  	s2, 128(sp) !1226
	sw  	s2, 16(a3) !1226
	sw  	a7, 12(a3) !1226
	lw  	s1, 52(sp) !1226
	sw  	s1, 8(a3) !1226
	sw  	a2, 4(a3) !1226
	addi	a7, gp, 0 !1256
	addi	gp, gp, 12 !1256
	sw  	a0, 148(sp) !1256
	li  	a0, shadow_check_one_or_group.2678 !1256
	sw  	a0, 0(a7) !1256
	sw  	a3, 8(a7) !1256
	sw  	s6, 4(a7) !1256
	addi	a0, gp, 0 !1271
	addi	gp, gp, 24 !1271
	li  	a3, shadow_check_one_or_matrix.2681 !1271
	sw  	a3, 0(a0) !1271
	sw  	s5, 20(a0) !1271
	sw  	a6, 16(a0) !1271
	sw  	a7, 12(a0) !1271
	sw  	s2, 8(a0) !1271
	sw  	s1, 4(a0) !1271
	addi	a3, gp, 0 !1305
	addi	gp, gp, 40 !1305
	li  	a7, solve_each_element.2684 !1305
	sw  	a7, 0(a3) !1305
	lw  	a7, 48(sp) !1305
	sw  	a7, 36(a3) !1305
	lw  	s5, 88(sp) !1305
	sw  	s5, 32(a3) !1305
	sw  	a6, 28(a3) !1305
	sw  	s7, 24(a3) !1305
	sw  	s3, 20(a3) !1305
	lw  	s2, 44(sp) !1305
	sw  	s2, 16(a3) !1305
	sw  	s1, 12(a3) !1305
	sw  	a4, 152(sp) !1305
	lw  	a4, 56(sp) !1305
	sw  	a4, 8(a3) !1305
	sw  	a2, 4(a3) !1305
	sw  	a0, 156(sp) !1346
	addi	a0, gp, 0 !1346
	addi	gp, gp, 12 !1346
	sw  	a2, 160(sp) !1346
	li  	a2, solve_one_or_network.2688 !1346
	sw  	a2, 0(a0) !1346
	sw  	a3, 8(a0) !1346
	sw  	s6, 4(a0) !1346
	addi	a2, gp, 0 !1356
	addi	gp, gp, 24 !1356
	li  	a3, trace_or_matrix.2692 !1356
	sw  	a3, 0(a2) !1356
	sw  	a7, 20(a2) !1356
	sw  	s5, 16(a2) !1356
	sw  	a6, 12(a2) !1356
	sw  	s7, 8(a2) !1356
	sw  	a0, 4(a2) !1356
	addi	a0, gp, 0 !1383
	addi	gp, gp, 16 !1383
	li  	a3, judge_intersection.2696 !1383
	sw  	a3, 0(a0) !1383
	sw  	a2, 12(a0) !1383
	sw  	a7, 8(a0) !1383
	sw  	a1, 4(a0) !1383
	addi	a2, gp, 0 !1396
	addi	gp, gp, 40 !1396
	li  	a3, solve_each_element_fast.2698 !1396
	sw  	a3, 0(a2) !1396
	sw  	a7, 36(a2) !1396
	sw  	a5, 32(a2) !1396
	sw  	s4, 28(a2) !1396
	sw  	a6, 24(a2) !1396
	sw  	s3, 20(a2) !1396
	sw  	s2, 16(a2) !1396
	sw  	s1, 12(a2) !1396
	sw  	a4, 8(a2) !1396
	lw  	a3, 160(sp) !1396
	sw  	a3, 4(a2) !1396
	addi	a3, gp, 0 !1437
	addi	gp, gp, 12 !1437
	li  	a5, solve_one_or_network_fast.2702 !1437
	sw  	a5, 0(a3) !1437
	sw  	a2, 8(a3) !1437
	sw  	s6, 4(a3) !1437
	addi	a2, gp, 0 !1447
	addi	gp, gp, 20 !1447
	li  	a5, trace_or_matrix_fast.2706 !1447
	sw  	a5, 0(a2) !1447
	sw  	a7, 16(a2) !1447
	sw  	s4, 12(a2) !1447
	sw  	a6, 8(a2) !1447
	sw  	a3, 4(a2) !1447
	addi	a3, gp, 0 !1471
	addi	gp, gp, 16 !1471
	li  	a5, judge_intersection_fast.2710 !1471
	sw  	a5, 0(a3) !1471
	sw  	a2, 12(a3) !1471
	sw  	a7, 8(a3) !1471
	sw  	a1, 4(a3) !1471
	addi	a2, gp, 0 !1490
	addi	gp, gp, 12 !1490
	li  	a5, get_nvector_rect.2712 !1490
	sw  	a5, 0(a2) !1490
	lw  	a5, 60(sp) !1490
	sw  	a5, 8(a2) !1490
	sw  	s2, 4(a2) !1490
	addi	a6, gp, 0 !1498
	addi	gp, gp, 8 !1498
	li  	s4, get_nvector_plane.2714 !1498
	sw  	s4, 0(a6) !1498
	sw  	a5, 4(a6) !1498
	addi	s4, gp, 0 !1506
	addi	gp, gp, 12 !1506
	li  	s6, get_nvector_second.2716 !1506
	sw  	s6, 0(s4) !1506
	sw  	a5, 8(s4) !1506
	sw  	s1, 4(s4) !1506
	addi	s6, gp, 0 !1528
	addi	gp, gp, 16 !1528
	li  	s7, get_nvector.2718 !1528
	sw  	s7, 0(s6) !1528
	sw  	s4, 12(s6) !1528
	sw  	a2, 8(s6) !1528
	sw  	a6, 4(s6) !1528
	addi	a2, gp, 0 !1542
	addi	gp, gp, 8 !1542
	li  	a6, utexture.2721 !1542
	sw  	a6, 0(a2) !1542
	lw  	a6, 64(sp) !1542
	sw  	a6, 4(a2) !1542
	addi	s4, gp, 0 !1618
	addi	gp, gp, 12 !1618
	li  	s7, add_light.2724 !1618
	sw  	s7, 0(s4) !1618
	sw  	a6, 8(s4) !1618
	lw  	s7, 72(sp) !1618
	sw  	s7, 4(s4) !1618
	sw  	s6, 164(sp) !1635
	addi	s6, gp, 0 !1635
	addi	gp, gp, 36 !1635
	li  	s1, trace_reflections.2728 !1635
	sw  	s1, 0(s6) !1635
	lw  	s1, 156(sp) !1635
	sw  	s1, 32(s6) !1635
	sw  	a0, 168(sp) !1635
	lw  	a0, 136(sp) !1635
	sw  	a0, 28(s6) !1635
	sw  	a1, 24(s6) !1635
	sw  	a5, 20(s6) !1635
	sw  	a3, 16(s6) !1635
	sw  	s2, 12(s6) !1635
	sw  	a4, 8(s6) !1635
	sw  	s4, 4(s6) !1635
	addi	a0, gp, 0 !1662
	addi	gp, gp, 84 !1662
	sw  	a3, 172(sp) !1662
	li  	a3, trace_ray.2733 !1662
	sw  	a3, 0(a0) !1662
	sw  	a2, 80(a0) !1662
	sw  	s6, 76(a0) !1662
	sw  	a7, 72(a0) !1662
	sw  	a6, 68(a0) !1662
	sw  	s5, 64(a0) !1662
	sw  	s1, 60(a0) !1662
	lw  	a3, 152(sp) !1662
	sw  	a3, 56(a0) !1662
	sw  	s7, 52(a0) !1662
	sw  	a1, 48(a0) !1662
	sw  	s3, 44(a0) !1662
	sw  	a5, 40(a0) !1662
	lw  	a7, 148(sp) !1662
	sw  	a7, 36(a0) !1662
	lw  	s6, 16(sp) !1662
	sw  	s6, 32(a0) !1662
	lw  	a7, 168(sp) !1662
	sw  	a7, 28(a0) !1662
	sw  	s2, 24(a0) !1662
	lw  	a7, 52(sp) !1662
	sw  	a7, 20(a0) !1662
	sw  	a4, 16(a0) !1662
	lw  	s2, 164(sp) !1662
	sw  	s2, 12(a0) !1662
	lw  	s5, 20(sp) !1662
	sw  	s5, 8(a0) !1662
	sw  	s4, 4(a0) !1662
	addi	s4, gp, 0 !1752
	addi	gp, gp, 52 !1752
	li  	s5, trace_diffuse_ray.2739 !1752
	sw  	s5, 0(s4) !1752
	sw  	a2, 48(s4) !1752
	sw  	a6, 44(s4) !1752
	sw  	s1, 40(s4) !1752
	sw  	a1, 36(s4) !1752
	sw  	s3, 32(s4) !1752
	sw  	a5, 28(s4) !1752
	sw  	s6, 24(s4) !1752
	lw  	a1, 172(sp) !1752
	sw  	a1, 20(s4) !1752
	sw  	a7, 16(s4) !1752
	sw  	a4, 12(s4) !1752
	sw  	s2, 8(s4) !1752
	lw  	a1, 68(sp) !1752
	sw  	a1, 4(s4) !1752
	addi	a2, gp, 0 !1770
	addi	gp, gp, 8 !1770
	li  	a4, iter_trace_diffuse_rays.2742 !1770
	sw  	a4, 0(a2) !1770
	sw  	s4, 4(a2) !1770
	addi	a4, gp, 0 !1785
	addi	gp, gp, 12 !1785
	li  	a5, trace_diffuse_rays.2747 !1785
	sw  	a5, 0(a4) !1785
	sw  	a3, 8(a4) !1785
	sw  	a2, 4(a4) !1785
	addi	a2, gp, 0 !1793
	addi	gp, gp, 12 !1793
	li  	a3, trace_diffuse_ray_80percent.2751 !1793
	sw  	a3, 0(a2) !1793
	sw  	a4, 8(a2) !1793
	lw  	a3, 116(sp) !1793
	sw  	a3, 4(a2) !1793
	addi	a5, gp, 0 !1818
	addi	gp, gp, 16 !1818
	li  	a6, calc_diffuse_using_1point.2755 !1818
	sw  	a6, 0(a5) !1818
	sw  	a2, 12(a5) !1818
	sw  	s7, 8(a5) !1818
	sw  	a1, 4(a5) !1818
	addi	a2, gp, 0 !1836
	addi	gp, gp, 12 !1836
	li  	a6, calc_diffuse_using_5points.2758 !1836
	sw  	a6, 0(a2) !1836
	sw  	s7, 8(a2) !1836
	sw  	a1, 4(a2) !1836
	addi	a6, gp, 0 !1856
	addi	gp, gp, 8 !1856
	li  	a7, do_without_neighbors.2764 !1856
	sw  	a7, 0(a6) !1856
	sw  	a5, 4(a6) !1856
	addi	a5, gp, 0 !1871
	addi	gp, gp, 8 !1871
	li  	a7, neighbors_exist.2767 !1871
	sw  	a7, 0(a5) !1871
	lw  	a7, 76(sp) !1871
	sw  	a7, 4(a5) !1871
	addi	s1, gp, 0 !1905
	addi	gp, gp, 12 !1905
	li  	s2, try_exploit_neighbors.2780 !1905
	sw  	s2, 0(s1) !1905
	sw  	a6, 8(s1) !1905
	sw  	a2, 4(s1) !1905
	addi	a2, gp, 0 !1930
	addi	gp, gp, 8 !1930
	li  	s2, write_ppm_header.2787 !1930
	sw  	s2, 0(a2) !1930
	sw  	a7, 4(a2) !1930
	addi	s2, gp, 0 !1956
	addi	gp, gp, 8 !1956
	li  	s4, write_rgb.2793 !1956
	sw  	s4, 0(s2) !1956
	sw  	s7, 4(s2) !1956
	addi	s4, gp, 0 !1976
	addi	gp, gp, 16 !1976
	li  	s5, pretrace_diffuse_rays.2795 !1976
	sw  	s5, 0(s4) !1976
	sw  	a4, 12(s4) !1976
	sw  	a3, 8(s4) !1976
	sw  	a1, 4(s4) !1976
	addi	a1, gp, 0 !2005
	addi	gp, gp, 40 !2005
	li  	a4, pretrace_pixels.2798 !2005
	sw  	a4, 0(a1) !2005
	lw  	a4, 12(sp) !2005
	sw  	a4, 36(a1) !2005
	sw  	a0, 32(a1) !2005
	lw  	a0, 88(sp) !2005
	sw  	a0, 28(a1) !2005
	lw  	a0, 96(sp) !2005
	sw  	a0, 24(a1) !2005
	lw  	a0, 84(sp) !2005
	sw  	a0, 20(a1) !2005
	sw  	s7, 16(a1) !2005
	lw  	a4, 108(sp) !2005
	sw  	a4, 12(a1) !2005
	sw  	s4, 8(a1) !2005
	lw  	a4, 80(sp) !2005
	sw  	a4, 4(a1) !2005
	addi	s4, gp, 0 !2030
	addi	gp, gp, 28 !2030
	li  	s5, pretrace_line.2805 !2030
	sw  	s5, 0(s4) !2030
	lw  	s5, 104(sp) !2030
	sw  	s5, 24(s4) !2030
	lw  	s5, 100(sp) !2030
	sw  	s5, 20(s4) !2030
	sw  	a0, 16(s4) !2030
	sw  	a1, 12(s4) !2030
	sw  	a7, 8(s4) !2030
	sw  	a4, 4(s4) !2030
	addi	a1, gp, 0 !2044
	addi	gp, gp, 28 !2044
	li  	s5, scan_pixel.2809 !2044
	sw  	s5, 0(a1) !2044
	sw  	s2, 24(a1) !2044
	sw  	s1, 20(a1) !2044
	sw  	s7, 16(a1) !2044
	sw  	a5, 12(a1) !2044
	sw  	a7, 8(a1) !2044
	sw  	a6, 4(a1) !2044
	addi	a5, gp, 0 !2064
	addi	gp, gp, 16 !2064
	li  	a6, scan_line.2816 !2064
	sw  	a6, 0(a5) !2064
	sw  	a1, 12(a5) !2064
	sw  	s4, 8(a5) !2064
	sw  	a7, 4(a5) !2064
	addi	a1, gp, 0 !2114
	addi	gp, gp, 8 !2114
	li  	a6, create_pixelline.2830 !2114
	sw  	a6, 0(a1) !2114
	sw  	a7, 4(a1) !2114
	addi	a6, gp, 0 !2137
	addi	gp, gp, 8 !2137
	li  	s1, calc_dirvec.2837 !2137
	sw  	s1, 0(a6) !2137
	sw  	a3, 4(a6) !2137
	addi	s1, gp, 0 !2158
	addi	gp, gp, 8 !2158
	li  	s2, calc_dirvecs.2845 !2158
	sw  	s2, 0(s1) !2158
	sw  	a6, 4(s1) !2158
	addi	a6, gp, 0 !2172
	addi	gp, gp, 8 !2172
	li  	s2, calc_dirvec_rows.2850 !2172
	sw  	s2, 0(a6) !2172
	sw  	s1, 4(a6) !2172
	addi	s1, gp, 0 !2183
	addi	gp, gp, 8 !2183
	li  	s2, create_dirvec.2854 !2183
	sw  	s2, 0(s1) !2183
	lw  	s2, 0(sp) !2183
	sw  	s2, 4(s1) !2183
	addi	s5, gp, 0 !2189
	addi	gp, gp, 8 !2189
	li  	s7, create_dirvec_elements.2856 !2189
	sw  	s7, 0(s5) !2189
	sw  	s1, 4(s5) !2189
	addi	s7, gp, 0 !2196
	addi	gp, gp, 16 !2196
	sw  	a1, 176(sp) !2196
	li  	a1, create_dirvecs.2859 !2196
	sw  	a1, 0(s7) !2196
	sw  	a3, 12(s7) !2196
	sw  	s5, 8(s7) !2196
	sw  	s1, 4(s7) !2196
	addi	a1, gp, 0 !2206
	addi	gp, gp, 8 !2206
	li  	s5, init_dirvec_constants.2861 !2206
	sw  	s5, 0(a1) !2206
	lw  	s5, 144(sp) !2206
	sw  	s5, 4(a1) !2206
	addi	a4, gp, 0 !2213
	addi	gp, gp, 12 !2213
	li  	a7, init_vecset_constants.2864 !2213
	sw  	a7, 0(a4) !2213
	sw  	a1, 8(a4) !2213
	sw  	a3, 4(a4) !2213
	addi	a1, gp, 0 !2220
	addi	gp, gp, 16 !2220
	li  	a3, init_dirvecs.2866 !2220
	sw  	a3, 0(a1) !2220
	sw  	a4, 12(a1) !2220
	sw  	s7, 8(a1) !2220
	sw  	a6, 4(a1) !2220
	addi	a3, gp, 0 !2229
	addi	gp, gp, 16 !2229
	li  	a4, add_reflection.2868 !2229
	sw  	a4, 0(a3) !2229
	sw  	s5, 12(a3) !2229
	lw  	a4, 136(sp) !2229
	sw  	a4, 8(a3) !2229
	sw  	s1, 4(a3) !2229
	addi	a4, gp, 0 !2238
	addi	gp, gp, 16 !2238
	li  	a6, setup_rect_reflection.2875 !2238
	sw  	a6, 0(a4) !2238
	lw  	a6, 148(sp) !2238
	sw  	a6, 12(a4) !2238
	sw  	s6, 8(a4) !2238
	sw  	a3, 4(a4) !2238
	addi	a7, gp, 0 !2252
	addi	gp, gp, 16 !2252
	li  	s1, setup_surface_reflection.2878 !2252
	sw  	s1, 0(a7) !2252
	sw  	a6, 12(a7) !2252
	sw  	s6, 8(a7) !2252
	sw  	a3, 4(a7) !2252
	addi	a3, gp, 0 !2267
	addi	gp, gp, 16 !2267
	li  	a6, setup_reflections.2881 !2267
	sw  	a6, 0(a3) !2267
	sw  	a7, 12(a3) !2267
	sw  	a4, 8(a3) !2267
	sw  	s3, 4(a3) !2267
	addi	a4, gp, 0 !2287
	addi	gp, gp, 60 !2287
	li  	a6, rt.2883 !2287
	sw  	a6, 0(a4) !2287
	sw  	a2, 56(a4) !2287
	sw  	a3, 52(a4) !2287
	sw  	s5, 48(a4) !2287
	sw  	a0, 44(a4) !2287
	sw  	a5, 40(a4) !2287
	lw  	a0, 140(sp) !2287
	sw  	a0, 36(a4) !2287
	sw  	s4, 32(a4) !2287
	sw  	s2, 28(a4) !2287
	lw  	a0, 128(sp) !2287
	sw  	a0, 24(a4) !2287
	sw  	s6, 20(a4) !2287
	sw  	a1, 16(a4) !2287
	lw  	a0, 76(sp) !2287
	sw  	a0, 12(a4) !2287
	lw  	a0, 80(sp) !2287
	sw  	a0, 8(a4) !2287
	lw  	a0, 176(sp) !2287
	sw  	a0, 4(a4) !2287
	addi	a0, zero, 8 !2308
	addi	a1, zero, 8 !2308
	addi	a2, zero, 3 !2308
	addi	tp, a4, 0 !2308
	addi	sp, sp, 180 !2308
	lw  	t1, 0(tp) !2308
	jalr	ra, t1, 0 !2308
	addi	sp, sp, -180 !2308
	addi	sp, sp, -4
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
xor.2403:
	sw  	ra, 0(sp)
	bne 	a0, zero, beq_else.7958 !135
	addi	a0, a1, 0 !135
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.7958: !135
	bne 	a1, zero, beq_else.7960 !135
	addi	a0, zero, 1 !135
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.7960: !135
	addi	a0, zero, 0 !135
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
sgn.2406:
	sw  	ra, 0(sp)
	sw  	fa0, 4(sp) !141
	addi	sp, sp, 8 !141
	jal 	ra, fiszero !141
	addi	sp, sp, -8 !141
	bne 	a0, zero, beq_else.7962 !141
	lw  	fa0, 4(sp) !142
	addi	sp, sp, 8 !142
	jal 	ra, fispos !142
	addi	sp, sp, -8 !142
	bne 	a0, zero, beq_else.7964 !142
	li  	fa0, -1.000000 !143
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.7964: !142
	li  	fa0, 1.000000 !142
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.7962: !141
	li  	fa0, 0.000000 !141
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
fneg_cond.2408:
	sw  	ra, 0(sp)
	bne 	a0, zero, beq_else.7966 !148
	lw  	ra, 0(sp)
	jal 	zero, fneg !148
beq_else.7966: !148
	addi	a0, fa0, 0 !148
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
add_mod5.2411:
	sw  	ra, 0(sp)
	add 	a0, a0, a1 !153
	addi	t0, zero, 5
	blt 	a0, t0, bge_else.7968 !154
	addi	a0, a0, -5 !154
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.7968: !154
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecset.2414:
	sw  	ra, 0(sp)
	addi	a1, zero, 0 !163
	slli	t0, a1, 2 !163
	add 	t0, t0, a0 !163
	sw  	fa0, 0(t0) !163
	addi	a1, zero, 1 !164
	slli	t0, a1, 2 !164
	add 	t0, t0, a0 !164
	sw  	fa1, 0(t0) !164
	addi	a1, zero, 2 !165
	slli	t0, a1, 2 !165
	add 	t0, t0, a0 !165
	sw  	fa2, 0(t0) !165
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecfill.2419:
	sw  	ra, 0(sp)
	addi	a1, zero, 0 !170
	slli	t0, a1, 2 !170
	add 	t0, t0, a0 !170
	sw  	fa0, 0(t0) !170
	addi	a1, zero, 1 !171
	slli	t0, a1, 2 !171
	add 	t0, t0, a0 !171
	sw  	fa0, 0(t0) !171
	addi	a1, zero, 2 !172
	slli	t0, a1, 2 !172
	add 	t0, t0, a0 !172
	sw  	fa0, 0(t0) !172
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecbzero.2422:
	sw  	ra, 0(sp)
	li  	fa0, 0.000000 !177
	lw  	ra, 0(sp)
	jal 	zero, vecfill.2419 !177
veccpy.2424:
	sw  	ra, 0(sp)
	addi	a2, zero, 0 !182
	addi	a3, zero, 0 !182
	slli	t0, a3, 2 !182
	add 	t0, t0, a1 !182
	lw  	fa0, 0(t0) !182
	slli	t0, a2, 2 !182
	add 	t0, t0, a0 !182
	sw  	fa0, 0(t0) !182
	addi	a2, zero, 1 !183
	addi	a3, zero, 1 !183
	slli	t0, a3, 2 !183
	add 	t0, t0, a1 !183
	lw  	fa0, 0(t0) !183
	slli	t0, a2, 2 !183
	add 	t0, t0, a0 !183
	sw  	fa0, 0(t0) !183
	addi	a2, zero, 2 !184
	addi	a3, zero, 2 !184
	slli	t0, a3, 2 !184
	add 	t0, t0, a1 !184
	lw  	fa0, 0(t0) !184
	slli	t0, a2, 2 !184
	add 	t0, t0, a0 !184
	sw  	fa0, 0(t0) !184
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecunit_sgn.2427:
	sw  	ra, 0(sp)
	addi	a2, zero, 0 !193
	slli	t0, a2, 2 !193
	add 	t0, t0, a0 !193
	lw  	fa0, 0(t0) !193
	sw  	a1, 4(sp) !193
	sw  	a0, 8(sp) !193
	addi	sp, sp, 12 !193
	jal 	ra, fsqr !193
	addi	sp, sp, -12 !193
	addi	a0, zero, 1 !193
	lw  	a1, 8(sp) !193
	slli	t0, a0, 2 !193
	add 	t0, t0, a1 !193
	lw  	fa1, 0(t0) !193
	sw  	fa0, 12(sp) !193
	fsgnj   fa0, fa1, fa1 !193
	addi	sp, sp, 16 !193
	jal 	ra, fsqr !193
	addi	sp, sp, -16 !193
	lw  	fa1, 12(sp) !193
	fadd	fa0, fa1, fa0 !193
	addi	a0, zero, 2 !193
	lw  	a1, 8(sp) !193
	slli	t0, a0, 2 !193
	add 	t0, t0, a1 !193
	lw  	fa1, 0(t0) !193
	sw  	fa0, 16(sp) !193
	fsgnj   fa0, fa1, fa1 !193
	addi	sp, sp, 20 !193
	jal 	ra, fsqr !193
	addi	sp, sp, -20 !193
	lw  	fa1, 16(sp) !193
	fadd	fa0, fa1, fa0 !193
	addi	sp, sp, 20 !193
	jal 	ra, sqrt !193
	addi	sp, sp, -20 !193
	sw  	fa0, 20(sp) !194
	addi	sp, sp, 24 !194
	jal 	ra, fiszero !194
	addi	sp, sp, -24 !194
	bne 	a0, zero, beq_else.7973 !194
	lw  	a0, 4(sp) !194
	bne 	a0, zero, beq_else.7975 !194
	li  	fa0, 1.000000 !194
	lw  	fa1, 20(sp) !194
	fdiv	fa0, fa0, fa1 !194
	jal 	zero, beq_cont.7976 !194
beq_else.7975: !194
	li  	fa0, -1.000000 !194
	lw  	fa1, 20(sp) !194
	fdiv	fa0, fa0, fa1 !194
beq_cont.7976: !194
	jal 	zero, beq_cont.7974 !194
beq_else.7973: !194
	li  	fa0, 1.000000 !194
beq_cont.7974: !194
	addi	a0, zero, 0 !195
	addi	a1, zero, 0 !195
	lw  	a2, 8(sp) !195
	slli	t0, a1, 2 !195
	add 	t0, t0, a2 !195
	lw  	fa1, 0(t0) !195
	fmul	fa1, fa1, fa0 !195
	slli	t0, a0, 2 !195
	add 	t0, t0, a2 !195
	sw  	fa1, 0(t0) !195
	addi	a0, zero, 1 !196
	addi	a1, zero, 1 !196
	slli	t0, a1, 2 !196
	add 	t0, t0, a2 !196
	lw  	fa1, 0(t0) !196
	fmul	fa1, fa1, fa0 !196
	slli	t0, a0, 2 !196
	add 	t0, t0, a2 !196
	sw  	fa1, 0(t0) !196
	addi	a0, zero, 2 !197
	addi	a1, zero, 2 !197
	slli	t0, a1, 2 !197
	add 	t0, t0, a2 !197
	lw  	fa1, 0(t0) !197
	fmul	fa0, fa1, fa0 !197
	slli	t0, a0, 2 !197
	add 	t0, t0, a2 !197
	sw  	fa0, 0(t0) !197
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
veciprod.2430:
	sw  	ra, 0(sp)
	addi	a2, zero, 0 !202
	slli	t0, a2, 2 !202
	add 	t0, t0, a0 !202
	lw  	fa0, 0(t0) !202
	addi	a2, zero, 0 !202
	slli	t0, a2, 2 !202
	add 	t0, t0, a1 !202
	lw  	fa1, 0(t0) !202
	fmul	fa0, fa0, fa1 !202
	addi	a2, zero, 1 !202
	slli	t0, a2, 2 !202
	add 	t0, t0, a0 !202
	lw  	fa1, 0(t0) !202
	addi	a2, zero, 1 !202
	slli	t0, a2, 2 !202
	add 	t0, t0, a1 !202
	lw  	fa2, 0(t0) !202
	fmul	fa1, fa1, fa2 !202
	fadd	fa0, fa0, fa1 !202
	addi	a2, zero, 2 !202
	slli	t0, a2, 2 !202
	add 	t0, t0, a0 !202
	lw  	fa1, 0(t0) !202
	addi	a0, zero, 2 !202
	slli	t0, a0, 2 !202
	add 	t0, t0, a1 !202
	lw  	fa2, 0(t0) !202
	fmul	fa1, fa1, fa2 !202
	fadd	fa0, fa0, fa1 !202
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
veciprod2.2433:
	sw  	ra, 0(sp)
	addi	a1, zero, 0 !207
	slli	t0, a1, 2 !207
	add 	t0, t0, a0 !207
	lw  	fa3, 0(t0) !207
	fmul	fa0, fa3, fa0 !207
	addi	a1, zero, 1 !207
	slli	t0, a1, 2 !207
	add 	t0, t0, a0 !207
	lw  	fa3, 0(t0) !207
	fmul	fa1, fa3, fa1 !207
	fadd	fa0, fa0, fa1 !207
	addi	a1, zero, 2 !207
	slli	t0, a1, 2 !207
	add 	t0, t0, a0 !207
	lw  	fa1, 0(t0) !207
	fmul	fa1, fa1, fa2 !207
	fadd	fa0, fa0, fa1 !207
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecaccum.2438:
	sw  	ra, 0(sp)
	addi	a2, zero, 0 !212
	addi	a3, zero, 0 !212
	slli	t0, a3, 2 !212
	add 	t0, t0, a0 !212
	lw  	fa1, 0(t0) !212
	addi	a3, zero, 0 !212
	slli	t0, a3, 2 !212
	add 	t0, t0, a1 !212
	lw  	fa2, 0(t0) !212
	fmul	fa2, fa0, fa2 !212
	fadd	fa1, fa1, fa2 !212
	slli	t0, a2, 2 !212
	add 	t0, t0, a0 !212
	sw  	fa1, 0(t0) !212
	addi	a2, zero, 1 !213
	addi	a3, zero, 1 !213
	slli	t0, a3, 2 !213
	add 	t0, t0, a0 !213
	lw  	fa1, 0(t0) !213
	addi	a3, zero, 1 !213
	slli	t0, a3, 2 !213
	add 	t0, t0, a1 !213
	lw  	fa2, 0(t0) !213
	fmul	fa2, fa0, fa2 !213
	fadd	fa1, fa1, fa2 !213
	slli	t0, a2, 2 !213
	add 	t0, t0, a0 !213
	sw  	fa1, 0(t0) !213
	addi	a2, zero, 2 !214
	addi	a3, zero, 2 !214
	slli	t0, a3, 2 !214
	add 	t0, t0, a0 !214
	lw  	fa1, 0(t0) !214
	addi	a3, zero, 2 !214
	slli	t0, a3, 2 !214
	add 	t0, t0, a1 !214
	lw  	fa2, 0(t0) !214
	fmul	fa0, fa0, fa2 !214
	fadd	fa0, fa1, fa0 !214
	slli	t0, a2, 2 !214
	add 	t0, t0, a0 !214
	sw  	fa0, 0(t0) !214
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecadd.2442:
	sw  	ra, 0(sp)
	addi	a2, zero, 0 !219
	addi	a3, zero, 0 !219
	slli	t0, a3, 2 !219
	add 	t0, t0, a0 !219
	lw  	fa0, 0(t0) !219
	addi	a3, zero, 0 !219
	slli	t0, a3, 2 !219
	add 	t0, t0, a1 !219
	lw  	fa1, 0(t0) !219
	fadd	fa0, fa0, fa1 !219
	slli	t0, a2, 2 !219
	add 	t0, t0, a0 !219
	sw  	fa0, 0(t0) !219
	addi	a2, zero, 1 !220
	addi	a3, zero, 1 !220
	slli	t0, a3, 2 !220
	add 	t0, t0, a0 !220
	lw  	fa0, 0(t0) !220
	addi	a3, zero, 1 !220
	slli	t0, a3, 2 !220
	add 	t0, t0, a1 !220
	lw  	fa1, 0(t0) !220
	fadd	fa0, fa0, fa1 !220
	slli	t0, a2, 2 !220
	add 	t0, t0, a0 !220
	sw  	fa0, 0(t0) !220
	addi	a2, zero, 2 !221
	addi	a3, zero, 2 !221
	slli	t0, a3, 2 !221
	add 	t0, t0, a0 !221
	lw  	fa0, 0(t0) !221
	addi	a3, zero, 2 !221
	slli	t0, a3, 2 !221
	add 	t0, t0, a1 !221
	lw  	fa1, 0(t0) !221
	fadd	fa0, fa0, fa1 !221
	slli	t0, a2, 2 !221
	add 	t0, t0, a0 !221
	sw  	fa0, 0(t0) !221
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecscale.2445:
	sw  	ra, 0(sp)
	addi	a1, zero, 0 !228
	addi	a2, zero, 0 !228
	slli	t0, a2, 2 !228
	add 	t0, t0, a0 !228
	lw  	fa1, 0(t0) !228
	fmul	fa1, fa1, fa0 !228
	slli	t0, a1, 2 !228
	add 	t0, t0, a0 !228
	sw  	fa1, 0(t0) !228
	addi	a1, zero, 1 !229
	addi	a2, zero, 1 !229
	slli	t0, a2, 2 !229
	add 	t0, t0, a0 !229
	lw  	fa1, 0(t0) !229
	fmul	fa1, fa1, fa0 !229
	slli	t0, a1, 2 !229
	add 	t0, t0, a0 !229
	sw  	fa1, 0(t0) !229
	addi	a1, zero, 2 !230
	addi	a2, zero, 2 !230
	slli	t0, a2, 2 !230
	add 	t0, t0, a0 !230
	lw  	fa1, 0(t0) !230
	fmul	fa0, fa1, fa0 !230
	slli	t0, a1, 2 !230
	add 	t0, t0, a0 !230
	sw  	fa0, 0(t0) !230
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
vecaccumv.2448:
	sw  	ra, 0(sp)
	addi	a3, zero, 0 !235
	addi	a4, zero, 0 !235
	slli	t0, a4, 2 !235
	add 	t0, t0, a0 !235
	lw  	fa0, 0(t0) !235
	addi	a4, zero, 0 !235
	slli	t0, a4, 2 !235
	add 	t0, t0, a1 !235
	lw  	fa1, 0(t0) !235
	addi	a4, zero, 0 !235
	slli	t0, a4, 2 !235
	add 	t0, t0, a2 !235
	lw  	fa2, 0(t0) !235
	fmul	fa1, fa1, fa2 !235
	fadd	fa0, fa0, fa1 !235
	slli	t0, a3, 2 !235
	add 	t0, t0, a0 !235
	sw  	fa0, 0(t0) !235
	addi	a3, zero, 1 !236
	addi	a4, zero, 1 !236
	slli	t0, a4, 2 !236
	add 	t0, t0, a0 !236
	lw  	fa0, 0(t0) !236
	addi	a4, zero, 1 !236
	slli	t0, a4, 2 !236
	add 	t0, t0, a1 !236
	lw  	fa1, 0(t0) !236
	addi	a4, zero, 1 !236
	slli	t0, a4, 2 !236
	add 	t0, t0, a2 !236
	lw  	fa2, 0(t0) !236
	fmul	fa1, fa1, fa2 !236
	fadd	fa0, fa0, fa1 !236
	slli	t0, a3, 2 !236
	add 	t0, t0, a0 !236
	sw  	fa0, 0(t0) !236
	addi	a3, zero, 2 !237
	addi	a4, zero, 2 !237
	slli	t0, a4, 2 !237
	add 	t0, t0, a0 !237
	lw  	fa0, 0(t0) !237
	addi	a4, zero, 2 !237
	slli	t0, a4, 2 !237
	add 	t0, t0, a1 !237
	lw  	fa1, 0(t0) !237
	addi	a1, zero, 2 !237
	slli	t0, a1, 2 !237
	add 	t0, t0, a2 !237
	lw  	fa2, 0(t0) !237
	fmul	fa1, fa1, fa2 !237
	fadd	fa0, fa0, fa1 !237
	slli	t0, a3, 2 !237
	add 	t0, t0, a0 !237
	sw  	fa0, 0(t0) !237
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_texturetype.2452:
	sw  	ra, 0(sp)
	lw  	a0, 0(a0) !244
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_form.2454:
	sw  	ra, 0(sp)
	lw  	a0, 4(a0) !254
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_reflectiontype.2456:
	sw  	ra, 0(sp)
	lw  	a0, 8(a0) !264
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_isinvert.2458:
	sw  	ra, 0(sp)
	lw  	a0, 24(a0) !274
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_isrot.2460:
	sw  	ra, 0(sp)
	lw  	a0, 12(a0) !283
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_a.2462:
	sw  	ra, 0(sp)
	lw  	a0, 16(a0) !292
	addi	a1, zero, 0 !297
	slli	t0, a1, 2 !297
	add 	t0, t0, a0 !297
	lw  	fa0, 0(t0) !297
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_b.2464:
	sw  	ra, 0(sp)
	lw  	a0, 16(a0) !302
	addi	a1, zero, 1 !307
	slli	t0, a1, 2 !307
	add 	t0, t0, a0 !307
	lw  	fa0, 0(t0) !307
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_c.2466:
	sw  	ra, 0(sp)
	lw  	a0, 16(a0) !312
	addi	a1, zero, 2 !317
	slli	t0, a1, 2 !317
	add 	t0, t0, a0 !317
	lw  	fa0, 0(t0) !317
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_abc.2468:
	sw  	ra, 0(sp)
	lw  	a0, 16(a0) !322
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_x.2470:
	sw  	ra, 0(sp)
	lw  	a0, 20(a0) !332
	addi	a1, zero, 0 !337
	slli	t0, a1, 2 !337
	add 	t0, t0, a0 !337
	lw  	fa0, 0(t0) !337
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_y.2472:
	sw  	ra, 0(sp)
	lw  	a0, 20(a0) !342
	addi	a1, zero, 1 !347
	slli	t0, a1, 2 !347
	add 	t0, t0, a0 !347
	lw  	fa0, 0(t0) !347
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_z.2474:
	sw  	ra, 0(sp)
	lw  	a0, 20(a0) !352
	addi	a1, zero, 2 !357
	slli	t0, a1, 2 !357
	add 	t0, t0, a0 !357
	lw  	fa0, 0(t0) !357
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_diffuse.2476:
	sw  	ra, 0(sp)
	lw  	a0, 28(a0) !362
	addi	a1, zero, 0 !367
	slli	t0, a1, 2 !367
	add 	t0, t0, a0 !367
	lw  	fa0, 0(t0) !367
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_hilight.2478:
	sw  	ra, 0(sp)
	lw  	a0, 28(a0) !372
	addi	a1, zero, 1 !377
	slli	t0, a1, 2 !377
	add 	t0, t0, a0 !377
	lw  	fa0, 0(t0) !377
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_color_red.2480:
	sw  	ra, 0(sp)
	lw  	a0, 32(a0) !382
	addi	a1, zero, 0 !387
	slli	t0, a1, 2 !387
	add 	t0, t0, a0 !387
	lw  	fa0, 0(t0) !387
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_color_green.2482:
	sw  	ra, 0(sp)
	lw  	a0, 32(a0) !392
	addi	a1, zero, 1 !397
	slli	t0, a1, 2 !397
	add 	t0, t0, a0 !397
	lw  	fa0, 0(t0) !397
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_color_blue.2484:
	sw  	ra, 0(sp)
	lw  	a0, 32(a0) !402
	addi	a1, zero, 2 !407
	slli	t0, a1, 2 !407
	add 	t0, t0, a0 !407
	lw  	fa0, 0(t0) !407
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_r1.2486:
	sw  	ra, 0(sp)
	lw  	a0, 36(a0) !412
	addi	a1, zero, 0 !417
	slli	t0, a1, 2 !417
	add 	t0, t0, a0 !417
	lw  	fa0, 0(t0) !417
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_r2.2488:
	sw  	ra, 0(sp)
	lw  	a0, 36(a0) !422
	addi	a1, zero, 1 !427
	slli	t0, a1, 2 !427
	add 	t0, t0, a0 !427
	lw  	fa0, 0(t0) !427
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_r3.2490:
	sw  	ra, 0(sp)
	lw  	a0, 36(a0) !432
	addi	a1, zero, 2 !437
	slli	t0, a1, 2 !437
	add 	t0, t0, a0 !437
	lw  	fa0, 0(t0) !437
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
o_param_ctbl.2492:
	sw  	ra, 0(sp)
	lw  	a0, 40(a0) !443
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_rgb.2494:
	sw  	ra, 0(sp)
	lw  	a0, 0(a0) !455
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_intersection_points.2496:
	sw  	ra, 0(sp)
	lw  	a0, 4(a0) !462
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_surface_ids.2498:
	sw  	ra, 0(sp)
	lw  	a0, 8(a0) !470
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_calc_diffuse.2500:
	sw  	ra, 0(sp)
	lw  	a0, 12(a0) !477
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_energy.2502:
	sw  	ra, 0(sp)
	lw  	a0, 16(a0) !484
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_received_ray_20percent.2504:
	sw  	ra, 0(sp)
	lw  	a0, 20(a0) !491
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_group_id.2506:
	sw  	ra, 0(sp)
	lw  	a0, 24(a0) !500
	lw  	a0, 0(a0) !502
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_set_group_id.2508:
	sw  	ra, 0(sp)
	lw  	a0, 24(a0) !507
	sw  	a1, 0(a0) !509
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
p_nvectors.2511:
	sw  	ra, 0(sp)
	lw  	a0, 28(a0) !514
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
d_vec.2513:
	sw  	ra, 0(sp)
	lw  	a0, 0(a0) !523
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
d_const.2515:
	sw  	ra, 0(sp)
	lw  	a0, 4(a0) !529
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
r_surface_id.2517:
	sw  	ra, 0(sp)
	lw  	a0, 0(a0) !537
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
r_dvec.2519:
	sw  	ra, 0(sp)
	lw  	a0, 4(a0) !543
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
r_bright.2521:
	sw  	ra, 0(sp)
	lw  	fa0, 8(a0) !549
	addi	a0, fa0, 0 !550
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
rad.2523:
	sw  	ra, 0(sp)
	li  	fa1, 0.017453 !557
	fmul	fa0, fa0, fa1 !557
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_screen_settings.2525:
	sw  	ra, 0(sp)
	lw  	a0, 20(tp) !0
	lw  	a1, 16(tp) !0
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	addi	a5, zero, 0 !564
	sw  	a0, 4(sp) !564
	sw  	a2, 8(sp) !564
	sw  	a3, 12(sp) !564
	sw  	a1, 16(sp) !564
	sw  	a5, 20(sp) !564
	sw  	a4, 24(sp) !564
	addi	sp, sp, 28 !564
	jal 	ra, read_float !564
	addi	sp, sp, -28 !564
	lw  	a0, 20(sp) !564
	lw  	a1, 24(sp) !564
	slli	t0, a0, 2 !564
	add 	t0, t0, a1 !564
	sw  	fa0, 0(t0) !564
	addi	a0, zero, 1 !565
	sw  	a0, 28(sp) !565
	addi	sp, sp, 32 !565
	jal 	ra, read_float !565
	addi	sp, sp, -32 !565
	lw  	a0, 28(sp) !565
	lw  	a1, 24(sp) !565
	slli	t0, a0, 2 !565
	add 	t0, t0, a1 !565
	sw  	fa0, 0(t0) !565
	addi	a0, zero, 2 !566
	sw  	a0, 32(sp) !566
	addi	sp, sp, 36 !566
	jal 	ra, read_float !566
	addi	sp, sp, -36 !566
	lw  	a0, 32(sp) !566
	lw  	a1, 24(sp) !566
	slli	t0, a0, 2 !566
	add 	t0, t0, a1 !566
	sw  	fa0, 0(t0) !566
	addi	sp, sp, 36 !568
	jal 	ra, read_float !568
	addi	sp, sp, -36 !568
	addi	sp, sp, 36 !568
	jal 	ra, rad.2523 !568
	addi	sp, sp, -36 !568
	sw  	fa0, 36(sp) !569
	addi	sp, sp, 40 !569
	jal 	ra, cos !569
	addi	sp, sp, -40 !569
	lw  	fa1, 36(sp) !570
	sw  	fa0, 40(sp) !570
	fsgnj   fa0, fa1, fa1 !570
	addi	sp, sp, 44 !570
	jal 	ra, sin !570
	addi	sp, sp, -44 !570
	sw  	fa0, 44(sp) !571
	addi	sp, sp, 48 !571
	jal 	ra, read_float !571
	addi	sp, sp, -48 !571
	addi	sp, sp, 48 !571
	jal 	ra, rad.2523 !571
	addi	sp, sp, -48 !571
	sw  	fa0, 48(sp) !572
	addi	sp, sp, 52 !572
	jal 	ra, cos !572
	addi	sp, sp, -52 !572
	lw  	fa1, 48(sp) !573
	sw  	fa0, 52(sp) !573
	fsgnj   fa0, fa1, fa1 !573
	addi	sp, sp, 56 !573
	jal 	ra, sin !573
	addi	sp, sp, -56 !573
	addi	a0, zero, 0 !575
	lw  	fa1, 40(sp) !575
	fmul	fa2, fa1, fa0 !575
	li  	fa3, 200.000000 !575
	fmul	fa2, fa2, fa3 !575
	lw  	a1, 16(sp) !575
	slli	t0, a0, 2 !575
	add 	t0, t0, a1 !575
	sw  	fa2, 0(t0) !575
	addi	a0, zero, 1 !576
	li  	fa2, -200.000000 !576
	lw  	fa3, 44(sp) !576
	fmul	fa2, fa3, fa2 !576
	slli	t0, a0, 2 !576
	add 	t0, t0, a1 !576
	sw  	fa2, 0(t0) !576
	addi	a0, zero, 2 !577
	lw  	fa2, 52(sp) !577
	fmul	fa4, fa1, fa2 !577
	li  	fa5, 200.000000 !577
	fmul	fa4, fa4, fa5 !577
	slli	t0, a0, 2 !577
	add 	t0, t0, a1 !577
	sw  	fa4, 0(t0) !577
	addi	a0, zero, 0 !579
	lw  	a2, 12(sp) !579
	slli	t0, a0, 2 !579
	add 	t0, t0, a2 !579
	sw  	fa2, 0(t0) !579
	addi	a0, zero, 1 !580
	li  	fa4, 0.000000 !580
	slli	t0, a0, 2 !580
	add 	t0, t0, a2 !580
	sw  	fa4, 0(t0) !580
	addi	a0, zero, 2 !581
	sw  	fa0, 56(sp) !581
	sw  	a0, 60(sp) !581
	addi	sp, sp, 64 !581
	jal 	ra, fneg !581
	addi	sp, sp, -64 !581
	lw  	a0, 60(sp) !581
	lw  	a1, 12(sp) !581
	slli	t0, a0, 2 !581
	add 	t0, t0, a1 !581
	sw  	fa0, 0(t0) !581
	addi	a0, zero, 0 !583
	lw  	fa0, 44(sp) !583
	sw  	a0, 64(sp) !583
	addi	sp, sp, 68 !583
	jal 	ra, fneg !583
	addi	sp, sp, -68 !583
	lw  	fa1, 56(sp) !583
	fmul	fa0, fa0, fa1 !583
	lw  	a0, 64(sp) !583
	lw  	a1, 8(sp) !583
	slli	t0, a0, 2 !583
	add 	t0, t0, a1 !583
	sw  	fa0, 0(t0) !583
	addi	a0, zero, 1 !584
	lw  	fa0, 40(sp) !584
	sw  	a0, 68(sp) !584
	addi	sp, sp, 72 !584
	jal 	ra, fneg !584
	addi	sp, sp, -72 !584
	lw  	a0, 68(sp) !584
	lw  	a1, 8(sp) !584
	slli	t0, a0, 2 !584
	add 	t0, t0, a1 !584
	sw  	fa0, 0(t0) !584
	addi	a0, zero, 2 !585
	lw  	fa0, 44(sp) !585
	sw  	a0, 72(sp) !585
	addi	sp, sp, 76 !585
	jal 	ra, fneg !585
	addi	sp, sp, -76 !585
	lw  	fa1, 52(sp) !585
	fmul	fa0, fa0, fa1 !585
	lw  	a0, 72(sp) !585
	lw  	a1, 8(sp) !585
	slli	t0, a0, 2 !585
	add 	t0, t0, a1 !585
	sw  	fa0, 0(t0) !585
	addi	a0, zero, 0 !587
	addi	a1, zero, 0 !587
	lw  	a2, 24(sp) !587
	slli	t0, a1, 2 !587
	add 	t0, t0, a2 !587
	lw  	fa0, 0(t0) !587
	addi	a1, zero, 0 !587
	lw  	a3, 16(sp) !587
	slli	t0, a1, 2 !587
	add 	t0, t0, a3 !587
	lw  	fa1, 0(t0) !587
	fsub	fa0, fa0, fa1 !587
	lw  	a1, 4(sp) !587
	slli	t0, a0, 2 !587
	add 	t0, t0, a1 !587
	sw  	fa0, 0(t0) !587
	addi	a0, zero, 1 !588
	addi	a4, zero, 1 !588
	slli	t0, a4, 2 !588
	add 	t0, t0, a2 !588
	lw  	fa0, 0(t0) !588
	addi	a4, zero, 1 !588
	slli	t0, a4, 2 !588
	add 	t0, t0, a3 !588
	lw  	fa1, 0(t0) !588
	fsub	fa0, fa0, fa1 !588
	slli	t0, a0, 2 !588
	add 	t0, t0, a1 !588
	sw  	fa0, 0(t0) !588
	addi	a0, zero, 2 !589
	addi	a4, zero, 2 !589
	slli	t0, a4, 2 !589
	add 	t0, t0, a2 !589
	lw  	fa0, 0(t0) !589
	addi	a2, zero, 2 !589
	slli	t0, a2, 2 !589
	add 	t0, t0, a3 !589
	lw  	fa1, 0(t0) !589
	fsub	fa0, fa0, fa1 !589
	slli	t0, a0, 2 !589
	add 	t0, t0, a1 !589
	sw  	fa0, 0(t0) !589
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_light.2527:
	sw  	ra, 0(sp)
	lw  	a0, 8(tp) !0
	lw  	a1, 4(tp) !0
	sw  	a1, 4(sp) !596
	sw  	a0, 8(sp) !596
	addi	sp, sp, 12 !596
	jal 	ra, read_int !596
	addi	sp, sp, -12 !596
	addi	sp, sp, 12 !599
	jal 	ra, read_float !599
	addi	sp, sp, -12 !599
	addi	sp, sp, 12 !599
	jal 	ra, rad.2523 !599
	addi	sp, sp, -12 !599
	sw  	fa0, 12(sp) !600
	addi	sp, sp, 16 !600
	jal 	ra, sin !600
	addi	sp, sp, -16 !600
	addi	a0, zero, 1 !601
	sw  	a0, 16(sp) !601
	addi	sp, sp, 20 !601
	jal 	ra, fneg !601
	addi	sp, sp, -20 !601
	lw  	a0, 16(sp) !601
	lw  	a1, 8(sp) !601
	slli	t0, a0, 2 !601
	add 	t0, t0, a1 !601
	sw  	fa0, 0(t0) !601
	addi	sp, sp, 20 !602
	jal 	ra, read_float !602
	addi	sp, sp, -20 !602
	addi	sp, sp, 20 !602
	jal 	ra, rad.2523 !602
	addi	sp, sp, -20 !602
	lw  	fa1, 12(sp) !603
	sw  	fa0, 20(sp) !603
	fsgnj   fa0, fa1, fa1 !603
	addi	sp, sp, 24 !603
	jal 	ra, cos !603
	addi	sp, sp, -24 !603
	lw  	fa1, 20(sp) !604
	sw  	fa0, 24(sp) !604
	fsgnj   fa0, fa1, fa1 !604
	addi	sp, sp, 28 !604
	jal 	ra, sin !604
	addi	sp, sp, -28 !604
	addi	a0, zero, 0 !605
	lw  	fa1, 24(sp) !605
	fmul	fa0, fa1, fa0 !605
	lw  	a1, 8(sp) !605
	slli	t0, a0, 2 !605
	add 	t0, t0, a1 !605
	sw  	fa0, 0(t0) !605
	lw  	fa0, 20(sp) !606
	addi	sp, sp, 28 !606
	jal 	ra, cos !606
	addi	sp, sp, -28 !606
	addi	a0, zero, 2 !607
	lw  	fa1, 24(sp) !607
	fmul	fa0, fa1, fa0 !607
	lw  	a1, 8(sp) !607
	slli	t0, a0, 2 !607
	add 	t0, t0, a1 !607
	sw  	fa0, 0(t0) !607
	addi	a0, zero, 0 !608
	sw  	a0, 28(sp) !608
	addi	sp, sp, 32 !608
	jal 	ra, read_float !608
	addi	sp, sp, -32 !608
	lw  	a0, 28(sp) !608
	lw  	a1, 4(sp) !608
	slli	t0, a0, 2 !608
	add 	t0, t0, a1 !608
	sw  	fa0, 0(t0) !608
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
rotate_quadratic_matrix.2529:
	sw  	ra, 0(sp)
	addi	a2, zero, 0 !618
	slli	t0, a2, 2 !618
	add 	t0, t0, a1 !618
	lw  	fa0, 0(t0) !618
	sw  	a0, 4(sp) !618
	sw  	a1, 8(sp) !618
	addi	sp, sp, 12 !618
	jal 	ra, cos !618
	addi	sp, sp, -12 !618
	addi	a0, zero, 0 !619
	lw  	a1, 8(sp) !619
	slli	t0, a0, 2 !619
	add 	t0, t0, a1 !619
	lw  	fa1, 0(t0) !619
	sw  	fa0, 12(sp) !619
	fsgnj   fa0, fa1, fa1 !619
	addi	sp, sp, 16 !619
	jal 	ra, sin !619
	addi	sp, sp, -16 !619
	addi	a0, zero, 1 !620
	lw  	a1, 8(sp) !620
	slli	t0, a0, 2 !620
	add 	t0, t0, a1 !620
	lw  	fa1, 0(t0) !620
	sw  	fa0, 16(sp) !620
	fsgnj   fa0, fa1, fa1 !620
	addi	sp, sp, 20 !620
	jal 	ra, cos !620
	addi	sp, sp, -20 !620
	addi	a0, zero, 1 !621
	lw  	a1, 8(sp) !621
	slli	t0, a0, 2 !621
	add 	t0, t0, a1 !621
	lw  	fa1, 0(t0) !621
	sw  	fa0, 20(sp) !621
	fsgnj   fa0, fa1, fa1 !621
	addi	sp, sp, 24 !621
	jal 	ra, sin !621
	addi	sp, sp, -24 !621
	addi	a0, zero, 2 !622
	lw  	a1, 8(sp) !622
	slli	t0, a0, 2 !622
	add 	t0, t0, a1 !622
	lw  	fa1, 0(t0) !622
	sw  	fa0, 24(sp) !622
	fsgnj   fa0, fa1, fa1 !622
	addi	sp, sp, 28 !622
	jal 	ra, cos !622
	addi	sp, sp, -28 !622
	addi	a0, zero, 2 !623
	lw  	a1, 8(sp) !623
	slli	t0, a0, 2 !623
	add 	t0, t0, a1 !623
	lw  	fa1, 0(t0) !623
	sw  	fa0, 28(sp) !623
	fsgnj   fa0, fa1, fa1 !623
	addi	sp, sp, 32 !623
	jal 	ra, sin !623
	addi	sp, sp, -32 !623
	lw  	fa1, 28(sp) !625
	lw  	fa2, 20(sp) !625
	fmul	fa3, fa2, fa1 !625
	lw  	fa4, 24(sp) !626
	lw  	fa5, 16(sp) !626
	fmul	fa6, fa5, fa4 !626
	fmul	fa6, fa6, fa1 !626
	lw  	fa7, 12(sp) !626
	fmul	fs1, fa7, fa0 !626
	fsub	fa6, fa6, fs1 !626
	fmul	fs1, fa7, fa4 !627
	fmul	fs1, fs1, fa1 !627
	fmul	fs2, fa5, fa0 !627
	fadd	fs1, fs1, fs2 !627
	fmul	fs2, fa2, fa0 !629
	fmul	fs3, fa5, fa4 !630
	fmul	fs3, fs3, fa0 !630
	fmul	fs4, fa7, fa1 !630
	fadd	fs3, fs3, fs4 !630
	fmul	fs4, fa7, fa4 !631
	fmul	fa0, fs4, fa0 !631
	fmul	fa1, fa5, fa1 !631
	fsub	fa0, fa0, fa1 !631
	sw  	fa0, 32(sp) !633
	sw  	fs1, 36(sp) !633
	sw  	fs3, 40(sp) !633
	sw  	fa6, 44(sp) !633
	sw  	fs2, 48(sp) !633
	sw  	fa3, 52(sp) !633
	fsgnj   fa0, fa4, fa4 !633
	addi	sp, sp, 56 !633
	jal 	ra, fneg !633
	addi	sp, sp, -56 !633
	lw  	fa1, 20(sp) !634
	lw  	fa2, 16(sp) !634
	fmul	fa2, fa2, fa1 !634
	lw  	fa3, 12(sp) !635
	fmul	fa1, fa3, fa1 !635
	addi	a0, zero, 0 !638
	lw  	a1, 4(sp) !638
	slli	t0, a0, 2 !638
	add 	t0, t0, a1 !638
	lw  	fa3, 0(t0) !638
	addi	a0, zero, 1 !639
	slli	t0, a0, 2 !639
	add 	t0, t0, a1 !639
	lw  	fa4, 0(t0) !639
	addi	a0, zero, 2 !640
	slli	t0, a0, 2 !640
	add 	t0, t0, a1 !640
	lw  	fa5, 0(t0) !640
	addi	a0, zero, 0 !645
	lw  	fa6, 52(sp) !645
	sw  	fa1, 56(sp) !645
	sw  	fa2, 60(sp) !645
	sw  	a0, 64(sp) !645
	sw  	fa5, 68(sp) !645
	sw  	fa0, 72(sp) !645
	sw  	fa4, 76(sp) !645
	sw  	fa3, 80(sp) !645
	fsgnj   fa0, fa6, fa6 !645
	addi	sp, sp, 84 !645
	jal 	ra, fsqr !645
	addi	sp, sp, -84 !645
	lw  	fa1, 80(sp) !645
	fmul	fa0, fa1, fa0 !645
	lw  	fa2, 48(sp) !645
	sw  	fa0, 84(sp) !645
	fsgnj   fa0, fa2, fa2 !645
	addi	sp, sp, 88 !645
	jal 	ra, fsqr !645
	addi	sp, sp, -88 !645
	lw  	fa1, 76(sp) !645
	fmul	fa0, fa1, fa0 !645
	lw  	fa2, 84(sp) !645
	fadd	fa0, fa2, fa0 !645
	lw  	fa2, 72(sp) !645
	sw  	fa0, 88(sp) !645
	fsgnj   fa0, fa2, fa2 !645
	addi	sp, sp, 92 !645
	jal 	ra, fsqr !645
	addi	sp, sp, -92 !645
	lw  	fa1, 68(sp) !645
	fmul	fa0, fa1, fa0 !645
	lw  	fa2, 88(sp) !645
	fadd	fa0, fa2, fa0 !645
	lw  	a0, 64(sp) !645
	lw  	a1, 4(sp) !645
	slli	t0, a0, 2 !645
	add 	t0, t0, a1 !645
	sw  	fa0, 0(t0) !645
	addi	a0, zero, 1 !646
	lw  	fa0, 44(sp) !646
	sw  	a0, 92(sp) !646
	addi	sp, sp, 96 !646
	jal 	ra, fsqr !646
	addi	sp, sp, -96 !646
	lw  	fa1, 80(sp) !646
	fmul	fa0, fa1, fa0 !646
	lw  	fa2, 40(sp) !646
	sw  	fa0, 96(sp) !646
	fsgnj   fa0, fa2, fa2 !646
	addi	sp, sp, 100 !646
	jal 	ra, fsqr !646
	addi	sp, sp, -100 !646
	lw  	fa1, 76(sp) !646
	fmul	fa0, fa1, fa0 !646
	lw  	fa2, 96(sp) !646
	fadd	fa0, fa2, fa0 !646
	lw  	fa2, 60(sp) !646
	sw  	fa0, 100(sp) !646
	fsgnj   fa0, fa2, fa2 !646
	addi	sp, sp, 104 !646
	jal 	ra, fsqr !646
	addi	sp, sp, -104 !646
	lw  	fa1, 68(sp) !646
	fmul	fa0, fa1, fa0 !646
	lw  	fa2, 100(sp) !646
	fadd	fa0, fa2, fa0 !646
	lw  	a0, 92(sp) !646
	lw  	a1, 4(sp) !646
	slli	t0, a0, 2 !646
	add 	t0, t0, a1 !646
	sw  	fa0, 0(t0) !646
	addi	a0, zero, 2 !647
	lw  	fa0, 36(sp) !647
	sw  	a0, 104(sp) !647
	addi	sp, sp, 108 !647
	jal 	ra, fsqr !647
	addi	sp, sp, -108 !647
	lw  	fa1, 80(sp) !647
	fmul	fa0, fa1, fa0 !647
	lw  	fa2, 32(sp) !647
	sw  	fa0, 108(sp) !647
	fsgnj   fa0, fa2, fa2 !647
	addi	sp, sp, 112 !647
	jal 	ra, fsqr !647
	addi	sp, sp, -112 !647
	lw  	fa1, 76(sp) !647
	fmul	fa0, fa1, fa0 !647
	lw  	fa2, 108(sp) !647
	fadd	fa0, fa2, fa0 !647
	lw  	fa2, 56(sp) !647
	sw  	fa0, 112(sp) !647
	fsgnj   fa0, fa2, fa2 !647
	addi	sp, sp, 116 !647
	jal 	ra, fsqr !647
	addi	sp, sp, -116 !647
	lw  	fa1, 68(sp) !647
	fmul	fa0, fa1, fa0 !647
	lw  	fa2, 112(sp) !647
	fadd	fa0, fa2, fa0 !647
	lw  	a0, 104(sp) !647
	lw  	a1, 4(sp) !647
	slli	t0, a0, 2 !647
	add 	t0, t0, a1 !647
	sw  	fa0, 0(t0) !647
	addi	a0, zero, 0 !650
	li  	fa0, 2.000000 !650
	lw  	fa2, 44(sp) !650
	lw  	fa3, 80(sp) !650
	fmul	fa4, fa3, fa2 !650
	lw  	fa5, 36(sp) !650
	fmul	fa4, fa4, fa5 !650
	lw  	fa6, 40(sp) !650
	lw  	fa7, 76(sp) !650
	fmul	fs1, fa7, fa6 !650
	lw  	fs2, 32(sp) !650
	fmul	fs1, fs1, fs2 !650
	fadd	fa4, fa4, fs1 !650
	lw  	fs1, 60(sp) !650
	fmul	fs3, fa1, fs1 !650
	lw  	fs4, 56(sp) !650
	fmul	fs3, fs3, fs4 !650
	fadd	fa4, fa4, fs3 !650
	fmul	fa0, fa0, fa4 !650
	lw  	a1, 8(sp) !650
	slli	t0, a0, 2 !650
	add 	t0, t0, a1 !650
	sw  	fa0, 0(t0) !650
	addi	a0, zero, 1 !651
	li  	fa0, 2.000000 !651
	lw  	fa4, 52(sp) !651
	fmul	fs3, fa3, fa4 !651
	fmul	fa5, fs3, fa5 !651
	lw  	fs3, 48(sp) !651
	fmul	fs5, fa7, fs3 !651
	fmul	fs2, fs5, fs2 !651
	fadd	fa5, fa5, fs2 !651
	lw  	fs2, 72(sp) !651
	fmul	fs5, fa1, fs2 !651
	fmul	fs4, fs5, fs4 !651
	fadd	fa5, fa5, fs4 !651
	fmul	fa0, fa0, fa5 !651
	slli	t0, a0, 2 !651
	add 	t0, t0, a1 !651
	sw  	fa0, 0(t0) !651
	addi	a0, zero, 2 !652
	li  	fa0, 2.000000 !652
	fmul	fa3, fa3, fa4 !652
	fmul	fa2, fa3, fa2 !652
	fmul	fa3, fa7, fs3 !652
	fmul	fa3, fa3, fa6 !652
	fadd	fa2, fa2, fa3 !652
	fmul	fa1, fa1, fs2 !652
	fmul	fa1, fa1, fs1 !652
	fadd	fa1, fa2, fa1 !652
	fmul	fa0, fa0, fa1 !652
	slli	t0, a0, 2 !652
	add 	t0, t0, a1 !652
	sw  	fa0, 0(t0) !652
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_nth_object.2532:
	sw  	ra, 0(sp)
	lw  	a1, 4(tp) !0
	sw  	a0, 4(sp) !659
	sw  	a1, 8(sp) !659
	addi	sp, sp, 12 !659
	jal 	ra, read_int !659
	addi	sp, sp, -12 !659
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.7986 !660
	addi	a0, zero, 0 !736
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.7986: !660
	sw  	a0, 12(sp) !662
	addi	sp, sp, 16 !662
	jal 	ra, read_int !662
	addi	sp, sp, -16 !662
	sw  	a0, 16(sp) !663
	addi	sp, sp, 20 !663
	jal 	ra, read_int !663
	addi	sp, sp, -20 !663
	sw  	a0, 20(sp) !664
	addi	sp, sp, 24 !664
	jal 	ra, read_int !664
	addi	sp, sp, -24 !664
	addi	a1, zero, 3 !666
	li  	fa0, 0.000000 !666
	sw  	a0, 24(sp) !666
	addi	a0, a1, 0 !666
	addi	sp, sp, 28 !666
	jal 	ra, create_float_array !666
	addi	sp, sp, -28 !666
	addi	a1, zero, 0 !667
	sw  	a1, 28(sp) !667
	sw  	a0, 32(sp) !667
	addi	sp, sp, 36 !667
	jal 	ra, read_float !667
	addi	sp, sp, -36 !667
	lw  	a0, 28(sp) !667
	lw  	a1, 32(sp) !667
	slli	t0, a0, 2 !667
	add 	t0, t0, a1 !667
	sw  	fa0, 0(t0) !667
	addi	a0, zero, 1 !668
	sw  	a0, 36(sp) !668
	addi	sp, sp, 40 !668
	jal 	ra, read_float !668
	addi	sp, sp, -40 !668
	lw  	a0, 36(sp) !668
	lw  	a1, 32(sp) !668
	slli	t0, a0, 2 !668
	add 	t0, t0, a1 !668
	sw  	fa0, 0(t0) !668
	addi	a0, zero, 2 !669
	sw  	a0, 40(sp) !669
	addi	sp, sp, 44 !669
	jal 	ra, read_float !669
	addi	sp, sp, -44 !669
	lw  	a0, 40(sp) !669
	lw  	a1, 32(sp) !669
	slli	t0, a0, 2 !669
	add 	t0, t0, a1 !669
	sw  	fa0, 0(t0) !669
	addi	a0, zero, 3 !671
	li  	fa0, 0.000000 !671
	addi	sp, sp, 44 !671
	jal 	ra, create_float_array !671
	addi	sp, sp, -44 !671
	addi	a1, zero, 0 !672
	sw  	a1, 44(sp) !672
	sw  	a0, 48(sp) !672
	addi	sp, sp, 52 !672
	jal 	ra, read_float !672
	addi	sp, sp, -52 !672
	lw  	a0, 44(sp) !672
	lw  	a1, 48(sp) !672
	slli	t0, a0, 2 !672
	add 	t0, t0, a1 !672
	sw  	fa0, 0(t0) !672
	addi	a0, zero, 1 !673
	sw  	a0, 52(sp) !673
	addi	sp, sp, 56 !673
	jal 	ra, read_float !673
	addi	sp, sp, -56 !673
	lw  	a0, 52(sp) !673
	lw  	a1, 48(sp) !673
	slli	t0, a0, 2 !673
	add 	t0, t0, a1 !673
	sw  	fa0, 0(t0) !673
	addi	a0, zero, 2 !674
	sw  	a0, 56(sp) !674
	addi	sp, sp, 60 !674
	jal 	ra, read_float !674
	addi	sp, sp, -60 !674
	lw  	a0, 56(sp) !674
	lw  	a1, 48(sp) !674
	slli	t0, a0, 2 !674
	add 	t0, t0, a1 !674
	sw  	fa0, 0(t0) !674
	addi	sp, sp, 60 !676
	jal 	ra, read_float !676
	addi	sp, sp, -60 !676
	addi	sp, sp, 60 !676
	jal 	ra, fisneg !676
	addi	sp, sp, -60 !676
	addi	a1, zero, 2 !678
	li  	fa0, 0.000000 !678
	sw  	a0, 60(sp) !678
	addi	a0, a1, 0 !678
	addi	sp, sp, 64 !678
	jal 	ra, create_float_array !678
	addi	sp, sp, -64 !678
	addi	a1, zero, 0 !679
	sw  	a1, 64(sp) !679
	sw  	a0, 68(sp) !679
	addi	sp, sp, 72 !679
	jal 	ra, read_float !679
	addi	sp, sp, -72 !679
	lw  	a0, 64(sp) !679
	lw  	a1, 68(sp) !679
	slli	t0, a0, 2 !679
	add 	t0, t0, a1 !679
	sw  	fa0, 0(t0) !679
	addi	a0, zero, 1 !680
	sw  	a0, 72(sp) !680
	addi	sp, sp, 76 !680
	jal 	ra, read_float !680
	addi	sp, sp, -76 !680
	lw  	a0, 72(sp) !680
	lw  	a1, 68(sp) !680
	slli	t0, a0, 2 !680
	add 	t0, t0, a1 !680
	sw  	fa0, 0(t0) !680
	addi	a0, zero, 3 !682
	li  	fa0, 0.000000 !682
	addi	sp, sp, 76 !682
	jal 	ra, create_float_array !682
	addi	sp, sp, -76 !682
	addi	a1, zero, 0 !683
	sw  	a1, 76(sp) !683
	sw  	a0, 80(sp) !683
	addi	sp, sp, 84 !683
	jal 	ra, read_float !683
	addi	sp, sp, -84 !683
	lw  	a0, 76(sp) !683
	lw  	a1, 80(sp) !683
	slli	t0, a0, 2 !683
	add 	t0, t0, a1 !683
	sw  	fa0, 0(t0) !683
	addi	a0, zero, 1 !684
	sw  	a0, 84(sp) !684
	addi	sp, sp, 88 !684
	jal 	ra, read_float !684
	addi	sp, sp, -88 !684
	lw  	a0, 84(sp) !684
	lw  	a1, 80(sp) !684
	slli	t0, a0, 2 !684
	add 	t0, t0, a1 !684
	sw  	fa0, 0(t0) !684
	addi	a0, zero, 2 !685
	sw  	a0, 88(sp) !685
	addi	sp, sp, 92 !685
	jal 	ra, read_float !685
	addi	sp, sp, -92 !685
	lw  	a0, 88(sp) !685
	lw  	a1, 80(sp) !685
	slli	t0, a0, 2 !685
	add 	t0, t0, a1 !685
	sw  	fa0, 0(t0) !685
	addi	a0, zero, 3 !687
	li  	fa0, 0.000000 !687
	addi	sp, sp, 92 !687
	jal 	ra, create_float_array !687
	addi	sp, sp, -92 !687
	lw  	a1, 24(sp) !688
	sw  	a0, 92(sp) !688
	bne 	a1, zero, beq_else.7988 !688
	jal 	zero, beq_cont.7989 !688
beq_else.7988: !688
	addi	a2, zero, 0 !690
	sw  	a2, 96(sp) !690
	addi	sp, sp, 100 !690
	jal 	ra, read_float !690
	addi	sp, sp, -100 !690
	addi	sp, sp, 100 !690
	jal 	ra, rad.2523 !690
	addi	sp, sp, -100 !690
	lw  	a0, 96(sp) !690
	lw  	a1, 92(sp) !690
	slli	t0, a0, 2 !690
	add 	t0, t0, a1 !690
	sw  	fa0, 0(t0) !690
	addi	a0, zero, 1 !691
	sw  	a0, 100(sp) !691
	addi	sp, sp, 104 !691
	jal 	ra, read_float !691
	addi	sp, sp, -104 !691
	addi	sp, sp, 104 !691
	jal 	ra, rad.2523 !691
	addi	sp, sp, -104 !691
	lw  	a0, 100(sp) !691
	lw  	a1, 92(sp) !691
	slli	t0, a0, 2 !691
	add 	t0, t0, a1 !691
	sw  	fa0, 0(t0) !691
	addi	a0, zero, 2 !692
	sw  	a0, 104(sp) !692
	addi	sp, sp, 108 !692
	jal 	ra, read_float !692
	addi	sp, sp, -108 !692
	addi	sp, sp, 108 !692
	jal 	ra, rad.2523 !692
	addi	sp, sp, -108 !692
	lw  	a0, 104(sp) !692
	lw  	a1, 92(sp) !692
	slli	t0, a0, 2 !692
	add 	t0, t0, a1 !692
	sw  	fa0, 0(t0) !692
beq_cont.7989: !688
	lw  	a0, 16(sp) !699
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.7990 !699
	addi	a1, zero, 1 !699
	jal 	zero, beq_cont.7991 !699
beq_else.7990: !699
	lw  	a1, 60(sp) !699
beq_cont.7991: !699
	addi	a2, zero, 4 !700
	li  	fa0, 0.000000 !700
	sw  	a1, 108(sp) !700
	addi	a0, a2, 0 !700
	addi	sp, sp, 112 !700
	jal 	ra, create_float_array !700
	addi	sp, sp, -112 !700
	addi	a1, gp, 0 !703
	addi	gp, gp, 44 !703
	sw  	a0, 40(a1) !703
	lw  	a0, 92(sp) !703
	sw  	a0, 36(a1) !703
	lw  	a2, 80(sp) !703
	sw  	a2, 32(a1) !703
	lw  	a2, 68(sp) !703
	sw  	a2, 28(a1) !703
	lw  	a2, 108(sp) !703
	sw  	a2, 24(a1) !703
	lw  	a2, 48(sp) !703
	sw  	a2, 20(a1) !703
	lw  	a2, 32(sp) !703
	sw  	a2, 16(a1) !703
	lw  	a3, 24(sp) !703
	sw  	a3, 12(a1) !703
	lw  	a4, 20(sp) !703
	sw  	a4, 8(a1) !703
	lw  	a4, 16(sp) !703
	sw  	a4, 4(a1) !703
	lw  	a5, 12(sp) !703
	sw  	a5, 0(a1) !703
	lw  	a5, 4(sp) !711
	lw  	a6, 8(sp) !711
	slli	t0, a5, 2 !711
	add 	t0, t0, a6 !711
	sw  	a1, 0(t0) !711
	addi	t0, zero, 3
	bne 	a4, t0, beq_else.7992 !713
	addi	a1, zero, 0 !716
	slli	t0, a1, 2 !716
	add 	t0, t0, a2 !716
	lw  	fa0, 0(t0) !716
	addi	a1, zero, 0 !717
	sw  	a1, 112(sp) !717
	sw  	fa0, 116(sp) !717
	addi	sp, sp, 120 !717
	jal 	ra, fiszero !717
	addi	sp, sp, -120 !717
	bne 	a0, zero, beq_else.7994 !717
	lw  	fa0, 116(sp) !717
	addi	sp, sp, 120 !717
	jal 	ra, sgn.2406 !717
	addi	sp, sp, -120 !717
	lw  	fa1, 116(sp) !717
	sw  	fa0, 120(sp) !717
	fsgnj   fa0, fa1, fa1 !717
	addi	sp, sp, 124 !717
	jal 	ra, fsqr !717
	addi	sp, sp, -124 !717
	lw  	fa1, 120(sp) !717
	fdiv	fa0, fa1, fa0 !717
	jal 	zero, beq_cont.7995 !717
beq_else.7994: !717
	li  	fa0, 0.000000 !717
beq_cont.7995: !717
	lw  	a0, 112(sp) !717
	lw  	a1, 32(sp) !717
	slli	t0, a0, 2 !717
	add 	t0, t0, a1 !717
	sw  	fa0, 0(t0) !717
	addi	a0, zero, 1 !718
	slli	t0, a0, 2 !718
	add 	t0, t0, a1 !718
	lw  	fa0, 0(t0) !718
	addi	a0, zero, 1 !719
	sw  	a0, 124(sp) !719
	sw  	fa0, 128(sp) !719
	addi	sp, sp, 132 !719
	jal 	ra, fiszero !719
	addi	sp, sp, -132 !719
	bne 	a0, zero, beq_else.7996 !719
	lw  	fa0, 128(sp) !719
	addi	sp, sp, 132 !719
	jal 	ra, sgn.2406 !719
	addi	sp, sp, -132 !719
	lw  	fa1, 128(sp) !719
	sw  	fa0, 132(sp) !719
	fsgnj   fa0, fa1, fa1 !719
	addi	sp, sp, 136 !719
	jal 	ra, fsqr !719
	addi	sp, sp, -136 !719
	lw  	fa1, 132(sp) !719
	fdiv	fa0, fa1, fa0 !719
	jal 	zero, beq_cont.7997 !719
beq_else.7996: !719
	li  	fa0, 0.000000 !719
beq_cont.7997: !719
	lw  	a0, 124(sp) !719
	lw  	a1, 32(sp) !719
	slli	t0, a0, 2 !719
	add 	t0, t0, a1 !719
	sw  	fa0, 0(t0) !719
	addi	a0, zero, 2 !720
	slli	t0, a0, 2 !720
	add 	t0, t0, a1 !720
	lw  	fa0, 0(t0) !720
	addi	a0, zero, 2 !721
	sw  	a0, 136(sp) !721
	sw  	fa0, 140(sp) !721
	addi	sp, sp, 144 !721
	jal 	ra, fiszero !721
	addi	sp, sp, -144 !721
	bne 	a0, zero, beq_else.7998 !721
	lw  	fa0, 140(sp) !721
	addi	sp, sp, 144 !721
	jal 	ra, sgn.2406 !721
	addi	sp, sp, -144 !721
	lw  	fa1, 140(sp) !721
	sw  	fa0, 144(sp) !721
	fsgnj   fa0, fa1, fa1 !721
	addi	sp, sp, 148 !721
	jal 	ra, fsqr !721
	addi	sp, sp, -148 !721
	lw  	fa1, 144(sp) !721
	fdiv	fa0, fa1, fa0 !721
	jal 	zero, beq_cont.7999 !721
beq_else.7998: !721
	li  	fa0, 0.000000 !721
beq_cont.7999: !721
	lw  	a0, 136(sp) !721
	lw  	a1, 32(sp) !721
	slli	t0, a0, 2 !721
	add 	t0, t0, a1 !721
	sw  	fa0, 0(t0) !721
	jal 	zero, beq_cont.7993 !713
beq_else.7992: !713
	addi	t0, zero, 2
	bne 	a4, t0, beq_else.8000 !723
	lw  	a1, 60(sp) !725
	bne 	a1, zero, beq_else.8002 !725
	addi	a1, zero, 1 !725
	jal 	zero, beq_cont.8003 !725
beq_else.8002: !725
	addi	a1, zero, 0 !725
beq_cont.8003: !725
	addi	a0, a2, 0 !725
	addi	sp, sp, 148 !725
	jal 	ra, vecunit_sgn.2427 !725
	addi	sp, sp, -148 !725
	jal 	zero, beq_cont.8001 !723
beq_else.8000: !723
beq_cont.8001: !723
beq_cont.7993: !713
	lw  	a0, 24(sp) !729
	bne 	a0, zero, beq_else.8004 !729
	jal 	zero, beq_cont.8005 !729
beq_else.8004: !729
	lw  	a0, 32(sp) !730
	lw  	a1, 92(sp) !730
	addi	sp, sp, 148 !730
	jal 	ra, rotate_quadratic_matrix.2529 !730
	addi	sp, sp, -148 !730
beq_cont.8005: !729
	addi	a0, zero, 1 !733
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_object.2534:
	sw  	ra, 0(sp)
	lw  	a1, 8(tp) !0
	lw  	a2, 4(tp) !0
	addi	t0, zero, 60
	blt 	a0, t0, bge_else.8006 !741
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8006: !741
	sw  	tp, 4(sp) !742
	sw  	a2, 8(sp) !742
	sw  	a0, 12(sp) !742
	addi	tp, a1, 0 !742
	addi	sp, sp, 16 !742
	lw  	t1, 0(tp) !742
	jalr	ra, t1, 0 !742
	addi	sp, sp, -16 !742
	bne 	a0, zero, beq_else.8009 !742
	lw  	a0, 8(sp) !745
	lw  	a1, 12(sp) !745
	sw  	a1, 0(a0) !745
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8009: !742
	lw  	a0, 12(sp) !743
	addi	a0, a0, 1 !743
	lw  	a1, 4(sp) !743
	addi	tp, a1, 0 !743
	lw  	t1, 0(tp) !743
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !743
read_all_object.2536:
	sw  	ra, 0(sp)
	lw  	a0, 4(tp) !0
	addi	a1, zero, 0 !750
	addi	tp, a0, 0 !750
	addi	a0, a1, 0 !750
	lw  	t1, 0(tp) !750
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !750
read_net_item.2538:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !757
	addi	sp, sp, 8 !757
	jal 	ra, read_int !757
	addi	sp, sp, -8 !757
	addi	t0, zero, -1
	bne 	a0, t0, beq_else.8012 !758
	lw  	a0, 4(sp) !758
	addi	a0, a0, 1 !758
	addi	a1, zero, -1 !758
	lw  	ra, 0(sp)
	jal 	zero, create_array !758
beq_else.8012: !758
	lw  	a1, 4(sp) !760
	addi	a2, a1, 1 !760
	sw  	a0, 8(sp) !760
	addi	a0, a2, 0 !760
	addi	sp, sp, 12 !760
	jal 	ra, read_net_item.2538 !760
	addi	sp, sp, -12 !760
	lw  	a1, 4(sp) !761
	lw  	a2, 8(sp) !761
	slli	t0, a1, 2 !761
	add 	t0, t0, a0 !761
	sw  	a2, 0(t0) !761
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_or_network.2540:
	sw  	ra, 0(sp)
	addi	a1, zero, 0 !765
	sw  	a0, 4(sp) !765
	addi	a0, a1, 0 !765
	addi	sp, sp, 8 !765
	jal 	ra, read_net_item.2538 !765
	addi	sp, sp, -8 !765
	lw  	a1, 0(a0) !766
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.8014 !766
	lw  	a1, 4(sp) !767
	addi	a1, a1, 1 !767
	addi	t0, a1, 0 !767
	addi	a1, a0, 0 !767
	addi	a0, t0, 0 !767
	lw  	ra, 0(sp)
	jal 	zero, create_array !767
beq_else.8014: !766
	lw  	a1, 4(sp) !769
	addi	a2, a1, 1 !769
	sw  	a0, 8(sp) !769
	addi	a0, a2, 0 !769
	addi	sp, sp, 12 !769
	jal 	ra, read_or_network.2540 !769
	addi	sp, sp, -12 !769
	lw  	a1, 4(sp) !770
	lw  	a2, 8(sp) !770
	slli	t0, a1, 2 !770
	add 	t0, t0, a0 !770
	sw  	a2, 0(t0) !770
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
read_and_network.2542:
	sw  	ra, 0(sp)
	lw  	a1, 4(tp) !0
	addi	a2, zero, 0 !774
	sw  	tp, 4(sp) !774
	sw  	a0, 8(sp) !774
	sw  	a1, 12(sp) !774
	addi	a0, a2, 0 !774
	addi	sp, sp, 16 !774
	jal 	ra, read_net_item.2538 !774
	addi	sp, sp, -16 !774
	lw  	a1, 0(a0) !775
	addi	t0, zero, -1
	bne 	a1, t0, beq_else.8016 !775
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8016: !775
	lw  	a1, 8(sp) !777
	lw  	a2, 12(sp) !777
	slli	t0, a1, 2 !777
	add 	t0, t0, a2 !777
	sw  	a0, 0(t0) !777
	addi	a0, a1, 1 !778
	lw  	a1, 4(sp) !778
	addi	tp, a1, 0 !778
	lw  	t1, 0(tp) !778
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !778
read_parameter.2544:
	sw  	ra, 0(sp)
	lw  	a0, 20(tp) !0
	lw  	a1, 16(tp) !0
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	sw  	a4, 4(sp) !784
	sw  	a2, 8(sp) !784
	sw  	a3, 12(sp) !784
	sw  	a1, 16(sp) !784
	addi	tp, a0, 0 !784
	addi	sp, sp, 20 !784
	lw  	t1, 0(tp) !784
	jalr	ra, t1, 0 !784
	addi	sp, sp, -20 !784
	lw  	a0, 16(sp) !785
	addi	tp, a0, 0 !785
	addi	sp, sp, 20 !785
	lw  	t1, 0(tp) !785
	jalr	ra, t1, 0 !785
	addi	sp, sp, -20 !785
	lw  	a0, 12(sp) !786
	addi	tp, a0, 0 !786
	addi	sp, sp, 20 !786
	lw  	t1, 0(tp) !786
	jalr	ra, t1, 0 !786
	addi	sp, sp, -20 !786
	addi	a0, zero, 0 !787
	lw  	a1, 8(sp) !787
	addi	tp, a1, 0 !787
	addi	sp, sp, 20 !787
	lw  	t1, 0(tp) !787
	jalr	ra, t1, 0 !787
	addi	sp, sp, -20 !787
	addi	a0, zero, 0 !788
	addi	sp, sp, 20 !788
	jal 	ra, read_or_network.2540 !788
	addi	sp, sp, -20 !788
	lw  	a1, 4(sp) !788
	sw  	a0, 0(a1) !788
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_rect_surface.2546:
	sw  	ra, 0(sp)
	lw  	a5, 4(tp) !0
	slli	t0, a2, 2 !799
	add 	t0, t0, a1 !799
	lw  	fa3, 0(t0) !799
	sw  	a5, 4(sp) !799
	sw  	fa2, 8(sp) !799
	sw  	a4, 12(sp) !799
	sw  	fa1, 16(sp) !799
	sw  	a3, 20(sp) !799
	sw  	fa0, 24(sp) !799
	sw  	a2, 28(sp) !799
	sw  	a1, 32(sp) !799
	sw  	a0, 36(sp) !799
	fsgnj   fa0, fa3, fa3 !799
	addi	sp, sp, 40 !799
	jal 	ra, fiszero !799
	addi	sp, sp, -40 !799
	bne 	a0, zero, beq_else.8020 !799
	lw  	a0, 36(sp) !800
	addi	sp, sp, 40 !800
	jal 	ra, o_param_abc.2468 !800
	addi	sp, sp, -40 !800
	lw  	a1, 36(sp) !801
	sw  	a0, 40(sp) !801
	addi	a0, a1, 0 !801
	addi	sp, sp, 44 !801
	jal 	ra, o_isinvert.2458 !801
	addi	sp, sp, -44 !801
	lw  	a1, 28(sp) !801
	lw  	a2, 32(sp) !801
	slli	t0, a1, 2 !801
	add 	t0, t0, a2 !801
	lw  	fa0, 0(t0) !801
	sw  	a0, 44(sp) !801
	addi	sp, sp, 48 !801
	jal 	ra, fisneg !801
	addi	sp, sp, -48 !801
	lw  	a1, 44(sp) !801
	addi	t0, a1, 0 !801
	addi	a1, a0, 0 !801
	addi	a0, t0, 0 !801
	addi	sp, sp, 48 !801
	jal 	ra, xor.2403 !801
	addi	sp, sp, -48 !801
	lw  	a1, 28(sp) !801
	lw  	a2, 40(sp) !801
	slli	t0, a1, 2 !801
	add 	t0, t0, a2 !801
	lw  	fa0, 0(t0) !801
	addi	sp, sp, 48 !801
	jal 	ra, fneg_cond.2408 !801
	addi	sp, sp, -48 !801
	lw  	fa1, 24(sp) !803
	fsub	fa0, fa0, fa1 !803
	lw  	a0, 28(sp) !803
	lw  	a1, 32(sp) !803
	slli	t0, a0, 2 !803
	add 	t0, t0, a1 !803
	lw  	fa1, 0(t0) !803
	fdiv	fa0, fa0, fa1 !803
	lw  	a0, 20(sp) !804
	slli	t0, a0, 2 !804
	add 	t0, t0, a1 !804
	lw  	fa1, 0(t0) !804
	fmul	fa1, fa0, fa1 !804
	lw  	fa2, 16(sp) !804
	fadd	fa1, fa1, fa2 !804
	sw  	fa0, 48(sp) !804
	fsgnj   fa0, fa1, fa1 !804
	addi	sp, sp, 52 !804
	jal 	ra, fabs !804
	addi	sp, sp, -52 !804
	lw  	a0, 20(sp) !804
	lw  	a1, 40(sp) !804
	slli	t0, a0, 2 !804
	add 	t0, t0, a1 !804
	lw  	fa1, 0(t0) !804
	addi	sp, sp, 52 !804
	jal 	ra, fless !804
	addi	sp, sp, -52 !804
	bne 	a0, zero, beq_else.8022 !804
	addi	a0, zero, 0 !808
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8022: !804
	lw  	a0, 12(sp) !805
	lw  	a1, 32(sp) !805
	slli	t0, a0, 2 !805
	add 	t0, t0, a1 !805
	lw  	fa0, 0(t0) !805
	lw  	fa1, 48(sp) !805
	fmul	fa0, fa1, fa0 !805
	lw  	fa2, 8(sp) !805
	fadd	fa0, fa0, fa2 !805
	addi	sp, sp, 52 !805
	jal 	ra, fabs !805
	addi	sp, sp, -52 !805
	lw  	a0, 12(sp) !805
	lw  	a1, 40(sp) !805
	slli	t0, a0, 2 !805
	add 	t0, t0, a1 !805
	lw  	fa1, 0(t0) !805
	addi	sp, sp, 52 !805
	jal 	ra, fless !805
	addi	sp, sp, -52 !805
	bne 	a0, zero, beq_else.8024 !805
	addi	a0, zero, 0 !807
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8024: !805
	addi	a0, zero, 0 !806
	lw  	a1, 4(sp) !806
	lw  	a2, 48(sp) !806
	slli	t0, a0, 2 !806
	add 	t0, t0, a1 !806
	sw  	a2, 0(t0) !806
	addi	a0, zero, 1 !806
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8020: !799
	addi	a0, zero, 0 !799
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_rect.2555:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
	addi	a3, zero, 0 !814
	addi	a4, zero, 1 !814
	addi	a5, zero, 2 !814
	sw  	fa0, 4(sp) !814
	sw  	fa2, 8(sp) !814
	sw  	fa1, 12(sp) !814
	sw  	a1, 16(sp) !814
	sw  	a0, 20(sp) !814
	sw  	a2, 24(sp) !814
	addi	tp, a2, 0 !814
	addi	a2, a3, 0 !814
	addi	a3, a4, 0 !814
	addi	a4, a5, 0 !814
	addi	sp, sp, 28 !814
	lw  	t1, 0(tp) !814
	jalr	ra, t1, 0 !814
	addi	sp, sp, -28 !814
	bne 	a0, zero, beq_else.8026 !814
	addi	a0, zero, 1 !815
	addi	a1, zero, 2 !815
	addi	a2, zero, 0 !815
	lw  	fa0, 12(sp) !815
	lw  	fa1, 8(sp) !815
	lw  	fa2, 4(sp) !815
	lw  	a3, 20(sp) !815
	lw  	a4, 16(sp) !815
	lw  	a5, 24(sp) !815
	addi	tp, a5, 0 !815
	addi	t0, a4, 0 !815
	addi	a4, a2, 0 !815
	addi	a2, a0, 0 !815
	addi	a0, a3, 0 !815
	addi	a3, a1, 0 !815
	addi	a1, t0, 0 !815
	addi	sp, sp, 28 !815
	lw  	t1, 0(tp) !815
	jalr	ra, t1, 0 !815
	addi	sp, sp, -28 !815
	bne 	a0, zero, beq_else.8028 !815
	addi	a0, zero, 2 !816
	addi	a1, zero, 0 !816
	addi	a2, zero, 1 !816
	lw  	fa0, 8(sp) !816
	lw  	fa1, 4(sp) !816
	lw  	fa2, 12(sp) !816
	lw  	a3, 20(sp) !816
	lw  	a4, 16(sp) !816
	lw  	a5, 24(sp) !816
	addi	tp, a5, 0 !816
	addi	t0, a4, 0 !816
	addi	a4, a2, 0 !816
	addi	a2, a0, 0 !816
	addi	a0, a3, 0 !816
	addi	a3, a1, 0 !816
	addi	a1, t0, 0 !816
	addi	sp, sp, 28 !816
	lw  	t1, 0(tp) !816
	jalr	ra, t1, 0 !816
	addi	sp, sp, -28 !816
	bne 	a0, zero, beq_else.8030 !816
	addi	a0, zero, 0 !817
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8030: !816
	addi	a0, zero, 3 !816
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8028: !815
	addi	a0, zero, 2 !815
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8026: !814
	addi	a0, zero, 1 !814
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_surface.2561:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
	sw  	a2, 4(sp) !825
	sw  	fa2, 8(sp) !825
	sw  	fa1, 12(sp) !825
	sw  	fa0, 16(sp) !825
	sw  	a1, 20(sp) !825
	addi	sp, sp, 24 !825
	jal 	ra, o_param_abc.2468 !825
	addi	sp, sp, -24 !825
	lw  	a1, 20(sp) !826
	sw  	a0, 24(sp) !826
	addi	t0, a1, 0 !826
	addi	a1, a0, 0 !826
	addi	a0, t0, 0 !826
	addi	sp, sp, 28 !826
	jal 	ra, veciprod.2430 !826
	addi	sp, sp, -28 !826
	sw  	fa0, 28(sp) !827
	addi	sp, sp, 32 !827
	jal 	ra, fispos !827
	addi	sp, sp, -32 !827
	bne 	a0, zero, beq_else.8032 !827
	addi	a0, zero, 0 !830
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8032: !827
	addi	a0, zero, 0 !828
	lw  	fa0, 16(sp) !828
	lw  	fa1, 12(sp) !828
	lw  	fa2, 8(sp) !828
	lw  	a1, 24(sp) !828
	sw  	a0, 32(sp) !828
	addi	a0, a1, 0 !828
	addi	sp, sp, 36 !828
	jal 	ra, veciprod2.2433 !828
	addi	sp, sp, -36 !828
	addi	sp, sp, 36 !828
	jal 	ra, fneg !828
	addi	sp, sp, -36 !828
	lw  	fa1, 28(sp) !828
	fdiv	fa0, fa0, fa1 !828
	lw  	a0, 32(sp) !828
	lw  	a1, 4(sp) !828
	slli	t0, a0, 2 !828
	add 	t0, t0, a1 !828
	sw  	fa0, 0(t0) !828
	addi	a0, zero, 1 !829
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
quadratic.2567:
	sw  	ra, 0(sp)
	sw  	fa0, 4(sp) !838
	sw  	fa2, 8(sp) !838
	sw  	fa1, 12(sp) !838
	sw  	a0, 16(sp) !838
	addi	sp, sp, 20 !838
	jal 	ra, fsqr !838
	addi	sp, sp, -20 !838
	lw  	a0, 16(sp) !838
	sw  	fa0, 20(sp) !838
	addi	sp, sp, 24 !838
	jal 	ra, o_param_a.2462 !838
	addi	sp, sp, -24 !838
	lw  	fa1, 20(sp) !838
	fmul	fa0, fa1, fa0 !838
	lw  	fa1, 12(sp) !838
	sw  	fa0, 24(sp) !838
	fsgnj   fa0, fa1, fa1 !838
	addi	sp, sp, 28 !838
	jal 	ra, fsqr !838
	addi	sp, sp, -28 !838
	lw  	a0, 16(sp) !838
	sw  	fa0, 28(sp) !838
	addi	sp, sp, 32 !838
	jal 	ra, o_param_b.2464 !838
	addi	sp, sp, -32 !838
	lw  	fa1, 28(sp) !838
	fmul	fa0, fa1, fa0 !838
	lw  	fa1, 24(sp) !838
	fadd	fa0, fa1, fa0 !838
	lw  	fa1, 8(sp) !838
	sw  	fa0, 32(sp) !838
	fsgnj   fa0, fa1, fa1 !838
	addi	sp, sp, 36 !838
	jal 	ra, fsqr !838
	addi	sp, sp, -36 !838
	lw  	a0, 16(sp) !838
	sw  	fa0, 36(sp) !838
	addi	sp, sp, 40 !838
	jal 	ra, o_param_c.2466 !838
	addi	sp, sp, -40 !838
	lw  	fa1, 36(sp) !838
	fmul	fa0, fa1, fa0 !838
	lw  	fa1, 32(sp) !838
	fadd	fa0, fa1, fa0 !838
	lw  	a0, 16(sp) !840
	sw  	fa0, 40(sp) !840
	addi	sp, sp, 44 !840
	jal 	ra, o_isrot.2460 !840
	addi	sp, sp, -44 !840
	bne 	a0, zero, beq_else.8034 !840
	lw  	fa0, 40(sp) !841
	addi	a0, fa0, 0 !841
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8034: !840
	lw  	fa0, 8(sp) !844
	lw  	fa1, 12(sp) !844
	fmul	fa2, fa1, fa0 !844
	lw  	a0, 16(sp) !844
	sw  	fa2, 44(sp) !844
	addi	sp, sp, 48 !844
	jal 	ra, o_param_r1.2486 !844
	addi	sp, sp, -48 !844
	lw  	fa1, 44(sp) !844
	fmul	fa0, fa1, fa0 !844
	lw  	fa1, 40(sp) !844
	fadd	fa0, fa1, fa0 !844
	lw  	fa1, 4(sp) !845
	lw  	fa2, 8(sp) !845
	fmul	fa2, fa2, fa1 !845
	lw  	a0, 16(sp) !845
	sw  	fa0, 48(sp) !845
	sw  	fa2, 52(sp) !845
	addi	sp, sp, 56 !845
	jal 	ra, o_param_r2.2488 !845
	addi	sp, sp, -56 !845
	lw  	fa1, 52(sp) !845
	fmul	fa0, fa1, fa0 !845
	lw  	fa1, 48(sp) !845
	fadd	fa0, fa1, fa0 !845
	lw  	fa1, 12(sp) !846
	lw  	fa2, 4(sp) !846
	fmul	fa1, fa2, fa1 !846
	lw  	a0, 16(sp) !846
	sw  	fa0, 56(sp) !846
	sw  	fa1, 60(sp) !846
	addi	sp, sp, 64 !846
	jal 	ra, o_param_r3.2490 !846
	addi	sp, sp, -64 !846
	lw  	fa1, 60(sp) !846
	fmul	fa0, fa1, fa0 !846
	lw  	fa1, 56(sp) !846
	fadd	fa0, fa1, fa0 !846
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bilinear.2572:
	sw  	ra, 0(sp)
	fmul	fa6, fa0, fa3 !852
	sw  	fa3, 4(sp) !852
	sw  	fa0, 8(sp) !852
	sw  	fa5, 12(sp) !852
	sw  	fa2, 16(sp) !852
	sw  	a0, 20(sp) !852
	sw  	fa4, 24(sp) !852
	sw  	fa1, 28(sp) !852
	sw  	fa6, 32(sp) !852
	addi	sp, sp, 36 !852
	jal 	ra, o_param_a.2462 !852
	addi	sp, sp, -36 !852
	lw  	fa1, 32(sp) !852
	fmul	fa0, fa1, fa0 !852
	lw  	fa1, 24(sp) !853
	lw  	fa2, 28(sp) !853
	fmul	fa3, fa2, fa1 !853
	lw  	a0, 20(sp) !853
	sw  	fa0, 36(sp) !853
	sw  	fa3, 40(sp) !853
	addi	sp, sp, 44 !853
	jal 	ra, o_param_b.2464 !853
	addi	sp, sp, -44 !853
	lw  	fa1, 40(sp) !853
	fmul	fa0, fa1, fa0 !853
	lw  	fa1, 36(sp) !853
	fadd	fa0, fa1, fa0 !853
	lw  	fa1, 12(sp) !854
	lw  	fa2, 16(sp) !854
	fmul	fa3, fa2, fa1 !854
	lw  	a0, 20(sp) !854
	sw  	fa0, 44(sp) !854
	sw  	fa3, 48(sp) !854
	addi	sp, sp, 52 !854
	jal 	ra, o_param_c.2466 !854
	addi	sp, sp, -52 !854
	lw  	fa1, 48(sp) !854
	fmul	fa0, fa1, fa0 !854
	lw  	fa1, 44(sp) !854
	fadd	fa0, fa1, fa0 !854
	lw  	a0, 20(sp) !856
	sw  	fa0, 52(sp) !856
	addi	sp, sp, 56 !856
	jal 	ra, o_isrot.2460 !856
	addi	sp, sp, -56 !856
	bne 	a0, zero, beq_else.8036 !856
	lw  	fa0, 52(sp) !857
	addi	a0, fa0, 0 !857
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8036: !856
	lw  	fa0, 24(sp) !860
	lw  	fa1, 16(sp) !860
	fmul	fa2, fa1, fa0 !860
	lw  	fa3, 12(sp) !860
	lw  	fa4, 28(sp) !860
	fmul	fa5, fa4, fa3 !860
	fadd	fa2, fa2, fa5 !860
	lw  	a0, 20(sp) !860
	sw  	fa2, 56(sp) !860
	addi	sp, sp, 60 !860
	jal 	ra, o_param_r1.2486 !860
	addi	sp, sp, -60 !860
	lw  	fa1, 56(sp) !860
	fmul	fa0, fa1, fa0 !860
	lw  	fa1, 12(sp) !861
	lw  	fa2, 8(sp) !861
	fmul	fa1, fa2, fa1 !861
	lw  	fa3, 4(sp) !861
	lw  	fa4, 16(sp) !861
	fmul	fa4, fa4, fa3 !861
	fadd	fa1, fa1, fa4 !861
	lw  	a0, 20(sp) !861
	sw  	fa0, 60(sp) !861
	sw  	fa1, 64(sp) !861
	addi	sp, sp, 68 !861
	jal 	ra, o_param_r2.2488 !861
	addi	sp, sp, -68 !861
	lw  	fa1, 64(sp) !861
	fmul	fa0, fa1, fa0 !861
	lw  	fa1, 60(sp) !861
	fadd	fa0, fa1, fa0 !861
	lw  	fa1, 24(sp) !862
	lw  	fa2, 8(sp) !862
	fmul	fa1, fa2, fa1 !862
	lw  	fa2, 4(sp) !862
	lw  	fa3, 28(sp) !862
	fmul	fa2, fa3, fa2 !862
	fadd	fa1, fa1, fa2 !862
	lw  	a0, 20(sp) !862
	sw  	fa0, 68(sp) !862
	sw  	fa1, 72(sp) !862
	addi	sp, sp, 76 !862
	jal 	ra, o_param_r3.2490 !862
	addi	sp, sp, -76 !862
	lw  	fa1, 72(sp) !862
	fmul	fa0, fa1, fa0 !862
	lw  	fa1, 68(sp) !862
	fadd	fa0, fa1, fa0 !862
	addi	sp, sp, 76 !859
	jal 	ra, fhalf !859
	addi	sp, sp, -76 !859
	lw  	fa1, 52(sp) !859
	fadd	fa0, fa1, fa0 !859
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second.2580:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
	addi	a3, zero, 0 !873
	slli	t0, a3, 2 !873
	add 	t0, t0, a1 !873
	lw  	fa3, 0(t0) !873
	addi	a3, zero, 1 !873
	slli	t0, a3, 2 !873
	add 	t0, t0, a1 !873
	lw  	fa4, 0(t0) !873
	addi	a3, zero, 2 !873
	slli	t0, a3, 2 !873
	add 	t0, t0, a1 !873
	lw  	fa5, 0(t0) !873
	sw  	a2, 4(sp) !873
	sw  	fa2, 8(sp) !873
	sw  	fa1, 12(sp) !873
	sw  	fa0, 16(sp) !873
	sw  	a0, 20(sp) !873
	sw  	a1, 24(sp) !873
	fsgnj   fa2, fa5, fa5 !873
	fsgnj   fa1, fa4, fa4 !873
	fsgnj   fa0, fa3, fa3 !873
	addi	sp, sp, 28 !873
	jal 	ra, quadratic.2567 !873
	addi	sp, sp, -28 !873
	sw  	fa0, 28(sp) !875
	addi	sp, sp, 32 !875
	jal 	ra, fiszero !875
	addi	sp, sp, -32 !875
	bne 	a0, zero, beq_else.8038 !875
	addi	a0, zero, 0 !880
	lw  	a1, 24(sp) !880
	slli	t0, a0, 2 !880
	add 	t0, t0, a1 !880
	lw  	fa0, 0(t0) !880
	addi	a0, zero, 1 !880
	slli	t0, a0, 2 !880
	add 	t0, t0, a1 !880
	lw  	fa1, 0(t0) !880
	addi	a0, zero, 2 !880
	slli	t0, a0, 2 !880
	add 	t0, t0, a1 !880
	lw  	fa2, 0(t0) !880
	lw  	fa3, 16(sp) !880
	lw  	fa4, 12(sp) !880
	lw  	fa5, 8(sp) !880
	lw  	a0, 20(sp) !880
	addi	sp, sp, 32 !880
	jal 	ra, bilinear.2572 !880
	addi	sp, sp, -32 !880
	lw  	fa1, 16(sp) !882
	lw  	fa2, 12(sp) !882
	lw  	fa3, 8(sp) !882
	lw  	a0, 20(sp) !882
	sw  	fa0, 32(sp) !882
	fsgnj   fa0, fa1, fa1 !882
	fsgnj   fa1, fa2, fa2 !882
	fsgnj   fa2, fa3, fa3 !882
	addi	sp, sp, 36 !882
	jal 	ra, quadratic.2567 !882
	addi	sp, sp, -36 !882
	lw  	a0, 20(sp) !883
	sw  	fa0, 36(sp) !883
	addi	sp, sp, 40 !883
	jal 	ra, o_form.2454 !883
	addi	sp, sp, -40 !883
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.8040 !883
	li  	fa0, 1.000000 !883
	lw  	fa1, 36(sp) !883
	fsub	fa0, fa1, fa0 !883
	jal 	zero, beq_cont.8041 !883
beq_else.8040: !883
	lw  	fa0, 36(sp) !883
beq_cont.8041: !883
	lw  	fa1, 32(sp) !885
	sw  	fa0, 40(sp) !885
	fsgnj   fa0, fa1, fa1 !885
	addi	sp, sp, 44 !885
	jal 	ra, fsqr !885
	addi	sp, sp, -44 !885
	lw  	fa1, 40(sp) !885
	lw  	fa2, 28(sp) !885
	fmul	fa1, fa2, fa1 !885
	fsub	fa0, fa0, fa1 !885
	sw  	fa0, 44(sp) !887
	addi	sp, sp, 48 !887
	jal 	ra, fispos !887
	addi	sp, sp, -48 !887
	bne 	a0, zero, beq_else.8042 !887
	addi	a0, zero, 0 !893
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8042: !887
	lw  	fa0, 44(sp) !888
	addi	sp, sp, 48 !888
	jal 	ra, sqrt !888
	addi	sp, sp, -48 !888
	lw  	a0, 20(sp) !889
	sw  	fa0, 48(sp) !889
	addi	sp, sp, 52 !889
	jal 	ra, o_isinvert.2458 !889
	addi	sp, sp, -52 !889
	bne 	a0, zero, beq_else.8044 !889
	lw  	fa0, 48(sp) !889
	addi	sp, sp, 52 !889
	jal 	ra, fneg !889
	addi	sp, sp, -52 !889
	jal 	zero, beq_cont.8045 !889
beq_else.8044: !889
	lw  	fa0, 48(sp) !889
beq_cont.8045: !889
	addi	a0, zero, 0 !890
	lw  	fa1, 32(sp) !890
	fsub	fa0, fa0, fa1 !890
	lw  	fa1, 28(sp) !890
	fdiv	fa0, fa0, fa1 !890
	lw  	a1, 4(sp) !890
	slli	t0, a0, 2 !890
	add 	t0, t0, a1 !890
	sw  	fa0, 0(t0) !890
	addi	a0, zero, 1 !890
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8038: !875
	addi	a0, zero, 0 !876
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver.2586:
	sw  	ra, 0(sp)
	lw  	a3, 16(tp) !0
	lw  	a4, 12(tp) !0
	lw  	a5, 8(tp) !0
	lw  	a6, 4(tp) !0
	slli	t0, a0, 2 !899
	add 	t0, t0, a6 !899
	lw  	a0, 0(t0) !899
	addi	a6, zero, 0 !901
	slli	t0, a6, 2 !901
	add 	t0, t0, a2 !901
	lw  	fa0, 0(t0) !901
	sw  	a4, 4(sp) !901
	sw  	a3, 8(sp) !901
	sw  	a1, 12(sp) !901
	sw  	a5, 16(sp) !901
	sw  	a0, 20(sp) !901
	sw  	a2, 24(sp) !901
	sw  	fa0, 28(sp) !901
	addi	sp, sp, 32 !901
	jal 	ra, o_param_x.2470 !901
	addi	sp, sp, -32 !901
	lw  	fa1, 28(sp) !901
	fsub	fa0, fa1, fa0 !901
	addi	a0, zero, 1 !902
	lw  	a1, 24(sp) !902
	slli	t0, a0, 2 !902
	add 	t0, t0, a1 !902
	lw  	fa1, 0(t0) !902
	lw  	a0, 20(sp) !902
	sw  	fa0, 32(sp) !902
	sw  	fa1, 36(sp) !902
	addi	sp, sp, 40 !902
	jal 	ra, o_param_y.2472 !902
	addi	sp, sp, -40 !902
	lw  	fa1, 36(sp) !902
	fsub	fa0, fa1, fa0 !902
	addi	a0, zero, 2 !903
	lw  	a1, 24(sp) !903
	slli	t0, a0, 2 !903
	add 	t0, t0, a1 !903
	lw  	fa1, 0(t0) !903
	lw  	a0, 20(sp) !903
	sw  	fa0, 40(sp) !903
	sw  	fa1, 44(sp) !903
	addi	sp, sp, 48 !903
	jal 	ra, o_param_z.2474 !903
	addi	sp, sp, -48 !903
	lw  	fa1, 44(sp) !903
	fsub	fa0, fa1, fa0 !903
	lw  	a0, 20(sp) !904
	sw  	fa0, 48(sp) !904
	addi	sp, sp, 52 !904
	jal 	ra, o_form.2454 !904
	addi	sp, sp, -52 !904
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8046 !906
	lw  	fa0, 32(sp) !906
	lw  	fa1, 40(sp) !906
	lw  	fa2, 48(sp) !906
	lw  	a0, 20(sp) !906
	lw  	a1, 12(sp) !906
	lw  	a2, 16(sp) !906
	addi	tp, a2, 0 !906
	lw  	t1, 0(tp) !906
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !906
beq_else.8046: !906
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8048 !907
	lw  	fa0, 32(sp) !907
	lw  	fa1, 40(sp) !907
	lw  	fa2, 48(sp) !907
	lw  	a0, 20(sp) !907
	lw  	a1, 12(sp) !907
	lw  	a2, 8(sp) !907
	addi	tp, a2, 0 !907
	lw  	t1, 0(tp) !907
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !907
beq_else.8048: !907
	lw  	fa0, 32(sp) !908
	lw  	fa1, 40(sp) !908
	lw  	fa2, 48(sp) !908
	lw  	a0, 20(sp) !908
	lw  	a1, 12(sp) !908
	lw  	a2, 4(sp) !908
	addi	tp, a2, 0 !908
	lw  	t1, 0(tp) !908
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !908
solver_rect_fast.2590:
	sw  	ra, 0(sp)
	lw  	a3, 4(tp) !0
	addi	a4, zero, 0 !916
	slli	t0, a4, 2 !916
	add 	t0, t0, a2 !916
	lw  	fa3, 0(t0) !916
	fsub	fa3, fa3, fa0 !916
	addi	a4, zero, 1 !916
	slli	t0, a4, 2 !916
	add 	t0, t0, a2 !916
	lw  	fa4, 0(t0) !916
	fmul	fa3, fa3, fa4 !916
	addi	a4, zero, 1 !918
	slli	t0, a4, 2 !918
	add 	t0, t0, a1 !918
	lw  	fa4, 0(t0) !918
	fmul	fa4, fa3, fa4 !918
	fadd	fa4, fa4, fa1 !918
	sw  	a3, 4(sp) !918
	sw  	fa0, 8(sp) !918
	sw  	fa1, 12(sp) !918
	sw  	a2, 16(sp) !918
	sw  	fa2, 20(sp) !918
	sw  	fa3, 24(sp) !918
	sw  	a1, 28(sp) !918
	sw  	a0, 32(sp) !918
	fsgnj   fa0, fa4, fa4 !918
	addi	sp, sp, 36 !918
	jal 	ra, fabs !918
	addi	sp, sp, -36 !918
	lw  	a0, 32(sp) !918
	sw  	fa0, 36(sp) !918
	addi	sp, sp, 40 !918
	jal 	ra, o_param_b.2464 !918
	addi	sp, sp, -40 !918
	lw  	fa1, 36(sp) !918
	fsgnj   t0, fa1, fa1 !918
	fsgnj   fa1, fa0, fa0 !918
	fsgnj   fa0, t0, t0 !918
	addi	sp, sp, 40 !918
	jal 	ra, fless !918
	addi	sp, sp, -40 !918
	bne 	a0, zero, beq_else.8050 !918
	addi	a0, zero, 0 !922
	jal 	zero, beq_cont.8051 !918
beq_else.8050: !918
	addi	a0, zero, 2 !919
	lw  	a1, 28(sp) !919
	slli	t0, a0, 2 !919
	add 	t0, t0, a1 !919
	lw  	fa0, 0(t0) !919
	lw  	fa1, 24(sp) !919
	fmul	fa0, fa1, fa0 !919
	lw  	fa2, 20(sp) !919
	fadd	fa0, fa0, fa2 !919
	addi	sp, sp, 40 !919
	jal 	ra, fabs !919
	addi	sp, sp, -40 !919
	lw  	a0, 32(sp) !919
	sw  	fa0, 40(sp) !919
	addi	sp, sp, 44 !919
	jal 	ra, o_param_c.2466 !919
	addi	sp, sp, -44 !919
	lw  	fa1, 40(sp) !919
	fsgnj   t0, fa1, fa1 !919
	fsgnj   fa1, fa0, fa0 !919
	fsgnj   fa0, t0, t0 !919
	addi	sp, sp, 44 !919
	jal 	ra, fless !919
	addi	sp, sp, -44 !919
	bne 	a0, zero, beq_else.8052 !919
	addi	a0, zero, 0 !921
	jal 	zero, beq_cont.8053 !919
beq_else.8052: !919
	addi	a0, zero, 1 !920
	lw  	a1, 16(sp) !920
	slli	t0, a0, 2 !920
	add 	t0, t0, a1 !920
	lw  	fa0, 0(t0) !920
	addi	sp, sp, 44 !920
	jal 	ra, fiszero !920
	addi	sp, sp, -44 !920
	bne 	a0, zero, beq_else.8054 !920
	addi	a0, zero, 1 !920
	jal 	zero, beq_cont.8055 !920
beq_else.8054: !920
	addi	a0, zero, 0 !920
beq_cont.8055: !920
beq_cont.8053: !919
beq_cont.8051: !918
	bne 	a0, zero, beq_else.8056 !917
	addi	a0, zero, 2 !925
	lw  	a1, 16(sp) !925
	slli	t0, a0, 2 !925
	add 	t0, t0, a1 !925
	lw  	fa0, 0(t0) !925
	lw  	fa1, 12(sp) !925
	fsub	fa0, fa0, fa1 !925
	addi	a0, zero, 3 !925
	slli	t0, a0, 2 !925
	add 	t0, t0, a1 !925
	lw  	fa2, 0(t0) !925
	fmul	fa0, fa0, fa2 !925
	addi	a0, zero, 0 !927
	lw  	a2, 28(sp) !927
	slli	t0, a0, 2 !927
	add 	t0, t0, a2 !927
	lw  	fa2, 0(t0) !927
	fmul	fa2, fa0, fa2 !927
	lw  	fa3, 8(sp) !927
	fadd	fa2, fa2, fa3 !927
	sw  	fa0, 44(sp) !927
	fsgnj   fa0, fa2, fa2 !927
	addi	sp, sp, 48 !927
	jal 	ra, fabs !927
	addi	sp, sp, -48 !927
	lw  	a0, 32(sp) !927
	sw  	fa0, 48(sp) !927
	addi	sp, sp, 52 !927
	jal 	ra, o_param_a.2462 !927
	addi	sp, sp, -52 !927
	lw  	fa1, 48(sp) !927
	fsgnj   t0, fa1, fa1 !927
	fsgnj   fa1, fa0, fa0 !927
	fsgnj   fa0, t0, t0 !927
	addi	sp, sp, 52 !927
	jal 	ra, fless !927
	addi	sp, sp, -52 !927
	bne 	a0, zero, beq_else.8058 !927
	addi	a0, zero, 0 !931
	jal 	zero, beq_cont.8059 !927
beq_else.8058: !927
	addi	a0, zero, 2 !928
	lw  	a1, 28(sp) !928
	slli	t0, a0, 2 !928
	add 	t0, t0, a1 !928
	lw  	fa0, 0(t0) !928
	lw  	fa1, 44(sp) !928
	fmul	fa0, fa1, fa0 !928
	lw  	fa2, 20(sp) !928
	fadd	fa0, fa0, fa2 !928
	addi	sp, sp, 52 !928
	jal 	ra, fabs !928
	addi	sp, sp, -52 !928
	lw  	a0, 32(sp) !928
	sw  	fa0, 52(sp) !928
	addi	sp, sp, 56 !928
	jal 	ra, o_param_c.2466 !928
	addi	sp, sp, -56 !928
	lw  	fa1, 52(sp) !928
	fsgnj   t0, fa1, fa1 !928
	fsgnj   fa1, fa0, fa0 !928
	fsgnj   fa0, t0, t0 !928
	addi	sp, sp, 56 !928
	jal 	ra, fless !928
	addi	sp, sp, -56 !928
	bne 	a0, zero, beq_else.8060 !928
	addi	a0, zero, 0 !930
	jal 	zero, beq_cont.8061 !928
beq_else.8060: !928
	addi	a0, zero, 3 !929
	lw  	a1, 16(sp) !929
	slli	t0, a0, 2 !929
	add 	t0, t0, a1 !929
	lw  	fa0, 0(t0) !929
	addi	sp, sp, 56 !929
	jal 	ra, fiszero !929
	addi	sp, sp, -56 !929
	bne 	a0, zero, beq_else.8062 !929
	addi	a0, zero, 1 !929
	jal 	zero, beq_cont.8063 !929
beq_else.8062: !929
	addi	a0, zero, 0 !929
beq_cont.8063: !929
beq_cont.8061: !928
beq_cont.8059: !927
	bne 	a0, zero, beq_else.8064 !926
	addi	a0, zero, 4 !934
	lw  	a1, 16(sp) !934
	slli	t0, a0, 2 !934
	add 	t0, t0, a1 !934
	lw  	fa0, 0(t0) !934
	lw  	fa1, 20(sp) !934
	fsub	fa0, fa0, fa1 !934
	addi	a0, zero, 5 !934
	slli	t0, a0, 2 !934
	add 	t0, t0, a1 !934
	lw  	fa1, 0(t0) !934
	fmul	fa0, fa0, fa1 !934
	addi	a0, zero, 0 !936
	lw  	a2, 28(sp) !936
	slli	t0, a0, 2 !936
	add 	t0, t0, a2 !936
	lw  	fa1, 0(t0) !936
	fmul	fa1, fa0, fa1 !936
	lw  	fa2, 8(sp) !936
	fadd	fa1, fa1, fa2 !936
	sw  	fa0, 56(sp) !936
	fsgnj   fa0, fa1, fa1 !936
	addi	sp, sp, 60 !936
	jal 	ra, fabs !936
	addi	sp, sp, -60 !936
	lw  	a0, 32(sp) !936
	sw  	fa0, 60(sp) !936
	addi	sp, sp, 64 !936
	jal 	ra, o_param_a.2462 !936
	addi	sp, sp, -64 !936
	lw  	fa1, 60(sp) !936
	fsgnj   t0, fa1, fa1 !936
	fsgnj   fa1, fa0, fa0 !936
	fsgnj   fa0, t0, t0 !936
	addi	sp, sp, 64 !936
	jal 	ra, fless !936
	addi	sp, sp, -64 !936
	bne 	a0, zero, beq_else.8066 !936
	addi	a0, zero, 0 !940
	jal 	zero, beq_cont.8067 !936
beq_else.8066: !936
	addi	a0, zero, 1 !937
	lw  	a1, 28(sp) !937
	slli	t0, a0, 2 !937
	add 	t0, t0, a1 !937
	lw  	fa0, 0(t0) !937
	lw  	fa1, 56(sp) !937
	fmul	fa0, fa1, fa0 !937
	lw  	fa2, 12(sp) !937
	fadd	fa0, fa0, fa2 !937
	addi	sp, sp, 64 !937
	jal 	ra, fabs !937
	addi	sp, sp, -64 !937
	lw  	a0, 32(sp) !937
	sw  	fa0, 64(sp) !937
	addi	sp, sp, 68 !937
	jal 	ra, o_param_b.2464 !937
	addi	sp, sp, -68 !937
	lw  	fa1, 64(sp) !937
	fsgnj   t0, fa1, fa1 !937
	fsgnj   fa1, fa0, fa0 !937
	fsgnj   fa0, t0, t0 !937
	addi	sp, sp, 68 !937
	jal 	ra, fless !937
	addi	sp, sp, -68 !937
	bne 	a0, zero, beq_else.8068 !937
	addi	a0, zero, 0 !939
	jal 	zero, beq_cont.8069 !937
beq_else.8068: !937
	addi	a0, zero, 5 !938
	lw  	a1, 16(sp) !938
	slli	t0, a0, 2 !938
	add 	t0, t0, a1 !938
	lw  	fa0, 0(t0) !938
	addi	sp, sp, 68 !938
	jal 	ra, fiszero !938
	addi	sp, sp, -68 !938
	bne 	a0, zero, beq_else.8070 !938
	addi	a0, zero, 1 !938
	jal 	zero, beq_cont.8071 !938
beq_else.8070: !938
	addi	a0, zero, 0 !938
beq_cont.8071: !938
beq_cont.8069: !937
beq_cont.8067: !936
	bne 	a0, zero, beq_else.8072 !935
	addi	a0, zero, 0 !944
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8072: !935
	addi	a0, zero, 0 !942
	lw  	a1, 4(sp) !942
	lw  	a2, 56(sp) !942
	slli	t0, a0, 2 !942
	add 	t0, t0, a1 !942
	sw  	a2, 0(t0) !942
	addi	a0, zero, 3 !942
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8064: !926
	addi	a0, zero, 0 !933
	lw  	a1, 4(sp) !933
	lw  	a2, 44(sp) !933
	slli	t0, a0, 2 !933
	add 	t0, t0, a1 !933
	sw  	a2, 0(t0) !933
	addi	a0, zero, 2 !933
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8056: !917
	addi	a0, zero, 0 !924
	lw  	a1, 4(sp) !924
	lw  	a2, 24(sp) !924
	slli	t0, a0, 2 !924
	add 	t0, t0, a1 !924
	sw  	a2, 0(t0) !924
	addi	a0, zero, 1 !924
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_surface_fast.2597:
	sw  	ra, 0(sp)
	lw  	a0, 4(tp) !0
	addi	a2, zero, 0 !949
	slli	t0, a2, 2 !949
	add 	t0, t0, a1 !949
	lw  	fa3, 0(t0) !949
	sw  	a0, 4(sp) !949
	sw  	fa2, 8(sp) !949
	sw  	fa1, 12(sp) !949
	sw  	fa0, 16(sp) !949
	sw  	a1, 20(sp) !949
	fsgnj   fa0, fa3, fa3 !949
	addi	sp, sp, 24 !949
	jal 	ra, fisneg !949
	addi	sp, sp, -24 !949
	bne 	a0, zero, beq_else.8074 !949
	addi	a0, zero, 0 !953
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8074: !949
	addi	a0, zero, 0 !950
	addi	a1, zero, 1 !951
	lw  	a2, 20(sp) !951
	slli	t0, a1, 2 !951
	add 	t0, t0, a2 !951
	lw  	fa0, 0(t0) !951
	lw  	fa1, 16(sp) !951
	fmul	fa0, fa0, fa1 !951
	addi	a1, zero, 2 !951
	slli	t0, a1, 2 !951
	add 	t0, t0, a2 !951
	lw  	fa1, 0(t0) !951
	lw  	fa2, 12(sp) !951
	fmul	fa1, fa1, fa2 !951
	fadd	fa0, fa0, fa1 !951
	addi	a1, zero, 3 !951
	slli	t0, a1, 2 !951
	add 	t0, t0, a2 !951
	lw  	fa1, 0(t0) !951
	lw  	fa2, 8(sp) !951
	fmul	fa1, fa1, fa2 !951
	fadd	fa0, fa0, fa1 !951
	lw  	a1, 4(sp) !950
	slli	t0, a0, 2 !950
	add 	t0, t0, a1 !950
	sw  	fa0, 0(t0) !950
	addi	a0, zero, 1 !952
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second_fast.2603:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
	addi	a3, zero, 0 !959
	slli	t0, a3, 2 !959
	add 	t0, t0, a1 !959
	lw  	fa3, 0(t0) !959
	sw  	a2, 4(sp) !960
	sw  	fa3, 8(sp) !960
	sw  	a0, 12(sp) !960
	sw  	fa2, 16(sp) !960
	sw  	fa1, 20(sp) !960
	sw  	fa0, 24(sp) !960
	sw  	a1, 28(sp) !960
	fsgnj   fa0, fa3, fa3 !960
	addi	sp, sp, 32 !960
	jal 	ra, fiszero !960
	addi	sp, sp, -32 !960
	bne 	a0, zero, beq_else.8076 !960
	addi	a0, zero, 1 !963
	lw  	a1, 28(sp) !963
	slli	t0, a0, 2 !963
	add 	t0, t0, a1 !963
	lw  	fa0, 0(t0) !963
	lw  	fa1, 24(sp) !963
	fmul	fa0, fa0, fa1 !963
	addi	a0, zero, 2 !963
	slli	t0, a0, 2 !963
	add 	t0, t0, a1 !963
	lw  	fa2, 0(t0) !963
	lw  	fa3, 20(sp) !963
	fmul	fa2, fa2, fa3 !963
	fadd	fa0, fa0, fa2 !963
	addi	a0, zero, 3 !963
	slli	t0, a0, 2 !963
	add 	t0, t0, a1 !963
	lw  	fa2, 0(t0) !963
	lw  	fa4, 16(sp) !963
	fmul	fa2, fa2, fa4 !963
	fadd	fa0, fa0, fa2 !963
	lw  	a0, 12(sp) !964
	sw  	fa0, 32(sp) !964
	fsgnj   fa2, fa4, fa4 !964
	fsgnj   fa0, fa1, fa1 !964
	fsgnj   fa1, fa3, fa3 !964
	addi	sp, sp, 36 !964
	jal 	ra, quadratic.2567 !964
	addi	sp, sp, -36 !964
	lw  	a0, 12(sp) !965
	sw  	fa0, 36(sp) !965
	addi	sp, sp, 40 !965
	jal 	ra, o_form.2454 !965
	addi	sp, sp, -40 !965
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.8078 !965
	li  	fa0, 1.000000 !965
	lw  	fa1, 36(sp) !965
	fsub	fa0, fa1, fa0 !965
	jal 	zero, beq_cont.8079 !965
beq_else.8078: !965
	lw  	fa0, 36(sp) !965
beq_cont.8079: !965
	lw  	fa1, 32(sp) !966
	sw  	fa0, 40(sp) !966
	fsgnj   fa0, fa1, fa1 !966
	addi	sp, sp, 44 !966
	jal 	ra, fsqr !966
	addi	sp, sp, -44 !966
	lw  	fa1, 40(sp) !966
	lw  	fa2, 8(sp) !966
	fmul	fa1, fa2, fa1 !966
	fsub	fa0, fa0, fa1 !966
	sw  	fa0, 44(sp) !967
	addi	sp, sp, 48 !967
	jal 	ra, fispos !967
	addi	sp, sp, -48 !967
	bne 	a0, zero, beq_else.8080 !967
	addi	a0, zero, 0 !973
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8080: !967
	lw  	a0, 12(sp) !968
	addi	sp, sp, 48 !968
	jal 	ra, o_isinvert.2458 !968
	addi	sp, sp, -48 !968
	bne 	a0, zero, beq_else.8082 !968
	addi	a0, zero, 0 !971
	lw  	fa0, 44(sp) !971
	sw  	a0, 48(sp) !971
	addi	sp, sp, 52 !971
	jal 	ra, sqrt !971
	addi	sp, sp, -52 !971
	lw  	fa1, 32(sp) !971
	fsub	fa0, fa1, fa0 !971
	addi	a0, zero, 4 !971
	lw  	a1, 28(sp) !971
	slli	t0, a0, 2 !971
	add 	t0, t0, a1 !971
	lw  	fa1, 0(t0) !971
	fmul	fa0, fa0, fa1 !971
	lw  	a0, 48(sp) !971
	lw  	a1, 4(sp) !971
	slli	t0, a0, 2 !971
	add 	t0, t0, a1 !971
	sw  	fa0, 0(t0) !971
	jal 	zero, beq_cont.8083 !968
beq_else.8082: !968
	addi	a0, zero, 0 !969
	lw  	fa0, 44(sp) !969
	sw  	a0, 52(sp) !969
	addi	sp, sp, 56 !969
	jal 	ra, sqrt !969
	addi	sp, sp, -56 !969
	lw  	fa1, 32(sp) !969
	fadd	fa0, fa1, fa0 !969
	addi	a0, zero, 4 !969
	lw  	a1, 28(sp) !969
	slli	t0, a0, 2 !969
	add 	t0, t0, a1 !969
	lw  	fa1, 0(t0) !969
	fmul	fa0, fa0, fa1 !969
	lw  	a0, 52(sp) !969
	lw  	a1, 4(sp) !969
	slli	t0, a0, 2 !969
	add 	t0, t0, a1 !969
	sw  	fa0, 0(t0) !969
beq_cont.8083: !968
	addi	a0, zero, 1 !972
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8076: !960
	addi	a0, zero, 0 !961
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_fast.2609:
	sw  	ra, 0(sp)
	lw  	a3, 16(tp) !0
	lw  	a4, 12(tp) !0
	lw  	a5, 8(tp) !0
	lw  	a6, 4(tp) !0
	slli	t0, a0, 2 !978
	add 	t0, t0, a6 !978
	lw  	a6, 0(t0) !978
	addi	a7, zero, 0 !979
	slli	t0, a7, 2 !979
	add 	t0, t0, a2 !979
	lw  	fa0, 0(t0) !979
	sw  	a4, 4(sp) !979
	sw  	a3, 8(sp) !979
	sw  	a5, 12(sp) !979
	sw  	a0, 16(sp) !979
	sw  	a1, 20(sp) !979
	sw  	a6, 24(sp) !979
	sw  	a2, 28(sp) !979
	sw  	fa0, 32(sp) !979
	addi	a0, a6, 0 !979
	addi	sp, sp, 36 !979
	jal 	ra, o_param_x.2470 !979
	addi	sp, sp, -36 !979
	lw  	fa1, 32(sp) !979
	fsub	fa0, fa1, fa0 !979
	addi	a0, zero, 1 !980
	lw  	a1, 28(sp) !980
	slli	t0, a0, 2 !980
	add 	t0, t0, a1 !980
	lw  	fa1, 0(t0) !980
	lw  	a0, 24(sp) !980
	sw  	fa0, 36(sp) !980
	sw  	fa1, 40(sp) !980
	addi	sp, sp, 44 !980
	jal 	ra, o_param_y.2472 !980
	addi	sp, sp, -44 !980
	lw  	fa1, 40(sp) !980
	fsub	fa0, fa1, fa0 !980
	addi	a0, zero, 2 !981
	lw  	a1, 28(sp) !981
	slli	t0, a0, 2 !981
	add 	t0, t0, a1 !981
	lw  	fa1, 0(t0) !981
	lw  	a0, 24(sp) !981
	sw  	fa0, 44(sp) !981
	sw  	fa1, 48(sp) !981
	addi	sp, sp, 52 !981
	jal 	ra, o_param_z.2474 !981
	addi	sp, sp, -52 !981
	lw  	fa1, 48(sp) !981
	fsub	fa0, fa1, fa0 !981
	lw  	a0, 20(sp) !982
	sw  	fa0, 52(sp) !982
	addi	sp, sp, 56 !982
	jal 	ra, d_const.2515 !982
	addi	sp, sp, -56 !982
	lw  	a1, 16(sp) !983
	slli	t0, a1, 2 !983
	add 	t0, t0, a0 !983
	lw  	a0, 0(t0) !983
	lw  	a1, 24(sp) !984
	sw  	a0, 56(sp) !984
	addi	a0, a1, 0 !984
	addi	sp, sp, 60 !984
	jal 	ra, o_form.2454 !984
	addi	sp, sp, -60 !984
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8084 !985
	lw  	a0, 20(sp) !986
	addi	sp, sp, 60 !986
	jal 	ra, d_vec.2513 !986
	addi	sp, sp, -60 !986
	lw  	fa0, 36(sp) !986
	lw  	fa1, 44(sp) !986
	lw  	fa2, 52(sp) !986
	lw  	a1, 24(sp) !986
	lw  	a2, 56(sp) !986
	lw  	a3, 12(sp) !986
	addi	tp, a3, 0 !986
	addi	t0, a1, 0 !986
	addi	a1, a0, 0 !986
	addi	a0, t0, 0 !986
	lw  	t1, 0(tp) !986
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !986
beq_else.8084: !985
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8086 !987
	lw  	fa0, 36(sp) !988
	lw  	fa1, 44(sp) !988
	lw  	fa2, 52(sp) !988
	lw  	a0, 24(sp) !988
	lw  	a1, 56(sp) !988
	lw  	a2, 8(sp) !988
	addi	tp, a2, 0 !988
	lw  	t1, 0(tp) !988
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !988
beq_else.8086: !987
	lw  	fa0, 36(sp) !990
	lw  	fa1, 44(sp) !990
	lw  	fa2, 52(sp) !990
	lw  	a0, 24(sp) !990
	lw  	a1, 56(sp) !990
	lw  	a2, 4(sp) !990
	addi	tp, a2, 0 !990
	lw  	t1, 0(tp) !990
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !990
solver_surface_fast2.2613:
	sw  	ra, 0(sp)
	lw  	a0, 4(tp) !0
	addi	a3, zero, 0 !998
	slli	t0, a3, 2 !998
	add 	t0, t0, a1 !998
	lw  	fa0, 0(t0) !998
	sw  	a0, 4(sp) !998
	sw  	a2, 8(sp) !998
	sw  	a1, 12(sp) !998
	addi	sp, sp, 16 !998
	jal 	ra, fisneg !998
	addi	sp, sp, -16 !998
	bne 	a0, zero, beq_else.8088 !998
	addi	a0, zero, 0 !1001
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8088: !998
	addi	a0, zero, 0 !999
	addi	a1, zero, 0 !999
	lw  	a2, 12(sp) !999
	slli	t0, a1, 2 !999
	add 	t0, t0, a2 !999
	lw  	fa0, 0(t0) !999
	addi	a1, zero, 3 !999
	lw  	a2, 8(sp) !999
	slli	t0, a1, 2 !999
	add 	t0, t0, a2 !999
	lw  	fa1, 0(t0) !999
	fmul	fa0, fa0, fa1 !999
	lw  	a1, 4(sp) !999
	slli	t0, a0, 2 !999
	add 	t0, t0, a1 !999
	sw  	fa0, 0(t0) !999
	addi	a0, zero, 1 !1000
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_second_fast2.2620:
	sw  	ra, 0(sp)
	lw  	a3, 4(tp) !0
	addi	a4, zero, 0 !1007
	slli	t0, a4, 2 !1007
	add 	t0, t0, a1 !1007
	lw  	fa3, 0(t0) !1007
	sw  	a3, 4(sp) !1008
	sw  	a0, 8(sp) !1008
	sw  	fa3, 12(sp) !1008
	sw  	a2, 16(sp) !1008
	sw  	fa2, 20(sp) !1008
	sw  	fa1, 24(sp) !1008
	sw  	fa0, 28(sp) !1008
	sw  	a1, 32(sp) !1008
	fsgnj   fa0, fa3, fa3 !1008
	addi	sp, sp, 36 !1008
	jal 	ra, fiszero !1008
	addi	sp, sp, -36 !1008
	bne 	a0, zero, beq_else.8090 !1008
	addi	a0, zero, 1 !1011
	lw  	a1, 32(sp) !1011
	slli	t0, a0, 2 !1011
	add 	t0, t0, a1 !1011
	lw  	fa0, 0(t0) !1011
	lw  	fa1, 28(sp) !1011
	fmul	fa0, fa0, fa1 !1011
	addi	a0, zero, 2 !1011
	slli	t0, a0, 2 !1011
	add 	t0, t0, a1 !1011
	lw  	fa1, 0(t0) !1011
	lw  	fa2, 24(sp) !1011
	fmul	fa1, fa1, fa2 !1011
	fadd	fa0, fa0, fa1 !1011
	addi	a0, zero, 3 !1011
	slli	t0, a0, 2 !1011
	add 	t0, t0, a1 !1011
	lw  	fa1, 0(t0) !1011
	lw  	fa2, 20(sp) !1011
	fmul	fa1, fa1, fa2 !1011
	fadd	fa0, fa0, fa1 !1011
	addi	a0, zero, 3 !1012
	lw  	a2, 16(sp) !1012
	slli	t0, a0, 2 !1012
	add 	t0, t0, a2 !1012
	lw  	fa1, 0(t0) !1012
	sw  	fa0, 36(sp) !1013
	sw  	fa1, 40(sp) !1013
	addi	sp, sp, 44 !1013
	jal 	ra, fsqr !1013
	addi	sp, sp, -44 !1013
	lw  	fa1, 40(sp) !1013
	lw  	fa2, 12(sp) !1013
	fmul	fa1, fa2, fa1 !1013
	fsub	fa0, fa0, fa1 !1013
	sw  	fa0, 44(sp) !1014
	addi	sp, sp, 48 !1014
	jal 	ra, fispos !1014
	addi	sp, sp, -48 !1014
	bne 	a0, zero, beq_else.8092 !1014
	addi	a0, zero, 0 !1020
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8092: !1014
	lw  	a0, 8(sp) !1015
	addi	sp, sp, 48 !1015
	jal 	ra, o_isinvert.2458 !1015
	addi	sp, sp, -48 !1015
	bne 	a0, zero, beq_else.8094 !1015
	addi	a0, zero, 0 !1018
	lw  	fa0, 44(sp) !1018
	sw  	a0, 48(sp) !1018
	addi	sp, sp, 52 !1018
	jal 	ra, sqrt !1018
	addi	sp, sp, -52 !1018
	lw  	fa1, 36(sp) !1018
	fsub	fa0, fa1, fa0 !1018
	addi	a0, zero, 4 !1018
	lw  	a1, 32(sp) !1018
	slli	t0, a0, 2 !1018
	add 	t0, t0, a1 !1018
	lw  	fa1, 0(t0) !1018
	fmul	fa0, fa0, fa1 !1018
	lw  	a0, 48(sp) !1018
	lw  	a1, 4(sp) !1018
	slli	t0, a0, 2 !1018
	add 	t0, t0, a1 !1018
	sw  	fa0, 0(t0) !1018
	jal 	zero, beq_cont.8095 !1015
beq_else.8094: !1015
	addi	a0, zero, 0 !1016
	lw  	fa0, 44(sp) !1016
	sw  	a0, 52(sp) !1016
	addi	sp, sp, 56 !1016
	jal 	ra, sqrt !1016
	addi	sp, sp, -56 !1016
	lw  	fa1, 36(sp) !1016
	fadd	fa0, fa1, fa0 !1016
	addi	a0, zero, 4 !1016
	lw  	a1, 32(sp) !1016
	slli	t0, a0, 2 !1016
	add 	t0, t0, a1 !1016
	lw  	fa1, 0(t0) !1016
	fmul	fa0, fa0, fa1 !1016
	lw  	a0, 52(sp) !1016
	lw  	a1, 4(sp) !1016
	slli	t0, a0, 2 !1016
	add 	t0, t0, a1 !1016
	sw  	fa0, 0(t0) !1016
beq_cont.8095: !1015
	addi	a0, zero, 1 !1019
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8090: !1008
	addi	a0, zero, 0 !1009
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solver_fast2.2627:
	sw  	ra, 0(sp)
	lw  	a2, 16(tp) !0
	lw  	a3, 12(tp) !0
	lw  	a4, 8(tp) !0
	lw  	a5, 4(tp) !0
	slli	t0, a0, 2 !1025
	add 	t0, t0, a5 !1025
	lw  	a5, 0(t0) !1025
	sw  	a3, 4(sp) !1026
	sw  	a2, 8(sp) !1026
	sw  	a4, 12(sp) !1026
	sw  	a5, 16(sp) !1026
	sw  	a0, 20(sp) !1026
	sw  	a1, 24(sp) !1026
	addi	a0, a5, 0 !1026
	addi	sp, sp, 28 !1026
	jal 	ra, o_param_ctbl.2492 !1026
	addi	sp, sp, -28 !1026
	addi	a1, zero, 0 !1027
	slli	t0, a1, 2 !1027
	add 	t0, t0, a0 !1027
	lw  	fa0, 0(t0) !1027
	addi	a1, zero, 1 !1028
	slli	t0, a1, 2 !1028
	add 	t0, t0, a0 !1028
	lw  	fa1, 0(t0) !1028
	addi	a1, zero, 2 !1029
	slli	t0, a1, 2 !1029
	add 	t0, t0, a0 !1029
	lw  	fa2, 0(t0) !1029
	lw  	a1, 24(sp) !1030
	sw  	a0, 28(sp) !1030
	sw  	fa2, 32(sp) !1030
	sw  	fa1, 36(sp) !1030
	sw  	fa0, 40(sp) !1030
	addi	a0, a1, 0 !1030
	addi	sp, sp, 44 !1030
	jal 	ra, d_const.2515 !1030
	addi	sp, sp, -44 !1030
	lw  	a1, 20(sp) !1031
	slli	t0, a1, 2 !1031
	add 	t0, t0, a0 !1031
	lw  	a0, 0(t0) !1031
	lw  	a1, 16(sp) !1032
	sw  	a0, 44(sp) !1032
	addi	a0, a1, 0 !1032
	addi	sp, sp, 48 !1032
	jal 	ra, o_form.2454 !1032
	addi	sp, sp, -48 !1032
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8096 !1033
	lw  	a0, 24(sp) !1034
	addi	sp, sp, 48 !1034
	jal 	ra, d_vec.2513 !1034
	addi	sp, sp, -48 !1034
	lw  	fa0, 40(sp) !1034
	lw  	fa1, 36(sp) !1034
	lw  	fa2, 32(sp) !1034
	lw  	a1, 16(sp) !1034
	lw  	a2, 44(sp) !1034
	lw  	a3, 12(sp) !1034
	addi	tp, a3, 0 !1034
	addi	t0, a1, 0 !1034
	addi	a1, a0, 0 !1034
	addi	a0, t0, 0 !1034
	lw  	t1, 0(tp) !1034
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1034
beq_else.8096: !1033
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8098 !1035
	lw  	fa0, 40(sp) !1036
	lw  	fa1, 36(sp) !1036
	lw  	fa2, 32(sp) !1036
	lw  	a0, 16(sp) !1036
	lw  	a1, 44(sp) !1036
	lw  	a2, 28(sp) !1036
	lw  	a3, 8(sp) !1036
	addi	tp, a3, 0 !1036
	lw  	t1, 0(tp) !1036
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1036
beq_else.8098: !1035
	lw  	fa0, 40(sp) !1038
	lw  	fa1, 36(sp) !1038
	lw  	fa2, 32(sp) !1038
	lw  	a0, 16(sp) !1038
	lw  	a1, 44(sp) !1038
	lw  	a2, 28(sp) !1038
	lw  	a3, 4(sp) !1038
	addi	tp, a3, 0 !1038
	lw  	t1, 0(tp) !1038
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1038
setup_rect_table.2630:
	sw  	ra, 0(sp)
	addi	a2, zero, 6 !1045
	li  	fa0, 0.000000 !1045
	sw  	a1, 4(sp) !1045
	sw  	a0, 8(sp) !1045
	addi	a0, a2, 0 !1045
	addi	sp, sp, 12 !1045
	jal 	ra, create_float_array !1045
	addi	sp, sp, -12 !1045
	addi	a1, zero, 0 !1047
	lw  	a2, 8(sp) !1047
	slli	t0, a1, 2 !1047
	add 	t0, t0, a2 !1047
	lw  	fa0, 0(t0) !1047
	sw  	a0, 12(sp) !1047
	addi	sp, sp, 16 !1047
	jal 	ra, fiszero !1047
	addi	sp, sp, -16 !1047
	bne 	a0, zero, beq_else.8100 !1047
	addi	a0, zero, 0 !1051
	lw  	a1, 4(sp) !1051
	sw  	a0, 16(sp) !1051
	addi	a0, a1, 0 !1051
	addi	sp, sp, 20 !1051
	jal 	ra, o_isinvert.2458 !1051
	addi	sp, sp, -20 !1051
	addi	a1, zero, 0 !1051
	lw  	a2, 8(sp) !1051
	slli	t0, a1, 2 !1051
	add 	t0, t0, a2 !1051
	lw  	fa0, 0(t0) !1051
	sw  	a0, 20(sp) !1051
	addi	sp, sp, 24 !1051
	jal 	ra, fisneg !1051
	addi	sp, sp, -24 !1051
	lw  	a1, 20(sp) !1051
	addi	t0, a1, 0 !1051
	addi	a1, a0, 0 !1051
	addi	a0, t0, 0 !1051
	addi	sp, sp, 24 !1051
	jal 	ra, xor.2403 !1051
	addi	sp, sp, -24 !1051
	lw  	a1, 4(sp) !1051
	sw  	a0, 24(sp) !1051
	addi	a0, a1, 0 !1051
	addi	sp, sp, 28 !1051
	jal 	ra, o_param_a.2462 !1051
	addi	sp, sp, -28 !1051
	lw  	a0, 24(sp) !1051
	addi	sp, sp, 28 !1051
	jal 	ra, fneg_cond.2408 !1051
	addi	sp, sp, -28 !1051
	lw  	a0, 16(sp) !1051
	lw  	a1, 12(sp) !1051
	slli	t0, a0, 2 !1051
	add 	t0, t0, a1 !1051
	sw  	fa0, 0(t0) !1051
	addi	a0, zero, 1 !1053
	li  	fa0, 1.000000 !1053
	addi	a2, zero, 0 !1053
	lw  	a3, 8(sp) !1053
	slli	t0, a2, 2 !1053
	add 	t0, t0, a3 !1053
	lw  	fa1, 0(t0) !1053
	fdiv	fa0, fa0, fa1 !1053
	slli	t0, a0, 2 !1053
	add 	t0, t0, a1 !1053
	sw  	fa0, 0(t0) !1053
	jal 	zero, beq_cont.8101 !1047
beq_else.8100: !1047
	addi	a0, zero, 1 !1048
	li  	fa0, 0.000000 !1048
	lw  	a1, 12(sp) !1048
	slli	t0, a0, 2 !1048
	add 	t0, t0, a1 !1048
	sw  	fa0, 0(t0) !1048
beq_cont.8101: !1047
	addi	a0, zero, 1 !1055
	lw  	a2, 8(sp) !1055
	slli	t0, a0, 2 !1055
	add 	t0, t0, a2 !1055
	lw  	fa0, 0(t0) !1055
	addi	sp, sp, 28 !1055
	jal 	ra, fiszero !1055
	addi	sp, sp, -28 !1055
	bne 	a0, zero, beq_else.8102 !1055
	addi	a0, zero, 2 !1058
	lw  	a1, 4(sp) !1058
	sw  	a0, 28(sp) !1058
	addi	a0, a1, 0 !1058
	addi	sp, sp, 32 !1058
	jal 	ra, o_isinvert.2458 !1058
	addi	sp, sp, -32 !1058
	addi	a1, zero, 1 !1058
	lw  	a2, 8(sp) !1058
	slli	t0, a1, 2 !1058
	add 	t0, t0, a2 !1058
	lw  	fa0, 0(t0) !1058
	sw  	a0, 32(sp) !1058
	addi	sp, sp, 36 !1058
	jal 	ra, fisneg !1058
	addi	sp, sp, -36 !1058
	lw  	a1, 32(sp) !1058
	addi	t0, a1, 0 !1058
	addi	a1, a0, 0 !1058
	addi	a0, t0, 0 !1058
	addi	sp, sp, 36 !1058
	jal 	ra, xor.2403 !1058
	addi	sp, sp, -36 !1058
	lw  	a1, 4(sp) !1058
	sw  	a0, 36(sp) !1058
	addi	a0, a1, 0 !1058
	addi	sp, sp, 40 !1058
	jal 	ra, o_param_b.2464 !1058
	addi	sp, sp, -40 !1058
	lw  	a0, 36(sp) !1058
	addi	sp, sp, 40 !1058
	jal 	ra, fneg_cond.2408 !1058
	addi	sp, sp, -40 !1058
	lw  	a0, 28(sp) !1058
	lw  	a1, 12(sp) !1058
	slli	t0, a0, 2 !1058
	add 	t0, t0, a1 !1058
	sw  	fa0, 0(t0) !1058
	addi	a0, zero, 3 !1059
	li  	fa0, 1.000000 !1059
	addi	a2, zero, 1 !1059
	lw  	a3, 8(sp) !1059
	slli	t0, a2, 2 !1059
	add 	t0, t0, a3 !1059
	lw  	fa1, 0(t0) !1059
	fdiv	fa0, fa0, fa1 !1059
	slli	t0, a0, 2 !1059
	add 	t0, t0, a1 !1059
	sw  	fa0, 0(t0) !1059
	jal 	zero, beq_cont.8103 !1055
beq_else.8102: !1055
	addi	a0, zero, 3 !1056
	li  	fa0, 0.000000 !1056
	lw  	a1, 12(sp) !1056
	slli	t0, a0, 2 !1056
	add 	t0, t0, a1 !1056
	sw  	fa0, 0(t0) !1056
beq_cont.8103: !1055
	addi	a0, zero, 2 !1061
	lw  	a2, 8(sp) !1061
	slli	t0, a0, 2 !1061
	add 	t0, t0, a2 !1061
	lw  	fa0, 0(t0) !1061
	addi	sp, sp, 40 !1061
	jal 	ra, fiszero !1061
	addi	sp, sp, -40 !1061
	bne 	a0, zero, beq_else.8104 !1061
	addi	a0, zero, 4 !1064
	lw  	a1, 4(sp) !1064
	sw  	a0, 40(sp) !1064
	addi	a0, a1, 0 !1064
	addi	sp, sp, 44 !1064
	jal 	ra, o_isinvert.2458 !1064
	addi	sp, sp, -44 !1064
	addi	a1, zero, 2 !1064
	lw  	a2, 8(sp) !1064
	slli	t0, a1, 2 !1064
	add 	t0, t0, a2 !1064
	lw  	fa0, 0(t0) !1064
	sw  	a0, 44(sp) !1064
	addi	sp, sp, 48 !1064
	jal 	ra, fisneg !1064
	addi	sp, sp, -48 !1064
	lw  	a1, 44(sp) !1064
	addi	t0, a1, 0 !1064
	addi	a1, a0, 0 !1064
	addi	a0, t0, 0 !1064
	addi	sp, sp, 48 !1064
	jal 	ra, xor.2403 !1064
	addi	sp, sp, -48 !1064
	lw  	a1, 4(sp) !1064
	sw  	a0, 48(sp) !1064
	addi	a0, a1, 0 !1064
	addi	sp, sp, 52 !1064
	jal 	ra, o_param_c.2466 !1064
	addi	sp, sp, -52 !1064
	lw  	a0, 48(sp) !1064
	addi	sp, sp, 52 !1064
	jal 	ra, fneg_cond.2408 !1064
	addi	sp, sp, -52 !1064
	lw  	a0, 40(sp) !1064
	lw  	a1, 12(sp) !1064
	slli	t0, a0, 2 !1064
	add 	t0, t0, a1 !1064
	sw  	fa0, 0(t0) !1064
	addi	a0, zero, 5 !1065
	li  	fa0, 1.000000 !1065
	addi	a2, zero, 2 !1065
	lw  	a3, 8(sp) !1065
	slli	t0, a2, 2 !1065
	add 	t0, t0, a3 !1065
	lw  	fa1, 0(t0) !1065
	fdiv	fa0, fa0, fa1 !1065
	slli	t0, a0, 2 !1065
	add 	t0, t0, a1 !1065
	sw  	fa0, 0(t0) !1065
	jal 	zero, beq_cont.8105 !1061
beq_else.8104: !1061
	addi	a0, zero, 5 !1062
	li  	fa0, 0.000000 !1062
	lw  	a1, 12(sp) !1062
	slli	t0, a0, 2 !1062
	add 	t0, t0, a1 !1062
	sw  	fa0, 0(t0) !1062
beq_cont.8105: !1061
	addi	a0, a1, 0 !1067
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_surface_table.2633:
	sw  	ra, 0(sp)
	addi	a2, zero, 4 !1072
	li  	fa0, 0.000000 !1072
	sw  	a1, 4(sp) !1072
	sw  	a0, 8(sp) !1072
	addi	a0, a2, 0 !1072
	addi	sp, sp, 12 !1072
	jal 	ra, create_float_array !1072
	addi	sp, sp, -12 !1072
	addi	a1, zero, 0 !1074
	lw  	a2, 8(sp) !1074
	slli	t0, a1, 2 !1074
	add 	t0, t0, a2 !1074
	lw  	fa0, 0(t0) !1074
	lw  	a1, 4(sp) !1074
	sw  	a0, 12(sp) !1074
	sw  	fa0, 16(sp) !1074
	addi	a0, a1, 0 !1074
	addi	sp, sp, 20 !1074
	jal 	ra, o_param_a.2462 !1074
	addi	sp, sp, -20 !1074
	lw  	fa1, 16(sp) !1074
	fmul	fa0, fa1, fa0 !1074
	addi	a0, zero, 1 !1074
	lw  	a1, 8(sp) !1074
	slli	t0, a0, 2 !1074
	add 	t0, t0, a1 !1074
	lw  	fa1, 0(t0) !1074
	lw  	a0, 4(sp) !1074
	sw  	fa0, 20(sp) !1074
	sw  	fa1, 24(sp) !1074
	addi	sp, sp, 28 !1074
	jal 	ra, o_param_b.2464 !1074
	addi	sp, sp, -28 !1074
	lw  	fa1, 24(sp) !1074
	fmul	fa0, fa1, fa0 !1074
	lw  	fa1, 20(sp) !1074
	fadd	fa0, fa1, fa0 !1074
	addi	a0, zero, 2 !1074
	lw  	a1, 8(sp) !1074
	slli	t0, a0, 2 !1074
	add 	t0, t0, a1 !1074
	lw  	fa1, 0(t0) !1074
	lw  	a0, 4(sp) !1074
	sw  	fa0, 28(sp) !1074
	sw  	fa1, 32(sp) !1074
	addi	sp, sp, 36 !1074
	jal 	ra, o_param_c.2466 !1074
	addi	sp, sp, -36 !1074
	lw  	fa1, 32(sp) !1074
	fmul	fa0, fa1, fa0 !1074
	lw  	fa1, 28(sp) !1074
	fadd	fa0, fa1, fa0 !1074
	sw  	fa0, 36(sp) !1076
	addi	sp, sp, 40 !1076
	jal 	ra, fispos !1076
	addi	sp, sp, -40 !1076
	bne 	a0, zero, beq_else.8106 !1076
	addi	a0, zero, 0 !1084
	li  	fa0, 0.000000 !1084
	lw  	a1, 12(sp) !1084
	slli	t0, a0, 2 !1084
	add 	t0, t0, a1 !1084
	sw  	fa0, 0(t0) !1084
	jal 	zero, beq_cont.8107 !1076
beq_else.8106: !1076
	addi	a0, zero, 0 !1078
	li  	fa0, -1.000000 !1078
	lw  	fa1, 36(sp) !1078
	fdiv	fa0, fa0, fa1 !1078
	lw  	a1, 12(sp) !1078
	slli	t0, a0, 2 !1078
	add 	t0, t0, a1 !1078
	sw  	fa0, 0(t0) !1078
	addi	a0, zero, 1 !1080
	lw  	a2, 4(sp) !1080
	sw  	a0, 40(sp) !1080
	addi	a0, a2, 0 !1080
	addi	sp, sp, 44 !1080
	jal 	ra, o_param_a.2462 !1080
	addi	sp, sp, -44 !1080
	lw  	fa1, 36(sp) !1080
	fdiv	fa0, fa0, fa1 !1080
	addi	sp, sp, 44 !1080
	jal 	ra, fneg !1080
	addi	sp, sp, -44 !1080
	lw  	a0, 40(sp) !1080
	lw  	a1, 12(sp) !1080
	slli	t0, a0, 2 !1080
	add 	t0, t0, a1 !1080
	sw  	fa0, 0(t0) !1080
	addi	a0, zero, 2 !1081
	lw  	a2, 4(sp) !1081
	sw  	a0, 44(sp) !1081
	addi	a0, a2, 0 !1081
	addi	sp, sp, 48 !1081
	jal 	ra, o_param_b.2464 !1081
	addi	sp, sp, -48 !1081
	lw  	fa1, 36(sp) !1081
	fdiv	fa0, fa0, fa1 !1081
	addi	sp, sp, 48 !1081
	jal 	ra, fneg !1081
	addi	sp, sp, -48 !1081
	lw  	a0, 44(sp) !1081
	lw  	a1, 12(sp) !1081
	slli	t0, a0, 2 !1081
	add 	t0, t0, a1 !1081
	sw  	fa0, 0(t0) !1081
	addi	a0, zero, 3 !1082
	lw  	a2, 4(sp) !1082
	sw  	a0, 48(sp) !1082
	addi	a0, a2, 0 !1082
	addi	sp, sp, 52 !1082
	jal 	ra, o_param_c.2466 !1082
	addi	sp, sp, -52 !1082
	lw  	fa1, 36(sp) !1082
	fdiv	fa0, fa0, fa1 !1082
	addi	sp, sp, 52 !1082
	jal 	ra, fneg !1082
	addi	sp, sp, -52 !1082
	lw  	a0, 48(sp) !1082
	lw  	a1, 12(sp) !1082
	slli	t0, a0, 2 !1082
	add 	t0, t0, a1 !1082
	sw  	fa0, 0(t0) !1082
beq_cont.8107: !1076
	addi	a0, a1, 0 !1085
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_second_table.2636:
	sw  	ra, 0(sp)
	addi	a2, zero, 5 !1091
	li  	fa0, 0.000000 !1091
	sw  	a1, 4(sp) !1091
	sw  	a0, 8(sp) !1091
	addi	a0, a2, 0 !1091
	addi	sp, sp, 12 !1091
	jal 	ra, create_float_array !1091
	addi	sp, sp, -12 !1091
	addi	a1, zero, 0 !1093
	lw  	a2, 8(sp) !1093
	slli	t0, a1, 2 !1093
	add 	t0, t0, a2 !1093
	lw  	fa0, 0(t0) !1093
	addi	a1, zero, 1 !1093
	slli	t0, a1, 2 !1093
	add 	t0, t0, a2 !1093
	lw  	fa1, 0(t0) !1093
	addi	a1, zero, 2 !1093
	slli	t0, a1, 2 !1093
	add 	t0, t0, a2 !1093
	lw  	fa2, 0(t0) !1093
	lw  	a1, 4(sp) !1093
	sw  	a0, 12(sp) !1093
	addi	a0, a1, 0 !1093
	addi	sp, sp, 16 !1093
	jal 	ra, quadratic.2567 !1093
	addi	sp, sp, -16 !1093
	addi	a0, zero, 0 !1094
	lw  	a1, 8(sp) !1094
	slli	t0, a0, 2 !1094
	add 	t0, t0, a1 !1094
	lw  	fa1, 0(t0) !1094
	lw  	a0, 4(sp) !1094
	sw  	fa0, 16(sp) !1094
	sw  	fa1, 20(sp) !1094
	addi	sp, sp, 24 !1094
	jal 	ra, o_param_a.2462 !1094
	addi	sp, sp, -24 !1094
	lw  	fa1, 20(sp) !1094
	fmul	fa0, fa1, fa0 !1094
	addi	sp, sp, 24 !1094
	jal 	ra, fneg !1094
	addi	sp, sp, -24 !1094
	addi	a0, zero, 1 !1095
	lw  	a1, 8(sp) !1095
	slli	t0, a0, 2 !1095
	add 	t0, t0, a1 !1095
	lw  	fa1, 0(t0) !1095
	lw  	a0, 4(sp) !1095
	sw  	fa0, 24(sp) !1095
	sw  	fa1, 28(sp) !1095
	addi	sp, sp, 32 !1095
	jal 	ra, o_param_b.2464 !1095
	addi	sp, sp, -32 !1095
	lw  	fa1, 28(sp) !1095
	fmul	fa0, fa1, fa0 !1095
	addi	sp, sp, 32 !1095
	jal 	ra, fneg !1095
	addi	sp, sp, -32 !1095
	addi	a0, zero, 2 !1096
	lw  	a1, 8(sp) !1096
	slli	t0, a0, 2 !1096
	add 	t0, t0, a1 !1096
	lw  	fa1, 0(t0) !1096
	lw  	a0, 4(sp) !1096
	sw  	fa0, 32(sp) !1096
	sw  	fa1, 36(sp) !1096
	addi	sp, sp, 40 !1096
	jal 	ra, o_param_c.2466 !1096
	addi	sp, sp, -40 !1096
	lw  	fa1, 36(sp) !1096
	fmul	fa0, fa1, fa0 !1096
	addi	sp, sp, 40 !1096
	jal 	ra, fneg !1096
	addi	sp, sp, -40 !1096
	addi	a0, zero, 0 !1098
	lw  	a1, 12(sp) !1098
	lw  	a2, 16(sp) !1098
	slli	t0, a0, 2 !1098
	add 	t0, t0, a1 !1098
	sw  	a2, 0(t0) !1098
	lw  	a0, 4(sp) !1101
	sw  	fa0, 40(sp) !1101
	addi	sp, sp, 44 !1101
	jal 	ra, o_isrot.2460 !1101
	addi	sp, sp, -44 !1101
	bne 	a0, zero, beq_else.8108 !1101
	addi	a0, zero, 1 !1106
	lw  	a1, 12(sp) !1106
	lw  	a2, 24(sp) !1106
	slli	t0, a0, 2 !1106
	add 	t0, t0, a1 !1106
	sw  	a2, 0(t0) !1106
	addi	a0, zero, 2 !1107
	lw  	a2, 32(sp) !1107
	slli	t0, a0, 2 !1107
	add 	t0, t0, a1 !1107
	sw  	a2, 0(t0) !1107
	addi	a0, zero, 3 !1108
	lw  	a2, 40(sp) !1108
	slli	t0, a0, 2 !1108
	add 	t0, t0, a1 !1108
	sw  	a2, 0(t0) !1108
	jal 	zero, beq_cont.8109 !1101
beq_else.8108: !1101
	addi	a0, zero, 1 !1102
	addi	a1, zero, 2 !1102
	lw  	a2, 8(sp) !1102
	slli	t0, a1, 2 !1102
	add 	t0, t0, a2 !1102
	lw  	fa0, 0(t0) !1102
	lw  	a1, 4(sp) !1102
	sw  	a0, 44(sp) !1102
	sw  	fa0, 48(sp) !1102
	addi	a0, a1, 0 !1102
	addi	sp, sp, 52 !1102
	jal 	ra, o_param_r2.2488 !1102
	addi	sp, sp, -52 !1102
	lw  	fa1, 48(sp) !1102
	fmul	fa0, fa1, fa0 !1102
	addi	a0, zero, 1 !1102
	lw  	a1, 8(sp) !1102
	slli	t0, a0, 2 !1102
	add 	t0, t0, a1 !1102
	lw  	fa1, 0(t0) !1102
	lw  	a0, 4(sp) !1102
	sw  	fa0, 52(sp) !1102
	sw  	fa1, 56(sp) !1102
	addi	sp, sp, 60 !1102
	jal 	ra, o_param_r3.2490 !1102
	addi	sp, sp, -60 !1102
	lw  	fa1, 56(sp) !1102
	fmul	fa0, fa1, fa0 !1102
	lw  	fa1, 52(sp) !1102
	fadd	fa0, fa1, fa0 !1102
	addi	sp, sp, 60 !1102
	jal 	ra, fhalf !1102
	addi	sp, sp, -60 !1102
	lw  	fa1, 24(sp) !1102
	fsub	fa0, fa1, fa0 !1102
	lw  	a0, 44(sp) !1102
	lw  	a1, 12(sp) !1102
	slli	t0, a0, 2 !1102
	add 	t0, t0, a1 !1102
	sw  	fa0, 0(t0) !1102
	addi	a0, zero, 2 !1103
	addi	a2, zero, 2 !1103
	lw  	a3, 8(sp) !1103
	slli	t0, a2, 2 !1103
	add 	t0, t0, a3 !1103
	lw  	fa0, 0(t0) !1103
	lw  	a2, 4(sp) !1103
	sw  	a0, 60(sp) !1103
	sw  	fa0, 64(sp) !1103
	addi	a0, a2, 0 !1103
	addi	sp, sp, 68 !1103
	jal 	ra, o_param_r1.2486 !1103
	addi	sp, sp, -68 !1103
	lw  	fa1, 64(sp) !1103
	fmul	fa0, fa1, fa0 !1103
	addi	a0, zero, 0 !1103
	lw  	a1, 8(sp) !1103
	slli	t0, a0, 2 !1103
	add 	t0, t0, a1 !1103
	lw  	fa1, 0(t0) !1103
	lw  	a0, 4(sp) !1103
	sw  	fa0, 68(sp) !1103
	sw  	fa1, 72(sp) !1103
	addi	sp, sp, 76 !1103
	jal 	ra, o_param_r3.2490 !1103
	addi	sp, sp, -76 !1103
	lw  	fa1, 72(sp) !1103
	fmul	fa0, fa1, fa0 !1103
	lw  	fa1, 68(sp) !1103
	fadd	fa0, fa1, fa0 !1103
	addi	sp, sp, 76 !1103
	jal 	ra, fhalf !1103
	addi	sp, sp, -76 !1103
	lw  	fa1, 32(sp) !1103
	fsub	fa0, fa1, fa0 !1103
	lw  	a0, 60(sp) !1103
	lw  	a1, 12(sp) !1103
	slli	t0, a0, 2 !1103
	add 	t0, t0, a1 !1103
	sw  	fa0, 0(t0) !1103
	addi	a0, zero, 3 !1104
	addi	a2, zero, 1 !1104
	lw  	a3, 8(sp) !1104
	slli	t0, a2, 2 !1104
	add 	t0, t0, a3 !1104
	lw  	fa0, 0(t0) !1104
	lw  	a2, 4(sp) !1104
	sw  	a0, 76(sp) !1104
	sw  	fa0, 80(sp) !1104
	addi	a0, a2, 0 !1104
	addi	sp, sp, 84 !1104
	jal 	ra, o_param_r1.2486 !1104
	addi	sp, sp, -84 !1104
	lw  	fa1, 80(sp) !1104
	fmul	fa0, fa1, fa0 !1104
	addi	a0, zero, 0 !1104
	lw  	a1, 8(sp) !1104
	slli	t0, a0, 2 !1104
	add 	t0, t0, a1 !1104
	lw  	fa1, 0(t0) !1104
	lw  	a0, 4(sp) !1104
	sw  	fa0, 84(sp) !1104
	sw  	fa1, 88(sp) !1104
	addi	sp, sp, 92 !1104
	jal 	ra, o_param_r2.2488 !1104
	addi	sp, sp, -92 !1104
	lw  	fa1, 88(sp) !1104
	fmul	fa0, fa1, fa0 !1104
	lw  	fa1, 84(sp) !1104
	fadd	fa0, fa1, fa0 !1104
	addi	sp, sp, 92 !1104
	jal 	ra, fhalf !1104
	addi	sp, sp, -92 !1104
	lw  	fa1, 40(sp) !1104
	fsub	fa0, fa1, fa0 !1104
	lw  	a0, 76(sp) !1104
	lw  	a1, 12(sp) !1104
	slli	t0, a0, 2 !1104
	add 	t0, t0, a1 !1104
	sw  	fa0, 0(t0) !1104
beq_cont.8109: !1101
	lw  	fa0, 16(sp) !1110
	addi	sp, sp, 92 !1110
	jal 	ra, fiszero !1110
	addi	sp, sp, -92 !1110
	bne 	a0, zero, beq_else.8110 !1110
	addi	a0, zero, 4 !1111
	li  	fa0, 1.000000 !1111
	lw  	fa1, 16(sp) !1111
	fdiv	fa0, fa0, fa1 !1111
	lw  	a1, 12(sp) !1111
	slli	t0, a0, 2 !1111
	add 	t0, t0, a1 !1111
	sw  	fa0, 0(t0) !1111
	jal 	zero, beq_cont.8111 !1110
beq_else.8110: !1110
beq_cont.8111: !1110
	lw  	a0, 12(sp) !1113
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_setup_dirvec_constants.2639:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
Loop.1: !1119
	blt  	a1, zero, bge_else.8112 !1119
	slli	t0, a1, 2 !1120
	add 	t0, t0, a2 !1120
	lw  	a3, 0(t0) !1120
	sw  	a2, 4(sp) !1121
	sw  	a1, 8(sp) !1121
	sw  	a3, 12(sp) !1121
	sw  	a0, 16(sp) !1121
	addi	sp, sp, 20 !1121
	jal 	ra, d_const.2515 !1121
	addi	sp, sp, -20 !1121
	lw  	a1, 16(sp) !1122
	sw  	a0, 20(sp) !1122
	addi	a0, a1, 0 !1122
	addi	sp, sp, 24 !1122
	jal 	ra, d_vec.2513 !1122
	addi	sp, sp, -24 !1122
	lw  	a1, 12(sp) !1123
	sw  	a0, 24(sp) !1123
	addi	a0, a1, 0 !1123
	addi	sp, sp, 28 !1123
	jal 	ra, o_form.2454 !1123
	addi	sp, sp, -28 !1123
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8114 !1124
	lw  	a0, 24(sp) !1125
	lw  	a1, 12(sp) !1125
	addi	sp, sp, 28 !1125
	jal 	ra, setup_rect_table.2630 !1125
	addi	sp, sp, -28 !1125
	lw  	a1, 8(sp) !1125
	lw  	a2, 20(sp) !1125
	slli	t0, a1, 2 !1125
	add 	t0, t0, a2 !1125
	sw  	a0, 0(t0) !1125
	jal 	zero, beq_cont.8115 !1124
beq_else.8114: !1124
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8116 !1126
	lw  	a0, 24(sp) !1127
	lw  	a1, 12(sp) !1127
	addi	sp, sp, 28 !1127
	jal 	ra, setup_surface_table.2633 !1127
	addi	sp, sp, -28 !1127
	lw  	a1, 8(sp) !1127
	lw  	a2, 20(sp) !1127
	slli	t0, a1, 2 !1127
	add 	t0, t0, a2 !1127
	sw  	a0, 0(t0) !1127
	jal 	zero, beq_cont.8117 !1126
beq_else.8116: !1126
	lw  	a0, 24(sp) !1129
	lw  	a1, 12(sp) !1129
	addi	sp, sp, 28 !1129
	jal 	ra, setup_second_table.2636 !1129
	addi	sp, sp, -28 !1129
	lw  	a1, 8(sp) !1129
	lw  	a2, 20(sp) !1129
	slli	t0, a1, 2 !1129
	add 	t0, t0, a2 !1129
	sw  	a0, 0(t0) !1129
beq_cont.8117: !1126
beq_cont.8115: !1124
	addi	a0, a1, -1 !1131
	lw  	a1, 16(sp) !0
	addi	a2, zero, 0 !1119
	lw  	a3, 4(sp) !0
	addi	a2, a3, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.1 !0
bge_else.8112: !1119
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_dirvec_constants.2642:
	sw  	ra, 0(sp)
	lw  	a1, 8(tp) !0
	lw  	a2, 4(tp) !0
	lw  	a1, 0(a1) !1136
	addi	a1, a1, -1 !1136
	addi	tp, a2, 0 !1136
	lw  	t1, 0(tp) !1136
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1136
setup_startp_constants.2644:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
Loop.2: !1142
	blt  	a1, zero, bge_else.8119 !1142
	slli	t0, a1, 2 !1143
	add 	t0, t0, a2 !1143
	lw  	a3, 0(t0) !1143
	sw  	a2, 4(sp) !1144
	sw  	a1, 8(sp) !1144
	sw  	a0, 12(sp) !1144
	sw  	a3, 16(sp) !1144
	addi	a0, a3, 0 !1144
	addi	sp, sp, 20 !1144
	jal 	ra, o_param_ctbl.2492 !1144
	addi	sp, sp, -20 !1144
	lw  	a1, 16(sp) !1145
	sw  	a0, 20(sp) !1145
	addi	a0, a1, 0 !1145
	addi	sp, sp, 24 !1145
	jal 	ra, o_form.2454 !1145
	addi	sp, sp, -24 !1145
	addi	a1, zero, 0 !1146
	addi	a2, zero, 0 !1146
	lw  	a3, 12(sp) !1146
	slli	t0, a2, 2 !1146
	add 	t0, t0, a3 !1146
	lw  	fa0, 0(t0) !1146
	lw  	a2, 16(sp) !1146
	sw  	a0, 24(sp) !1146
	sw  	a1, 28(sp) !1146
	sw  	fa0, 32(sp) !1146
	addi	a0, a2, 0 !1146
	addi	sp, sp, 36 !1146
	jal 	ra, o_param_x.2470 !1146
	addi	sp, sp, -36 !1146
	lw  	fa1, 32(sp) !1146
	fsub	fa0, fa1, fa0 !1146
	lw  	a0, 28(sp) !1146
	lw  	a1, 20(sp) !1146
	slli	t0, a0, 2 !1146
	add 	t0, t0, a1 !1146
	sw  	fa0, 0(t0) !1146
	addi	a0, zero, 1 !1147
	addi	a2, zero, 1 !1147
	lw  	a3, 12(sp) !1147
	slli	t0, a2, 2 !1147
	add 	t0, t0, a3 !1147
	lw  	fa0, 0(t0) !1147
	lw  	a2, 16(sp) !1147
	sw  	a0, 36(sp) !1147
	sw  	fa0, 40(sp) !1147
	addi	a0, a2, 0 !1147
	addi	sp, sp, 44 !1147
	jal 	ra, o_param_y.2472 !1147
	addi	sp, sp, -44 !1147
	lw  	fa1, 40(sp) !1147
	fsub	fa0, fa1, fa0 !1147
	lw  	a0, 36(sp) !1147
	lw  	a1, 20(sp) !1147
	slli	t0, a0, 2 !1147
	add 	t0, t0, a1 !1147
	sw  	fa0, 0(t0) !1147
	addi	a0, zero, 2 !1148
	addi	a2, zero, 2 !1148
	lw  	a3, 12(sp) !1148
	slli	t0, a2, 2 !1148
	add 	t0, t0, a3 !1148
	lw  	fa0, 0(t0) !1148
	lw  	a2, 16(sp) !1148
	sw  	a0, 44(sp) !1148
	sw  	fa0, 48(sp) !1148
	addi	a0, a2, 0 !1148
	addi	sp, sp, 52 !1148
	jal 	ra, o_param_z.2474 !1148
	addi	sp, sp, -52 !1148
	lw  	fa1, 48(sp) !1148
	fsub	fa0, fa1, fa0 !1148
	lw  	a0, 44(sp) !1148
	lw  	a1, 20(sp) !1148
	slli	t0, a0, 2 !1148
	add 	t0, t0, a1 !1148
	sw  	fa0, 0(t0) !1148
	lw  	a0, 24(sp) !1149
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8121 !1149
	addi	a0, zero, 3 !1150
	lw  	a2, 16(sp) !1151
	sw  	a0, 52(sp) !1151
	addi	a0, a2, 0 !1151
	addi	sp, sp, 56 !1151
	jal 	ra, o_param_abc.2468 !1151
	addi	sp, sp, -56 !1151
	addi	a1, zero, 0 !1151
	lw  	a2, 20(sp) !1151
	slli	t0, a1, 2 !1151
	add 	t0, t0, a2 !1151
	lw  	fa0, 0(t0) !1151
	addi	a1, zero, 1 !1151
	slli	t0, a1, 2 !1151
	add 	t0, t0, a2 !1151
	lw  	fa1, 0(t0) !1151
	addi	a1, zero, 2 !1151
	slli	t0, a1, 2 !1151
	add 	t0, t0, a2 !1151
	lw  	fa2, 0(t0) !1151
	addi	sp, sp, 56 !1151
	jal 	ra, veciprod2.2433 !1151
	addi	sp, sp, -56 !1151
	lw  	a0, 52(sp) !1150
	lw  	a1, 20(sp) !1150
	slli	t0, a0, 2 !1150
	add 	t0, t0, a1 !1150
	sw  	fa0, 0(t0) !1150
	jal 	zero, beq_cont.8122 !1149
beq_else.8121: !1149
	addi	t0, zero, 2
	blt 	t0, a0, bge_else.8123 !1152
	jal 	zero, bge_cont.8124 !1152
bge_else.8123: !1152
	addi	a2, zero, 0 !1153
	slli	t0, a2, 2 !1153
	add 	t0, t0, a1 !1153
	lw  	fa0, 0(t0) !1153
	addi	a2, zero, 1 !1153
	slli	t0, a2, 2 !1153
	add 	t0, t0, a1 !1153
	lw  	fa1, 0(t0) !1153
	addi	a2, zero, 2 !1153
	slli	t0, a2, 2 !1153
	add 	t0, t0, a1 !1153
	lw  	fa2, 0(t0) !1153
	lw  	a2, 16(sp) !1153
	addi	a0, a2, 0 !1153
	addi	sp, sp, 56 !1153
	jal 	ra, quadratic.2567 !1153
	addi	sp, sp, -56 !1153
	addi	a0, zero, 3 !1154
	lw  	a1, 24(sp) !1154
	addi	t0, zero, 3
	bne 	a1, t0, beq_else.8125 !1154
	li  	fa1, 1.000000 !1154
	fsub	fa0, fa0, fa1 !1154
	jal 	zero, beq_cont.8126 !1154
beq_else.8125: !1154
beq_cont.8126: !1154
	lw  	a1, 20(sp) !1154
	slli	t0, a0, 2 !1154
	add 	t0, t0, a1 !1154
	sw  	fa0, 0(t0) !1154
bge_cont.8124: !1152
beq_cont.8122: !1149
	lw  	a0, 8(sp) !1156
	addi	a0, a0, -1 !1156
	lw  	a1, 12(sp) !0
	addi	a2, zero, 0 !1142
	lw  	a3, 4(sp) !0
	addi	a2, a3, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.2 !0
bge_else.8119: !1142
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_startp.2647:
	sw  	ra, 0(sp)
	lw  	a1, 12(tp) !0
	lw  	a2, 8(tp) !0
	lw  	a3, 4(tp) !0
	sw  	a0, 4(sp) !1161
	sw  	a2, 8(sp) !1161
	sw  	a3, 12(sp) !1161
	addi	t0, a1, 0 !1161
	addi	a1, a0, 0 !1161
	addi	a0, t0, 0 !1161
	addi	sp, sp, 16 !1161
	jal 	ra, veccpy.2424 !1161
	addi	sp, sp, -16 !1161
	lw  	a0, 12(sp) !1162
	lw  	a0, 0(a0) !1162
	addi	a0, a0, -1 !1162
	lw  	a1, 4(sp) !1162
	lw  	a2, 8(sp) !1162
	addi	tp, a2, 0 !1162
	addi	t0, a1, 0 !1162
	addi	a1, a0, 0 !1162
	addi	a0, t0, 0 !1162
	lw  	t1, 0(tp) !1162
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1162
is_rect_outside.2649:
	sw  	ra, 0(sp)
	sw  	fa2, 4(sp) !1172
	sw  	fa1, 8(sp) !1172
	sw  	a0, 12(sp) !1172
	addi	sp, sp, 16 !1172
	jal 	ra, fabs !1172
	addi	sp, sp, -16 !1172
	lw  	a0, 12(sp) !1172
	sw  	fa0, 16(sp) !1172
	addi	sp, sp, 20 !1172
	jal 	ra, o_param_a.2462 !1172
	addi	sp, sp, -20 !1172
	lw  	fa1, 16(sp) !1172
	fsgnj   t0, fa1, fa1 !1172
	fsgnj   fa1, fa0, fa0 !1172
	fsgnj   fa0, t0, t0 !1172
	addi	sp, sp, 20 !1172
	jal 	ra, fless !1172
	addi	sp, sp, -20 !1172
	bne 	a0, zero, beq_else.8128 !1172
	addi	a0, zero, 0 !1176
	jal 	zero, beq_cont.8129 !1172
beq_else.8128: !1172
	lw  	fa0, 8(sp) !1173
	addi	sp, sp, 20 !1173
	jal 	ra, fabs !1173
	addi	sp, sp, -20 !1173
	lw  	a0, 12(sp) !1173
	sw  	fa0, 20(sp) !1173
	addi	sp, sp, 24 !1173
	jal 	ra, o_param_b.2464 !1173
	addi	sp, sp, -24 !1173
	lw  	fa1, 20(sp) !1173
	fsgnj   t0, fa1, fa1 !1173
	fsgnj   fa1, fa0, fa0 !1173
	fsgnj   fa0, t0, t0 !1173
	addi	sp, sp, 24 !1173
	jal 	ra, fless !1173
	addi	sp, sp, -24 !1173
	bne 	a0, zero, beq_else.8130 !1173
	addi	a0, zero, 0 !1175
	jal 	zero, beq_cont.8131 !1173
beq_else.8130: !1173
	lw  	fa0, 4(sp) !1174
	addi	sp, sp, 24 !1174
	jal 	ra, fabs !1174
	addi	sp, sp, -24 !1174
	lw  	a0, 12(sp) !1174
	sw  	fa0, 24(sp) !1174
	addi	sp, sp, 28 !1174
	jal 	ra, o_param_c.2466 !1174
	addi	sp, sp, -28 !1174
	lw  	fa1, 24(sp) !1174
	fsgnj   t0, fa1, fa1 !1174
	fsgnj   fa1, fa0, fa0 !1174
	fsgnj   fa0, t0, t0 !1174
	addi	sp, sp, 28 !1174
	jal 	ra, fless !1174
	addi	sp, sp, -28 !1174
beq_cont.8131: !1173
beq_cont.8129: !1172
	bne 	a0, zero, beq_else.8132 !1171
	lw  	a0, 12(sp) !1177
	addi	sp, sp, 28 !1177
	jal 	ra, o_isinvert.2458 !1177
	addi	sp, sp, -28 !1177
	bne 	a0, zero, beq_else.8134 !1177
	addi	a0, zero, 1 !1177
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8134: !1177
	addi	a0, zero, 0 !1177
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8132: !1171
	lw  	a0, 12(sp) !1177
	lw  	ra, 0(sp)
	jal 	zero, o_isinvert.2458 !1177
is_plane_outside.2654:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !1182
	sw  	fa2, 8(sp) !1182
	sw  	fa1, 12(sp) !1182
	sw  	fa0, 16(sp) !1182
	addi	sp, sp, 20 !1182
	jal 	ra, o_param_abc.2468 !1182
	addi	sp, sp, -20 !1182
	lw  	fa0, 16(sp) !1182
	lw  	fa1, 12(sp) !1182
	lw  	fa2, 8(sp) !1182
	addi	sp, sp, 20 !1182
	jal 	ra, veciprod2.2433 !1182
	addi	sp, sp, -20 !1182
	lw  	a0, 4(sp) !1183
	sw  	fa0, 20(sp) !1183
	addi	sp, sp, 24 !1183
	jal 	ra, o_isinvert.2458 !1183
	addi	sp, sp, -24 !1183
	lw  	fa0, 20(sp) !1183
	sw  	a0, 24(sp) !1183
	addi	sp, sp, 28 !1183
	jal 	ra, fisneg !1183
	addi	sp, sp, -28 !1183
	lw  	a1, 24(sp) !1183
	addi	t0, a1, 0 !1183
	addi	a1, a0, 0 !1183
	addi	a0, t0, 0 !1183
	addi	sp, sp, 28 !1183
	jal 	ra, xor.2403 !1183
	addi	sp, sp, -28 !1183
	bne 	a0, zero, beq_else.8136 !1183
	addi	a0, zero, 1 !1183
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8136: !1183
	addi	a0, zero, 0 !1183
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
is_second_outside.2659:
	sw  	ra, 0(sp)
	sw  	a0, 4(sp) !1188
	addi	sp, sp, 8 !1188
	jal 	ra, quadratic.2567 !1188
	addi	sp, sp, -8 !1188
	lw  	a0, 4(sp) !1189
	sw  	fa0, 8(sp) !1189
	addi	sp, sp, 12 !1189
	jal 	ra, o_form.2454 !1189
	addi	sp, sp, -12 !1189
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.8138 !1189
	li  	fa0, 1.000000 !1189
	lw  	fa1, 8(sp) !1189
	fsub	fa0, fa1, fa0 !1189
	jal 	zero, beq_cont.8139 !1189
beq_else.8138: !1189
	lw  	fa0, 8(sp) !1189
beq_cont.8139: !1189
	lw  	a0, 4(sp) !1190
	sw  	fa0, 12(sp) !1190
	addi	sp, sp, 16 !1190
	jal 	ra, o_isinvert.2458 !1190
	addi	sp, sp, -16 !1190
	lw  	fa0, 12(sp) !1190
	sw  	a0, 16(sp) !1190
	addi	sp, sp, 20 !1190
	jal 	ra, fisneg !1190
	addi	sp, sp, -20 !1190
	lw  	a1, 16(sp) !1190
	addi	t0, a1, 0 !1190
	addi	a1, a0, 0 !1190
	addi	a0, t0, 0 !1190
	addi	sp, sp, 20 !1190
	jal 	ra, xor.2403 !1190
	addi	sp, sp, -20 !1190
	bne 	a0, zero, beq_else.8140 !1190
	addi	a0, zero, 1 !1190
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8140: !1190
	addi	a0, zero, 0 !1190
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
is_outside.2664:
	sw  	ra, 0(sp)
	sw  	fa2, 4(sp) !1195
	sw  	fa1, 8(sp) !1195
	sw  	a0, 12(sp) !1195
	sw  	fa0, 16(sp) !1195
	addi	sp, sp, 20 !1195
	jal 	ra, o_param_x.2470 !1195
	addi	sp, sp, -20 !1195
	lw  	fa1, 16(sp) !1195
	fsub	fa0, fa1, fa0 !1195
	lw  	a0, 12(sp) !1196
	sw  	fa0, 20(sp) !1196
	addi	sp, sp, 24 !1196
	jal 	ra, o_param_y.2472 !1196
	addi	sp, sp, -24 !1196
	lw  	fa1, 8(sp) !1196
	fsub	fa0, fa1, fa0 !1196
	lw  	a0, 12(sp) !1197
	sw  	fa0, 24(sp) !1197
	addi	sp, sp, 28 !1197
	jal 	ra, o_param_z.2474 !1197
	addi	sp, sp, -28 !1197
	lw  	fa1, 4(sp) !1197
	fsub	fa0, fa1, fa0 !1197
	lw  	a0, 12(sp) !1198
	sw  	fa0, 28(sp) !1198
	addi	sp, sp, 32 !1198
	jal 	ra, o_form.2454 !1198
	addi	sp, sp, -32 !1198
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8142 !1199
	lw  	fa0, 20(sp) !1200
	lw  	fa1, 24(sp) !1200
	lw  	fa2, 28(sp) !1200
	lw  	a0, 12(sp) !1200
	lw  	ra, 0(sp)
	jal 	zero, is_rect_outside.2649 !1200
beq_else.8142: !1199
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8144 !1201
	lw  	fa0, 20(sp) !1202
	lw  	fa1, 24(sp) !1202
	lw  	fa2, 28(sp) !1202
	lw  	a0, 12(sp) !1202
	lw  	ra, 0(sp)
	jal 	zero, is_plane_outside.2654 !1202
beq_else.8144: !1201
	lw  	fa0, 20(sp) !1204
	lw  	fa1, 24(sp) !1204
	lw  	fa2, 28(sp) !1204
	lw  	a0, 12(sp) !1204
	lw  	ra, 0(sp)
	jal 	zero, is_second_outside.2659 !1204
check_all_inside.2669:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
	slli	t0, a0, 2 !1209
	add 	t0, t0, a1 !1209
	lw  	a3, 0(t0) !1209
Loop.3: !1210
	addi	t0, zero, -1
	beq 	a3, t0, bne_else.8146 !1210
	slli	t0, a3, 2 !1213
	add 	t0, t0, a2 !1213
	lw  	a3, 0(t0) !1213
	sw  	a2, 4(sp) !1213
	sw  	fa2, 8(sp) !1213
	sw  	fa1, 12(sp) !1213
	sw  	fa0, 16(sp) !1213
	sw  	a1, 20(sp) !1213
	sw  	a0, 24(sp) !1213
	addi	a0, a3, 0 !1213
	addi	sp, sp, 28 !1213
	jal 	ra, is_outside.2664 !1213
	addi	sp, sp, -28 !1213
	bne 	a0, zero, beq_else.8148 !1213
	lw  	a0, 24(sp) !1216
	addi	a0, a0, 1 !1216
	lw  	a1, 20(sp) !0
	addi	a2, a1, 0 !0
	lw  	fa0, 16(sp) !0
	lw  	fa1, 12(sp) !0
	lw  	fa2, 8(sp) !0
	slli	t0, a0, 2 !1209
	add 	t0, t0, a1 !1209
	lw  	a3, 0(t0) !1209
	addi	a1, zero, -1 !1210
	lw  	a4, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, a4, 0 !0
	jal 	zero, Loop.3 !0
beq_else.8148: !1213
	addi	a0, zero, 0 !1214
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bne_else.8146: !1210
	addi	a0, zero, 1 !1211
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_and_group.2675:
	sw  	ra, 0(sp)
	lw  	a2, 28(tp) !0
	lw  	a3, 24(tp) !0
	lw  	a4, 20(tp) !0
	lw  	a5, 16(tp) !0
	lw  	a6, 12(tp) !0
	lw  	a7, 8(tp) !0
	lw  	s1, 4(tp) !0
	slli	t0, a0, 2 !1227
	add 	t0, t0, a1 !1227
	lw  	s2, 0(t0) !1227
Loop.4: !1227
	addi	t0, zero, -1
	beq 	s2, t0, bne_else.8150 !1227
	slli	t0, a0, 2 !1230
	add 	t0, t0, a1 !1230
	lw  	s2, 0(t0) !1230
	sw  	a2, 4(sp) !1231
	sw  	a5, 8(sp) !1231
	sw  	a6, 12(sp) !1231
	sw  	a7, 16(sp) !1231
	sw  	s1, 20(sp) !1231
	sw  	a1, 24(sp) !1231
	sw  	a0, 28(sp) !1231
	sw  	s2, 32(sp) !1231
	sw  	a4, 36(sp) !1231
	sw  	a3, 40(sp) !1231
	addi	a1, a5, 0 !1231
	addi	a0, s2, 0 !1231
	addi	tp, a2, 0 !1231
	addi	a2, a7, 0 !1231
	addi	sp, sp, 44 !1231
	lw  	t1, 0(tp) !1231
	jalr	ra, t1, 0 !1231
	addi	sp, sp, -44 !1231
	addi	a1, zero, 0 !1232
	lw  	a2, 40(sp) !1232
	slli	t0, a1, 2 !1232
	add 	t0, t0, a2 !1232
	lw  	fa0, 0(t0) !1232
	sw  	fa0, 44(sp) !1233
	bne 	a0, zero, beq_else.8152 !1233
	addi	a0, zero, 0 !1233
	jal 	zero, beq_cont.8153 !1233
beq_else.8152: !1233
	li  	fa1, -0.200000 !1233
	addi	sp, sp, 48 !1233
	jal 	ra, fless !1233
	addi	sp, sp, -48 !1233
beq_cont.8153: !1233
	bne 	a0, zero, beq_else.8154 !1233
	lw  	a0, 32(sp) !1249
	lw  	a1, 36(sp) !1249
	slli	t0, a0, 2 !1249
	add 	t0, t0, a1 !1249
	lw  	a0, 0(t0) !1249
	addi	sp, sp, 48 !1249
	jal 	ra, o_isinvert.2458 !1249
	addi	sp, sp, -48 !1249
	bne 	a0, zero, beq_else.8156 !1249
	addi	a0, zero, 0 !1252
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8156: !1249
	lw  	a0, 28(sp) !1250
	addi	a0, a0, 1 !1250
	lw  	a1, 24(sp) !0
	addi	a2, a1, 0 !0
	slli	t0, a0, 2 !1227
	add 	t0, t0, a1 !1227
	lw  	s2, 0(t0) !1227
	addi	a1, zero, -1 !1227
	lw  	a3, 20(sp) !0
	addi	s1, a3, 0 !0
	lw  	a3, 16(sp) !0
	addi	a7, a3, 0 !0
	lw  	a3, 12(sp) !0
	addi	a6, a3, 0 !0
	lw  	a3, 8(sp) !0
	addi	a5, a3, 0 !0
	lw  	a3, 36(sp) !0
	addi	a4, a3, 0 !0
	lw  	a3, 40(sp) !0
	lw  	s3, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, s3, 0 !0
	jal 	zero, Loop.4 !0
beq_else.8154: !1233
	li  	fa0, 0.010000 !1236
	lw  	fa1, 44(sp) !1236
	fadd	fa0, fa1, fa0 !1236
	addi	a0, zero, 0 !1237
	lw  	a1, 12(sp) !1237
	slli	t0, a0, 2 !1237
	add 	t0, t0, a1 !1237
	lw  	fa1, 0(t0) !1237
	fmul	fa1, fa1, fa0 !1237
	addi	a0, zero, 0 !1237
	lw  	a2, 16(sp) !1237
	slli	t0, a0, 2 !1237
	add 	t0, t0, a2 !1237
	lw  	fa2, 0(t0) !1237
	fadd	fa1, fa1, fa2 !1237
	addi	a0, zero, 1 !1238
	slli	t0, a0, 2 !1238
	add 	t0, t0, a1 !1238
	lw  	fa2, 0(t0) !1238
	fmul	fa2, fa2, fa0 !1238
	addi	a0, zero, 1 !1238
	slli	t0, a0, 2 !1238
	add 	t0, t0, a2 !1238
	lw  	fa3, 0(t0) !1238
	fadd	fa2, fa2, fa3 !1238
	addi	a0, zero, 2 !1239
	slli	t0, a0, 2 !1239
	add 	t0, t0, a1 !1239
	lw  	fa3, 0(t0) !1239
	fmul	fa0, fa3, fa0 !1239
	addi	a0, zero, 2 !1239
	slli	t0, a0, 2 !1239
	add 	t0, t0, a2 !1239
	lw  	fa3, 0(t0) !1239
	fadd	fa0, fa0, fa3 !1239
	addi	a0, zero, 0 !1240
	lw  	a3, 24(sp) !1240
	lw  	a4, 20(sp) !1240
	addi	a1, a3, 0 !1240
	addi	tp, a4, 0 !1240
	fsgnj   t0, fa2, fa2 !1240
	fsgnj   fa2, fa0, fa0 !1240
	fsgnj   fa0, fa1, fa1 !1240
	fsgnj   fa1, t0, t0 !1240
	addi	sp, sp, 48 !1240
	lw  	t1, 0(tp) !1240
	jalr	ra, t1, 0 !1240
	addi	sp, sp, -48 !1240
	bne 	a0, zero, beq_else.8158 !1240
	lw  	a0, 28(sp) !1243
	addi	a0, a0, 1 !1243
	lw  	a1, 24(sp) !0
	addi	a2, a1, 0 !0
	slli	t0, a0, 2 !1227
	add 	t0, t0, a1 !1227
	lw  	s2, 0(t0) !1227
	addi	a1, zero, -1 !1227
	lw  	a3, 20(sp) !0
	addi	s1, a3, 0 !0
	lw  	a3, 16(sp) !0
	addi	a7, a3, 0 !0
	lw  	a3, 12(sp) !0
	addi	a6, a3, 0 !0
	lw  	a3, 8(sp) !0
	addi	a5, a3, 0 !0
	lw  	a3, 36(sp) !0
	addi	a4, a3, 0 !0
	lw  	a3, 40(sp) !0
	lw  	s3, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, s3, 0 !0
	jal 	zero, Loop.4 !0
beq_else.8158: !1240
	addi	a0, zero, 1 !1241
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bne_else.8150: !1227
	addi	a0, zero, 0 !1228
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_group.2678:
	sw  	ra, 0(sp)
	lw  	a2, 8(tp) !0
	lw  	a3, 4(tp) !0
	slli	t0, a0, 2 !1257
	add 	t0, t0, a1 !1257
	lw  	a4, 0(t0) !1257
Loop.5: !1258
	addi	t0, zero, -1
	beq 	a4, t0, bne_else.8160 !1258
	slli	t0, a4, 2 !1261
	add 	t0, t0, a3 !1261
	lw  	a4, 0(t0) !1261
	addi	a5, zero, 0 !1262
	sw  	a2, 4(sp) !1262
	sw  	a3, 8(sp) !1262
	sw  	a1, 12(sp) !1262
	sw  	a0, 16(sp) !1262
	addi	a1, a4, 0 !1262
	addi	a0, a5, 0 !1262
	addi	tp, a2, 0 !1262
	addi	sp, sp, 20 !1262
	lw  	t1, 0(tp) !1262
	jalr	ra, t1, 0 !1262
	addi	sp, sp, -20 !1262
	bne 	a0, zero, beq_else.8162 !1263
	lw  	a0, 16(sp) !1266
	addi	a0, a0, 1 !1266
	lw  	a1, 12(sp) !0
	addi	a2, a1, 0 !0
	slli	t0, a0, 2 !1257
	add 	t0, t0, a1 !1257
	lw  	a4, 0(t0) !1257
	addi	a1, zero, -1 !1258
	lw  	a3, 8(sp) !0
	lw  	a5, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, a5, 0 !0
	jal 	zero, Loop.5 !0
beq_else.8162: !1263
	addi	a0, zero, 1 !1264
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bne_else.8160: !1258
	addi	a0, zero, 0 !1259
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
shadow_check_one_or_matrix.2681:
	sw  	ra, 0(sp)
	lw  	a2, 20(tp) !0
	lw  	a3, 16(tp) !0
	lw  	a4, 12(tp) !0
	lw  	a5, 8(tp) !0
	lw  	a6, 4(tp) !0
	slli	t0, a0, 2 !1272
	add 	t0, t0, a1 !1272
	lw  	a7, 0(t0) !1272
	lw  	s1, 0(a7) !1273
Loop.6: !1274
	addi	t0, zero, -1
	beq 	s1, t0, bne_else.8164 !1274
	sw  	a2, 4(sp) !1278
	sw  	a3, 8(sp) !1278
	sw  	a4, 12(sp) !1278
	sw  	a5, 16(sp) !1278
	sw  	a6, 20(sp) !1278
	sw  	a7, 24(sp) !1278
	sw  	a1, 28(sp) !1278
	sw  	a0, 32(sp) !1278
	addi	t0, zero, 99
	bne 	s1, t0, beq_else.8166 !1278
	addi	a0, zero, 1 !1279
	jal 	zero, beq_cont.8167 !1278
beq_else.8166: !1278
	addi	a1, a5, 0 !1281
	addi	a0, s1, 0 !1281
	addi	tp, a2, 0 !1281
	addi	a2, a6, 0 !1281
	addi	sp, sp, 36 !1281
	lw  	t1, 0(tp) !1281
	jalr	ra, t1, 0 !1281
	addi	sp, sp, -36 !1281
	bne 	a0, zero, beq_else.8168 !1284
	addi	a0, zero, 0 !1290
	jal 	zero, beq_cont.8169 !1284
beq_else.8168: !1284
	addi	a0, zero, 0 !1285
	lw  	a1, 8(sp) !1285
	slli	t0, a0, 2 !1285
	add 	t0, t0, a1 !1285
	lw  	fa0, 0(t0) !1285
	li  	fa1, -0.100000 !1285
	addi	sp, sp, 36 !1285
	jal 	ra, fless !1285
	addi	sp, sp, -36 !1285
	bne 	a0, zero, beq_else.8170 !1285
	addi	a0, zero, 0 !1289
	jal 	zero, beq_cont.8171 !1285
beq_else.8170: !1285
	addi	a0, zero, 1 !1286
	lw  	a1, 24(sp) !1286
	lw  	a2, 12(sp) !1286
	addi	tp, a2, 0 !1286
	addi	sp, sp, 36 !1286
	lw  	t1, 0(tp) !1286
	jalr	ra, t1, 0 !1286
	addi	sp, sp, -36 !1286
	bne 	a0, zero, beq_else.8172 !1286
	addi	a0, zero, 0 !1288
	jal 	zero, beq_cont.8173 !1286
beq_else.8172: !1286
	addi	a0, zero, 1 !1287
beq_cont.8173: !1286
beq_cont.8171: !1285
beq_cont.8169: !1284
beq_cont.8167: !1278
	bne 	a0, zero, beq_else.8174 !1277
	lw  	a0, 32(sp) !1297
	addi	a0, a0, 1 !1297
	lw  	a1, 28(sp) !0
	addi	a2, a1, 0 !0
	slli	t0, a0, 2 !1272
	add 	t0, t0, a1 !1272
	lw  	a7, 0(t0) !1272
	addi	a1, zero, 0 !1273
	lw  	a3, 24(sp) !1273
	lw  	s1, 0(a3) !1273
	addi	a3, zero, -1 !1274
	lw  	a4, 20(sp) !0
	addi	a6, a4, 0 !0
	lw  	a4, 16(sp) !0
	addi	a5, a4, 0 !0
	lw  	a4, 12(sp) !0
	lw  	s2, 8(sp) !0
	lw  	s3, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a3, s2, 0 !0
	addi	a2, s3, 0 !0
	jal 	zero, Loop.6 !0
beq_else.8174: !1277
	addi	a0, zero, 1 !1292
	lw  	a1, 24(sp) !1292
	lw  	a2, 12(sp) !1292
	addi	tp, a2, 0 !1292
	addi	sp, sp, 36 !1292
	lw  	t1, 0(tp) !1292
	jalr	ra, t1, 0 !1292
	addi	sp, sp, -36 !1292
	bne 	a0, zero, beq_else.8176 !1292
	lw  	a0, 32(sp) !1295
	addi	a0, a0, 1 !1295
	lw  	a1, 28(sp) !0
	addi	a2, a1, 0 !0
	slli	t0, a0, 2 !1272
	add 	t0, t0, a1 !1272
	lw  	a7, 0(t0) !1272
	addi	a1, zero, 0 !1273
	lw  	a3, 24(sp) !1273
	lw  	s1, 0(a3) !1273
	addi	a3, zero, -1 !1274
	lw  	a4, 20(sp) !0
	addi	a6, a4, 0 !0
	lw  	a4, 16(sp) !0
	addi	a5, a4, 0 !0
	lw  	a4, 12(sp) !0
	lw  	s2, 8(sp) !0
	lw  	s3, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a3, s2, 0 !0
	addi	a2, s3, 0 !0
	jal 	zero, Loop.6 !0
beq_else.8176: !1292
	addi	a0, zero, 1 !1293
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bne_else.8164: !1274
	addi	a0, zero, 0 !1275
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_each_element.2684:
	sw  	ra, 0(sp)
	lw  	a3, 36(tp) !0
	lw  	a4, 32(tp) !0
	lw  	a5, 28(tp) !0
	lw  	a6, 24(tp) !0
	lw  	a7, 20(tp) !0
	lw  	s1, 16(tp) !0
	lw  	s2, 12(tp) !0
	lw  	s3, 8(tp) !0
	lw  	s4, 4(tp) !0
	slli	t0, a0, 2 !1306
	add 	t0, t0, a1 !1306
	lw  	s5, 0(t0) !1306
Loop.7: !1307
	addi	t0, zero, -1
	beq 	s5, t0, bne_else.8178 !1307
	sw  	a3, 4(sp) !1309
	sw  	a4, 8(sp) !1309
	sw  	a5, 12(sp) !1309
	sw  	a6, 16(sp) !1309
	sw  	s1, 20(sp) !1309
	sw  	s2, 24(sp) !1309
	sw  	s3, 28(sp) !1309
	sw  	s4, 32(sp) !1309
	sw  	a2, 36(sp) !1309
	sw  	a1, 40(sp) !1309
	sw  	a0, 44(sp) !1309
	sw  	s5, 48(sp) !1309
	sw  	a7, 52(sp) !1309
	addi	a1, a2, 0 !1309
	addi	a0, s5, 0 !1309
	addi	tp, a6, 0 !1309
	addi	a2, a4, 0 !1309
	addi	sp, sp, 56 !1309
	lw  	t1, 0(tp) !1309
	jalr	ra, t1, 0 !1309
	addi	sp, sp, -56 !1309
	bne 	a0, zero, beq_else.8180 !1310
	lw  	a0, 48(sp) !1338
	lw  	a1, 52(sp) !1338
	slli	t0, a0, 2 !1338
	add 	t0, t0, a1 !1338
	lw  	a0, 0(t0) !1338
	addi	sp, sp, 56 !1338
	jal 	ra, o_isinvert.2458 !1338
	addi	sp, sp, -56 !1338
	bne 	a0, zero, beq_else.8182 !1338
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8182: !1338
	lw  	a0, 44(sp) !1339
	addi	a0, a0, 1 !1339
	lw  	a1, 40(sp) !0
	addi	a2, a1, 0 !0
	lw  	a3, 36(sp) !0
	slli	t0, a0, 2 !1306
	add 	t0, t0, a1 !1306
	lw  	s5, 0(t0) !1306
	addi	a1, zero, -1 !1307
	lw  	a4, 32(sp) !0
	addi	s4, a4, 0 !0
	lw  	a4, 28(sp) !0
	addi	s3, a4, 0 !0
	lw  	a4, 24(sp) !0
	addi	s2, a4, 0 !0
	lw  	a4, 20(sp) !0
	addi	s1, a4, 0 !0
	lw  	a4, 52(sp) !0
	addi	a7, a4, 0 !0
	lw  	a4, 16(sp) !0
	addi	a6, a4, 0 !0
	lw  	a4, 12(sp) !0
	addi	a5, a4, 0 !0
	lw  	a4, 8(sp) !0
	lw  	s6, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, s6, 0 !0
	jal 	zero, Loop.7 !0
beq_else.8180: !1310
	addi	a1, zero, 0 !1314
	lw  	a2, 12(sp) !1314
	slli	t0, a1, 2 !1314
	add 	t0, t0, a2 !1314
	lw  	fa0, 0(t0) !1314
	li  	fa1, 0.000000 !1316
	sw  	a0, 56(sp) !1316
	sw  	fa0, 60(sp) !1316
	fsgnj   t0, fa1, fa1 !1316
	fsgnj   fa1, fa0, fa0 !1316
	fsgnj   fa0, t0, t0 !1316
	addi	sp, sp, 64 !1316
	jal 	ra, fless !1316
	addi	sp, sp, -64 !1316
	bne 	a0, zero, beq_else.8185 !1316
	jal 	zero, beq_cont.8186 !1316
beq_else.8185: !1316
	addi	a0, zero, 0 !1317
	lw  	a1, 4(sp) !1317
	slli	t0, a0, 2 !1317
	add 	t0, t0, a1 !1317
	lw  	fa0, 0(t0) !1317
	lw  	fa1, 60(sp) !1317
	fsgnj   t0, fa1, fa1 !1317
	fsgnj   fa1, fa0, fa0 !1317
	fsgnj   fa0, t0, t0 !1317
	addi	sp, sp, 64 !1317
	jal 	ra, fless !1317
	addi	sp, sp, -64 !1317
	bne 	a0, zero, beq_else.8187 !1317
	jal 	zero, beq_cont.8188 !1317
beq_else.8187: !1317
	li  	fa0, 0.010000 !1319
	lw  	fa1, 60(sp) !1319
	fadd	fa0, fa1, fa0 !1319
	addi	a0, zero, 0 !1320
	lw  	a1, 36(sp) !1320
	slli	t0, a0, 2 !1320
	add 	t0, t0, a1 !1320
	lw  	fa1, 0(t0) !1320
	fmul	fa1, fa1, fa0 !1320
	addi	a0, zero, 0 !1320
	lw  	a2, 8(sp) !1320
	slli	t0, a0, 2 !1320
	add 	t0, t0, a2 !1320
	lw  	fa2, 0(t0) !1320
	fadd	fa1, fa1, fa2 !1320
	addi	a0, zero, 1 !1321
	slli	t0, a0, 2 !1321
	add 	t0, t0, a1 !1321
	lw  	fa2, 0(t0) !1321
	fmul	fa2, fa2, fa0 !1321
	addi	a0, zero, 1 !1321
	slli	t0, a0, 2 !1321
	add 	t0, t0, a2 !1321
	lw  	fa3, 0(t0) !1321
	fadd	fa2, fa2, fa3 !1321
	addi	a0, zero, 2 !1322
	slli	t0, a0, 2 !1322
	add 	t0, t0, a1 !1322
	lw  	fa3, 0(t0) !1322
	fmul	fa3, fa3, fa0 !1322
	addi	a0, zero, 2 !1322
	slli	t0, a0, 2 !1322
	add 	t0, t0, a2 !1322
	lw  	fa4, 0(t0) !1322
	fadd	fa3, fa3, fa4 !1322
	addi	a0, zero, 0 !1323
	lw  	a3, 40(sp) !1323
	lw  	a4, 32(sp) !1323
	sw  	fa3, 64(sp) !1323
	sw  	fa2, 68(sp) !1323
	sw  	fa1, 72(sp) !1323
	sw  	fa0, 76(sp) !1323
	addi	a1, a3, 0 !1323
	addi	tp, a4, 0 !1323
	fsgnj   fa0, fa1, fa1 !1323
	fsgnj   fa1, fa2, fa2 !1323
	fsgnj   fa2, fa3, fa3 !1323
	addi	sp, sp, 80 !1323
	lw  	t1, 0(tp) !1323
	jalr	ra, t1, 0 !1323
	addi	sp, sp, -80 !1323
	bne 	a0, zero, beq_else.8189 !1323
	jal 	zero, beq_cont.8190 !1323
beq_else.8189: !1323
	addi	a0, zero, 0 !1325
	lw  	a1, 4(sp) !1325
	lw  	a2, 76(sp) !1325
	slli	t0, a0, 2 !1325
	add 	t0, t0, a1 !1325
	sw  	a2, 0(t0) !1325
	lw  	fa0, 72(sp) !1326
	lw  	fa1, 68(sp) !1326
	lw  	fa2, 64(sp) !1326
	lw  	a0, 24(sp) !1326
	addi	sp, sp, 80 !1326
	jal 	ra, vecset.2414 !1326
	addi	sp, sp, -80 !1326
	lw  	a0, 28(sp) !1327
	lw  	a1, 48(sp) !1327
	sw  	a1, 0(a0) !1327
	lw  	a1, 20(sp) !1328
	lw  	a2, 56(sp) !1328
	sw  	a2, 0(a1) !1328
beq_cont.8190: !1323
beq_cont.8188: !1317
beq_cont.8186: !1316
	lw  	a0, 44(sp) !1334
	addi	a0, a0, 1 !1334
	lw  	a1, 40(sp) !0
	addi	a2, a1, 0 !0
	lw  	a3, 36(sp) !0
	slli	t0, a0, 2 !1306
	add 	t0, t0, a1 !1306
	lw  	s5, 0(t0) !1306
	addi	a1, zero, -1 !1307
	lw  	a4, 32(sp) !0
	addi	s4, a4, 0 !0
	lw  	a4, 28(sp) !0
	addi	s3, a4, 0 !0
	lw  	a4, 24(sp) !0
	addi	s2, a4, 0 !0
	lw  	a4, 20(sp) !0
	addi	s1, a4, 0 !0
	lw  	a4, 52(sp) !0
	addi	a7, a4, 0 !0
	lw  	a4, 16(sp) !0
	addi	a6, a4, 0 !0
	lw  	a4, 12(sp) !0
	addi	a5, a4, 0 !0
	lw  	a4, 8(sp) !0
	lw  	s6, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, s6, 0 !0
	jal 	zero, Loop.7 !0
bne_else.8178: !1307
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
solve_one_or_network.2688:
	sw  	ra, 0(sp)
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	slli	t0, a0, 2 !1347
	add 	t0, t0, a1 !1347
	lw  	a5, 0(t0) !1347
Loop.8: !1348
	addi	t0, zero, -1
	beq 	a5, t0, bne_else.8192 !1348
	slli	t0, a5, 2 !1349
	add 	t0, t0, a4 !1349
	lw  	a5, 0(t0) !1349
	addi	a6, zero, 0 !1350
	sw  	a3, 4(sp) !1350
	sw  	a4, 8(sp) !1350
	sw  	a2, 12(sp) !1350
	sw  	a1, 16(sp) !1350
	sw  	a0, 20(sp) !1350
	addi	a1, a5, 0 !1350
	addi	a0, a6, 0 !1350
	addi	tp, a3, 0 !1350
	addi	sp, sp, 24 !1350
	lw  	t1, 0(tp) !1350
	jalr	ra, t1, 0 !1350
	addi	sp, sp, -24 !1350
	lw  	a0, 20(sp) !1351
	addi	a0, a0, 1 !1351
	lw  	a1, 16(sp) !0
	addi	a2, a1, 0 !0
	lw  	a3, 12(sp) !0
	slli	t0, a0, 2 !1347
	add 	t0, t0, a1 !1347
	lw  	a5, 0(t0) !1347
	addi	a1, zero, -1 !1348
	lw  	a4, 8(sp) !0
	lw  	a6, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, a6, 0 !0
	jal 	zero, Loop.8 !0
bne_else.8192: !1348
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_or_matrix.2692:
	sw  	ra, 0(sp)
	lw  	a3, 20(tp) !0
	lw  	a4, 16(tp) !0
	lw  	a5, 12(tp) !0
	lw  	a6, 8(tp) !0
	lw  	a7, 4(tp) !0
	slli	t0, a0, 2 !1357
	add 	t0, t0, a1 !1357
	lw  	s1, 0(t0) !1357
	lw  	s2, 0(s1) !1358
Loop.9: !1359
	addi	t0, zero, -1
	beq 	s2, t0, bne_else.8195 !1359
	sw  	a3, 4(sp) !1362
	sw  	a4, 8(sp) !1362
	sw  	a5, 12(sp) !1362
	sw  	a6, 16(sp) !1362
	sw  	a7, 20(sp) !1362
	sw  	s1, 24(sp) !1362
	sw  	a2, 28(sp) !1362
	sw  	a1, 32(sp) !1362
	sw  	a0, 36(sp) !1362
	addi	t0, zero, 99
	bne 	s2, t0, beq_else.8197 !1362
	addi	s2, zero, 1 !1363
	addi	a1, s1, 0 !1363
	addi	a0, s2, 0 !1363
	addi	tp, a7, 0 !1363
	addi	sp, sp, 40 !1363
	lw  	t1, 0(tp) !1363
	jalr	ra, t1, 0 !1363
	addi	sp, sp, -40 !1363
	jal 	zero, beq_cont.8198 !1362
beq_else.8197: !1362
	addi	a1, a2, 0 !1367
	addi	a0, s2, 0 !1367
	addi	tp, a6, 0 !1367
	addi	a2, a4, 0 !1367
	addi	sp, sp, 40 !1367
	lw  	t1, 0(tp) !1367
	jalr	ra, t1, 0 !1367
	addi	sp, sp, -40 !1367
	bne 	a0, zero, beq_else.8199 !1368
	jal 	zero, beq_cont.8200 !1368
beq_else.8199: !1368
	addi	a0, zero, 0 !1369
	lw  	a1, 12(sp) !1369
	slli	t0, a0, 2 !1369
	add 	t0, t0, a1 !1369
	lw  	fa0, 0(t0) !1369
	addi	a0, zero, 0 !1370
	lw  	a2, 4(sp) !1370
	slli	t0, a0, 2 !1370
	add 	t0, t0, a2 !1370
	lw  	fa1, 0(t0) !1370
	addi	sp, sp, 40 !1370
	jal 	ra, fless !1370
	addi	sp, sp, -40 !1370
	bne 	a0, zero, beq_else.8201 !1370
	jal 	zero, beq_cont.8202 !1370
beq_else.8201: !1370
	addi	a0, zero, 1 !1371
	lw  	a1, 24(sp) !1371
	lw  	a2, 28(sp) !1371
	lw  	a3, 20(sp) !1371
	addi	tp, a3, 0 !1371
	addi	sp, sp, 40 !1371
	lw  	t1, 0(tp) !1371
	jalr	ra, t1, 0 !1371
	addi	sp, sp, -40 !1371
beq_cont.8202: !1370
beq_cont.8200: !1368
beq_cont.8198: !1362
	lw  	a0, 36(sp) !1375
	addi	a0, a0, 1 !1375
	lw  	a1, 32(sp) !0
	addi	a2, a1, 0 !0
	lw  	a3, 28(sp) !0
	slli	t0, a0, 2 !1357
	add 	t0, t0, a1 !1357
	lw  	s1, 0(t0) !1357
	addi	a1, zero, 0 !1358
	lw  	a4, 24(sp) !1358
	lw  	s2, 0(a4) !1358
	addi	a4, zero, -1 !1359
	lw  	a5, 20(sp) !0
	addi	a7, a5, 0 !0
	lw  	a5, 16(sp) !0
	addi	a6, a5, 0 !0
	lw  	a5, 12(sp) !0
	lw  	s3, 8(sp) !0
	lw  	s4, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a4, s3, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, s4, 0 !0
	jal 	zero, Loop.9 !0
bne_else.8195: !1359
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
judge_intersection.2696:
	sw  	ra, 0(sp)
	lw  	a1, 12(tp) !0
	lw  	a2, 8(tp) !0
	lw  	a3, 4(tp) !0
	addi	a4, zero, 0 !1384
	li  	fa0, 1000000000.000000 !1384
	slli	t0, a4, 2 !1384
	add 	t0, t0, a2 !1384
	sw  	fa0, 0(t0) !1384
	addi	a4, zero, 0 !1385
	lw  	a3, 0(a3) !1385
	sw  	a2, 4(sp) !1385
	addi	a2, a0, 0 !1385
	addi	tp, a1, 0 !1385
	addi	a1, a3, 0 !1385
	addi	a0, a4, 0 !1385
	addi	sp, sp, 8 !1385
	lw  	t1, 0(tp) !1385
	jalr	ra, t1, 0 !1385
	addi	sp, sp, -8 !1385
	addi	a0, zero, 0 !1386
	lw  	a1, 4(sp) !1386
	slli	t0, a0, 2 !1386
	add 	t0, t0, a1 !1386
	lw  	fa0, 0(t0) !1386
	li  	fa1, -0.100000 !1388
	sw  	fa0, 8(sp) !1388
	fsgnj   t0, fa1, fa1 !1388
	fsgnj   fa1, fa0, fa0 !1388
	fsgnj   fa0, t0, t0 !1388
	addi	sp, sp, 12 !1388
	jal 	ra, fless !1388
	addi	sp, sp, -12 !1388
	bne 	a0, zero, beq_else.8204 !1388
	addi	a0, zero, 0 !1390
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8204: !1388
	li  	fa0, 100000000.000000 !1389
	lw  	fa1, 8(sp) !1389
	fsgnj   t0, fa1, fa1 !1389
	fsgnj   fa1, fa0, fa0 !1389
	fsgnj   fa0, t0, t0 !1389
	lw  	ra, 0(sp)
	jal 	zero, fless !1389
solve_each_element_fast.2698:
	sw  	ra, 0(sp)
	lw  	a3, 36(tp) !0
	lw  	a4, 32(tp) !0
	lw  	a5, 28(tp) !0
	lw  	a6, 24(tp) !0
	lw  	a7, 20(tp) !0
	lw  	s1, 16(tp) !0
	lw  	s2, 12(tp) !0
	lw  	s3, 8(tp) !0
	lw  	s4, 4(tp) !0
	sw  	s1, 4(sp) !1397
	sw  	s3, 8(sp) !1397
	sw  	s2, 12(sp) !1397
	sw  	s4, 16(sp) !1397
	sw  	a4, 20(sp) !1397
	sw  	a3, 24(sp) !1397
	sw  	a6, 28(sp) !1397
	sw  	tp, 32(sp) !1397
	sw  	a7, 36(sp) !1397
	sw  	a2, 40(sp) !1397
	sw  	a5, 44(sp) !1397
	sw  	a0, 48(sp) !1397
	sw  	a1, 52(sp) !1397
	addi	a0, a2, 0 !1397
	addi	sp, sp, 56 !1397
	jal 	ra, d_vec.2513 !1397
	addi	sp, sp, -56 !1397
	lw  	a1, 48(sp) !1398
	lw  	a2, 52(sp) !1398
	slli	t0, a1, 2 !1398
	add 	t0, t0, a2 !1398
	lw  	a3, 0(t0) !1398
	addi	t0, zero, -1
	bne 	a3, t0, beq_else.8206 !1399
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8206: !1399
	lw  	a4, 40(sp) !1401
	lw  	a5, 44(sp) !1401
	sw  	a0, 56(sp) !1401
	sw  	a3, 60(sp) !1401
	addi	a1, a4, 0 !1401
	addi	a0, a3, 0 !1401
	addi	tp, a5, 0 !1401
	addi	sp, sp, 64 !1401
	lw  	t1, 0(tp) !1401
	jalr	ra, t1, 0 !1401
	addi	sp, sp, -64 !1401
	bne 	a0, zero, beq_else.8209 !1402
	lw  	a0, 60(sp) !1430
	lw  	a1, 36(sp) !1430
	slli	t0, a0, 2 !1430
	add 	t0, t0, a1 !1430
	lw  	a0, 0(t0) !1430
	addi	sp, sp, 64 !1430
	jal 	ra, o_isinvert.2458 !1430
	addi	sp, sp, -64 !1430
	bne 	a0, zero, beq_else.8211 !1430
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8211: !1430
	lw  	a0, 48(sp) !1431
	addi	a0, a0, 1 !1431
	lw  	a1, 52(sp) !1431
	lw  	a2, 40(sp) !1431
	lw  	a3, 32(sp) !1431
	addi	tp, a3, 0 !1431
	lw  	t1, 0(tp) !1431
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1431
beq_else.8209: !1402
	addi	a1, zero, 0 !1406
	lw  	a2, 28(sp) !1406
	slli	t0, a1, 2 !1406
	add 	t0, t0, a2 !1406
	lw  	fa0, 0(t0) !1406
	li  	fa1, 0.000000 !1408
	sw  	a0, 64(sp) !1408
	sw  	fa0, 68(sp) !1408
	fsgnj   t0, fa1, fa1 !1408
	fsgnj   fa1, fa0, fa0 !1408
	fsgnj   fa0, t0, t0 !1408
	addi	sp, sp, 72 !1408
	jal 	ra, fless !1408
	addi	sp, sp, -72 !1408
	bne 	a0, zero, beq_else.8214 !1408
	jal 	zero, beq_cont.8215 !1408
beq_else.8214: !1408
	addi	a0, zero, 0 !1409
	lw  	a1, 24(sp) !1409
	slli	t0, a0, 2 !1409
	add 	t0, t0, a1 !1409
	lw  	fa0, 0(t0) !1409
	lw  	fa1, 68(sp) !1409
	fsgnj   t0, fa1, fa1 !1409
	fsgnj   fa1, fa0, fa0 !1409
	fsgnj   fa0, t0, t0 !1409
	addi	sp, sp, 72 !1409
	jal 	ra, fless !1409
	addi	sp, sp, -72 !1409
	bne 	a0, zero, beq_else.8216 !1409
	jal 	zero, beq_cont.8217 !1409
beq_else.8216: !1409
	li  	fa0, 0.010000 !1411
	lw  	fa1, 68(sp) !1411
	fadd	fa0, fa1, fa0 !1411
	addi	a0, zero, 0 !1412
	lw  	a1, 56(sp) !1412
	slli	t0, a0, 2 !1412
	add 	t0, t0, a1 !1412
	lw  	fa1, 0(t0) !1412
	fmul	fa1, fa1, fa0 !1412
	addi	a0, zero, 0 !1412
	lw  	a2, 20(sp) !1412
	slli	t0, a0, 2 !1412
	add 	t0, t0, a2 !1412
	lw  	fa2, 0(t0) !1412
	fadd	fa1, fa1, fa2 !1412
	addi	a0, zero, 1 !1413
	slli	t0, a0, 2 !1413
	add 	t0, t0, a1 !1413
	lw  	fa2, 0(t0) !1413
	fmul	fa2, fa2, fa0 !1413
	addi	a0, zero, 1 !1413
	slli	t0, a0, 2 !1413
	add 	t0, t0, a2 !1413
	lw  	fa3, 0(t0) !1413
	fadd	fa2, fa2, fa3 !1413
	addi	a0, zero, 2 !1414
	slli	t0, a0, 2 !1414
	add 	t0, t0, a1 !1414
	lw  	fa3, 0(t0) !1414
	fmul	fa3, fa3, fa0 !1414
	addi	a0, zero, 2 !1414
	slli	t0, a0, 2 !1414
	add 	t0, t0, a2 !1414
	lw  	fa4, 0(t0) !1414
	fadd	fa3, fa3, fa4 !1414
	addi	a0, zero, 0 !1415
	lw  	a1, 52(sp) !1415
	lw  	a2, 16(sp) !1415
	sw  	fa3, 72(sp) !1415
	sw  	fa2, 76(sp) !1415
	sw  	fa1, 80(sp) !1415
	sw  	fa0, 84(sp) !1415
	addi	tp, a2, 0 !1415
	fsgnj   fa0, fa1, fa1 !1415
	fsgnj   fa1, fa2, fa2 !1415
	fsgnj   fa2, fa3, fa3 !1415
	addi	sp, sp, 88 !1415
	lw  	t1, 0(tp) !1415
	jalr	ra, t1, 0 !1415
	addi	sp, sp, -88 !1415
	bne 	a0, zero, beq_else.8218 !1415
	jal 	zero, beq_cont.8219 !1415
beq_else.8218: !1415
	addi	a0, zero, 0 !1417
	lw  	a1, 24(sp) !1417
	lw  	a2, 84(sp) !1417
	slli	t0, a0, 2 !1417
	add 	t0, t0, a1 !1417
	sw  	a2, 0(t0) !1417
	lw  	fa0, 80(sp) !1418
	lw  	fa1, 76(sp) !1418
	lw  	fa2, 72(sp) !1418
	lw  	a0, 12(sp) !1418
	addi	sp, sp, 88 !1418
	jal 	ra, vecset.2414 !1418
	addi	sp, sp, -88 !1418
	lw  	a0, 8(sp) !1419
	lw  	a1, 60(sp) !1419
	sw  	a1, 0(a0) !1419
	lw  	a0, 4(sp) !1420
	lw  	a1, 64(sp) !1420
	sw  	a1, 0(a0) !1420
beq_cont.8219: !1415
beq_cont.8217: !1409
beq_cont.8215: !1408
	lw  	a0, 48(sp) !1426
	addi	a0, a0, 1 !1426
	lw  	a1, 52(sp) !1426
	lw  	a2, 40(sp) !1426
	lw  	a3, 32(sp) !1426
	addi	tp, a3, 0 !1426
	lw  	t1, 0(tp) !1426
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1426
solve_one_or_network_fast.2702:
	sw  	ra, 0(sp)
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	slli	t0, a0, 2 !1438
	add 	t0, t0, a1 !1438
	lw  	a5, 0(t0) !1438
Loop.10: !1439
	addi	t0, zero, -1
	beq 	a5, t0, bne_else.8220 !1439
	slli	t0, a5, 2 !1440
	add 	t0, t0, a4 !1440
	lw  	a5, 0(t0) !1440
	addi	a6, zero, 0 !1441
	sw  	a3, 4(sp) !1441
	sw  	a4, 8(sp) !1441
	sw  	a2, 12(sp) !1441
	sw  	a1, 16(sp) !1441
	sw  	a0, 20(sp) !1441
	addi	a1, a5, 0 !1441
	addi	a0, a6, 0 !1441
	addi	tp, a3, 0 !1441
	addi	sp, sp, 24 !1441
	lw  	t1, 0(tp) !1441
	jalr	ra, t1, 0 !1441
	addi	sp, sp, -24 !1441
	lw  	a0, 20(sp) !1442
	addi	a0, a0, 1 !1442
	lw  	a1, 16(sp) !0
	addi	a2, a1, 0 !0
	lw  	a3, 12(sp) !0
	slli	t0, a0, 2 !1438
	add 	t0, t0, a1 !1438
	lw  	a5, 0(t0) !1438
	addi	a1, zero, -1 !1439
	lw  	a4, 8(sp) !0
	lw  	a6, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, a6, 0 !0
	jal 	zero, Loop.10 !0
bne_else.8220: !1439
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_or_matrix_fast.2706:
	sw  	ra, 0(sp)
	lw  	a3, 16(tp) !0
	lw  	a4, 12(tp) !0
	lw  	a5, 8(tp) !0
	lw  	a6, 4(tp) !0
	slli	t0, a0, 2 !1448
	add 	t0, t0, a1 !1448
	lw  	a7, 0(t0) !1448
	lw  	s1, 0(a7) !1449
Loop.11: !1450
	addi	t0, zero, -1
	beq 	s1, t0, bne_else.8223 !1450
	sw  	a3, 4(sp) !1453
	sw  	a4, 8(sp) !1453
	sw  	a5, 12(sp) !1453
	sw  	a6, 16(sp) !1453
	sw  	a7, 20(sp) !1453
	sw  	a2, 24(sp) !1453
	sw  	a1, 28(sp) !1453
	sw  	a0, 32(sp) !1453
	addi	t0, zero, 99
	bne 	s1, t0, beq_else.8225 !1453
	addi	s1, zero, 1 !1454
	addi	a1, a7, 0 !1454
	addi	a0, s1, 0 !1454
	addi	tp, a6, 0 !1454
	addi	sp, sp, 36 !1454
	lw  	t1, 0(tp) !1454
	jalr	ra, t1, 0 !1454
	addi	sp, sp, -36 !1454
	jal 	zero, beq_cont.8226 !1453
beq_else.8225: !1453
	addi	a1, a2, 0 !1458
	addi	a0, s1, 0 !1458
	addi	tp, a4, 0 !1458
	addi	sp, sp, 36 !1458
	lw  	t1, 0(tp) !1458
	jalr	ra, t1, 0 !1458
	addi	sp, sp, -36 !1458
	bne 	a0, zero, beq_else.8227 !1459
	jal 	zero, beq_cont.8228 !1459
beq_else.8227: !1459
	addi	a0, zero, 0 !1460
	lw  	a1, 12(sp) !1460
	slli	t0, a0, 2 !1460
	add 	t0, t0, a1 !1460
	lw  	fa0, 0(t0) !1460
	addi	a0, zero, 0 !1461
	lw  	a2, 4(sp) !1461
	slli	t0, a0, 2 !1461
	add 	t0, t0, a2 !1461
	lw  	fa1, 0(t0) !1461
	addi	sp, sp, 36 !1461
	jal 	ra, fless !1461
	addi	sp, sp, -36 !1461
	bne 	a0, zero, beq_else.8229 !1461
	jal 	zero, beq_cont.8230 !1461
beq_else.8229: !1461
	addi	a0, zero, 1 !1462
	lw  	a1, 20(sp) !1462
	lw  	a2, 24(sp) !1462
	lw  	a3, 16(sp) !1462
	addi	tp, a3, 0 !1462
	addi	sp, sp, 36 !1462
	lw  	t1, 0(tp) !1462
	jalr	ra, t1, 0 !1462
	addi	sp, sp, -36 !1462
beq_cont.8230: !1461
beq_cont.8228: !1459
beq_cont.8226: !1453
	lw  	a0, 32(sp) !1466
	addi	a0, a0, 1 !1466
	lw  	a1, 28(sp) !0
	addi	a2, a1, 0 !0
	lw  	a3, 24(sp) !0
	slli	t0, a0, 2 !1448
	add 	t0, t0, a1 !1448
	lw  	a7, 0(t0) !1448
	addi	a1, zero, 0 !1449
	lw  	a4, 20(sp) !1449
	lw  	s1, 0(a4) !1449
	addi	a4, zero, -1 !1450
	lw  	a5, 16(sp) !0
	addi	a6, a5, 0 !0
	lw  	a5, 12(sp) !0
	lw  	s2, 8(sp) !0
	lw  	s3, 4(sp) !0
	addi	a1, a2, 0 !0
	addi	a4, s2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, s3, 0 !0
	jal 	zero, Loop.11 !0
bne_else.8223: !1450
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
judge_intersection_fast.2710:
	sw  	ra, 0(sp)
	lw  	a1, 12(tp) !0
	lw  	a2, 8(tp) !0
	lw  	a3, 4(tp) !0
	addi	a4, zero, 0 !1473
	li  	fa0, 1000000000.000000 !1473
	slli	t0, a4, 2 !1473
	add 	t0, t0, a2 !1473
	sw  	fa0, 0(t0) !1473
	addi	a4, zero, 0 !1474
	lw  	a3, 0(a3) !1474
	sw  	a2, 4(sp) !1474
	addi	a2, a0, 0 !1474
	addi	tp, a1, 0 !1474
	addi	a1, a3, 0 !1474
	addi	a0, a4, 0 !1474
	addi	sp, sp, 8 !1474
	lw  	t1, 0(tp) !1474
	jalr	ra, t1, 0 !1474
	addi	sp, sp, -8 !1474
	addi	a0, zero, 0 !1475
	lw  	a1, 4(sp) !1475
	slli	t0, a0, 2 !1475
	add 	t0, t0, a1 !1475
	lw  	fa0, 0(t0) !1475
	li  	fa1, -0.100000 !1477
	sw  	fa0, 8(sp) !1477
	fsgnj   t0, fa1, fa1 !1477
	fsgnj   fa1, fa0, fa0 !1477
	fsgnj   fa0, t0, t0 !1477
	addi	sp, sp, 12 !1477
	jal 	ra, fless !1477
	addi	sp, sp, -12 !1477
	bne 	a0, zero, beq_else.8232 !1477
	addi	a0, zero, 0 !1479
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8232: !1477
	li  	fa0, 100000000.000000 !1478
	lw  	fa1, 8(sp) !1478
	fsgnj   t0, fa1, fa1 !1478
	fsgnj   fa1, fa0, fa0 !1478
	fsgnj   fa0, t0, t0 !1478
	lw  	ra, 0(sp)
	jal 	zero, fless !1478
get_nvector_rect.2712:
	sw  	ra, 0(sp)
	lw  	a1, 8(tp) !0
	lw  	a2, 4(tp) !0
	lw  	a2, 0(a2) !1491
	sw  	a1, 4(sp) !1493
	sw  	a0, 8(sp) !1493
	sw  	a2, 12(sp) !1493
	addi	a0, a1, 0 !1493
	addi	sp, sp, 16 !1493
	jal 	ra, vecbzero.2422 !1493
	addi	sp, sp, -16 !1493
	lw  	a0, 12(sp) !1494
	addi	a1, a0, -1 !1494
	addi	a0, a0, -1 !1494
	lw  	a2, 8(sp) !1494
	slli	t0, a0, 2 !1494
	add 	t0, t0, a2 !1494
	lw  	fa0, 0(t0) !1494
	sw  	a1, 16(sp) !1494
	addi	sp, sp, 20 !1494
	jal 	ra, sgn.2406 !1494
	addi	sp, sp, -20 !1494
	addi	sp, sp, 20 !1494
	jal 	ra, fneg !1494
	addi	sp, sp, -20 !1494
	lw  	a0, 16(sp) !1494
	lw  	a1, 4(sp) !1494
	slli	t0, a0, 2 !1494
	add 	t0, t0, a1 !1494
	sw  	fa0, 0(t0) !1494
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
get_nvector_plane.2714:
	sw  	ra, 0(sp)
	lw  	a1, 4(tp) !0
	addi	a2, zero, 0 !1500
	sw  	a0, 4(sp) !1500
	sw  	a2, 8(sp) !1500
	sw  	a1, 12(sp) !1500
	addi	sp, sp, 16 !1500
	jal 	ra, o_param_a.2462 !1500
	addi	sp, sp, -16 !1500
	addi	sp, sp, 16 !1500
	jal 	ra, fneg !1500
	addi	sp, sp, -16 !1500
	lw  	a0, 8(sp) !1500
	lw  	a1, 12(sp) !1500
	slli	t0, a0, 2 !1500
	add 	t0, t0, a1 !1500
	sw  	fa0, 0(t0) !1500
	addi	a0, zero, 1 !1501
	lw  	a2, 4(sp) !1501
	sw  	a0, 16(sp) !1501
	addi	a0, a2, 0 !1501
	addi	sp, sp, 20 !1501
	jal 	ra, o_param_b.2464 !1501
	addi	sp, sp, -20 !1501
	addi	sp, sp, 20 !1501
	jal 	ra, fneg !1501
	addi	sp, sp, -20 !1501
	lw  	a0, 16(sp) !1501
	lw  	a1, 12(sp) !1501
	slli	t0, a0, 2 !1501
	add 	t0, t0, a1 !1501
	sw  	fa0, 0(t0) !1501
	addi	a0, zero, 2 !1502
	lw  	a2, 4(sp) !1502
	sw  	a0, 20(sp) !1502
	addi	a0, a2, 0 !1502
	addi	sp, sp, 24 !1502
	jal 	ra, o_param_c.2466 !1502
	addi	sp, sp, -24 !1502
	addi	sp, sp, 24 !1502
	jal 	ra, fneg !1502
	addi	sp, sp, -24 !1502
	lw  	a0, 20(sp) !1502
	lw  	a1, 12(sp) !1502
	slli	t0, a0, 2 !1502
	add 	t0, t0, a1 !1502
	sw  	fa0, 0(t0) !1502
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
get_nvector_second.2716:
	sw  	ra, 0(sp)
	lw  	a1, 8(tp) !0
	lw  	a2, 4(tp) !0
	addi	a3, zero, 0 !1507
	slli	t0, a3, 2 !1507
	add 	t0, t0, a2 !1507
	lw  	fa0, 0(t0) !1507
	sw  	a1, 4(sp) !1507
	sw  	a0, 8(sp) !1507
	sw  	a2, 12(sp) !1507
	sw  	fa0, 16(sp) !1507
	addi	sp, sp, 20 !1507
	jal 	ra, o_param_x.2470 !1507
	addi	sp, sp, -20 !1507
	lw  	fa1, 16(sp) !1507
	fsub	fa0, fa1, fa0 !1507
	addi	a0, zero, 1 !1508
	lw  	a1, 12(sp) !1508
	slli	t0, a0, 2 !1508
	add 	t0, t0, a1 !1508
	lw  	fa1, 0(t0) !1508
	lw  	a0, 8(sp) !1508
	sw  	fa0, 20(sp) !1508
	sw  	fa1, 24(sp) !1508
	addi	sp, sp, 28 !1508
	jal 	ra, o_param_y.2472 !1508
	addi	sp, sp, -28 !1508
	lw  	fa1, 24(sp) !1508
	fsub	fa0, fa1, fa0 !1508
	addi	a0, zero, 2 !1509
	lw  	a1, 12(sp) !1509
	slli	t0, a0, 2 !1509
	add 	t0, t0, a1 !1509
	lw  	fa1, 0(t0) !1509
	lw  	a0, 8(sp) !1509
	sw  	fa0, 28(sp) !1509
	sw  	fa1, 32(sp) !1509
	addi	sp, sp, 36 !1509
	jal 	ra, o_param_z.2474 !1509
	addi	sp, sp, -36 !1509
	lw  	fa1, 32(sp) !1509
	fsub	fa0, fa1, fa0 !1509
	lw  	a0, 8(sp) !1511
	sw  	fa0, 36(sp) !1511
	addi	sp, sp, 40 !1511
	jal 	ra, o_param_a.2462 !1511
	addi	sp, sp, -40 !1511
	lw  	fa1, 20(sp) !1511
	fmul	fa0, fa1, fa0 !1511
	lw  	a0, 8(sp) !1512
	sw  	fa0, 40(sp) !1512
	addi	sp, sp, 44 !1512
	jal 	ra, o_param_b.2464 !1512
	addi	sp, sp, -44 !1512
	lw  	fa1, 28(sp) !1512
	fmul	fa0, fa1, fa0 !1512
	lw  	a0, 8(sp) !1513
	sw  	fa0, 44(sp) !1513
	addi	sp, sp, 48 !1513
	jal 	ra, o_param_c.2466 !1513
	addi	sp, sp, -48 !1513
	lw  	fa1, 36(sp) !1513
	fmul	fa0, fa1, fa0 !1513
	lw  	a0, 8(sp) !1515
	sw  	fa0, 48(sp) !1515
	addi	sp, sp, 52 !1515
	jal 	ra, o_isrot.2460 !1515
	addi	sp, sp, -52 !1515
	bne 	a0, zero, beq_else.8236 !1515
	addi	a0, zero, 0 !1516
	lw  	a1, 4(sp) !1516
	lw  	a2, 40(sp) !1516
	slli	t0, a0, 2 !1516
	add 	t0, t0, a1 !1516
	sw  	a2, 0(t0) !1516
	addi	a0, zero, 1 !1517
	lw  	a2, 44(sp) !1517
	slli	t0, a0, 2 !1517
	add 	t0, t0, a1 !1517
	sw  	a2, 0(t0) !1517
	addi	a0, zero, 2 !1518
	lw  	a2, 48(sp) !1518
	slli	t0, a0, 2 !1518
	add 	t0, t0, a1 !1518
	sw  	a2, 0(t0) !1518
	jal 	zero, beq_cont.8237 !1515
beq_else.8236: !1515
	addi	a0, zero, 0 !1520
	lw  	a1, 8(sp) !1520
	sw  	a0, 52(sp) !1520
	addi	a0, a1, 0 !1520
	addi	sp, sp, 56 !1520
	jal 	ra, o_param_r3.2490 !1520
	addi	sp, sp, -56 !1520
	lw  	fa1, 28(sp) !1520
	fmul	fa0, fa1, fa0 !1520
	lw  	a0, 8(sp) !1520
	sw  	fa0, 56(sp) !1520
	addi	sp, sp, 60 !1520
	jal 	ra, o_param_r2.2488 !1520
	addi	sp, sp, -60 !1520
	lw  	fa1, 36(sp) !1520
	fmul	fa0, fa1, fa0 !1520
	lw  	fa2, 56(sp) !1520
	fadd	fa0, fa2, fa0 !1520
	addi	sp, sp, 60 !1520
	jal 	ra, fhalf !1520
	addi	sp, sp, -60 !1520
	lw  	fa1, 40(sp) !1520
	fadd	fa0, fa1, fa0 !1520
	lw  	a0, 52(sp) !1520
	lw  	a1, 4(sp) !1520
	slli	t0, a0, 2 !1520
	add 	t0, t0, a1 !1520
	sw  	fa0, 0(t0) !1520
	addi	a0, zero, 1 !1521
	lw  	a2, 8(sp) !1521
	sw  	a0, 60(sp) !1521
	addi	a0, a2, 0 !1521
	addi	sp, sp, 64 !1521
	jal 	ra, o_param_r3.2490 !1521
	addi	sp, sp, -64 !1521
	lw  	fa1, 20(sp) !1521
	fmul	fa0, fa1, fa0 !1521
	lw  	a0, 8(sp) !1521
	sw  	fa0, 64(sp) !1521
	addi	sp, sp, 68 !1521
	jal 	ra, o_param_r1.2486 !1521
	addi	sp, sp, -68 !1521
	lw  	fa1, 36(sp) !1521
	fmul	fa0, fa1, fa0 !1521
	lw  	fa1, 64(sp) !1521
	fadd	fa0, fa1, fa0 !1521
	addi	sp, sp, 68 !1521
	jal 	ra, fhalf !1521
	addi	sp, sp, -68 !1521
	lw  	fa1, 44(sp) !1521
	fadd	fa0, fa1, fa0 !1521
	lw  	a0, 60(sp) !1521
	lw  	a1, 4(sp) !1521
	slli	t0, a0, 2 !1521
	add 	t0, t0, a1 !1521
	sw  	fa0, 0(t0) !1521
	addi	a0, zero, 2 !1522
	lw  	a2, 8(sp) !1522
	sw  	a0, 68(sp) !1522
	addi	a0, a2, 0 !1522
	addi	sp, sp, 72 !1522
	jal 	ra, o_param_r2.2488 !1522
	addi	sp, sp, -72 !1522
	lw  	fa1, 20(sp) !1522
	fmul	fa0, fa1, fa0 !1522
	lw  	a0, 8(sp) !1522
	sw  	fa0, 72(sp) !1522
	addi	sp, sp, 76 !1522
	jal 	ra, o_param_r1.2486 !1522
	addi	sp, sp, -76 !1522
	lw  	fa1, 28(sp) !1522
	fmul	fa0, fa1, fa0 !1522
	lw  	fa1, 72(sp) !1522
	fadd	fa0, fa1, fa0 !1522
	addi	sp, sp, 76 !1522
	jal 	ra, fhalf !1522
	addi	sp, sp, -76 !1522
	lw  	fa1, 48(sp) !1522
	fadd	fa0, fa1, fa0 !1522
	lw  	a0, 68(sp) !1522
	lw  	a1, 4(sp) !1522
	slli	t0, a0, 2 !1522
	add 	t0, t0, a1 !1522
	sw  	fa0, 0(t0) !1522
beq_cont.8237: !1515
	lw  	a0, 8(sp) !1524
	addi	sp, sp, 76 !1524
	jal 	ra, o_isinvert.2458 !1524
	addi	sp, sp, -76 !1524
	lw  	a1, 4(sp) !1524
	addi	t0, a1, 0 !1524
	addi	a1, a0, 0 !1524
	addi	a0, t0, 0 !1524
	lw  	ra, 0(sp)
	jal 	zero, vecunit_sgn.2427 !1524
get_nvector.2718:
	sw  	ra, 0(sp)
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	sw  	a2, 4(sp) !1529
	sw  	a0, 8(sp) !1529
	sw  	a4, 12(sp) !1529
	sw  	a1, 16(sp) !1529
	sw  	a3, 20(sp) !1529
	addi	sp, sp, 24 !1529
	jal 	ra, o_form.2454 !1529
	addi	sp, sp, -24 !1529
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8238 !1530
	lw  	a0, 16(sp) !1531
	lw  	a1, 20(sp) !1531
	addi	tp, a1, 0 !1531
	lw  	t1, 0(tp) !1531
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1531
beq_else.8238: !1530
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8240 !1532
	lw  	a0, 8(sp) !1533
	lw  	a1, 12(sp) !1533
	addi	tp, a1, 0 !1533
	lw  	t1, 0(tp) !1533
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1533
beq_else.8240: !1532
	lw  	a0, 8(sp) !1535
	lw  	a1, 4(sp) !1535
	addi	tp, a1, 0 !1535
	lw  	t1, 0(tp) !1535
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1535
utexture.2721:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
	sw  	a1, 4(sp) !1543
	sw  	a2, 8(sp) !1543
	sw  	a0, 12(sp) !1543
	addi	sp, sp, 16 !1543
	jal 	ra, o_texturetype.2452 !1543
	addi	sp, sp, -16 !1543
	addi	a1, zero, 0 !1545
	lw  	a2, 12(sp) !1545
	sw  	a0, 16(sp) !1545
	sw  	a1, 20(sp) !1545
	addi	a0, a2, 0 !1545
	addi	sp, sp, 24 !1545
	jal 	ra, o_color_red.2480 !1545
	addi	sp, sp, -24 !1545
	lw  	a0, 20(sp) !1545
	lw  	a1, 8(sp) !1545
	slli	t0, a0, 2 !1545
	add 	t0, t0, a1 !1545
	sw  	fa0, 0(t0) !1545
	addi	a0, zero, 1 !1546
	lw  	a2, 12(sp) !1546
	sw  	a0, 24(sp) !1546
	addi	a0, a2, 0 !1546
	addi	sp, sp, 28 !1546
	jal 	ra, o_color_green.2482 !1546
	addi	sp, sp, -28 !1546
	lw  	a0, 24(sp) !1546
	lw  	a1, 8(sp) !1546
	slli	t0, a0, 2 !1546
	add 	t0, t0, a1 !1546
	sw  	fa0, 0(t0) !1546
	addi	a0, zero, 2 !1547
	lw  	a2, 12(sp) !1547
	sw  	a0, 28(sp) !1547
	addi	a0, a2, 0 !1547
	addi	sp, sp, 32 !1547
	jal 	ra, o_color_blue.2484 !1547
	addi	sp, sp, -32 !1547
	lw  	a0, 28(sp) !1547
	lw  	a1, 8(sp) !1547
	slli	t0, a0, 2 !1547
	add 	t0, t0, a1 !1547
	sw  	fa0, 0(t0) !1547
	lw  	a0, 16(sp) !1548
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8242 !1548
	addi	a0, zero, 0 !1551
	lw  	a2, 4(sp) !1551
	slli	t0, a0, 2 !1551
	add 	t0, t0, a2 !1551
	lw  	fa0, 0(t0) !1551
	lw  	a0, 12(sp) !1551
	sw  	fa0, 32(sp) !1551
	addi	sp, sp, 36 !1551
	jal 	ra, o_param_x.2470 !1551
	addi	sp, sp, -36 !1551
	lw  	fa1, 32(sp) !1551
	fsub	fa0, fa1, fa0 !1551
	li  	fa1, 0.050000 !1553
	fmul	fa1, fa0, fa1 !1553
	sw  	fa0, 36(sp) !1553
	fsgnj   fa0, fa1, fa1 !1553
	addi	sp, sp, 40 !1553
	jal 	ra, floor !1553
	addi	sp, sp, -40 !1553
	li  	fa1, 20.000000 !1553
	fmul	fa0, fa0, fa1 !1553
	lw  	fa1, 36(sp) !1554
	fsub	fa0, fa1, fa0 !1554
	li  	fa1, 10.000000 !1554
	addi	sp, sp, 40 !1554
	jal 	ra, fless !1554
	addi	sp, sp, -40 !1554
	addi	a1, zero, 2 !1556
	lw  	a2, 4(sp) !1556
	slli	t0, a1, 2 !1556
	add 	t0, t0, a2 !1556
	lw  	fa0, 0(t0) !1556
	lw  	a1, 12(sp) !1556
	sw  	a0, 40(sp) !1556
	sw  	fa0, 44(sp) !1556
	addi	a0, a1, 0 !1556
	addi	sp, sp, 48 !1556
	jal 	ra, o_param_z.2474 !1556
	addi	sp, sp, -48 !1556
	lw  	fa1, 44(sp) !1556
	fsub	fa0, fa1, fa0 !1556
	li  	fa1, 0.050000 !1558
	fmul	fa1, fa0, fa1 !1558
	sw  	fa0, 48(sp) !1558
	fsgnj   fa0, fa1, fa1 !1558
	addi	sp, sp, 52 !1558
	jal 	ra, floor !1558
	addi	sp, sp, -52 !1558
	li  	fa1, 20.000000 !1558
	fmul	fa0, fa0, fa1 !1558
	lw  	fa1, 48(sp) !1559
	fsub	fa0, fa1, fa0 !1559
	li  	fa1, 10.000000 !1559
	addi	sp, sp, 52 !1559
	jal 	ra, fless !1559
	addi	sp, sp, -52 !1559
	addi	a1, zero, 1 !1561
	lw  	a2, 40(sp) !1562
	bne 	a2, zero, beq_else.8244 !1562
	bne 	a0, zero, beq_else.8246 !1564
	li  	fa0, 255.000000 !1564
	jal 	zero, beq_cont.8247 !1564
beq_else.8246: !1564
	li  	fa0, 0.000000 !1564
beq_cont.8247: !1564
	jal 	zero, beq_cont.8245 !1562
beq_else.8244: !1562
	bne 	a0, zero, beq_else.8248 !1563
	li  	fa0, 0.000000 !1563
	jal 	zero, beq_cont.8249 !1563
beq_else.8248: !1563
	li  	fa0, 255.000000 !1563
beq_cont.8249: !1563
beq_cont.8245: !1562
	lw  	a0, 8(sp) !1561
	slli	t0, a1, 2 !1561
	add 	t0, t0, a0 !1561
	sw  	fa0, 0(t0) !1561
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8242: !1548
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8251 !1566
	addi	a0, zero, 1 !1569
	lw  	a2, 4(sp) !1569
	slli	t0, a0, 2 !1569
	add 	t0, t0, a2 !1569
	lw  	fa0, 0(t0) !1569
	li  	fa1, 0.250000 !1569
	fmul	fa0, fa0, fa1 !1569
	addi	sp, sp, 52 !1569
	jal 	ra, sin !1569
	addi	sp, sp, -52 !1569
	addi	sp, sp, 52 !1569
	jal 	ra, fsqr !1569
	addi	sp, sp, -52 !1569
	addi	a0, zero, 0 !1570
	li  	fa1, 255.000000 !1570
	fmul	fa1, fa1, fa0 !1570
	lw  	a1, 8(sp) !1570
	slli	t0, a0, 2 !1570
	add 	t0, t0, a1 !1570
	sw  	fa1, 0(t0) !1570
	addi	a0, zero, 1 !1571
	li  	fa1, 255.000000 !1571
	li  	fa2, 1.000000 !1571
	fsub	fa0, fa2, fa0 !1571
	fmul	fa0, fa1, fa0 !1571
	slli	t0, a0, 2 !1571
	add 	t0, t0, a1 !1571
	sw  	fa0, 0(t0) !1571
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8251: !1566
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.8254 !1573
	addi	a0, zero, 0 !1576
	lw  	a2, 4(sp) !1576
	slli	t0, a0, 2 !1576
	add 	t0, t0, a2 !1576
	lw  	fa0, 0(t0) !1576
	lw  	a0, 12(sp) !1576
	sw  	fa0, 52(sp) !1576
	addi	sp, sp, 56 !1576
	jal 	ra, o_param_x.2470 !1576
	addi	sp, sp, -56 !1576
	lw  	fa1, 52(sp) !1576
	fsub	fa0, fa1, fa0 !1576
	addi	a0, zero, 2 !1577
	lw  	a1, 4(sp) !1577
	slli	t0, a0, 2 !1577
	add 	t0, t0, a1 !1577
	lw  	fa1, 0(t0) !1577
	lw  	a0, 12(sp) !1577
	sw  	fa0, 56(sp) !1577
	sw  	fa1, 60(sp) !1577
	addi	sp, sp, 64 !1577
	jal 	ra, o_param_z.2474 !1577
	addi	sp, sp, -64 !1577
	lw  	fa1, 60(sp) !1577
	fsub	fa0, fa1, fa0 !1577
	lw  	fa1, 56(sp) !1578
	sw  	fa0, 64(sp) !1578
	fsgnj   fa0, fa1, fa1 !1578
	addi	sp, sp, 68 !1578
	jal 	ra, fsqr !1578
	addi	sp, sp, -68 !1578
	lw  	fa1, 64(sp) !1578
	sw  	fa0, 68(sp) !1578
	fsgnj   fa0, fa1, fa1 !1578
	addi	sp, sp, 72 !1578
	jal 	ra, fsqr !1578
	addi	sp, sp, -72 !1578
	lw  	fa1, 68(sp) !1578
	fadd	fa0, fa1, fa0 !1578
	addi	sp, sp, 72 !1578
	jal 	ra, sqrt !1578
	addi	sp, sp, -72 !1578
	li  	fa1, 10.000000 !1578
	fdiv	fa0, fa0, fa1 !1578
	sw  	fa0, 72(sp) !1579
	addi	sp, sp, 76 !1579
	jal 	ra, floor !1579
	addi	sp, sp, -76 !1579
	lw  	fa1, 72(sp) !1579
	fsub	fa0, fa1, fa0 !1579
	li  	fa1, 3.141593 !1579
	fmul	fa0, fa0, fa1 !1579
	addi	sp, sp, 76 !1580
	jal 	ra, cos !1580
	addi	sp, sp, -76 !1580
	addi	sp, sp, 76 !1580
	jal 	ra, fsqr !1580
	addi	sp, sp, -76 !1580
	addi	a0, zero, 1 !1581
	li  	fa1, 255.000000 !1581
	fmul	fa1, fa0, fa1 !1581
	lw  	a1, 8(sp) !1581
	slli	t0, a0, 2 !1581
	add 	t0, t0, a1 !1581
	sw  	fa1, 0(t0) !1581
	addi	a0, zero, 2 !1582
	li  	fa1, 1.000000 !1582
	fsub	fa0, fa1, fa0 !1582
	li  	fa1, 255.000000 !1582
	fmul	fa0, fa0, fa1 !1582
	slli	t0, a0, 2 !1582
	add 	t0, t0, a1 !1582
	sw  	fa0, 0(t0) !1582
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8254: !1573
	addi	t0, zero, 4
	bne 	a0, t0, beq_else.8257 !1584
	addi	a0, zero, 0 !1586
	lw  	a2, 4(sp) !1586
	slli	t0, a0, 2 !1586
	add 	t0, t0, a2 !1586
	lw  	fa0, 0(t0) !1586
	lw  	a0, 12(sp) !1586
	sw  	fa0, 76(sp) !1586
	addi	sp, sp, 80 !1586
	jal 	ra, o_param_x.2470 !1586
	addi	sp, sp, -80 !1586
	lw  	fa1, 76(sp) !1586
	fsub	fa0, fa1, fa0 !1586
	lw  	a0, 12(sp) !1586
	sw  	fa0, 80(sp) !1586
	addi	sp, sp, 84 !1586
	jal 	ra, o_param_a.2462 !1586
	addi	sp, sp, -84 !1586
	addi	sp, sp, 84 !1586
	jal 	ra, sqrt !1586
	addi	sp, sp, -84 !1586
	lw  	fa1, 80(sp) !1586
	fmul	fa0, fa1, fa0 !1586
	addi	a0, zero, 2 !1587
	lw  	a1, 4(sp) !1587
	slli	t0, a0, 2 !1587
	add 	t0, t0, a1 !1587
	lw  	fa1, 0(t0) !1587
	lw  	a0, 12(sp) !1587
	sw  	fa0, 84(sp) !1587
	sw  	fa1, 88(sp) !1587
	addi	sp, sp, 92 !1587
	jal 	ra, o_param_z.2474 !1587
	addi	sp, sp, -92 !1587
	lw  	fa1, 88(sp) !1587
	fsub	fa0, fa1, fa0 !1587
	lw  	a0, 12(sp) !1587
	sw  	fa0, 92(sp) !1587
	addi	sp, sp, 96 !1587
	jal 	ra, o_param_c.2466 !1587
	addi	sp, sp, -96 !1587
	addi	sp, sp, 96 !1587
	jal 	ra, sqrt !1587
	addi	sp, sp, -96 !1587
	lw  	fa1, 92(sp) !1587
	fmul	fa0, fa1, fa0 !1587
	lw  	fa1, 84(sp) !1588
	sw  	fa0, 96(sp) !1588
	fsgnj   fa0, fa1, fa1 !1588
	addi	sp, sp, 100 !1588
	jal 	ra, fsqr !1588
	addi	sp, sp, -100 !1588
	lw  	fa1, 96(sp) !1588
	sw  	fa0, 100(sp) !1588
	fsgnj   fa0, fa1, fa1 !1588
	addi	sp, sp, 104 !1588
	jal 	ra, fsqr !1588
	addi	sp, sp, -104 !1588
	lw  	fa1, 100(sp) !1588
	fadd	fa0, fa1, fa0 !1588
	lw  	fa1, 84(sp) !1590
	sw  	fa0, 104(sp) !1590
	fsgnj   fa0, fa1, fa1 !1590
	addi	sp, sp, 108 !1590
	jal 	ra, fabs !1590
	addi	sp, sp, -108 !1590
	li  	fa1, 0.000100 !1590
	addi	sp, sp, 108 !1590
	jal 	ra, fless !1590
	addi	sp, sp, -108 !1590
	bne 	a0, zero, beq_else.8259 !1590
	lw  	fa0, 84(sp) !1593
	lw  	fa1, 96(sp) !1593
	fdiv	fa0, fa1, fa0 !1593
	addi	sp, sp, 108 !1593
	jal 	ra, fabs !1593
	addi	sp, sp, -108 !1593
	addi	sp, sp, 108 !1595
	jal 	ra, atan !1595
	addi	sp, sp, -108 !1595
	li  	fa1, 30.000000 !1595
	fmul	fa0, fa0, fa1 !1595
	li  	fa1, 3.141593 !1595
	fdiv	fa0, fa0, fa1 !1595
	jal 	zero, beq_cont.8260 !1590
beq_else.8259: !1590
	li  	fa0, 15.000000 !1591
beq_cont.8260: !1590
	sw  	fa0, 108(sp) !1597
	addi	sp, sp, 112 !1597
	jal 	ra, floor !1597
	addi	sp, sp, -112 !1597
	lw  	fa1, 108(sp) !1597
	fsub	fa0, fa1, fa0 !1597
	addi	a0, zero, 1 !1599
	lw  	a1, 4(sp) !1599
	slli	t0, a0, 2 !1599
	add 	t0, t0, a1 !1599
	lw  	fa1, 0(t0) !1599
	lw  	a0, 12(sp) !1599
	sw  	fa0, 112(sp) !1599
	sw  	fa1, 116(sp) !1599
	addi	sp, sp, 120 !1599
	jal 	ra, o_param_y.2472 !1599
	addi	sp, sp, -120 !1599
	lw  	fa1, 116(sp) !1599
	fsub	fa0, fa1, fa0 !1599
	lw  	a0, 12(sp) !1599
	sw  	fa0, 120(sp) !1599
	addi	sp, sp, 124 !1599
	jal 	ra, o_param_b.2464 !1599
	addi	sp, sp, -124 !1599
	addi	sp, sp, 124 !1599
	jal 	ra, sqrt !1599
	addi	sp, sp, -124 !1599
	lw  	fa1, 120(sp) !1599
	fmul	fa0, fa1, fa0 !1599
	lw  	fa1, 104(sp) !1601
	sw  	fa0, 124(sp) !1601
	fsgnj   fa0, fa1, fa1 !1601
	addi	sp, sp, 128 !1601
	jal 	ra, fabs !1601
	addi	sp, sp, -128 !1601
	li  	fa1, 0.000100 !1601
	addi	sp, sp, 128 !1601
	jal 	ra, fless !1601
	addi	sp, sp, -128 !1601
	bne 	a0, zero, beq_else.8261 !1601
	lw  	fa0, 104(sp) !1604
	lw  	fa1, 124(sp) !1604
	fdiv	fa0, fa1, fa0 !1604
	addi	sp, sp, 128 !1604
	jal 	ra, fabs !1604
	addi	sp, sp, -128 !1604
	addi	sp, sp, 128 !1605
	jal 	ra, atan !1605
	addi	sp, sp, -128 !1605
	li  	fa1, 30.000000 !1605
	fmul	fa0, fa0, fa1 !1605
	li  	fa1, 3.141593 !1605
	fdiv	fa0, fa0, fa1 !1605
	jal 	zero, beq_cont.8262 !1601
beq_else.8261: !1601
	li  	fa0, 15.000000 !1602
beq_cont.8262: !1601
	sw  	fa0, 128(sp) !1607
	addi	sp, sp, 132 !1607
	jal 	ra, floor !1607
	addi	sp, sp, -132 !1607
	lw  	fa1, 128(sp) !1607
	fsub	fa0, fa1, fa0 !1607
	li  	fa1, 0.150000 !1608
	li  	fa2, 0.500000 !1608
	lw  	fa3, 112(sp) !1608
	fsub	fa2, fa2, fa3 !1608
	sw  	fa0, 132(sp) !1608
	sw  	fa1, 136(sp) !1608
	fsgnj   fa0, fa2, fa2 !1608
	addi	sp, sp, 140 !1608
	jal 	ra, fsqr !1608
	addi	sp, sp, -140 !1608
	lw  	fa1, 136(sp) !1608
	fsub	fa0, fa1, fa0 !1608
	li  	fa1, 0.500000 !1608
	lw  	fa2, 132(sp) !1608
	fsub	fa1, fa1, fa2 !1608
	sw  	fa0, 140(sp) !1608
	fsgnj   fa0, fa1, fa1 !1608
	addi	sp, sp, 144 !1608
	jal 	ra, fsqr !1608
	addi	sp, sp, -144 !1608
	lw  	fa1, 140(sp) !1608
	fsub	fa0, fa1, fa0 !1608
	sw  	fa0, 144(sp) !1609
	addi	sp, sp, 148 !1609
	jal 	ra, fisneg !1609
	addi	sp, sp, -148 !1609
	bne 	a0, zero, beq_else.8263 !1609
	lw  	fa0, 144(sp) !1609
	jal 	zero, beq_cont.8264 !1609
beq_else.8263: !1609
	li  	fa0, 0.000000 !1609
beq_cont.8264: !1609
	addi	a0, zero, 2 !1610
	li  	fa1, 255.000000 !1610
	fmul	fa0, fa1, fa0 !1610
	li  	fa1, 0.300000 !1610
	fdiv	fa0, fa0, fa1 !1610
	lw  	a1, 8(sp) !1610
	slli	t0, a0, 2 !1610
	add 	t0, t0, a1 !1610
	sw  	fa0, 0(t0) !1610
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8257: !1584
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
add_light.2724:
	sw  	ra, 0(sp)
	lw  	a0, 8(tp) !0
	lw  	a1, 4(tp) !0
	sw  	fa2, 4(sp) !1621
	sw  	fa1, 8(sp) !1621
	sw  	fa0, 12(sp) !1621
	sw  	a0, 16(sp) !1621
	sw  	a1, 20(sp) !1621
	addi	sp, sp, 24 !1621
	jal 	ra, fispos !1621
	addi	sp, sp, -24 !1621
	bne 	a0, zero, beq_else.8267 !1621
	jal 	zero, beq_cont.8268 !1621
beq_else.8267: !1621
	lw  	fa0, 12(sp) !1622
	lw  	a0, 20(sp) !1622
	lw  	a1, 16(sp) !1622
	addi	sp, sp, 24 !1622
	jal 	ra, vecaccum.2438 !1622
	addi	sp, sp, -24 !1622
beq_cont.8268: !1621
	lw  	fa0, 8(sp) !1626
	addi	sp, sp, 24 !1626
	jal 	ra, fispos !1626
	addi	sp, sp, -24 !1626
	bne 	a0, zero, beq_else.8269 !1626
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8269: !1626
	lw  	fa0, 8(sp) !1627
	addi	sp, sp, 24 !1627
	jal 	ra, fsqr !1627
	addi	sp, sp, -24 !1627
	addi	sp, sp, 24 !1627
	jal 	ra, fsqr !1627
	addi	sp, sp, -24 !1627
	lw  	fa1, 4(sp) !1627
	fmul	fa0, fa0, fa1 !1627
	addi	a0, zero, 0 !1628
	addi	a1, zero, 0 !1628
	lw  	a2, 20(sp) !1628
	slli	t0, a1, 2 !1628
	add 	t0, t0, a2 !1628
	lw  	fa1, 0(t0) !1628
	fadd	fa1, fa1, fa0 !1628
	slli	t0, a0, 2 !1628
	add 	t0, t0, a2 !1628
	sw  	fa1, 0(t0) !1628
	addi	a0, zero, 1 !1629
	addi	a1, zero, 1 !1629
	slli	t0, a1, 2 !1629
	add 	t0, t0, a2 !1629
	lw  	fa1, 0(t0) !1629
	fadd	fa1, fa1, fa0 !1629
	slli	t0, a0, 2 !1629
	add 	t0, t0, a2 !1629
	sw  	fa1, 0(t0) !1629
	addi	a0, zero, 2 !1630
	addi	a1, zero, 2 !1630
	slli	t0, a1, 2 !1630
	add 	t0, t0, a2 !1630
	lw  	fa1, 0(t0) !1630
	fadd	fa0, fa1, fa0 !1630
	slli	t0, a0, 2 !1630
	add 	t0, t0, a2 !1630
	sw  	fa0, 0(t0) !1630
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_reflections.2728:
	sw  	ra, 0(sp)
	lw  	a2, 32(tp) !0
	lw  	a3, 28(tp) !0
	lw  	a4, 24(tp) !0
	lw  	a5, 20(tp) !0
	lw  	a6, 16(tp) !0
	lw  	a7, 12(tp) !0
	lw  	s1, 8(tp) !0
	lw  	s2, 4(tp) !0
Loop.12: !1637
	blt  	a0, zero, bge_else.8273 !1637
	slli	t0, a0, 2 !1638
	add 	t0, t0, a3 !1638
	lw  	s3, 0(t0) !1638
	sw  	a3, 4(sp) !1639
	sw  	a0, 8(sp) !1639
	sw  	fa1, 12(sp) !1639
	sw  	s2, 16(sp) !1639
	sw  	a1, 20(sp) !1639
	sw  	fa0, 24(sp) !1639
	sw  	a5, 28(sp) !1639
	sw  	a2, 32(sp) !1639
	sw  	a4, 36(sp) !1639
	sw  	s3, 40(sp) !1639
	sw  	a7, 44(sp) !1639
	sw  	s1, 48(sp) !1639
	sw  	a6, 52(sp) !1639
	addi	a0, s3, 0 !1639
	addi	sp, sp, 56 !1639
	jal 	ra, r_dvec.2519 !1639
	addi	sp, sp, -56 !1639
	lw  	a1, 52(sp) !1642
	sw  	a0, 56(sp) !1642
	addi	tp, a1, 0 !1642
	addi	sp, sp, 60 !1642
	lw  	t1, 0(tp) !1642
	jalr	ra, t1, 0 !1642
	addi	sp, sp, -60 !1642
	bne 	a0, zero, beq_else.8275 !1642
	jal 	zero, beq_cont.8276 !1642
beq_else.8275: !1642
	lw  	a0, 48(sp) !1643
	lw  	a1, 0(a0) !1643
	slli	a1, a1, 2 !1643
	lw  	a2, 44(sp) !1643
	lw  	a3, 0(a2) !1643
	add 	a1, a1, a3 !1643
	lw  	a3, 40(sp) !1644
	sw  	a1, 60(sp) !1644
	addi	a0, a3, 0 !1644
	addi	sp, sp, 64 !1644
	jal 	ra, r_surface_id.2517 !1644
	addi	sp, sp, -64 !1644
	lw  	a1, 60(sp) !1644
	bne 	a1, a0, beq_else.8277 !1644
	addi	a0, zero, 0 !1646
	lw  	a1, 36(sp) !1646
	lw  	a2, 0(a1) !1646
	lw  	a3, 32(sp) !1646
	addi	a1, a2, 0 !1646
	addi	tp, a3, 0 !1646
	addi	sp, sp, 64 !1646
	lw  	t1, 0(tp) !1646
	jalr	ra, t1, 0 !1646
	addi	sp, sp, -64 !1646
	bne 	a0, zero, beq_else.8279 !1646
	lw  	a0, 56(sp) !1648
	addi	sp, sp, 64 !1648
	jal 	ra, d_vec.2513 !1648
	addi	sp, sp, -64 !1648
	lw  	a1, 28(sp) !1648
	addi	t0, a1, 0 !1648
	addi	a1, a0, 0 !1648
	addi	a0, t0, 0 !1648
	addi	sp, sp, 64 !1648
	jal 	ra, veciprod.2430 !1648
	addi	sp, sp, -64 !1648
	lw  	a0, 40(sp) !1649
	sw  	fa0, 64(sp) !1649
	addi	sp, sp, 68 !1649
	jal 	ra, r_bright.2521 !1649
	addi	sp, sp, -68 !1649
	lw  	fa1, 24(sp) !1650
	fmul	fa2, fa0, fa1 !1650
	lw  	fa3, 64(sp) !1650
	fmul	fa2, fa2, fa3 !1650
	lw  	a0, 56(sp) !1651
	sw  	fa2, 68(sp) !1651
	sw  	fa0, 72(sp) !1651
	addi	sp, sp, 76 !1651
	jal 	ra, d_vec.2513 !1651
	addi	sp, sp, -76 !1651
	lw  	a1, 20(sp) !1651
	addi	t0, a1, 0 !1651
	addi	a1, a0, 0 !1651
	addi	a0, t0, 0 !1651
	addi	sp, sp, 76 !1651
	jal 	ra, veciprod.2430 !1651
	addi	sp, sp, -76 !1651
	lw  	fa1, 72(sp) !1651
	fmul	fa0, fa1, fa0 !1651
	lw  	fa1, 68(sp) !1652
	lw  	fa2, 12(sp) !1652
	lw  	a0, 16(sp) !1652
	addi	tp, a0, 0 !1652
	fsgnj   t0, fa1, fa1 !1652
	fsgnj   fa1, fa0, fa0 !1652
	fsgnj   fa0, t0, t0 !1652
	addi	sp, sp, 76 !1652
	lw  	t1, 0(tp) !1652
	jalr	ra, t1, 0 !1652
	addi	sp, sp, -76 !1652
	jal 	zero, beq_cont.8280 !1646
beq_else.8279: !1646
beq_cont.8280: !1646
	jal 	zero, beq_cont.8278 !1644
beq_else.8277: !1644
beq_cont.8278: !1644
beq_cont.8276: !1642
	lw  	a0, 8(sp) !1656
	addi	a0, a0, -1 !1656
	lw  	fa0, 24(sp) !0
	lw  	fa1, 12(sp) !0
	lw  	a1, 20(sp) !0
	addi	a2, zero, 0 !1637
	lw  	a3, 16(sp) !0
	addi	s2, a3, 0 !0
	lw  	a3, 48(sp) !0
	addi	s1, a3, 0 !0
	lw  	a3, 44(sp) !0
	addi	a7, a3, 0 !0
	lw  	a3, 52(sp) !0
	addi	a6, a3, 0 !0
	lw  	a3, 28(sp) !0
	addi	a5, a3, 0 !0
	lw  	a3, 36(sp) !0
	addi	a4, a3, 0 !0
	lw  	a3, 4(sp) !0
	lw  	s3, 32(sp) !0
	addi	a2, s3, 0 !0
	jal 	zero, Loop.12 !0
bge_else.8273: !1637
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_ray.2733:
	sw  	ra, 0(sp)
	lw  	a3, 80(tp) !0
	lw  	a4, 76(tp) !0
	lw  	a5, 72(tp) !0
	lw  	a6, 68(tp) !0
	lw  	a7, 64(tp) !0
	lw  	s1, 60(tp) !0
	lw  	s2, 56(tp) !0
	lw  	s3, 52(tp) !0
	lw  	s4, 48(tp) !0
	lw  	s5, 44(tp) !0
	lw  	s6, 40(tp) !0
	lw  	s7, 36(tp) !0
	sw  	fa1, 4(sp) !0
	lw  	fa1, 32(tp) !0
	sw  	a5, 8(sp) !0
	lw  	a5, 28(tp) !0
	sw  	a4, 12(sp) !0
	lw  	a4, 24(tp) !0
	sw  	s7, 16(sp) !0
	lw  	s7, 20(tp) !0
	sw  	s2, 20(sp) !0
	lw  	s2, 16(tp) !0
	sw  	s1, 24(sp) !0
	lw  	s1, 12(tp) !0
	sw  	s4, 28(sp) !0
	lw  	s4, 8(tp) !0
	sw  	s6, 32(sp) !0
	lw  	s6, 4(tp) !0
	addi	t0, zero, 4
	blt 	t0, a0, bge_else.8282 !1663
	sw  	tp, 36(sp) !1664
	sw  	s6, 40(sp) !1664
	sw  	a6, 44(sp) !1664
	sw  	a2, 48(sp) !1664
	sw  	a4, 52(sp) !1664
	sw  	a3, 56(sp) !1664
	sw  	s7, 60(sp) !1664
	sw  	a7, 64(sp) !1664
	sw  	s1, 68(sp) !1664
	sw  	s5, 72(sp) !1664
	sw  	s2, 76(sp) !1664
	sw  	s3, 80(sp) !1664
	sw  	s4, 84(sp) !1664
	sw  	fa0, 88(sp) !1664
	sw  	fa1, 92(sp) !1664
	sw  	a0, 96(sp) !1664
	sw  	a1, 100(sp) !1664
	sw  	a5, 104(sp) !1664
	addi	a0, a2, 0 !1664
	addi	sp, sp, 108 !1664
	jal 	ra, p_surface_ids.2498 !1664
	addi	sp, sp, -108 !1664
	lw  	a1, 100(sp) !1665
	lw  	a2, 104(sp) !1665
	sw  	a0, 108(sp) !1665
	addi	a0, a1, 0 !1665
	addi	tp, a2, 0 !1665
	addi	sp, sp, 112 !1665
	lw  	t1, 0(tp) !1665
	jalr	ra, t1, 0 !1665
	addi	sp, sp, -112 !1665
	bne 	a0, zero, beq_else.8284 !1665
	addi	a0, zero, -1 !1728
	lw  	a1, 96(sp) !1728
	lw  	a2, 108(sp) !1728
	slli	t0, a1, 2 !1728
	add 	t0, t0, a2 !1728
	sw  	a0, 0(t0) !1728
	bne 	a1, zero, beq_else.8286 !1730
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8286: !1730
	lw  	a0, 100(sp) !1731
	lw  	a1, 92(sp) !1731
	addi	sp, sp, 112 !1731
	jal 	ra, veciprod.2430 !1731
	addi	sp, sp, -112 !1731
	addi	sp, sp, 112 !1731
	jal 	ra, fneg !1731
	addi	sp, sp, -112 !1731
	sw  	fa0, 112(sp) !1733
	addi	sp, sp, 116 !1733
	jal 	ra, fispos !1733
	addi	sp, sp, -116 !1733
	bne 	a0, zero, beq_else.8289 !1733
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8289: !1733
	lw  	fa0, 112(sp) !1736
	addi	sp, sp, 116 !1736
	jal 	ra, fsqr !1736
	addi	sp, sp, -116 !1736
	lw  	fa1, 112(sp) !1736
	fmul	fa0, fa0, fa1 !1736
	lw  	fa1, 88(sp) !1736
	fmul	fa0, fa0, fa1 !1736
	addi	a0, zero, 0 !1736
	lw  	a1, 84(sp) !1736
	slli	t0, a0, 2 !1736
	add 	t0, t0, a1 !1736
	lw  	fa1, 0(t0) !1736
	fmul	fa0, fa0, fa1 !1736
	addi	a0, zero, 0 !1737
	addi	a1, zero, 0 !1737
	lw  	a2, 80(sp) !1737
	slli	t0, a1, 2 !1737
	add 	t0, t0, a2 !1737
	lw  	fa1, 0(t0) !1737
	fadd	fa1, fa1, fa0 !1737
	slli	t0, a0, 2 !1737
	add 	t0, t0, a2 !1737
	sw  	fa1, 0(t0) !1737
	addi	a0, zero, 1 !1738
	addi	a1, zero, 1 !1738
	slli	t0, a1, 2 !1738
	add 	t0, t0, a2 !1738
	lw  	fa1, 0(t0) !1738
	fadd	fa1, fa1, fa0 !1738
	slli	t0, a0, 2 !1738
	add 	t0, t0, a2 !1738
	sw  	fa1, 0(t0) !1738
	addi	a0, zero, 2 !1739
	addi	a1, zero, 2 !1739
	slli	t0, a1, 2 !1739
	add 	t0, t0, a2 !1739
	lw  	fa1, 0(t0) !1739
	fadd	fa0, fa1, fa0 !1739
	slli	t0, a0, 2 !1739
	add 	t0, t0, a2 !1739
	sw  	fa0, 0(t0) !1739
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8284: !1665
	lw  	a0, 76(sp) !1667
	lw  	a0, 0(a0) !1667
	lw  	a1, 72(sp) !1668
	slli	t0, a0, 2 !1668
	add 	t0, t0, a1 !1668
	lw  	a1, 0(t0) !1668
	sw  	a0, 116(sp) !1669
	sw  	a1, 120(sp) !1669
	addi	a0, a1, 0 !1669
	addi	sp, sp, 124 !1669
	jal 	ra, o_reflectiontype.2456 !1669
	addi	sp, sp, -124 !1669
	lw  	a1, 120(sp) !1670
	sw  	a0, 124(sp) !1670
	addi	a0, a1, 0 !1670
	addi	sp, sp, 128 !1670
	jal 	ra, o_diffuse.2476 !1670
	addi	sp, sp, -128 !1670
	lw  	fa1, 88(sp) !1670
	fmul	fa0, fa0, fa1 !1670
	lw  	a0, 120(sp) !1672
	lw  	a1, 100(sp) !1672
	lw  	a2, 68(sp) !1672
	sw  	fa0, 128(sp) !1672
	addi	tp, a2, 0 !1672
	addi	sp, sp, 132 !1672
	lw  	t1, 0(tp) !1672
	jalr	ra, t1, 0 !1672
	addi	sp, sp, -132 !1672
	lw  	a0, 64(sp) !1673
	lw  	a1, 60(sp) !1673
	addi	sp, sp, 132 !1673
	jal 	ra, veccpy.2424 !1673
	addi	sp, sp, -132 !1673
	lw  	a0, 120(sp) !1674
	lw  	a1, 60(sp) !1674
	lw  	a2, 56(sp) !1674
	addi	tp, a2, 0 !1674
	addi	sp, sp, 132 !1674
	lw  	t1, 0(tp) !1674
	jalr	ra, t1, 0 !1674
	addi	sp, sp, -132 !1674
	lw  	a0, 116(sp) !1677
	slli	a0, a0, 2 !1677
	lw  	a1, 52(sp) !1677
	lw  	a1, 0(a1) !1677
	add 	a0, a0, a1 !1677
	lw  	a1, 96(sp) !1677
	lw  	a2, 108(sp) !1677
	slli	t0, a1, 2 !1677
	add 	t0, t0, a2 !1677
	sw  	a0, 0(t0) !1677
	lw  	a0, 48(sp) !1678
	addi	sp, sp, 132 !1678
	jal 	ra, p_intersection_points.2496 !1678
	addi	sp, sp, -132 !1678
	lw  	a1, 96(sp) !1679
	slli	t0, a1, 2 !1679
	add 	t0, t0, a0 !1679
	lw  	a0, 0(t0) !1679
	lw  	a2, 60(sp) !1679
	addi	a1, a2, 0 !1679
	addi	sp, sp, 132 !1679
	jal 	ra, veccpy.2424 !1679
	addi	sp, sp, -132 !1679
	lw  	a0, 48(sp) !1682
	addi	sp, sp, 132 !1682
	jal 	ra, p_calc_diffuse.2500 !1682
	addi	sp, sp, -132 !1682
	lw  	a1, 120(sp) !1683
	sw  	a0, 132(sp) !1683
	addi	a0, a1, 0 !1683
	addi	sp, sp, 136 !1683
	jal 	ra, o_diffuse.2476 !1683
	addi	sp, sp, -136 !1683
	li  	fa1, 0.500000 !1683
	addi	sp, sp, 136 !1683
	jal 	ra, fless !1683
	addi	sp, sp, -136 !1683
	bne 	a0, zero, beq_else.8293 !1683
	addi	a0, zero, 1 !1686
	lw  	a1, 96(sp) !1686
	lw  	a2, 132(sp) !1686
	slli	t0, a1, 2 !1686
	add 	t0, t0, a2 !1686
	sw  	a0, 0(t0) !1686
	lw  	a0, 48(sp) !1687
	addi	sp, sp, 136 !1687
	jal 	ra, p_energy.2502 !1687
	addi	sp, sp, -136 !1687
	lw  	a1, 96(sp) !1688
	slli	t0, a1, 2 !1688
	add 	t0, t0, a0 !1688
	lw  	a2, 0(t0) !1688
	lw  	a3, 44(sp) !1688
	sw  	a0, 136(sp) !1688
	addi	a1, a3, 0 !1688
	addi	a0, a2, 0 !1688
	addi	sp, sp, 140 !1688
	jal 	ra, veccpy.2424 !1688
	addi	sp, sp, -140 !1688
	lw  	a0, 96(sp) !1689
	lw  	a1, 136(sp) !1689
	slli	t0, a0, 2 !1689
	add 	t0, t0, a1 !1689
	lw  	a1, 0(t0) !1689
	li  	fa0, 0.003906 !1689
	lw  	fa1, 128(sp) !1689
	fmul	fa0, fa0, fa1 !1689
	addi	a0, a1, 0 !1689
	addi	sp, sp, 140 !1689
	jal 	ra, vecscale.2445 !1689
	addi	sp, sp, -140 !1689
	lw  	a0, 48(sp) !1690
	addi	sp, sp, 140 !1690
	jal 	ra, p_nvectors.2511 !1690
	addi	sp, sp, -140 !1690
	lw  	a1, 96(sp) !1691
	slli	t0, a1, 2 !1691
	add 	t0, t0, a0 !1691
	lw  	a0, 0(t0) !1691
	lw  	a2, 32(sp) !1691
	addi	a1, a2, 0 !1691
	addi	sp, sp, 140 !1691
	jal 	ra, veccpy.2424 !1691
	addi	sp, sp, -140 !1691
	jal 	zero, beq_cont.8294 !1683
beq_else.8293: !1683
	addi	a0, zero, 0 !1684
	lw  	a1, 96(sp) !1684
	lw  	a2, 132(sp) !1684
	slli	t0, a1, 2 !1684
	add 	t0, t0, a2 !1684
	sw  	a0, 0(t0) !1684
beq_cont.8294: !1683
	li  	fa0, -2.000000 !1694
	lw  	a0, 100(sp) !1694
	lw  	a1, 32(sp) !1694
	sw  	fa0, 140(sp) !1694
	addi	sp, sp, 144 !1694
	jal 	ra, veciprod.2430 !1694
	addi	sp, sp, -144 !1694
	lw  	fa1, 140(sp) !1694
	fmul	fa0, fa1, fa0 !1694
	lw  	a0, 100(sp) !1696
	lw  	a1, 32(sp) !1696
	addi	sp, sp, 144 !1696
	jal 	ra, vecaccum.2438 !1696
	addi	sp, sp, -144 !1696
	lw  	a0, 120(sp) !1698
	addi	sp, sp, 144 !1698
	jal 	ra, o_hilight.2478 !1698
	addi	sp, sp, -144 !1698
	lw  	fa1, 88(sp) !1698
	fmul	fa0, fa1, fa0 !1698
	addi	a0, zero, 0 !1701
	lw  	a1, 28(sp) !1701
	lw  	a1, 0(a1) !1701
	lw  	a2, 24(sp) !1701
	sw  	fa0, 144(sp) !1701
	addi	tp, a2, 0 !1701
	addi	sp, sp, 148 !1701
	lw  	t1, 0(tp) !1701
	jalr	ra, t1, 0 !1701
	addi	sp, sp, -148 !1701
	bne 	a0, zero, beq_else.8295 !1701
	lw  	a0, 32(sp) !1702
	lw  	a1, 92(sp) !1702
	addi	sp, sp, 148 !1702
	jal 	ra, veciprod.2430 !1702
	addi	sp, sp, -148 !1702
	addi	sp, sp, 148 !1702
	jal 	ra, fneg !1702
	addi	sp, sp, -148 !1702
	lw  	fa1, 128(sp) !1702
	fmul	fa0, fa0, fa1 !1702
	lw  	a0, 100(sp) !1703
	lw  	a1, 92(sp) !1703
	sw  	fa0, 148(sp) !1703
	addi	sp, sp, 152 !1703
	jal 	ra, veciprod.2430 !1703
	addi	sp, sp, -152 !1703
	addi	sp, sp, 152 !1703
	jal 	ra, fneg !1703
	addi	sp, sp, -152 !1703
	lw  	fa1, 148(sp) !1704
	lw  	fa2, 144(sp) !1704
	lw  	a0, 40(sp) !1704
	addi	tp, a0, 0 !1704
	fsgnj   t0, fa1, fa1 !1704
	fsgnj   fa1, fa0, fa0 !1704
	fsgnj   fa0, t0, t0 !1704
	addi	sp, sp, 152 !1704
	lw  	t1, 0(tp) !1704
	jalr	ra, t1, 0 !1704
	addi	sp, sp, -152 !1704
	jal 	zero, beq_cont.8296 !1701
beq_else.8295: !1701
beq_cont.8296: !1701
	lw  	a0, 60(sp) !1708
	lw  	a1, 20(sp) !1708
	addi	tp, a1, 0 !1708
	addi	sp, sp, 152 !1708
	lw  	t1, 0(tp) !1708
	jalr	ra, t1, 0 !1708
	addi	sp, sp, -152 !1708
	lw  	a0, 16(sp) !1709
	lw  	a0, 0(a0) !1709
	addi	a0, a0, -1 !1709
	lw  	fa0, 128(sp) !1709
	lw  	fa1, 144(sp) !1709
	lw  	a1, 100(sp) !1709
	lw  	a2, 12(sp) !1709
	addi	tp, a2, 0 !1709
	addi	sp, sp, 152 !1709
	lw  	t1, 0(tp) !1709
	jalr	ra, t1, 0 !1709
	addi	sp, sp, -152 !1709
	li  	fa0, 0.100000 !1712
	lw  	fa1, 88(sp) !1712
	addi	sp, sp, 152 !1712
	jal 	ra, fless !1712
	addi	sp, sp, -152 !1712
	bne 	a0, zero, beq_else.8297 !1712
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8297: !1712
	lw  	a0, 96(sp) !1714
	addi	t0, zero, 4
	blt 	a0, t0, bge_else.8300 !1714
	jal 	zero, bge_cont.8301 !1714
bge_else.8300: !1714
	addi	a1, a0, 1 !1715
	addi	a2, zero, -1 !1715
	lw  	a3, 108(sp) !1715
	slli	t0, a1, 2 !1715
	add 	t0, t0, a3 !1715
	sw  	a2, 0(t0) !1715
bge_cont.8301: !1714
	lw  	a1, 124(sp) !1718
	addi	t0, zero, 2
	bne 	a1, t0, beq_else.8302 !1718
	li  	fa0, 1.000000 !1719
	lw  	a1, 120(sp) !1719
	sw  	fa0, 152(sp) !1719
	addi	a0, a1, 0 !1719
	addi	sp, sp, 156 !1719
	jal 	ra, o_diffuse.2476 !1719
	addi	sp, sp, -156 !1719
	lw  	fa1, 152(sp) !1719
	fsub	fa0, fa1, fa0 !1719
	lw  	fa1, 88(sp) !1719
	fmul	fa0, fa1, fa0 !1719
	lw  	a0, 96(sp) !1720
	addi	a0, a0, 1 !1720
	addi	a1, zero, 0 !1720
	lw  	a2, 8(sp) !1720
	slli	t0, a1, 2 !1720
	add 	t0, t0, a2 !1720
	lw  	fa1, 0(t0) !1720
	lw  	fa2, 4(sp) !1720
	fadd	fa1, fa2, fa1 !1720
	lw  	a1, 100(sp) !1720
	lw  	a2, 48(sp) !1720
	lw  	a3, 36(sp) !1720
	addi	tp, a3, 0 !1720
	lw  	t1, 0(tp) !1720
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1720
beq_else.8302: !1718
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8282: !1663
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_ray.2739:
	sw  	ra, 0(sp)
	lw  	a1, 48(tp) !0
	lw  	a2, 44(tp) !0
	lw  	a3, 40(tp) !0
	lw  	a4, 36(tp) !0
	lw  	a5, 32(tp) !0
	lw  	a6, 28(tp) !0
	lw  	a7, 24(tp) !0
	lw  	s1, 20(tp) !0
	lw  	s2, 16(tp) !0
	lw  	s3, 12(tp) !0
	lw  	s4, 8(tp) !0
	lw  	s5, 4(tp) !0
	sw  	a2, 4(sp) !1755
	sw  	s5, 8(sp) !1755
	sw  	fa0, 12(sp) !1755
	sw  	a7, 16(sp) !1755
	sw  	a6, 20(sp) !1755
	sw  	a3, 24(sp) !1755
	sw  	a4, 28(sp) !1755
	sw  	s2, 32(sp) !1755
	sw  	a1, 36(sp) !1755
	sw  	s4, 40(sp) !1755
	sw  	a0, 44(sp) !1755
	sw  	a5, 48(sp) !1755
	sw  	s3, 52(sp) !1755
	addi	tp, s1, 0 !1755
	addi	sp, sp, 56 !1755
	lw  	t1, 0(tp) !1755
	jalr	ra, t1, 0 !1755
	addi	sp, sp, -56 !1755
	bne 	a0, zero, beq_else.8306 !1755
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8306: !1755
	lw  	a0, 52(sp) !1756
	lw  	a0, 0(a0) !1756
	lw  	a1, 48(sp) !1756
	slli	t0, a0, 2 !1756
	add 	t0, t0, a1 !1756
	lw  	a0, 0(t0) !1756
	lw  	a1, 44(sp) !1757
	sw  	a0, 56(sp) !1757
	addi	a0, a1, 0 !1757
	addi	sp, sp, 60 !1757
	jal 	ra, d_vec.2513 !1757
	addi	sp, sp, -60 !1757
	lw  	a1, 56(sp) !1757
	lw  	a2, 40(sp) !1757
	addi	tp, a2, 0 !1757
	addi	t0, a1, 0 !1757
	addi	a1, a0, 0 !1757
	addi	a0, t0, 0 !1757
	addi	sp, sp, 60 !1757
	lw  	t1, 0(tp) !1757
	jalr	ra, t1, 0 !1757
	addi	sp, sp, -60 !1757
	lw  	a0, 56(sp) !1758
	lw  	a1, 32(sp) !1758
	lw  	a2, 36(sp) !1758
	addi	tp, a2, 0 !1758
	addi	sp, sp, 60 !1758
	lw  	t1, 0(tp) !1758
	jalr	ra, t1, 0 !1758
	addi	sp, sp, -60 !1758
	addi	a0, zero, 0 !1761
	lw  	a1, 28(sp) !1761
	lw  	a1, 0(a1) !1761
	lw  	a2, 24(sp) !1761
	addi	tp, a2, 0 !1761
	addi	sp, sp, 60 !1761
	lw  	t1, 0(tp) !1761
	jalr	ra, t1, 0 !1761
	addi	sp, sp, -60 !1761
	bne 	a0, zero, beq_else.8309 !1761
	lw  	a0, 20(sp) !1762
	lw  	a1, 16(sp) !1762
	addi	sp, sp, 60 !1762
	jal 	ra, veciprod.2430 !1762
	addi	sp, sp, -60 !1762
	addi	sp, sp, 60 !1762
	jal 	ra, fneg !1762
	addi	sp, sp, -60 !1762
	sw  	fa0, 60(sp) !1763
	addi	sp, sp, 64 !1763
	jal 	ra, fispos !1763
	addi	sp, sp, -64 !1763
	bne 	a0, zero, beq_else.8311 !1763
	li  	fa0, 0.000000 !1763
	jal 	zero, beq_cont.8312 !1763
beq_else.8311: !1763
	lw  	fa0, 60(sp) !1763
beq_cont.8312: !1763
	lw  	fa1, 12(sp) !1764
	fmul	fa0, fa1, fa0 !1764
	lw  	a0, 56(sp) !1764
	sw  	fa0, 64(sp) !1764
	addi	sp, sp, 68 !1764
	jal 	ra, o_diffuse.2476 !1764
	addi	sp, sp, -68 !1764
	lw  	fa1, 64(sp) !1764
	fmul	fa0, fa1, fa0 !1764
	lw  	a0, 8(sp) !1764
	lw  	a1, 4(sp) !1764
	lw  	ra, 0(sp)
	jal 	zero, vecaccum.2438 !1764
beq_else.8309: !1761
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
iter_trace_diffuse_rays.2742:
	sw  	ra, 0(sp)
	lw  	a4, 4(tp) !0
Loop.13: !1771
	blt  	a3, zero, bge_else.8314 !1771
	slli	t0, a3, 2 !1772
	add 	t0, t0, a0 !1772
	lw  	a5, 0(t0) !1772
	sw  	a2, 4(sp) !1772
	sw  	a4, 8(sp) !1772
	sw  	a3, 12(sp) !1772
	sw  	a0, 16(sp) !1772
	sw  	a1, 20(sp) !1772
	addi	a0, a5, 0 !1772
	addi	sp, sp, 24 !1772
	jal 	ra, d_vec.2513 !1772
	addi	sp, sp, -24 !1772
	lw  	a1, 20(sp) !1772
	addi	sp, sp, 24 !1772
	jal 	ra, veciprod.2430 !1772
	addi	sp, sp, -24 !1772
	sw  	fa0, 24(sp) !1775
	addi	sp, sp, 28 !1775
	jal 	ra, fisneg !1775
	addi	sp, sp, -28 !1775
	bne 	a0, zero, beq_else.8316 !1775
	lw  	a0, 12(sp) !1778
	lw  	a1, 16(sp) !1778
	slli	t0, a0, 2 !1778
	add 	t0, t0, a1 !1778
	lw  	a2, 0(t0) !1778
	li  	fa0, 150.000000 !1778
	lw  	fa1, 24(sp) !1778
	fdiv	fa0, fa1, fa0 !1778
	lw  	a3, 8(sp) !1778
	addi	a0, a2, 0 !1778
	addi	tp, a3, 0 !1778
	addi	sp, sp, 28 !1778
	lw  	t1, 0(tp) !1778
	jalr	ra, t1, 0 !1778
	addi	sp, sp, -28 !1778
	jal 	zero, beq_cont.8317 !1775
beq_else.8316: !1775
	lw  	a0, 12(sp) !1776
	addi	a1, a0, 1 !1776
	lw  	a2, 16(sp) !1776
	slli	t0, a1, 2 !1776
	add 	t0, t0, a2 !1776
	lw  	a1, 0(t0) !1776
	li  	fa0, -150.000000 !1776
	lw  	fa1, 24(sp) !1776
	fdiv	fa0, fa1, fa0 !1776
	lw  	a3, 8(sp) !1776
	addi	a0, a1, 0 !1776
	addi	tp, a3, 0 !1776
	addi	sp, sp, 28 !1776
	lw  	t1, 0(tp) !1776
	jalr	ra, t1, 0 !1776
	addi	sp, sp, -28 !1776
beq_cont.8317: !1775
	lw  	a0, 12(sp) !1780
	addi	a0, a0, -2 !1780
	lw  	a1, 16(sp) !0
	lw  	a2, 20(sp) !0
	lw  	a3, 4(sp) !0
	addi	a4, zero, 0 !1771
	lw  	a5, 8(sp) !0
	addi	a4, a5, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, a2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, t0, 0 !0
	jal 	zero, Loop.13 !0
bge_else.8314: !1771
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
trace_diffuse_rays.2747:
	sw  	ra, 0(sp)
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	sw  	a2, 4(sp) !1786
	sw  	a1, 8(sp) !1786
	sw  	a0, 12(sp) !1786
	sw  	a4, 16(sp) !1786
	addi	a0, a2, 0 !1786
	addi	tp, a3, 0 !1786
	addi	sp, sp, 20 !1786
	lw  	t1, 0(tp) !1786
	jalr	ra, t1, 0 !1786
	addi	sp, sp, -20 !1786
	addi	a0, zero, 118 !1789
	lw  	a1, 12(sp) !1789
	lw  	a2, 8(sp) !1789
	lw  	a3, 4(sp) !1789
	lw  	a4, 16(sp) !1789
	addi	tp, a4, 0 !1789
	addi	t0, a3, 0 !1789
	addi	a3, a0, 0 !1789
	addi	a0, a1, 0 !1789
	addi	a1, a2, 0 !1789
	addi	a2, t0, 0 !1789
	lw  	t1, 0(tp) !1789
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1789
trace_diffuse_ray_80percent.2751:
	sw  	ra, 0(sp)
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	sw  	a2, 4(sp) !1795
	sw  	a1, 8(sp) !1795
	sw  	a3, 12(sp) !1795
	sw  	a4, 16(sp) !1795
	sw  	a0, 20(sp) !1795
	bne 	a0, zero, beq_else.8319 !1795
	jal 	zero, beq_cont.8320 !1795
beq_else.8319: !1795
	lw  	a5, 0(a4) !1796
	addi	a0, a5, 0 !1796
	addi	tp, a3, 0 !1796
	addi	sp, sp, 24 !1796
	lw  	t1, 0(tp) !1796
	jalr	ra, t1, 0 !1796
	addi	sp, sp, -24 !1796
beq_cont.8320: !1795
	lw  	a0, 20(sp) !1799
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8321 !1799
	jal 	zero, beq_cont.8322 !1799
beq_else.8321: !1799
	lw  	a1, 16(sp) !1800
	lw  	a2, 4(a1) !1800
	lw  	a3, 8(sp) !1800
	lw  	a4, 4(sp) !1800
	lw  	a5, 12(sp) !1800
	addi	a1, a3, 0 !1800
	addi	a0, a2, 0 !1800
	addi	tp, a5, 0 !1800
	addi	a2, a4, 0 !1800
	addi	sp, sp, 24 !1800
	lw  	t1, 0(tp) !1800
	jalr	ra, t1, 0 !1800
	addi	sp, sp, -24 !1800
beq_cont.8322: !1799
	lw  	a0, 20(sp) !1803
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8323 !1803
	jal 	zero, beq_cont.8324 !1803
beq_else.8323: !1803
	lw  	a1, 16(sp) !1804
	lw  	a2, 8(a1) !1804
	lw  	a3, 8(sp) !1804
	lw  	a4, 4(sp) !1804
	lw  	a5, 12(sp) !1804
	addi	a1, a3, 0 !1804
	addi	a0, a2, 0 !1804
	addi	tp, a5, 0 !1804
	addi	a2, a4, 0 !1804
	addi	sp, sp, 24 !1804
	lw  	t1, 0(tp) !1804
	jalr	ra, t1, 0 !1804
	addi	sp, sp, -24 !1804
beq_cont.8324: !1803
	lw  	a0, 20(sp) !1807
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.8325 !1807
	jal 	zero, beq_cont.8326 !1807
beq_else.8325: !1807
	lw  	a1, 16(sp) !1808
	lw  	a2, 12(a1) !1808
	lw  	a3, 8(sp) !1808
	lw  	a4, 4(sp) !1808
	lw  	a5, 12(sp) !1808
	addi	a1, a3, 0 !1808
	addi	a0, a2, 0 !1808
	addi	tp, a5, 0 !1808
	addi	a2, a4, 0 !1808
	addi	sp, sp, 24 !1808
	lw  	t1, 0(tp) !1808
	jalr	ra, t1, 0 !1808
	addi	sp, sp, -24 !1808
beq_cont.8326: !1807
	lw  	a0, 20(sp) !1811
	addi	t0, zero, 4
	bne 	a0, t0, beq_else.8327 !1811
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8327: !1811
	lw  	a0, 16(sp) !1812
	lw  	a0, 16(a0) !1812
	lw  	a1, 8(sp) !1812
	lw  	a2, 4(sp) !1812
	lw  	a3, 12(sp) !1812
	addi	tp, a3, 0 !1812
	lw  	t1, 0(tp) !1812
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1812
calc_diffuse_using_1point.2755:
	sw  	ra, 0(sp)
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	sw  	a3, 4(sp) !1820
	sw  	a2, 8(sp) !1820
	sw  	a4, 12(sp) !1820
	sw  	a1, 16(sp) !1820
	sw  	a0, 20(sp) !1820
	addi	sp, sp, 24 !1820
	jal 	ra, p_received_ray_20percent.2504 !1820
	addi	sp, sp, -24 !1820
	lw  	a1, 20(sp) !1821
	sw  	a0, 24(sp) !1821
	addi	a0, a1, 0 !1821
	addi	sp, sp, 28 !1821
	jal 	ra, p_nvectors.2511 !1821
	addi	sp, sp, -28 !1821
	lw  	a1, 20(sp) !1822
	sw  	a0, 28(sp) !1822
	addi	a0, a1, 0 !1822
	addi	sp, sp, 32 !1822
	jal 	ra, p_intersection_points.2496 !1822
	addi	sp, sp, -32 !1822
	lw  	a1, 20(sp) !1823
	sw  	a0, 32(sp) !1823
	addi	a0, a1, 0 !1823
	addi	sp, sp, 36 !1823
	jal 	ra, p_energy.2502 !1823
	addi	sp, sp, -36 !1823
	lw  	a1, 16(sp) !1825
	lw  	a2, 24(sp) !1825
	slli	t0, a1, 2 !1825
	add 	t0, t0, a2 !1825
	lw  	a2, 0(t0) !1825
	lw  	a3, 12(sp) !1825
	sw  	a0, 36(sp) !1825
	addi	a1, a2, 0 !1825
	addi	a0, a3, 0 !1825
	addi	sp, sp, 40 !1825
	jal 	ra, veccpy.2424 !1825
	addi	sp, sp, -40 !1825
	lw  	a0, 20(sp) !1827
	addi	sp, sp, 40 !1827
	jal 	ra, p_group_id.2506 !1827
	addi	sp, sp, -40 !1827
	lw  	a1, 16(sp) !1828
	lw  	a2, 28(sp) !1828
	slli	t0, a1, 2 !1828
	add 	t0, t0, a2 !1828
	lw  	a2, 0(t0) !1828
	lw  	a3, 32(sp) !1829
	slli	t0, a1, 2 !1829
	add 	t0, t0, a3 !1829
	lw  	a3, 0(t0) !1829
	lw  	a4, 8(sp) !1826
	addi	a1, a2, 0 !1826
	addi	tp, a4, 0 !1826
	addi	a2, a3, 0 !1826
	addi	sp, sp, 40 !1826
	lw  	t1, 0(tp) !1826
	jalr	ra, t1, 0 !1826
	addi	sp, sp, -40 !1826
	lw  	a0, 16(sp) !1830
	lw  	a1, 36(sp) !1830
	slli	t0, a0, 2 !1830
	add 	t0, t0, a1 !1830
	lw  	a0, 0(t0) !1830
	lw  	a1, 4(sp) !1830
	lw  	a2, 12(sp) !1830
	addi	t0, a1, 0 !1830
	addi	a1, a0, 0 !1830
	addi	a0, t0, 0 !1830
	lw  	ra, 0(sp)
	jal 	zero, vecaccumv.2448 !1830
calc_diffuse_using_5points.2758:
	sw  	ra, 0(sp)
	lw  	a5, 8(tp) !0
	lw  	a6, 4(tp) !0
	slli	t0, a0, 2 !1838
	add 	t0, t0, a1 !1838
	lw  	a1, 0(t0) !1838
	sw  	a5, 4(sp) !1838
	sw  	a6, 8(sp) !1838
	sw  	a4, 12(sp) !1838
	sw  	a3, 16(sp) !1838
	sw  	a2, 20(sp) !1838
	sw  	a0, 24(sp) !1838
	addi	a0, a1, 0 !1838
	addi	sp, sp, 28 !1838
	jal 	ra, p_received_ray_20percent.2504 !1838
	addi	sp, sp, -28 !1838
	lw  	a1, 24(sp) !1839
	addi	a2, a1, -1 !1839
	lw  	a3, 20(sp) !1839
	slli	t0, a2, 2 !1839
	add 	t0, t0, a3 !1839
	lw  	a2, 0(t0) !1839
	sw  	a0, 28(sp) !1839
	addi	a0, a2, 0 !1839
	addi	sp, sp, 32 !1839
	jal 	ra, p_received_ray_20percent.2504 !1839
	addi	sp, sp, -32 !1839
	lw  	a1, 24(sp) !1840
	lw  	a2, 20(sp) !1840
	slli	t0, a1, 2 !1840
	add 	t0, t0, a2 !1840
	lw  	a3, 0(t0) !1840
	sw  	a0, 32(sp) !1840
	addi	a0, a3, 0 !1840
	addi	sp, sp, 36 !1840
	jal 	ra, p_received_ray_20percent.2504 !1840
	addi	sp, sp, -36 !1840
	lw  	a1, 24(sp) !1841
	addi	a2, a1, 1 !1841
	lw  	a3, 20(sp) !1841
	slli	t0, a2, 2 !1841
	add 	t0, t0, a3 !1841
	lw  	a2, 0(t0) !1841
	sw  	a0, 36(sp) !1841
	addi	a0, a2, 0 !1841
	addi	sp, sp, 40 !1841
	jal 	ra, p_received_ray_20percent.2504 !1841
	addi	sp, sp, -40 !1841
	lw  	a1, 24(sp) !1842
	lw  	a2, 16(sp) !1842
	slli	t0, a1, 2 !1842
	add 	t0, t0, a2 !1842
	lw  	a2, 0(t0) !1842
	sw  	a0, 40(sp) !1842
	addi	a0, a2, 0 !1842
	addi	sp, sp, 44 !1842
	jal 	ra, p_received_ray_20percent.2504 !1842
	addi	sp, sp, -44 !1842
	lw  	a1, 12(sp) !1844
	lw  	a2, 28(sp) !1844
	slli	t0, a1, 2 !1844
	add 	t0, t0, a2 !1844
	lw  	a2, 0(t0) !1844
	lw  	a3, 8(sp) !1844
	sw  	a0, 44(sp) !1844
	addi	a1, a2, 0 !1844
	addi	a0, a3, 0 !1844
	addi	sp, sp, 48 !1844
	jal 	ra, veccpy.2424 !1844
	addi	sp, sp, -48 !1844
	lw  	a0, 12(sp) !1845
	lw  	a1, 32(sp) !1845
	slli	t0, a0, 2 !1845
	add 	t0, t0, a1 !1845
	lw  	a1, 0(t0) !1845
	lw  	a2, 8(sp) !1845
	addi	a0, a2, 0 !1845
	addi	sp, sp, 48 !1845
	jal 	ra, vecadd.2442 !1845
	addi	sp, sp, -48 !1845
	lw  	a0, 12(sp) !1846
	lw  	a1, 36(sp) !1846
	slli	t0, a0, 2 !1846
	add 	t0, t0, a1 !1846
	lw  	a1, 0(t0) !1846
	lw  	a2, 8(sp) !1846
	addi	a0, a2, 0 !1846
	addi	sp, sp, 48 !1846
	jal 	ra, vecadd.2442 !1846
	addi	sp, sp, -48 !1846
	lw  	a0, 12(sp) !1847
	lw  	a1, 40(sp) !1847
	slli	t0, a0, 2 !1847
	add 	t0, t0, a1 !1847
	lw  	a1, 0(t0) !1847
	lw  	a2, 8(sp) !1847
	addi	a0, a2, 0 !1847
	addi	sp, sp, 48 !1847
	jal 	ra, vecadd.2442 !1847
	addi	sp, sp, -48 !1847
	lw  	a0, 12(sp) !1848
	lw  	a1, 44(sp) !1848
	slli	t0, a0, 2 !1848
	add 	t0, t0, a1 !1848
	lw  	a1, 0(t0) !1848
	lw  	a2, 8(sp) !1848
	addi	a0, a2, 0 !1848
	addi	sp, sp, 48 !1848
	jal 	ra, vecadd.2442 !1848
	addi	sp, sp, -48 !1848
	lw  	a0, 24(sp) !1850
	lw  	a1, 20(sp) !1850
	slli	t0, a0, 2 !1850
	add 	t0, t0, a1 !1850
	lw  	a0, 0(t0) !1850
	addi	sp, sp, 48 !1850
	jal 	ra, p_energy.2502 !1850
	addi	sp, sp, -48 !1850
	lw  	a1, 12(sp) !1851
	slli	t0, a1, 2 !1851
	add 	t0, t0, a0 !1851
	lw  	a0, 0(t0) !1851
	lw  	a1, 4(sp) !1851
	lw  	a2, 8(sp) !1851
	addi	t0, a1, 0 !1851
	addi	a1, a0, 0 !1851
	addi	a0, t0, 0 !1851
	lw  	ra, 0(sp)
	jal 	zero, vecaccumv.2448 !1851
do_without_neighbors.2764:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
Loop.14: !1857
	addi	t0, zero, 4
	blt  	t0, a1, bge_else.8330 !1857
	sw  	a2, 4(sp) !1859
	sw  	a0, 8(sp) !1859
	sw  	a1, 12(sp) !1859
	addi	sp, sp, 16 !1859
	jal 	ra, p_surface_ids.2498 !1859
	addi	sp, sp, -16 !1859
	lw  	a1, 12(sp) !1860
	slli	t0, a1, 2 !1860
	add 	t0, t0, a0 !1860
	lw  	a0, 0(t0) !1860
	blt 	a0, zero, bge_else.8332 !1860
	lw  	a0, 8(sp) !1861
	addi	sp, sp, 16 !1861
	jal 	ra, p_calc_diffuse.2500 !1861
	addi	sp, sp, -16 !1861
	lw  	a1, 12(sp) !1862
	slli	t0, a1, 2 !1862
	add 	t0, t0, a0 !1862
	lw  	a0, 0(t0) !1862
	bne 	a0, zero, beq_else.8334 !1862
	jal 	zero, beq_cont.8335 !1862
beq_else.8334: !1862
	lw  	a0, 8(sp) !1863
	lw  	a2, 4(sp) !1863
	addi	tp, a2, 0 !1863
	addi	sp, sp, 16 !1863
	lw  	t1, 0(tp) !1863
	jalr	ra, t1, 0 !1863
	addi	sp, sp, -16 !1863
beq_cont.8335: !1862
	lw  	a0, 12(sp) !1865
	addi	a0, a0, 1 !1865
	lw  	a1, 8(sp) !0
	addi	a2, zero, 4 !1857
	lw  	a3, 4(sp) !0
	addi	a2, a3, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.14 !0
bge_else.8332: !1860
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8330: !1857
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
neighbors_exist.2767:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
	lw  	a3, 4(a2) !1872
	addi	a4, a1, 1 !1872
	blt 	a4, a3, bge_else.8338 !1872
	addi	a0, zero, 0 !1880
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8338: !1872
	blt 	zero, a1, bge_else.8340 !1873
	addi	a0, zero, 0 !1879
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8340: !1873
	lw  	a1, 0(a2) !1874
	addi	a2, a0, 1 !1874
	blt 	a2, a1, bge_else.8342 !1874
	addi	a0, zero, 0 !1878
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8342: !1874
	blt 	zero, a0, bge_else.8344 !1875
	addi	a0, zero, 0 !1877
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8344: !1875
	addi	a0, zero, 1 !1876
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
get_surface_id.2771:
	sw  	ra, 0(sp)
	sw  	a1, 4(sp) !1884
	addi	sp, sp, 8 !1884
	jal 	ra, p_surface_ids.2498 !1884
	addi	sp, sp, -8 !1884
	lw  	a1, 4(sp) !1885
	slli	t0, a1, 2 !1885
	add 	t0, t0, a0 !1885
	lw  	a0, 0(t0) !1885
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
neighbors_are_available.2774:
	sw  	ra, 0(sp)
	slli	t0, a0, 2 !1890
	add 	t0, t0, a2 !1890
	lw  	a5, 0(t0) !1890
	sw  	a2, 4(sp) !1890
	sw  	a3, 8(sp) !1890
	sw  	a4, 12(sp) !1890
	sw  	a0, 16(sp) !1890
	sw  	a1, 20(sp) !1890
	addi	a1, a4, 0 !1890
	addi	a0, a5, 0 !1890
	addi	sp, sp, 24 !1890
	jal 	ra, get_surface_id.2771 !1890
	addi	sp, sp, -24 !1890
	lw  	a1, 16(sp) !1892
	lw  	a2, 20(sp) !1892
	slli	t0, a1, 2 !1892
	add 	t0, t0, a2 !1892
	lw  	a2, 0(t0) !1892
	lw  	a3, 12(sp) !1892
	sw  	a0, 24(sp) !1892
	addi	a1, a3, 0 !1892
	addi	a0, a2, 0 !1892
	addi	sp, sp, 28 !1892
	jal 	ra, get_surface_id.2771 !1892
	addi	sp, sp, -28 !1892
	lw  	a1, 24(sp) !1892
	bne 	a0, a1, beq_else.8346 !1892
	lw  	a0, 16(sp) !1893
	lw  	a2, 8(sp) !1893
	slli	t0, a0, 2 !1893
	add 	t0, t0, a2 !1893
	lw  	a2, 0(t0) !1893
	lw  	a3, 12(sp) !1893
	addi	a1, a3, 0 !1893
	addi	a0, a2, 0 !1893
	addi	sp, sp, 28 !1893
	jal 	ra, get_surface_id.2771 !1893
	addi	sp, sp, -28 !1893
	lw  	a1, 24(sp) !1893
	bne 	a0, a1, beq_else.8348 !1893
	lw  	a0, 16(sp) !1894
	addi	a2, a0, -1 !1894
	lw  	a3, 4(sp) !1894
	slli	t0, a2, 2 !1894
	add 	t0, t0, a3 !1894
	lw  	a2, 0(t0) !1894
	lw  	a4, 12(sp) !1894
	addi	a1, a4, 0 !1894
	addi	a0, a2, 0 !1894
	addi	sp, sp, 28 !1894
	jal 	ra, get_surface_id.2771 !1894
	addi	sp, sp, -28 !1894
	lw  	a1, 24(sp) !1894
	bne 	a0, a1, beq_else.8350 !1894
	lw  	a0, 16(sp) !1895
	addi	a0, a0, 1 !1895
	lw  	a2, 4(sp) !1895
	slli	t0, a0, 2 !1895
	add 	t0, t0, a2 !1895
	lw  	a0, 0(t0) !1895
	lw  	a2, 12(sp) !1895
	addi	a1, a2, 0 !1895
	addi	sp, sp, 28 !1895
	jal 	ra, get_surface_id.2771 !1895
	addi	sp, sp, -28 !1895
	lw  	a1, 24(sp) !1895
	bne 	a0, a1, beq_else.8352 !1895
	addi	a0, zero, 1 !1896
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8352: !1895
	addi	a0, zero, 0 !1897
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8350: !1894
	addi	a0, zero, 0 !1898
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8348: !1893
	addi	a0, zero, 0 !1899
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8346: !1892
	addi	a0, zero, 0 !1900
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
try_exploit_neighbors.2780:
	sw  	ra, 0(sp)
	lw  	a6, 8(tp) !0
	lw  	a7, 4(tp) !0
	slli	t0, a0, 2 !1906
	add 	t0, t0, a3 !1906
	lw  	s1, 0(t0) !1906
Loop.15: !1907
	addi	t0, zero, 4
	blt  	t0, a5, bge_else.8354 !1907
	sw  	a1, 4(sp) !1910
	sw  	a7, 8(sp) !1910
	sw  	s1, 12(sp) !1910
	sw  	a6, 16(sp) !1910
	sw  	a5, 20(sp) !1910
	sw  	a4, 24(sp) !1910
	sw  	a3, 28(sp) !1910
	sw  	a2, 32(sp) !1910
	sw  	a0, 36(sp) !1910
	addi	a1, a5, 0 !1910
	addi	a0, s1, 0 !1910
	addi	sp, sp, 40 !1910
	jal 	ra, get_surface_id.2771 !1910
	addi	sp, sp, -40 !1910
	blt 	a0, zero, bge_else.8356 !1910
	lw  	a0, 36(sp) !1912
	lw  	a1, 32(sp) !1912
	lw  	a2, 28(sp) !1912
	lw  	a3, 24(sp) !1912
	lw  	a4, 20(sp) !1912
	addi	sp, sp, 40 !1912
	jal 	ra, neighbors_are_available.2774 !1912
	addi	sp, sp, -40 !1912
	bne 	a0, zero, beq_else.8358 !1912
	lw  	a0, 36(sp) !1924
	lw  	a1, 28(sp) !1924
	slli	t0, a0, 2 !1924
	add 	t0, t0, a1 !1924
	lw  	a0, 0(t0) !1924
	lw  	a1, 20(sp) !1924
	lw  	a2, 16(sp) !1924
	addi	tp, a2, 0 !1924
	lw  	t1, 0(tp) !1924
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !1924
beq_else.8358: !1912
	lw  	a0, 12(sp) !1915
	addi	sp, sp, 40 !1915
	jal 	ra, p_calc_diffuse.2500 !1915
	addi	sp, sp, -40 !1915
	lw  	a1, 20(sp) !1916
	slli	t0, a1, 2 !1916
	add 	t0, t0, a0 !1916
	lw  	a0, 0(t0) !1916
	bne 	a0, zero, beq_else.8360 !1916
	jal 	zero, beq_cont.8361 !1916
beq_else.8360: !1916
	lw  	a0, 36(sp) !1917
	lw  	a2, 32(sp) !1917
	lw  	a3, 28(sp) !1917
	lw  	a4, 24(sp) !1917
	lw  	a5, 8(sp) !1917
	addi	tp, a5, 0 !1917
	addi	t0, a4, 0 !1917
	addi	a4, a1, 0 !1917
	addi	a1, a2, 0 !1917
	addi	a2, a3, 0 !1917
	addi	a3, t0, 0 !1917
	addi	sp, sp, 40 !1917
	lw  	t1, 0(tp) !1917
	jalr	ra, t1, 0 !1917
	addi	sp, sp, -40 !1917
beq_cont.8361: !1916
	lw  	a0, 20(sp) !1921
	addi	a0, a0, 1 !1921
	lw  	a1, 36(sp) !0
	lw  	a2, 4(sp) !0
	lw  	a3, 32(sp) !0
	lw  	a4, 28(sp) !0
	addi	a5, a4, 0 !0
	lw  	a6, 24(sp) !0
	slli	t0, a1, 2 !1906
	add 	t0, t0, a4 !1906
	lw  	s1, 0(t0) !1906
	addi	a4, zero, 4 !1907
	lw  	a7, 8(sp) !0
	lw  	s2, 16(sp) !0
	addi	a4, a6, 0 !0
	addi	a6, s2, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, a2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, a5, 0 !0
	addi	a5, t0, 0 !0
	jal 	zero, Loop.15 !0
bge_else.8356: !1910
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8354: !1907
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
write_ppm_header.2787:
	sw  	ra, 0(sp)
	lw  	a1, 4(tp) !0
	addi	a2, zero, 80 !1932
	sw  	a1, 4(sp) !1932
	sw  	a0, 8(sp) !1932
	addi	a0, a2, 0 !1932
	addi	sp, sp, 12 !1932
	jal 	ra, print_char !1932
	addi	sp, sp, -12 !1932
	addi	a0, zero, 48 !1933
	lw  	a1, 8(sp) !1933
	add 	a0, a0, a1 !1933
	addi	sp, sp, 12 !1933
	jal 	ra, print_char !1933
	addi	sp, sp, -12 !1933
	addi	a0, zero, 10 !1934
	addi	sp, sp, 12 !1934
	jal 	ra, print_char !1934
	addi	sp, sp, -12 !1934
	lw  	a0, 4(sp) !1935
	lw  	a1, 0(a0) !1935
	addi	a0, a1, 0 !1935
	addi	sp, sp, 12 !1935
	jal 	ra, print_int !1935
	addi	sp, sp, -12 !1935
	addi	a0, zero, 32 !1936
	addi	sp, sp, 12 !1936
	jal 	ra, print_char !1936
	addi	sp, sp, -12 !1936
	lw  	a0, 4(sp) !1937
	lw  	a0, 4(a0) !1937
	addi	sp, sp, 12 !1937
	jal 	ra, print_int !1937
	addi	sp, sp, -12 !1937
	addi	a0, zero, 32 !1938
	addi	sp, sp, 12 !1938
	jal 	ra, print_char !1938
	addi	sp, sp, -12 !1938
	addi	a0, zero, 255 !1939
	addi	sp, sp, 12 !1939
	jal 	ra, print_int !1939
	addi	sp, sp, -12 !1939
	addi	a0, zero, 10 !1940
	lw  	ra, 0(sp)
	jal 	zero, print_char !1940
write_rgb_element_int.2789:
	sw  	ra, 0(sp)
	addi	sp, sp, 4 !1945
	jal 	ra, int_of_float !1945
	addi	sp, sp, -4 !1945
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.8364 !1946
	blt 	a0, zero, bge_else.8366 !1946
	jal 	zero, bge_cont.8367 !1946
bge_else.8366: !1946
	addi	a0, zero, 0 !1946
bge_cont.8367: !1946
	jal 	zero, bge_cont.8365 !1946
bge_else.8364: !1946
	addi	a0, zero, 255 !1946
bge_cont.8365: !1946
	lw  	ra, 0(sp)
	jal 	zero, print_int !1947
write_rgb_element_char.2791:
	sw  	ra, 0(sp)
	addi	sp, sp, 4 !1951
	jal 	ra, int_of_float !1951
	addi	sp, sp, -4 !1951
	addi	t0, zero, 255
	blt 	t0, a0, bge_else.8368 !1952
	blt 	a0, zero, bge_else.8370 !1952
	jal 	zero, bge_cont.8371 !1952
bge_else.8370: !1952
	addi	a0, zero, 0 !1952
bge_cont.8371: !1952
	jal 	zero, bge_cont.8369 !1952
bge_else.8368: !1952
	addi	a0, zero, 255 !1952
bge_cont.8369: !1952
	lw  	ra, 0(sp)
	jal 	zero, print_char !1953
write_rgb.2793:
	sw  	ra, 0(sp)
	lw  	a1, 4(tp) !0
	addi	t0, zero, 3
	bne 	a0, t0, beq_else.8372 !1957
	addi	a0, zero, 0 !1958
	slli	t0, a0, 2 !1958
	add 	t0, t0, a1 !1958
	lw  	fa0, 0(t0) !1958
	sw  	a1, 4(sp) !1958
	addi	sp, sp, 8 !1958
	jal 	ra, write_rgb_element_int.2789 !1958
	addi	sp, sp, -8 !1958
	addi	a0, zero, 32 !1959
	addi	sp, sp, 8 !1959
	jal 	ra, print_char !1959
	addi	sp, sp, -8 !1959
	addi	a0, zero, 1 !1960
	lw  	a1, 4(sp) !1960
	slli	t0, a0, 2 !1960
	add 	t0, t0, a1 !1960
	lw  	fa0, 0(t0) !1960
	addi	sp, sp, 8 !1960
	jal 	ra, write_rgb_element_int.2789 !1960
	addi	sp, sp, -8 !1960
	addi	a0, zero, 32 !1961
	addi	sp, sp, 8 !1961
	jal 	ra, print_char !1961
	addi	sp, sp, -8 !1961
	addi	a0, zero, 2 !1962
	lw  	a1, 4(sp) !1962
	slli	t0, a0, 2 !1962
	add 	t0, t0, a1 !1962
	lw  	fa0, 0(t0) !1962
	addi	sp, sp, 8 !1962
	jal 	ra, write_rgb_element_int.2789 !1962
	addi	sp, sp, -8 !1962
	addi	a0, zero, 10 !1963
	lw  	ra, 0(sp)
	jal 	zero, print_char !1963
beq_else.8372: !1957
	addi	a0, zero, 0 !1965
	slli	t0, a0, 2 !1965
	add 	t0, t0, a1 !1965
	lw  	fa0, 0(t0) !1965
	sw  	a1, 4(sp) !1965
	addi	sp, sp, 8 !1965
	jal 	ra, write_rgb_element_char.2791 !1965
	addi	sp, sp, -8 !1965
	addi	a0, zero, 1 !1966
	lw  	a1, 4(sp) !1966
	slli	t0, a0, 2 !1966
	add 	t0, t0, a1 !1966
	lw  	fa0, 0(t0) !1966
	addi	sp, sp, 8 !1966
	jal 	ra, write_rgb_element_char.2791 !1966
	addi	sp, sp, -8 !1966
	addi	a0, zero, 2 !1967
	lw  	a1, 4(sp) !1967
	slli	t0, a0, 2 !1967
	add 	t0, t0, a1 !1967
	lw  	fa0, 0(t0) !1967
	lw  	ra, 0(sp)
	jal 	zero, write_rgb_element_char.2791 !1967
pretrace_diffuse_rays.2795:
	sw  	ra, 0(sp)
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
Loop.16: !1977
	addi	t0, zero, 4
	blt  	t0, a1, bge_else.8374 !1977
	sw  	a2, 4(sp) !1980
	sw  	a3, 8(sp) !1980
	sw  	a4, 12(sp) !1980
	sw  	a1, 16(sp) !1980
	sw  	a0, 20(sp) !1980
	addi	sp, sp, 24 !1980
	jal 	ra, get_surface_id.2771 !1980
	addi	sp, sp, -24 !1980
	blt 	a0, zero, bge_else.8376 !1981
	lw  	a0, 20(sp) !1983
	addi	sp, sp, 24 !1983
	jal 	ra, p_calc_diffuse.2500 !1983
	addi	sp, sp, -24 !1983
	lw  	a1, 16(sp) !1984
	slli	t0, a1, 2 !1984
	add 	t0, t0, a0 !1984
	lw  	a0, 0(t0) !1984
	bne 	a0, zero, beq_else.8378 !1984
	jal 	zero, beq_cont.8379 !1984
beq_else.8378: !1984
	lw  	a0, 20(sp) !1985
	addi	sp, sp, 24 !1985
	jal 	ra, p_group_id.2506 !1985
	addi	sp, sp, -24 !1985
	lw  	a1, 12(sp) !1986
	sw  	a0, 24(sp) !1986
	addi	a0, a1, 0 !1986
	addi	sp, sp, 28 !1986
	jal 	ra, vecbzero.2422 !1986
	addi	sp, sp, -28 !1986
	lw  	a0, 20(sp) !1989
	addi	sp, sp, 28 !1989
	jal 	ra, p_nvectors.2511 !1989
	addi	sp, sp, -28 !1989
	lw  	a1, 20(sp) !1990
	sw  	a0, 28(sp) !1990
	addi	a0, a1, 0 !1990
	addi	sp, sp, 32 !1990
	jal 	ra, p_intersection_points.2496 !1990
	addi	sp, sp, -32 !1990
	lw  	a1, 24(sp) !1992
	lw  	a2, 8(sp) !1992
	slli	t0, a1, 2 !1992
	add 	t0, t0, a2 !1992
	lw  	a1, 0(t0) !1992
	lw  	a3, 16(sp) !1993
	lw  	a4, 28(sp) !1993
	slli	t0, a3, 2 !1993
	add 	t0, t0, a4 !1993
	lw  	a4, 0(t0) !1993
	slli	t0, a3, 2 !1994
	add 	t0, t0, a0 !1994
	lw  	a0, 0(t0) !1994
	lw  	a5, 4(sp) !1991
	addi	a2, a0, 0 !1991
	addi	tp, a5, 0 !1991
	addi	a0, a1, 0 !1991
	addi	a1, a4, 0 !1991
	addi	sp, sp, 32 !1991
	lw  	t1, 0(tp) !1991
	jalr	ra, t1, 0 !1991
	addi	sp, sp, -32 !1991
	lw  	a0, 20(sp) !1995
	addi	sp, sp, 32 !1995
	jal 	ra, p_received_ray_20percent.2504 !1995
	addi	sp, sp, -32 !1995
	lw  	a1, 16(sp) !1996
	slli	t0, a1, 2 !1996
	add 	t0, t0, a0 !1996
	lw  	a0, 0(t0) !1996
	lw  	a2, 12(sp) !1996
	addi	a1, a2, 0 !1996
	addi	sp, sp, 32 !1996
	jal 	ra, veccpy.2424 !1996
	addi	sp, sp, -32 !1996
beq_cont.8379: !1984
	lw  	a0, 16(sp) !1998
	addi	a0, a0, 1 !1998
	lw  	a1, 20(sp) !0
	addi	a2, zero, 4 !1977
	lw  	a3, 12(sp) !0
	addi	a4, a3, 0 !0
	lw  	a3, 8(sp) !0
	lw  	a5, 4(sp) !0
	addi	a2, a5, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.16 !0
bge_else.8376: !1981
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8374: !1977
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_pixels.2798:
	sw  	ra, 0(sp)
	lw  	a3, 36(tp) !0
	lw  	a4, 32(tp) !0
	lw  	a5, 28(tp) !0
	lw  	a6, 24(tp) !0
	lw  	a7, 20(tp) !0
	lw  	s1, 16(tp) !0
	lw  	s2, 12(tp) !0
	lw  	s3, 8(tp) !0
	lw  	s4, 4(tp) !0
Loop.17: !2006
	blt  	a1, zero, bge_else.8382 !2006
	addi	s5, zero, 0 !2008
	slli	t0, s5, 2 !2008
	add 	t0, t0, a7 !2008
	lw  	fa3, 0(t0) !2008
	lw  	s5, 0(s4) !2008
	sub 	s5, a1, s5 !2008
	sw  	a7, 4(sp) !2008
	sw  	s4, 8(sp) !2008
	sw  	s3, 12(sp) !2008
	sw  	a2, 16(sp) !2008
	sw  	a4, 20(sp) !2008
	sw  	a1, 24(sp) !2008
	sw  	a0, 28(sp) !2008
	sw  	a3, 32(sp) !2008
	sw  	a5, 36(sp) !2008
	sw  	s1, 40(sp) !2008
	sw  	fa2, 44(sp) !2008
	sw  	fa1, 48(sp) !2008
	sw  	s2, 52(sp) !2008
	sw  	fa0, 56(sp) !2008
	sw  	a6, 60(sp) !2008
	sw  	fa3, 64(sp) !2008
	addi	a0, s5, 0 !2008
	addi	sp, sp, 68 !2008
	jal 	ra, float_of_int !2008
	addi	sp, sp, -68 !2008
	lw  	fa1, 64(sp) !2008
	fmul	fa0, fa1, fa0 !2008
	addi	a0, zero, 0 !2009
	addi	a1, zero, 0 !2009
	lw  	a2, 60(sp) !2009
	slli	t0, a1, 2 !2009
	add 	t0, t0, a2 !2009
	lw  	fa1, 0(t0) !2009
	fmul	fa1, fa0, fa1 !2009
	lw  	fa2, 56(sp) !2009
	fadd	fa1, fa1, fa2 !2009
	lw  	a1, 52(sp) !2009
	slli	t0, a0, 2 !2009
	add 	t0, t0, a1 !2009
	sw  	fa1, 0(t0) !2009
	addi	a0, zero, 1 !2010
	addi	a3, zero, 1 !2010
	slli	t0, a3, 2 !2010
	add 	t0, t0, a2 !2010
	lw  	fa1, 0(t0) !2010
	fmul	fa1, fa0, fa1 !2010
	lw  	fa3, 48(sp) !2010
	fadd	fa1, fa1, fa3 !2010
	slli	t0, a0, 2 !2010
	add 	t0, t0, a1 !2010
	sw  	fa1, 0(t0) !2010
	addi	a0, zero, 2 !2011
	addi	a3, zero, 2 !2011
	slli	t0, a3, 2 !2011
	add 	t0, t0, a2 !2011
	lw  	fa1, 0(t0) !2011
	fmul	fa0, fa0, fa1 !2011
	lw  	fa1, 44(sp) !2011
	fadd	fa0, fa0, fa1 !2011
	slli	t0, a0, 2 !2011
	add 	t0, t0, a1 !2011
	sw  	fa0, 0(t0) !2011
	addi	a0, zero, 0 !2012
	addi	t0, a1, 0 !2012
	addi	a1, a0, 0 !2012
	addi	a0, t0, 0 !2012
	addi	sp, sp, 68 !2012
	jal 	ra, vecunit_sgn.2427 !2012
	addi	sp, sp, -68 !2012
	lw  	a0, 40(sp) !2013
	addi	sp, sp, 68 !2013
	jal 	ra, vecbzero.2422 !2013
	addi	sp, sp, -68 !2013
	lw  	a0, 36(sp) !2014
	lw  	a1, 32(sp) !2014
	addi	sp, sp, 68 !2014
	jal 	ra, veccpy.2424 !2014
	addi	sp, sp, -68 !2014
	addi	a0, zero, 0 !2017
	li  	fa0, 1.000000 !2017
	lw  	a1, 24(sp) !2017
	lw  	a2, 28(sp) !2017
	slli	t0, a1, 2 !2017
	add 	t0, t0, a2 !2017
	lw  	a3, 0(t0) !2017
	li  	fa1, 0.000000 !2017
	lw  	a4, 52(sp) !2017
	lw  	a5, 20(sp) !2017
	addi	a2, a3, 0 !2017
	addi	a1, a4, 0 !2017
	addi	tp, a5, 0 !2017
	addi	sp, sp, 68 !2017
	lw  	t1, 0(tp) !2017
	jalr	ra, t1, 0 !2017
	addi	sp, sp, -68 !2017
	lw  	a0, 24(sp) !2018
	lw  	a1, 28(sp) !2018
	slli	t0, a0, 2 !2018
	add 	t0, t0, a1 !2018
	lw  	a2, 0(t0) !2018
	addi	a0, a2, 0 !2018
	addi	sp, sp, 68 !2018
	jal 	ra, p_rgb.2494 !2018
	addi	sp, sp, -68 !2018
	lw  	a1, 40(sp) !2018
	addi	sp, sp, 68 !2018
	jal 	ra, veccpy.2424 !2018
	addi	sp, sp, -68 !2018
	lw  	a0, 24(sp) !2019
	lw  	a1, 28(sp) !2019
	slli	t0, a0, 2 !2019
	add 	t0, t0, a1 !2019
	lw  	a2, 0(t0) !2019
	lw  	a3, 16(sp) !2019
	addi	a1, a3, 0 !2019
	addi	a0, a2, 0 !2019
	addi	sp, sp, 68 !2019
	jal 	ra, p_set_group_id.2508 !2019
	addi	sp, sp, -68 !2019
	lw  	a0, 24(sp) !2022
	lw  	a1, 28(sp) !2022
	slli	t0, a0, 2 !2022
	add 	t0, t0, a1 !2022
	lw  	a2, 0(t0) !2022
	addi	a3, zero, 0 !2022
	lw  	a4, 12(sp) !2022
	addi	a1, a3, 0 !2022
	addi	a0, a2, 0 !2022
	addi	tp, a4, 0 !2022
	addi	sp, sp, 68 !2022
	lw  	t1, 0(tp) !2022
	jalr	ra, t1, 0 !2022
	addi	sp, sp, -68 !2022
	lw  	a0, 24(sp) !2024
	addi	a0, a0, -1 !2024
	addi	a1, zero, 1 !2024
	lw  	a2, 16(sp) !2024
	sw  	a0, 68(sp) !2024
	addi	a0, a2, 0 !2024
	addi	sp, sp, 72 !2024
	jal 	ra, add_mod5.2411 !2024
	addi	sp, sp, -72 !2024
	lw  	a1, 28(sp) !0
	lw  	a2, 68(sp) !0
	lw  	fa0, 56(sp) !0
	lw  	fa1, 48(sp) !0
	lw  	fa2, 44(sp) !0
	addi	a3, zero, 0 !2006
	lw  	a4, 8(sp) !0
	addi	s4, a4, 0 !0
	lw  	a4, 12(sp) !0
	addi	s3, a4, 0 !0
	lw  	a4, 52(sp) !0
	addi	s2, a4, 0 !0
	lw  	a4, 40(sp) !0
	addi	s1, a4, 0 !0
	lw  	a4, 4(sp) !0
	addi	a7, a4, 0 !0
	lw  	a4, 60(sp) !0
	addi	a6, a4, 0 !0
	lw  	a4, 36(sp) !0
	addi	a5, a4, 0 !0
	lw  	a4, 20(sp) !0
	lw  	s5, 32(sp) !0
	addi	a3, s5, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, a2, 0 !0
	addi	a2, t0, 0 !0
	jal 	zero, Loop.17 !0
bge_else.8382: !2006
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
pretrace_line.2805:
	sw  	ra, 0(sp)
	lw  	a3, 24(tp) !0
	lw  	a4, 20(tp) !0
	lw  	a5, 16(tp) !0
	lw  	a6, 12(tp) !0
	lw  	a7, 8(tp) !0
	lw  	s1, 4(tp) !0
	addi	s2, zero, 0 !2031
	slli	t0, s2, 2 !2031
	add 	t0, t0, a5 !2031
	lw  	fa0, 0(t0) !2031
	lw  	a5, 4(s1) !2031
	sub 	a1, a1, a5 !2031
	sw  	a2, 4(sp) !2031
	sw  	a0, 8(sp) !2031
	sw  	a6, 12(sp) !2031
	sw  	a7, 16(sp) !2031
	sw  	a3, 20(sp) !2031
	sw  	a4, 24(sp) !2031
	sw  	fa0, 28(sp) !2031
	addi	a0, a1, 0 !2031
	addi	sp, sp, 32 !2031
	jal 	ra, float_of_int !2031
	addi	sp, sp, -32 !2031
	lw  	fa1, 28(sp) !2031
	fmul	fa0, fa1, fa0 !2031
	addi	a0, zero, 0 !2034
	lw  	a1, 24(sp) !2034
	slli	t0, a0, 2 !2034
	add 	t0, t0, a1 !2034
	lw  	fa1, 0(t0) !2034
	fmul	fa1, fa0, fa1 !2034
	addi	a0, zero, 0 !2034
	lw  	a2, 20(sp) !2034
	slli	t0, a0, 2 !2034
	add 	t0, t0, a2 !2034
	lw  	fa2, 0(t0) !2034
	fadd	fa1, fa1, fa2 !2034
	addi	a0, zero, 1 !2035
	slli	t0, a0, 2 !2035
	add 	t0, t0, a1 !2035
	lw  	fa2, 0(t0) !2035
	fmul	fa2, fa0, fa2 !2035
	addi	a0, zero, 1 !2035
	slli	t0, a0, 2 !2035
	add 	t0, t0, a2 !2035
	lw  	fa3, 0(t0) !2035
	fadd	fa2, fa2, fa3 !2035
	addi	a0, zero, 2 !2036
	slli	t0, a0, 2 !2036
	add 	t0, t0, a1 !2036
	lw  	fa3, 0(t0) !2036
	fmul	fa0, fa0, fa3 !2036
	addi	a0, zero, 2 !2036
	slli	t0, a0, 2 !2036
	add 	t0, t0, a2 !2036
	lw  	fa3, 0(t0) !2036
	fadd	fa0, fa0, fa3 !2036
	lw  	a0, 16(sp) !2037
	lw  	a0, 0(a0) !2037
	addi	a0, a0, -1 !2037
	lw  	a1, 8(sp) !2037
	lw  	a2, 4(sp) !2037
	lw  	a3, 12(sp) !2037
	addi	tp, a3, 0 !2037
	addi	t0, a1, 0 !2037
	addi	a1, a0, 0 !2037
	addi	a0, t0, 0 !2037
	fsgnj   t0, fa2, fa2 !2037
	fsgnj   fa2, fa0, fa0 !2037
	fsgnj   fa0, fa1, fa1 !2037
	fsgnj   fa1, t0, t0 !2037
	lw  	t1, 0(tp) !2037
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2037
scan_pixel.2809:
	sw  	ra, 0(sp)
	lw  	a6, 24(tp) !0
	lw  	a7, 20(tp) !0
	lw  	s1, 16(tp) !0
	lw  	s2, 12(tp) !0
	lw  	s3, 8(tp) !0
	lw  	s4, 4(tp) !0
	lw  	s5, 0(s3) !2045
Loop.18: !2045
	bge 	a0, s5, blt_else.8385 !2045
	slli	t0, a0, 2 !2048
	add 	t0, t0, a3 !2048
	lw  	s5, 0(t0) !2048
	sw  	s3, 4(sp) !2048
	sw  	a5, 8(sp) !2048
	sw  	a6, 12(sp) !2048
	sw  	a2, 16(sp) !2048
	sw  	a7, 20(sp) !2048
	sw  	s4, 24(sp) !2048
	sw  	a3, 28(sp) !2048
	sw  	a4, 32(sp) !2048
	sw  	a1, 36(sp) !2048
	sw  	a0, 40(sp) !2048
	sw  	s2, 44(sp) !2048
	sw  	s1, 48(sp) !2048
	addi	a0, s5, 0 !2048
	addi	sp, sp, 52 !2048
	jal 	ra, p_rgb.2494 !2048
	addi	sp, sp, -52 !2048
	lw  	a1, 48(sp) !2048
	addi	t0, a1, 0 !2048
	addi	a1, a0, 0 !2048
	addi	a0, t0, 0 !2048
	addi	sp, sp, 52 !2048
	jal 	ra, veccpy.2424 !2048
	addi	sp, sp, -52 !2048
	lw  	a0, 40(sp) !2051
	lw  	a1, 36(sp) !2051
	lw  	a2, 32(sp) !2051
	lw  	a3, 44(sp) !2051
	addi	tp, a3, 0 !2051
	addi	sp, sp, 52 !2051
	lw  	t1, 0(tp) !2051
	jalr	ra, t1, 0 !2051
	addi	sp, sp, -52 !2051
	bne 	a0, zero, beq_else.8387 !2051
	lw  	a0, 40(sp) !2054
	lw  	a1, 28(sp) !2054
	slli	t0, a0, 2 !2054
	add 	t0, t0, a1 !2054
	lw  	a2, 0(t0) !2054
	addi	a3, zero, 0 !2054
	lw  	a4, 24(sp) !2054
	addi	a1, a3, 0 !2054
	addi	a0, a2, 0 !2054
	addi	tp, a4, 0 !2054
	addi	sp, sp, 52 !2054
	lw  	t1, 0(tp) !2054
	jalr	ra, t1, 0 !2054
	addi	sp, sp, -52 !2054
	jal 	zero, beq_cont.8388 !2051
beq_else.8387: !2051
	addi	a0, zero, 0 !2052
	lw  	a1, 40(sp) !2052
	lw  	a2, 36(sp) !2052
	lw  	a3, 16(sp) !2052
	lw  	a4, 28(sp) !2052
	lw  	a5, 32(sp) !2052
	lw  	a6, 20(sp) !2052
	addi	tp, a6, 0 !2052
	addi	t0, a5, 0 !2052
	addi	a5, a0, 0 !2052
	addi	a0, a1, 0 !2052
	addi	a1, a2, 0 !2052
	addi	a2, a3, 0 !2052
	addi	a3, a4, 0 !2052
	addi	a4, t0, 0 !2052
	addi	sp, sp, 52 !2052
	lw  	t1, 0(tp) !2052
	jalr	ra, t1, 0 !2052
	addi	sp, sp, -52 !2052
beq_cont.8388: !2051
	lw  	a0, 8(sp) !2057
	lw  	a1, 12(sp) !2057
	addi	tp, a1, 0 !2057
	addi	sp, sp, 52 !2057
	lw  	t1, 0(tp) !2057
	jalr	ra, t1, 0 !2057
	addi	sp, sp, -52 !2057
	lw  	a0, 40(sp) !2059
	addi	a0, a0, 1 !2059
	lw  	a1, 36(sp) !0
	lw  	a2, 16(sp) !0
	lw  	a3, 28(sp) !0
	lw  	a4, 32(sp) !0
	lw  	a5, 8(sp) !0
	addi	a6, zero, 0 !2045
	lw  	a7, 4(sp) !2045
	lw  	s5, 0(a7) !2045
	lw  	s1, 24(sp) !0
	addi	s4, s1, 0 !0
	addi	s3, a7, 0 !0
	lw  	a7, 44(sp) !0
	addi	s2, a7, 0 !0
	lw  	a7, 48(sp) !0
	addi	s1, a7, 0 !0
	lw  	a7, 20(sp) !0
	lw  	s6, 12(sp) !0
	addi	a6, s6, 0 !0
	jal 	zero, Loop.18 !0
blt_else.8385: !2045
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
scan_line.2816:
	sw  	ra, 0(sp)
	lw  	a6, 12(tp) !0
	lw  	a7, 8(tp) !0
	lw  	s1, 4(tp) !0
	lw  	s2, 4(s1) !2066
Loop.19: !2066
	bge 	a0, s2, blt_else.8390 !2066
	lw  	s2, 4(s1) !2068
	addi	s2, s2, -1 !2068
	sw  	a7, 4(sp) !2068
	sw  	s1, 8(sp) !2068
	sw  	a4, 12(sp) !2068
	sw  	a5, 16(sp) !2068
	sw  	a3, 20(sp) !2068
	sw  	a2, 24(sp) !2068
	sw  	a1, 28(sp) !2068
	sw  	a0, 32(sp) !2068
	sw  	a6, 36(sp) !2068
	blt 	a0, s2, bge_else.8392 !2068
	jal 	zero, bge_cont.8393 !2068
bge_else.8392: !2068
	addi	s2, a0, 1 !2069
	addi	a2, a4, 0 !2069
	addi	a1, s2, 0 !2069
	addi	a0, a3, 0 !2069
	addi	tp, a7, 0 !2069
	addi	sp, sp, 40 !2069
	lw  	t1, 0(tp) !2069
	jalr	ra, t1, 0 !2069
	addi	sp, sp, -40 !2069
bge_cont.8393: !2068
	addi	a0, zero, 0 !2071
	lw  	a1, 32(sp) !2071
	lw  	a2, 28(sp) !2071
	lw  	a3, 24(sp) !2071
	lw  	a4, 20(sp) !2071
	lw  	a5, 16(sp) !2071
	lw  	a6, 36(sp) !2071
	addi	tp, a6, 0 !2071
	addi	sp, sp, 40 !2071
	lw  	t1, 0(tp) !2071
	jalr	ra, t1, 0 !2071
	addi	sp, sp, -40 !2071
	lw  	a0, 32(sp) !2072
	addi	a0, a0, 1 !2072
	addi	a1, zero, 2 !2072
	lw  	a2, 12(sp) !2072
	sw  	a0, 40(sp) !2072
	addi	a0, a2, 0 !2072
	addi	sp, sp, 44 !2072
	jal 	ra, add_mod5.2411 !2072
	addi	sp, sp, -44 !2072
	lw  	a1, 40(sp) !0
	lw  	a2, 24(sp) !0
	lw  	a3, 20(sp) !0
	lw  	a4, 28(sp) !0
	lw  	a5, 16(sp) !0
	addi	a6, zero, 1 !2066
	lw  	a7, 8(sp) !2066
	lw  	s2, 4(a7) !2066
	addi	s1, a7, 0 !0
	lw  	a7, 4(sp) !0
	lw  	s3, 36(sp) !0
	addi	a6, s3, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, a2, 0 !0
	addi	a2, a3, 0 !0
	addi	a3, a4, 0 !0
	addi	a4, t0, 0 !0
	jal 	zero, Loop.19 !0
blt_else.8390: !2066
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_float5x3array.2823:
	sw  	ra, 0(sp)
	addi	a0, zero, 3 !2081
	li  	fa0, 0.000000 !2081
	addi	sp, sp, 4 !2081
	jal 	ra, create_float_array !2081
	addi	sp, sp, -4 !2081
	addi	a1, zero, 5 !2082
	addi	t0, a1, 0 !2082
	addi	a1, a0, 0 !2082
	addi	a0, t0, 0 !2082
	addi	sp, sp, 4 !2082
	jal 	ra, create_array !2082
	addi	sp, sp, -4 !2082
	addi	a1, zero, 3 !2083
	li  	fa0, 0.000000 !2083
	sw  	a0, 4(sp) !2083
	addi	a0, a1, 0 !2083
	addi	sp, sp, 8 !2083
	jal 	ra, create_float_array !2083
	addi	sp, sp, -8 !2083
	lw  	a1, 4(sp) !2083
	sw  	a0, 4(a1) !2083
	addi	a0, zero, 3 !2084
	li  	fa0, 0.000000 !2084
	addi	sp, sp, 8 !2084
	jal 	ra, create_float_array !2084
	addi	sp, sp, -8 !2084
	lw  	a1, 4(sp) !2084
	sw  	a0, 8(a1) !2084
	addi	a0, zero, 3 !2085
	li  	fa0, 0.000000 !2085
	addi	sp, sp, 8 !2085
	jal 	ra, create_float_array !2085
	addi	sp, sp, -8 !2085
	lw  	a1, 4(sp) !2085
	sw  	a0, 12(a1) !2085
	addi	a0, zero, 3 !2086
	li  	fa0, 0.000000 !2086
	addi	sp, sp, 8 !2086
	jal 	ra, create_float_array !2086
	addi	sp, sp, -8 !2086
	lw  	a1, 4(sp) !2086
	sw  	a0, 16(a1) !2086
	addi	a0, a1, 0 !2087
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_pixel.2825:
	sw  	ra, 0(sp)
	addi	a0, zero, 3 !2093
	li  	fa0, 0.000000 !2093
	addi	sp, sp, 4 !2093
	jal 	ra, create_float_array !2093
	addi	sp, sp, -4 !2093
	sw  	a0, 4(sp) !2094
	addi	sp, sp, 8 !2094
	jal 	ra, create_float5x3array.2823 !2094
	addi	sp, sp, -8 !2094
	addi	a1, zero, 5 !2095
	addi	a2, zero, 0 !2095
	sw  	a0, 8(sp) !2095
	addi	a0, a1, 0 !2095
	addi	a1, a2, 0 !2095
	addi	sp, sp, 12 !2095
	jal 	ra, create_array !2095
	addi	sp, sp, -12 !2095
	addi	a1, zero, 5 !2096
	addi	a2, zero, 0 !2096
	sw  	a0, 12(sp) !2096
	addi	a0, a1, 0 !2096
	addi	a1, a2, 0 !2096
	addi	sp, sp, 16 !2096
	jal 	ra, create_array !2096
	addi	sp, sp, -16 !2096
	sw  	a0, 16(sp) !2097
	addi	sp, sp, 20 !2097
	jal 	ra, create_float5x3array.2823 !2097
	addi	sp, sp, -20 !2097
	sw  	a0, 20(sp) !2098
	addi	sp, sp, 24 !2098
	jal 	ra, create_float5x3array.2823 !2098
	addi	sp, sp, -24 !2098
	addi	a1, zero, 1 !2099
	addi	a2, zero, 0 !2099
	sw  	a0, 24(sp) !2099
	addi	a0, a1, 0 !2099
	addi	a1, a2, 0 !2099
	addi	sp, sp, 28 !2099
	jal 	ra, create_array !2099
	addi	sp, sp, -28 !2099
	sw  	a0, 28(sp) !2100
	addi	sp, sp, 32 !2100
	jal 	ra, create_float5x3array.2823 !2100
	addi	sp, sp, -32 !2100
	addi	a1, gp, 0 !2101
	addi	gp, gp, 32 !2101
	sw  	a0, 28(a1) !2101
	lw  	a0, 28(sp) !2101
	sw  	a0, 24(a1) !2101
	lw  	a0, 24(sp) !2101
	sw  	a0, 20(a1) !2101
	lw  	a0, 20(sp) !2101
	sw  	a0, 16(a1) !2101
	lw  	a0, 16(sp) !2101
	sw  	a0, 12(a1) !2101
	lw  	a0, 12(sp) !2101
	sw  	a0, 8(a1) !2101
	lw  	a0, 8(sp) !2101
	sw  	a0, 4(a1) !2101
	lw  	a0, 4(sp) !2101
	sw  	a0, 0(a1) !2101
	addi	a0, a1, 0 !2101
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_line_elements.2827:
	sw  	ra, 0(sp)
Loop.20: !2106
	blt  	a1, zero, bge_else.8395 !2106
	sw  	a1, 4(sp) !2107
	sw  	a0, 8(sp) !2107
	addi	sp, sp, 12 !2107
	jal 	ra, create_pixel.2825 !2107
	addi	sp, sp, -12 !2107
	lw  	a1, 4(sp) !2107
	lw  	a2, 8(sp) !2107
	slli	t0, a1, 2 !2107
	add 	t0, t0, a2 !2107
	sw  	a0, 0(t0) !2107
	addi	a0, a1, -1 !2108
	addi	a1, a2, 0 !0
	addi	a2, zero, 0 !2106
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.20 !0
bge_else.8395: !2106
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_pixelline.2830:
	sw  	ra, 0(sp)
	lw  	a0, 4(tp) !0
	lw  	a1, 0(a0) !2115
	sw  	a0, 4(sp) !2115
	sw  	a1, 8(sp) !2115
	addi	sp, sp, 12 !2115
	jal 	ra, create_pixel.2825 !2115
	addi	sp, sp, -12 !2115
	lw  	a1, 8(sp) !2115
	addi	t0, a1, 0 !2115
	addi	a1, a0, 0 !2115
	addi	a0, t0, 0 !2115
	addi	sp, sp, 12 !2115
	jal 	ra, create_array !2115
	addi	sp, sp, -12 !2115
	lw  	a1, 4(sp) !2116
	lw  	a1, 0(a1) !2116
	addi	a1, a1, -2 !2116
	lw  	ra, 0(sp)
	jal 	zero, init_line_elements.2827 !2116
tan.2832:
	sw  	ra, 0(sp)
	sw  	fa0, 4(sp) !2124
	addi	sp, sp, 8 !2124
	jal 	ra, sin !2124
	addi	sp, sp, -8 !2124
	lw  	fa1, 4(sp) !2124
	sw  	fa0, 8(sp) !2124
	fsgnj   fa0, fa1, fa1 !2124
	addi	sp, sp, 12 !2124
	jal 	ra, cos !2124
	addi	sp, sp, -12 !2124
	lw  	fa1, 8(sp) !2124
	fdiv	fa0, fa1, fa0 !2124
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
adjust_position.2834:
	sw  	ra, 0(sp)
	fmul	fa0, fa0, fa0 !2129
	li  	fa2, 0.100000 !2129
	fadd	fa0, fa0, fa2 !2129
	sw  	fa1, 4(sp) !2129
	addi	sp, sp, 8 !2129
	jal 	ra, sqrt !2129
	addi	sp, sp, -8 !2129
	li  	fa1, 1.000000 !2130
	fdiv	fa1, fa1, fa0 !2130
	sw  	fa0, 8(sp) !2131
	fsgnj   fa0, fa1, fa1 !2131
	addi	sp, sp, 12 !2131
	jal 	ra, atan !2131
	addi	sp, sp, -12 !2131
	lw  	fa1, 4(sp) !2132
	fmul	fa0, fa0, fa1 !2132
	addi	sp, sp, 12 !2132
	jal 	ra, tan.2832 !2132
	addi	sp, sp, -12 !2132
	lw  	fa1, 8(sp) !2133
	fmul	fa0, fa0, fa1 !2133
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec.2837:
	sw  	ra, 0(sp)
	lw  	a3, 4(tp) !0
Loop.21: !2138
	addi	t0, zero, 5
	bge 	a0, t0, blt_else.8397 !2138
	sw  	a3, 4(sp) !2153
	sw  	a2, 8(sp) !2153
	sw  	a1, 12(sp) !2153
	sw  	fa2, 16(sp) !2153
	sw  	fa3, 20(sp) !2153
	sw  	a0, 24(sp) !2153
	fsgnj   fa0, fa1, fa1 !2153
	fsgnj   fa1, fa2, fa2 !2153
	addi	sp, sp, 28 !2153
	jal 	ra, adjust_position.2834 !2153
	addi	sp, sp, -28 !2153
	lw  	a0, 24(sp) !2154
	addi	a0, a0, 1 !2154
	lw  	fa1, 20(sp) !2154
	sw  	fa0, 28(sp) !2154
	sw  	a0, 32(sp) !2154
	addi	sp, sp, 36 !2154
	jal 	ra, adjust_position.2834 !2154
	addi	sp, sp, -36 !2154
	lw  	a0, 32(sp) !0
	lw  	fa1, 28(sp) !0
	lw  	fa2, 16(sp) !0
	lw  	fa3, 20(sp) !0
	lw  	a1, 12(sp) !0
	lw  	a2, 8(sp) !0
	addi	a3, zero, 5 !2138
	lw  	a4, 4(sp) !0
	addi	t0, fa0, 0 !0
	addi	fa0, fa1, 0 !0
	addi	fa1, t0, 0 !0
	addi	a3, a4, 0 !0
	jal 	zero, Loop.21 !0
blt_else.8397: !2138
	sw  	a2, 8(sp) !2139
	sw  	a1, 12(sp) !2139
	sw  	a3, 4(sp) !2139
	sw  	fa0, 36(sp) !2139
	sw  	fa1, 40(sp) !2139
	addi	sp, sp, 44 !2139
	jal 	ra, fsqr !2139
	addi	sp, sp, -44 !2139
	lw  	fa1, 40(sp) !2139
	sw  	fa0, 44(sp) !2139
	fsgnj   fa0, fa1, fa1 !2139
	addi	sp, sp, 48 !2139
	jal 	ra, fsqr !2139
	addi	sp, sp, -48 !2139
	lw  	fa1, 44(sp) !2139
	fadd	fa0, fa1, fa0 !2139
	li  	fa1, 1.000000 !2139
	fadd	fa0, fa0, fa1 !2139
	addi	sp, sp, 48 !2139
	jal 	ra, sqrt !2139
	addi	sp, sp, -48 !2139
	lw  	fa1, 36(sp) !2140
	fdiv	fa1, fa1, fa0 !2140
	lw  	fa2, 40(sp) !2141
	fdiv	fa2, fa2, fa0 !2141
	li  	fa3, 1.000000 !2142
	fdiv	fa0, fa3, fa0 !2142
	lw  	a0, 12(sp) !2145
	lw  	a1, 4(sp) !2145
	slli	t0, a0, 2 !2145
	add 	t0, t0, a1 !2145
	lw  	a0, 0(t0) !2145
	lw  	a1, 8(sp) !2146
	slli	t0, a1, 2 !2146
	add 	t0, t0, a0 !2146
	lw  	a2, 0(t0) !2146
	sw  	a0, 48(sp) !2146
	sw  	fa0, 52(sp) !2146
	sw  	fa2, 56(sp) !2146
	sw  	fa1, 60(sp) !2146
	addi	a0, a2, 0 !2146
	addi	sp, sp, 64 !2146
	jal 	ra, d_vec.2513 !2146
	addi	sp, sp, -64 !2146
	lw  	fa0, 60(sp) !2146
	lw  	fa1, 56(sp) !2146
	lw  	fa2, 52(sp) !2146
	addi	sp, sp, 64 !2146
	jal 	ra, vecset.2414 !2146
	addi	sp, sp, -64 !2146
	lw  	a0, 8(sp) !2147
	addi	a1, a0, 40 !2147
	lw  	a2, 48(sp) !2147
	slli	t0, a1, 2 !2147
	add 	t0, t0, a2 !2147
	lw  	a1, 0(t0) !2147
	addi	a0, a1, 0 !2147
	addi	sp, sp, 64 !2147
	jal 	ra, d_vec.2513 !2147
	addi	sp, sp, -64 !2147
	lw  	fa0, 56(sp) !2147
	sw  	a0, 64(sp) !2147
	addi	sp, sp, 68 !2147
	jal 	ra, fneg !2147
	addi	sp, sp, -68 !2147
	lw  	fa1, 60(sp) !2147
	lw  	fa2, 52(sp) !2147
	lw  	a0, 64(sp) !2147
	fsgnj   t0, fa2, fa2 !2147
	fsgnj   fa2, fa0, fa0 !2147
	fsgnj   fa0, fa1, fa1 !2147
	fsgnj   fa1, t0, t0 !2147
	addi	sp, sp, 68 !2147
	jal 	ra, vecset.2414 !2147
	addi	sp, sp, -68 !2147
	lw  	a0, 8(sp) !2148
	addi	a1, a0, 80 !2148
	lw  	a2, 48(sp) !2148
	slli	t0, a1, 2 !2148
	add 	t0, t0, a2 !2148
	lw  	a1, 0(t0) !2148
	addi	a0, a1, 0 !2148
	addi	sp, sp, 68 !2148
	jal 	ra, d_vec.2513 !2148
	addi	sp, sp, -68 !2148
	lw  	fa0, 60(sp) !2148
	sw  	a0, 68(sp) !2148
	addi	sp, sp, 72 !2148
	jal 	ra, fneg !2148
	addi	sp, sp, -72 !2148
	lw  	fa1, 56(sp) !2148
	sw  	fa0, 72(sp) !2148
	fsgnj   fa0, fa1, fa1 !2148
	addi	sp, sp, 76 !2148
	jal 	ra, fneg !2148
	addi	sp, sp, -76 !2148
	lw  	fa1, 52(sp) !2148
	lw  	fa2, 72(sp) !2148
	lw  	a0, 68(sp) !2148
	fsgnj   t0, fa2, fa2 !2148
	fsgnj   fa2, fa0, fa0 !2148
	fsgnj   fa0, fa1, fa1 !2148
	fsgnj   fa1, t0, t0 !2148
	addi	sp, sp, 76 !2148
	jal 	ra, vecset.2414 !2148
	addi	sp, sp, -76 !2148
	lw  	a0, 8(sp) !2149
	addi	a1, a0, 1 !2149
	lw  	a2, 48(sp) !2149
	slli	t0, a1, 2 !2149
	add 	t0, t0, a2 !2149
	lw  	a1, 0(t0) !2149
	addi	a0, a1, 0 !2149
	addi	sp, sp, 76 !2149
	jal 	ra, d_vec.2513 !2149
	addi	sp, sp, -76 !2149
	lw  	fa0, 60(sp) !2149
	sw  	a0, 76(sp) !2149
	addi	sp, sp, 80 !2149
	jal 	ra, fneg !2149
	addi	sp, sp, -80 !2149
	lw  	fa1, 56(sp) !2149
	sw  	fa0, 80(sp) !2149
	fsgnj   fa0, fa1, fa1 !2149
	addi	sp, sp, 84 !2149
	jal 	ra, fneg !2149
	addi	sp, sp, -84 !2149
	lw  	fa1, 52(sp) !2149
	sw  	fa0, 84(sp) !2149
	fsgnj   fa0, fa1, fa1 !2149
	addi	sp, sp, 88 !2149
	jal 	ra, fneg !2149
	addi	sp, sp, -88 !2149
	lw  	fa1, 80(sp) !2149
	lw  	fa2, 84(sp) !2149
	lw  	a0, 76(sp) !2149
	fsgnj   t0, fa2, fa2 !2149
	fsgnj   fa2, fa0, fa0 !2149
	fsgnj   fa0, fa1, fa1 !2149
	fsgnj   fa1, t0, t0 !2149
	addi	sp, sp, 88 !2149
	jal 	ra, vecset.2414 !2149
	addi	sp, sp, -88 !2149
	lw  	a0, 8(sp) !2150
	addi	a1, a0, 41 !2150
	lw  	a2, 48(sp) !2150
	slli	t0, a1, 2 !2150
	add 	t0, t0, a2 !2150
	lw  	a1, 0(t0) !2150
	addi	a0, a1, 0 !2150
	addi	sp, sp, 88 !2150
	jal 	ra, d_vec.2513 !2150
	addi	sp, sp, -88 !2150
	lw  	fa0, 60(sp) !2150
	sw  	a0, 88(sp) !2150
	addi	sp, sp, 92 !2150
	jal 	ra, fneg !2150
	addi	sp, sp, -92 !2150
	lw  	fa1, 52(sp) !2150
	sw  	fa0, 92(sp) !2150
	fsgnj   fa0, fa1, fa1 !2150
	addi	sp, sp, 96 !2150
	jal 	ra, fneg !2150
	addi	sp, sp, -96 !2150
	lw  	fa1, 92(sp) !2150
	lw  	fa2, 56(sp) !2150
	lw  	a0, 88(sp) !2150
	fsgnj   t0, fa1, fa1 !2150
	fsgnj   fa1, fa0, fa0 !2150
	fsgnj   fa0, t0, t0 !2150
	addi	sp, sp, 96 !2150
	jal 	ra, vecset.2414 !2150
	addi	sp, sp, -96 !2150
	lw  	a0, 8(sp) !2151
	addi	a0, a0, 81 !2151
	lw  	a1, 48(sp) !2151
	slli	t0, a0, 2 !2151
	add 	t0, t0, a1 !2151
	lw  	a0, 0(t0) !2151
	addi	sp, sp, 96 !2151
	jal 	ra, d_vec.2513 !2151
	addi	sp, sp, -96 !2151
	lw  	fa0, 52(sp) !2151
	sw  	a0, 96(sp) !2151
	addi	sp, sp, 100 !2151
	jal 	ra, fneg !2151
	addi	sp, sp, -100 !2151
	lw  	fa1, 60(sp) !2151
	lw  	fa2, 56(sp) !2151
	lw  	a0, 96(sp) !2151
	lw  	ra, 0(sp)
	jal 	zero, vecset.2414 !2151
calc_dirvecs.2845:
	sw  	ra, 0(sp)
	lw  	a3, 4(tp) !0
Loop.22: !2159
	blt  	a0, zero, bge_else.8399 !2159
	sw  	a0, 4(sp) !2161
	sw  	fa0, 8(sp) !2161
	sw  	a2, 12(sp) !2161
	sw  	a1, 16(sp) !2161
	sw  	a3, 20(sp) !2161
	addi	sp, sp, 24 !2161
	jal 	ra, float_of_int !2161
	addi	sp, sp, -24 !2161
	li  	fa1, 0.200000 !2161
	fmul	fa0, fa0, fa1 !2161
	li  	fa1, 0.900000 !2161
	fsub	fa0, fa0, fa1 !2161
	addi	a0, zero, 0 !2162
	li  	fa1, 0.000000 !2162
	li  	fa2, 0.000000 !2162
	lw  	fa3, 8(sp) !2162
	lw  	a1, 16(sp) !2162
	lw  	a2, 12(sp) !2162
	lw  	a3, 20(sp) !2162
	addi	tp, a3, 0 !2162
	fsgnj   t0, fa2, fa2 !2162
	fsgnj   fa2, fa0, fa0 !2162
	fsgnj   fa0, fa1, fa1 !2162
	fsgnj   fa1, t0, t0 !2162
	addi	sp, sp, 24 !2162
	lw  	t1, 0(tp) !2162
	jalr	ra, t1, 0 !2162
	addi	sp, sp, -24 !2162
	lw  	a0, 4(sp) !2164
	addi	sp, sp, 24 !2164
	jal 	ra, float_of_int !2164
	addi	sp, sp, -24 !2164
	li  	fa1, 0.200000 !2164
	fmul	fa0, fa0, fa1 !2164
	li  	fa1, 0.100000 !2164
	fadd	fa0, fa0, fa1 !2164
	addi	a0, zero, 0 !2165
	li  	fa1, 0.000000 !2165
	li  	fa2, 0.000000 !2165
	lw  	a1, 12(sp) !2165
	addi	a2, a1, 2 !2165
	lw  	fa3, 8(sp) !2165
	lw  	a3, 16(sp) !2165
	lw  	a4, 20(sp) !2165
	addi	a1, a3, 0 !2165
	addi	tp, a4, 0 !2165
	fsgnj   t0, fa2, fa2 !2165
	fsgnj   fa2, fa0, fa0 !2165
	fsgnj   fa0, fa1, fa1 !2165
	fsgnj   fa1, t0, t0 !2165
	addi	sp, sp, 24 !2165
	lw  	t1, 0(tp) !2165
	jalr	ra, t1, 0 !2165
	addi	sp, sp, -24 !2165
	lw  	a0, 4(sp) !2167
	addi	a0, a0, -1 !2167
	addi	a1, zero, 1 !2167
	lw  	a2, 16(sp) !2167
	sw  	a0, 24(sp) !2167
	addi	a0, a2, 0 !2167
	addi	sp, sp, 28 !2167
	jal 	ra, add_mod5.2411 !2167
	addi	sp, sp, -28 !2167
	lw  	a1, 24(sp) !0
	lw  	fa0, 8(sp) !0
	lw  	a2, 12(sp) !0
	addi	a3, zero, 0 !2159
	lw  	a4, 20(sp) !0
	addi	a3, a4, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.22 !0
bge_else.8399: !2159
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
calc_dirvec_rows.2850:
	sw  	ra, 0(sp)
	lw  	a3, 4(tp) !0
Loop.23: !2173
	blt  	a0, zero, bge_else.8402 !2173
	sw  	a0, 4(sp) !2174
	sw  	a2, 8(sp) !2174
	sw  	a1, 12(sp) !2174
	sw  	a3, 16(sp) !2174
	addi	sp, sp, 20 !2174
	jal 	ra, float_of_int !2174
	addi	sp, sp, -20 !2174
	li  	fa1, 0.200000 !2174
	fmul	fa0, fa0, fa1 !2174
	li  	fa1, 0.900000 !2174
	fsub	fa0, fa0, fa1 !2174
	addi	a0, zero, 4 !2175
	lw  	a1, 12(sp) !2175
	lw  	a2, 8(sp) !2175
	lw  	a3, 16(sp) !2175
	addi	tp, a3, 0 !2175
	addi	sp, sp, 20 !2175
	lw  	t1, 0(tp) !2175
	jalr	ra, t1, 0 !2175
	addi	sp, sp, -20 !2175
	lw  	a0, 4(sp) !2176
	addi	a0, a0, -1 !2176
	addi	a1, zero, 2 !2176
	lw  	a2, 12(sp) !2176
	sw  	a0, 20(sp) !2176
	addi	a0, a2, 0 !2176
	addi	sp, sp, 24 !2176
	jal 	ra, add_mod5.2411 !2176
	addi	sp, sp, -24 !2176
	lw  	a1, 8(sp) !2176
	addi	a1, a1, 4 !2176
	lw  	a2, 20(sp) !0
	addi	a3, zero, 0 !2173
	lw  	a4, 16(sp) !0
	addi	a3, a4, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a2, 0 !0
	addi	a2, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.23 !0
bge_else.8402: !2173
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec.2854:
	sw  	ra, 0(sp)
	lw  	a0, 4(tp) !0
	addi	a1, zero, 3 !2184
	li  	fa0, 0.000000 !2184
	sw  	a0, 4(sp) !2184
	addi	a0, a1, 0 !2184
	addi	sp, sp, 8 !2184
	jal 	ra, create_float_array !2184
	addi	sp, sp, -8 !2184
	lw  	a1, 4(sp) !2185
	lw  	a1, 0(a1) !2185
	sw  	a0, 8(sp) !2185
	addi	t0, a1, 0 !2185
	addi	a1, a0, 0 !2185
	addi	a0, t0, 0 !2185
	addi	sp, sp, 12 !2185
	jal 	ra, create_array !2185
	addi	sp, sp, -12 !2185
	addi	a1, gp, 0 !2186
	addi	gp, gp, 8 !2186
	sw  	a0, 4(a1) !2186
	lw  	a0, 8(sp) !2186
	sw  	a0, 0(a1) !2186
	addi	a0, a1, 0 !2186
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvec_elements.2856:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
Loop.24: !2190
	blt  	a1, zero, bge_else.8405 !2190
	sw  	a2, 4(sp) !2191
	sw  	a1, 8(sp) !2191
	sw  	a0, 12(sp) !2191
	addi	tp, a2, 0 !2191
	addi	sp, sp, 16 !2191
	lw  	t1, 0(tp) !2191
	jalr	ra, t1, 0 !2191
	addi	sp, sp, -16 !2191
	lw  	a1, 8(sp) !2191
	lw  	a2, 12(sp) !2191
	slli	t0, a1, 2 !2191
	add 	t0, t0, a2 !2191
	sw  	a0, 0(t0) !2191
	addi	a0, a1, -1 !2192
	addi	a1, a2, 0 !0
	addi	a2, zero, 0 !2190
	lw  	a3, 4(sp) !0
	addi	a2, a3, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.24 !0
bge_else.8405: !2190
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
create_dirvecs.2859:
	sw  	ra, 0(sp)
	lw  	a1, 12(tp) !0
	lw  	a2, 8(tp) !0
	lw  	a3, 4(tp) !0
Loop.25: !2197
	blt  	a0, zero, bge_else.8408 !2197
	addi	a4, zero, 120 !2198
	sw  	a3, 4(sp) !2198
	sw  	a2, 8(sp) !2198
	sw  	a0, 12(sp) !2198
	sw  	a1, 16(sp) !2198
	sw  	a4, 20(sp) !2198
	addi	tp, a3, 0 !2198
	addi	sp, sp, 24 !2198
	lw  	t1, 0(tp) !2198
	jalr	ra, t1, 0 !2198
	addi	sp, sp, -24 !2198
	lw  	a1, 20(sp) !2198
	addi	t0, a1, 0 !2198
	addi	a1, a0, 0 !2198
	addi	a0, t0, 0 !2198
	addi	sp, sp, 24 !2198
	jal 	ra, create_array !2198
	addi	sp, sp, -24 !2198
	lw  	a1, 12(sp) !2198
	lw  	a2, 16(sp) !2198
	slli	t0, a1, 2 !2198
	add 	t0, t0, a2 !2198
	sw  	a0, 0(t0) !2198
	slli	t0, a1, 2 !2199
	add 	t0, t0, a2 !2199
	lw  	a0, 0(t0) !2199
	addi	a3, zero, 118 !2199
	lw  	a4, 8(sp) !2199
	addi	a1, a3, 0 !2199
	addi	tp, a4, 0 !2199
	addi	sp, sp, 24 !2199
	lw  	t1, 0(tp) !2199
	jalr	ra, t1, 0 !2199
	addi	sp, sp, -24 !2199
	lw  	a0, 12(sp) !2200
	addi	a0, a0, -1 !2200
	addi	a1, zero, 0 !2197
	lw  	a2, 4(sp) !0
	addi	a3, a2, 0 !0
	lw  	a2, 8(sp) !0
	lw  	a4, 16(sp) !0
	addi	a1, a4, 0 !0
	jal 	zero, Loop.25 !0
bge_else.8408: !2197
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvec_constants.2861:
	sw  	ra, 0(sp)
	lw  	a2, 4(tp) !0
Loop.26: !2207
	blt  	a1, zero, bge_else.8411 !2207
	slli	t0, a1, 2 !2208
	add 	t0, t0, a0 !2208
	lw  	a3, 0(t0) !2208
	sw  	a2, 4(sp) !2208
	sw  	a0, 8(sp) !2208
	sw  	a1, 12(sp) !2208
	addi	a0, a3, 0 !2208
	addi	tp, a2, 0 !2208
	addi	sp, sp, 16 !2208
	lw  	t1, 0(tp) !2208
	jalr	ra, t1, 0 !2208
	addi	sp, sp, -16 !2208
	lw  	a0, 12(sp) !2209
	addi	a0, a0, -1 !2209
	lw  	a1, 8(sp) !0
	addi	a2, zero, 0 !2207
	lw  	a3, 4(sp) !0
	addi	a2, a3, 0 !0
	addi	t0, a0, 0 !0
	addi	a0, a1, 0 !0
	addi	a1, t0, 0 !0
	jal 	zero, Loop.26 !0
bge_else.8411: !2207
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_vecset_constants.2864:
	sw  	ra, 0(sp)
	lw  	a1, 8(tp) !0
	lw  	a2, 4(tp) !0
Loop.27: !2214
	blt  	a0, zero, bge_else.8414 !2214
	slli	t0, a0, 2 !2215
	add 	t0, t0, a2 !2215
	lw  	a3, 0(t0) !2215
	addi	a4, zero, 119 !2215
	sw  	a1, 4(sp) !2215
	sw  	a2, 8(sp) !2215
	sw  	a0, 12(sp) !2215
	addi	a0, a3, 0 !2215
	addi	tp, a1, 0 !2215
	addi	a1, a4, 0 !2215
	addi	sp, sp, 16 !2215
	lw  	t1, 0(tp) !2215
	jalr	ra, t1, 0 !2215
	addi	sp, sp, -16 !2215
	lw  	a0, 12(sp) !2216
	addi	a0, a0, -1 !2216
	addi	a1, zero, 0 !2214
	lw  	a2, 8(sp) !0
	lw  	a3, 4(sp) !0
	addi	a1, a3, 0 !0
	jal 	zero, Loop.27 !0
bge_else.8414: !2214
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
init_dirvecs.2866:
	sw  	ra, 0(sp)
	lw  	a0, 12(tp) !0
	lw  	a1, 8(tp) !0
	lw  	a2, 4(tp) !0
	addi	a3, zero, 4 !2221
	sw  	a0, 4(sp) !2221
	sw  	a2, 8(sp) !2221
	addi	a0, a3, 0 !2221
	addi	tp, a1, 0 !2221
	addi	sp, sp, 12 !2221
	lw  	t1, 0(tp) !2221
	jalr	ra, t1, 0 !2221
	addi	sp, sp, -12 !2221
	addi	a0, zero, 9 !2222
	addi	a1, zero, 0 !2222
	addi	a2, zero, 0 !2222
	lw  	a3, 8(sp) !2222
	addi	tp, a3, 0 !2222
	addi	sp, sp, 12 !2222
	lw  	t1, 0(tp) !2222
	jalr	ra, t1, 0 !2222
	addi	sp, sp, -12 !2222
	addi	a0, zero, 4 !2223
	lw  	a1, 4(sp) !2223
	addi	tp, a1, 0 !2223
	lw  	t1, 0(tp) !2223
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2223
add_reflection.2868:
	sw  	ra, 0(sp)
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	sw  	a0, 4(sp) !2230
	sw  	a3, 8(sp) !2230
	sw  	a1, 12(sp) !2230
	sw  	fa0, 16(sp) !2230
	sw  	a2, 20(sp) !2230
	sw  	fa3, 24(sp) !2230
	sw  	fa2, 28(sp) !2230
	sw  	fa1, 32(sp) !2230
	addi	tp, a4, 0 !2230
	addi	sp, sp, 36 !2230
	lw  	t1, 0(tp) !2230
	jalr	ra, t1, 0 !2230
	addi	sp, sp, -36 !2230
	sw  	a0, 36(sp) !2231
	addi	sp, sp, 40 !2231
	jal 	ra, d_vec.2513 !2231
	addi	sp, sp, -40 !2231
	lw  	fa0, 32(sp) !2231
	lw  	fa1, 28(sp) !2231
	lw  	fa2, 24(sp) !2231
	addi	sp, sp, 40 !2231
	jal 	ra, vecset.2414 !2231
	addi	sp, sp, -40 !2231
	lw  	a0, 36(sp) !2232
	lw  	a1, 20(sp) !2232
	addi	tp, a1, 0 !2232
	addi	sp, sp, 40 !2232
	lw  	t1, 0(tp) !2232
	jalr	ra, t1, 0 !2232
	addi	sp, sp, -40 !2232
	addi	a0, gp, 0 !2234
	addi	gp, gp, 12 !2234
	lw  	a1, 16(sp) !2234
	sw  	a1, 8(a0) !2234
	lw  	a1, 36(sp) !2234
	sw  	a1, 4(a0) !2234
	lw  	a1, 12(sp) !2234
	sw  	a1, 0(a0) !2234
	lw  	a1, 4(sp) !2234
	lw  	a2, 8(sp) !2234
	slli	t0, a1, 2 !2234
	add 	t0, t0, a2 !2234
	sw  	a0, 0(t0) !2234
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_rect_reflection.2875:
	sw  	ra, 0(sp)
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	slli	a0, a0, 2 !2239
	lw  	a5, 0(a2) !2240
	li  	fa0, 1.000000 !2241
	sw  	a2, 4(sp) !2241
	sw  	a5, 8(sp) !2241
	sw  	a4, 12(sp) !2241
	sw  	a0, 16(sp) !2241
	sw  	a3, 20(sp) !2241
	sw  	fa0, 24(sp) !2241
	addi	a0, a1, 0 !2241
	addi	sp, sp, 28 !2241
	jal 	ra, o_diffuse.2476 !2241
	addi	sp, sp, -28 !2241
	lw  	fa1, 24(sp) !2241
	fsub	fa0, fa1, fa0 !2241
	addi	a0, zero, 0 !2242
	lw  	a1, 20(sp) !2242
	slli	t0, a0, 2 !2242
	add 	t0, t0, a1 !2242
	lw  	fa1, 0(t0) !2242
	sw  	fa0, 28(sp) !2242
	fsgnj   fa0, fa1, fa1 !2242
	addi	sp, sp, 32 !2242
	jal 	ra, fneg !2242
	addi	sp, sp, -32 !2242
	addi	a0, zero, 1 !2243
	lw  	a1, 20(sp) !2243
	slli	t0, a0, 2 !2243
	add 	t0, t0, a1 !2243
	lw  	fa1, 0(t0) !2243
	sw  	fa0, 32(sp) !2243
	fsgnj   fa0, fa1, fa1 !2243
	addi	sp, sp, 36 !2243
	jal 	ra, fneg !2243
	addi	sp, sp, -36 !2243
	addi	a0, zero, 2 !2244
	lw  	a1, 20(sp) !2244
	slli	t0, a0, 2 !2244
	add 	t0, t0, a1 !2244
	lw  	fa1, 0(t0) !2244
	sw  	fa0, 36(sp) !2244
	fsgnj   fa0, fa1, fa1 !2244
	addi	sp, sp, 40 !2244
	jal 	ra, fneg !2244
	addi	sp, sp, -40 !2244
	lw  	a0, 16(sp) !2245
	addi	a1, a0, 1 !2245
	addi	a2, zero, 0 !2245
	lw  	a3, 20(sp) !2245
	slli	t0, a2, 2 !2245
	add 	t0, t0, a3 !2245
	lw  	fa1, 0(t0) !2245
	lw  	fa2, 28(sp) !2245
	lw  	fa3, 36(sp) !2245
	lw  	a2, 8(sp) !2245
	lw  	a4, 12(sp) !2245
	sw  	fa0, 40(sp) !2245
	addi	a0, a2, 0 !2245
	addi	tp, a4, 0 !2245
	fsgnj   t0, fa3, fa3 !2245
	fsgnj   fa3, fa0, fa0 !2245
	fsgnj   fa0, fa2, fa2 !2245
	fsgnj   fa2, t0, t0 !2245
	addi	sp, sp, 44 !2245
	lw  	t1, 0(tp) !2245
	jalr	ra, t1, 0 !2245
	addi	sp, sp, -44 !2245
	lw  	a0, 8(sp) !2246
	addi	a1, a0, 1 !2246
	lw  	a2, 16(sp) !2246
	addi	a3, a2, 2 !2246
	addi	a4, zero, 1 !2246
	lw  	a5, 20(sp) !2246
	slli	t0, a4, 2 !2246
	add 	t0, t0, a5 !2246
	lw  	fa0, 0(t0) !2246
	lw  	fa1, 28(sp) !2246
	lw  	fa2, 32(sp) !2246
	lw  	fa3, 40(sp) !2246
	lw  	a4, 12(sp) !2246
	addi	a0, a1, 0 !2246
	addi	tp, a4, 0 !2246
	addi	a1, a3, 0 !2246
	fsgnj   t0, fa2, fa2 !2246
	fsgnj   fa2, fa0, fa0 !2246
	fsgnj   fa0, fa1, fa1 !2246
	fsgnj   fa1, t0, t0 !2246
	addi	sp, sp, 44 !2246
	lw  	t1, 0(tp) !2246
	jalr	ra, t1, 0 !2246
	addi	sp, sp, -44 !2246
	lw  	a0, 8(sp) !2247
	addi	a1, a0, 2 !2247
	lw  	a2, 16(sp) !2247
	addi	a2, a2, 3 !2247
	addi	a3, zero, 2 !2247
	lw  	a4, 20(sp) !2247
	slli	t0, a3, 2 !2247
	add 	t0, t0, a4 !2247
	lw  	fa0, 0(t0) !2247
	lw  	fa1, 28(sp) !2247
	lw  	fa2, 32(sp) !2247
	lw  	fa3, 36(sp) !2247
	lw  	a3, 12(sp) !2247
	addi	a0, a1, 0 !2247
	addi	tp, a3, 0 !2247
	addi	a1, a2, 0 !2247
	fsgnj   t0, fa3, fa3 !2247
	fsgnj   fa3, fa0, fa0 !2247
	fsgnj   fa0, fa1, fa1 !2247
	fsgnj   fa1, fa2, fa2 !2247
	fsgnj   fa2, t0, t0 !2247
	addi	sp, sp, 44 !2247
	lw  	t1, 0(tp) !2247
	jalr	ra, t1, 0 !2247
	addi	sp, sp, -44 !2247
	lw  	a0, 8(sp) !2248
	addi	a0, a0, 3 !2248
	lw  	a1, 4(sp) !2248
	sw  	a0, 0(a1) !2248
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_surface_reflection.2878:
	sw  	ra, 0(sp)
	lw  	a2, 12(tp) !0
	lw  	a3, 8(tp) !0
	lw  	a4, 4(tp) !0
	slli	a0, a0, 2 !2253
	addi	a0, a0, 1 !2253
	lw  	a5, 0(a2) !2254
	li  	fa0, 1.000000 !2255
	sw  	a2, 4(sp) !2255
	sw  	a0, 8(sp) !2255
	sw  	a5, 12(sp) !2255
	sw  	a4, 16(sp) !2255
	sw  	a3, 20(sp) !2255
	sw  	a1, 24(sp) !2255
	sw  	fa0, 28(sp) !2255
	addi	a0, a1, 0 !2255
	addi	sp, sp, 32 !2255
	jal 	ra, o_diffuse.2476 !2255
	addi	sp, sp, -32 !2255
	lw  	fa1, 28(sp) !2255
	fsub	fa0, fa1, fa0 !2255
	lw  	a0, 24(sp) !2256
	sw  	fa0, 32(sp) !2256
	addi	sp, sp, 36 !2256
	jal 	ra, o_param_abc.2468 !2256
	addi	sp, sp, -36 !2256
	lw  	a1, 20(sp) !2256
	addi	t0, a1, 0 !2256
	addi	a1, a0, 0 !2256
	addi	a0, t0, 0 !2256
	addi	sp, sp, 36 !2256
	jal 	ra, veciprod.2430 !2256
	addi	sp, sp, -36 !2256
	li  	fa1, 2.000000 !2259
	lw  	a0, 24(sp) !2259
	sw  	fa0, 36(sp) !2259
	sw  	fa1, 40(sp) !2259
	addi	sp, sp, 44 !2259
	jal 	ra, o_param_a.2462 !2259
	addi	sp, sp, -44 !2259
	lw  	fa1, 40(sp) !2259
	fmul	fa0, fa1, fa0 !2259
	lw  	fa1, 36(sp) !2259
	fmul	fa0, fa0, fa1 !2259
	addi	a0, zero, 0 !2259
	lw  	a1, 20(sp) !2259
	slli	t0, a0, 2 !2259
	add 	t0, t0, a1 !2259
	lw  	fa2, 0(t0) !2259
	fsub	fa0, fa0, fa2 !2259
	li  	fa2, 2.000000 !2260
	lw  	a0, 24(sp) !2260
	sw  	fa0, 44(sp) !2260
	sw  	fa2, 48(sp) !2260
	addi	sp, sp, 52 !2260
	jal 	ra, o_param_b.2464 !2260
	addi	sp, sp, -52 !2260
	lw  	fa1, 48(sp) !2260
	fmul	fa0, fa1, fa0 !2260
	lw  	fa1, 36(sp) !2260
	fmul	fa0, fa0, fa1 !2260
	addi	a0, zero, 1 !2260
	lw  	a1, 20(sp) !2260
	slli	t0, a0, 2 !2260
	add 	t0, t0, a1 !2260
	lw  	fa2, 0(t0) !2260
	fsub	fa0, fa0, fa2 !2260
	li  	fa2, 2.000000 !2261
	lw  	a0, 24(sp) !2261
	sw  	fa0, 52(sp) !2261
	sw  	fa2, 56(sp) !2261
	addi	sp, sp, 60 !2261
	jal 	ra, o_param_c.2466 !2261
	addi	sp, sp, -60 !2261
	lw  	fa1, 56(sp) !2261
	fmul	fa0, fa1, fa0 !2261
	lw  	fa1, 36(sp) !2261
	fmul	fa0, fa0, fa1 !2261
	addi	a0, zero, 2 !2261
	lw  	a1, 20(sp) !2261
	slli	t0, a0, 2 !2261
	add 	t0, t0, a1 !2261
	lw  	fa1, 0(t0) !2261
	fsub	fa0, fa0, fa1 !2261
	lw  	fa1, 32(sp) !2258
	lw  	fa2, 44(sp) !2258
	lw  	fa3, 52(sp) !2258
	lw  	a0, 12(sp) !2258
	lw  	a1, 8(sp) !2258
	lw  	a2, 16(sp) !2258
	addi	tp, a2, 0 !2258
	fsgnj   t0, fa3, fa3 !2258
	fsgnj   fa3, fa0, fa0 !2258
	fsgnj   fa0, fa1, fa1 !2258
	fsgnj   fa1, fa2, fa2 !2258
	fsgnj   fa2, t0, t0 !2258
	addi	sp, sp, 60 !2258
	lw  	t1, 0(tp) !2258
	jalr	ra, t1, 0 !2258
	addi	sp, sp, -60 !2258
	lw  	a0, 12(sp) !2262
	addi	a0, a0, 1 !2262
	lw  	a1, 4(sp) !2262
	sw  	a0, 0(a1) !2262
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
setup_reflections.2881:
	sw  	ra, 0(sp)
	lw  	a1, 12(tp) !0
	lw  	a2, 8(tp) !0
	lw  	a3, 4(tp) !0
	blt 	a0, zero, bge_else.8420 !2268
	slli	t0, a0, 2 !2269
	add 	t0, t0, a3 !2269
	lw  	a3, 0(t0) !2269
	sw  	a1, 4(sp) !2270
	sw  	a0, 8(sp) !2270
	sw  	a2, 12(sp) !2270
	sw  	a3, 16(sp) !2270
	addi	a0, a3, 0 !2270
	addi	sp, sp, 20 !2270
	jal 	ra, o_reflectiontype.2456 !2270
	addi	sp, sp, -20 !2270
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8422 !2270
	lw  	a0, 16(sp) !2271
	addi	sp, sp, 20 !2271
	jal 	ra, o_diffuse.2476 !2271
	addi	sp, sp, -20 !2271
	li  	fa1, 1.000000 !2271
	addi	sp, sp, 20 !2271
	jal 	ra, fless !2271
	addi	sp, sp, -20 !2271
	bne 	a0, zero, beq_else.8424 !2271
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8424: !2271
	lw  	a0, 16(sp) !2272
	addi	sp, sp, 20 !2272
	jal 	ra, o_form.2454 !2272
	addi	sp, sp, -20 !2272
	addi	t0, zero, 1
	bne 	a0, t0, beq_else.8427 !2274
	lw  	a0, 8(sp) !2275
	lw  	a1, 16(sp) !2275
	lw  	a2, 12(sp) !2275
	addi	tp, a2, 0 !2275
	lw  	t1, 0(tp) !2275
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2275
beq_else.8427: !2274
	addi	t0, zero, 2
	bne 	a0, t0, beq_else.8429 !2276
	lw  	a0, 8(sp) !2277
	lw  	a1, 16(sp) !2277
	lw  	a2, 4(sp) !2277
	addi	tp, a2, 0 !2277
	lw  	t1, 0(tp) !2277
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2277
beq_else.8429: !2276
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
beq_else.8422: !2270
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
bge_else.8420: !2268
	lw  	ra, 0(sp)
	jalr	zero, ra, 0
rt.2883:
	sw  	ra, 0(sp)
	lw  	a3, 56(tp) !0
	lw  	a4, 52(tp) !0
	lw  	a5, 48(tp) !0
	lw  	a6, 44(tp) !0
	lw  	a7, 40(tp) !0
	lw  	s1, 36(tp) !0
	lw  	s2, 32(tp) !0
	lw  	s3, 28(tp) !0
	lw  	s4, 24(tp) !0
	lw  	s5, 20(tp) !0
	lw  	s6, 16(tp) !0
	lw  	s7, 12(tp) !0
	sw  	a7, 4(sp) !0
	lw  	a7, 8(tp) !0
	sw  	s2, 8(sp) !0
	lw  	s2, 4(tp) !0
	sw  	a0, 0(s7) !2288
	sw  	a1, 4(s7) !2289
	srai	s7, a0, 1 !2290
	sw  	s7, 0(a7) !2290
	srai	a1, a1, 1 !2291
	sw  	a1, 4(a7) !2291
	addi	a1, zero, 0 !2292
	li  	fa0, 128.000000 !2292
	sw  	a4, 12(sp) !2292
	sw  	s3, 16(sp) !2292
	sw  	a5, 20(sp) !2292
	sw  	s5, 24(sp) !2292
	sw  	s4, 28(sp) !2292
	sw  	s6, 32(sp) !2292
	sw  	a2, 36(sp) !2292
	sw  	a3, 40(sp) !2292
	sw  	s1, 44(sp) !2292
	sw  	s2, 48(sp) !2292
	sw  	a1, 52(sp) !2292
	sw  	a6, 56(sp) !2292
	sw  	fa0, 60(sp) !2292
	addi	sp, sp, 64 !2292
	jal 	ra, float_of_int !2292
	addi	sp, sp, -64 !2292
	lw  	fa1, 60(sp) !2292
	fdiv	fa0, fa1, fa0 !2292
	lw  	a0, 52(sp) !2292
	lw  	a1, 56(sp) !2292
	slli	t0, a0, 2 !2292
	add 	t0, t0, a1 !2292
	sw  	fa0, 0(t0) !2292
	lw  	a0, 48(sp) !2293
	addi	tp, a0, 0 !2293
	addi	sp, sp, 64 !2293
	lw  	t1, 0(tp) !2293
	jalr	ra, t1, 0 !2293
	addi	sp, sp, -64 !2293
	lw  	a1, 48(sp) !2294
	sw  	a0, 64(sp) !2294
	addi	tp, a1, 0 !2294
	addi	sp, sp, 68 !2294
	lw  	t1, 0(tp) !2294
	jalr	ra, t1, 0 !2294
	addi	sp, sp, -68 !2294
	lw  	a1, 48(sp) !2295
	sw  	a0, 68(sp) !2295
	addi	tp, a1, 0 !2295
	addi	sp, sp, 72 !2295
	lw  	t1, 0(tp) !2295
	jalr	ra, t1, 0 !2295
	addi	sp, sp, -72 !2295
	lw  	a1, 44(sp) !2296
	sw  	a0, 72(sp) !2296
	addi	tp, a1, 0 !2296
	addi	sp, sp, 76 !2296
	lw  	t1, 0(tp) !2296
	jalr	ra, t1, 0 !2296
	addi	sp, sp, -76 !2296
	lw  	a0, 36(sp) !2297
	lw  	a1, 40(sp) !2297
	addi	tp, a1, 0 !2297
	addi	sp, sp, 76 !2297
	lw  	t1, 0(tp) !2297
	jalr	ra, t1, 0 !2297
	addi	sp, sp, -76 !2297
	lw  	a0, 32(sp) !2298
	addi	tp, a0, 0 !2298
	addi	sp, sp, 76 !2298
	lw  	t1, 0(tp) !2298
	jalr	ra, t1, 0 !2298
	addi	sp, sp, -76 !2298
	lw  	a0, 28(sp) !2299
	addi	sp, sp, 76 !2299
	jal 	ra, d_vec.2513 !2299
	addi	sp, sp, -76 !2299
	lw  	a1, 24(sp) !2299
	addi	sp, sp, 76 !2299
	jal 	ra, veccpy.2424 !2299
	addi	sp, sp, -76 !2299
	lw  	a0, 28(sp) !2300
	lw  	a1, 20(sp) !2300
	addi	tp, a1, 0 !2300
	addi	sp, sp, 76 !2300
	lw  	t1, 0(tp) !2300
	jalr	ra, t1, 0 !2300
	addi	sp, sp, -76 !2300
	lw  	a0, 16(sp) !2301
	lw  	a0, 0(a0) !2301
	addi	a0, a0, -1 !2301
	lw  	a1, 12(sp) !2301
	addi	tp, a1, 0 !2301
	addi	sp, sp, 76 !2301
	lw  	t1, 0(tp) !2301
	jalr	ra, t1, 0 !2301
	addi	sp, sp, -76 !2301
	addi	a0, zero, 0 !2302
	addi	a1, zero, 0 !2302
	lw  	a2, 68(sp) !2302
	lw  	a3, 8(sp) !2302
	addi	tp, a3, 0 !2302
	addi	t0, a2, 0 !2302
	addi	a2, a1, 0 !2302
	addi	a1, a0, 0 !2302
	addi	a0, t0, 0 !2302
	addi	sp, sp, 76 !2302
	lw  	t1, 0(tp) !2302
	jalr	ra, t1, 0 !2302
	addi	sp, sp, -76 !2302
	addi	a0, zero, 0 !2303
	addi	a1, zero, 2 !2303
	lw  	a2, 64(sp) !2303
	lw  	a3, 68(sp) !2303
	lw  	a4, 72(sp) !2303
	lw  	a5, 36(sp) !2303
	lw  	a6, 4(sp) !2303
	addi	tp, a6, 0 !2303
	addi	t0, a4, 0 !2303
	addi	a4, a1, 0 !2303
	addi	a1, a2, 0 !2303
	addi	a2, a3, 0 !2303
	addi	a3, t0, 0 !2303
	lw  	t1, 0(tp) !2303
	lw  	ra, 0(sp)
	jalr	zero, t1, 0 !2303
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
