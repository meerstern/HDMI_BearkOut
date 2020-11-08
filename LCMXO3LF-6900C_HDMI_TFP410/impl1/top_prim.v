// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sat Jan 19 00:15:11 2019
//
// Verilog Description of module top
//

module top (rst_l, out_vga_vs, out_vga_hs, out_vga_de, out_vga_ck, 
            out_vga_r, out_vga_g, out_vga_b, led) /* synthesis syn_module_defined=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(59[8:11])
    input rst_l;   // d:/31_ws/lattice/hdmi_tfp410/top.v(61[23:28])
    output out_vga_vs;   // d:/31_ws/lattice/hdmi_tfp410/top.v(71[14:24])
    output out_vga_hs;   // d:/31_ws/lattice/hdmi_tfp410/top.v(72[14:24])
    output out_vga_de;   // d:/31_ws/lattice/hdmi_tfp410/top.v(73[14:24])
    output out_vga_ck;   // d:/31_ws/lattice/hdmi_tfp410/top.v(74[14:24])
    output out_vga_r;   // d:/31_ws/lattice/hdmi_tfp410/top.v(75[14:23])
    output out_vga_g;   // d:/31_ws/lattice/hdmi_tfp410/top.v(76[14:23])
    output out_vga_b;   // d:/31_ws/lattice/hdmi_tfp410/top.v(77[14:23])
    output [7:0]led;   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    
    wire out_vga_ck_c /* synthesis SET_AS_NETWORK=out_vga_ck_c, is_clock=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(74[14:24])
    wire clk_13_3m /* synthesis is_clock=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(83[8:17])
    
    wire GND_net, VCC_net, rst_l_c, out_vga_vs_c, out_vga_hs_c, out_vga_de_c, 
        out_vga_r_c_23, out_vga_g_c_15, out_vga_b_c_7, led_c_7, led_c_6, 
        led_c_5, led_c_4, led_c_3, led_c_2, led_c_1, led_c_0;
    wire [29:0]led_cnt;   // d:/31_ws/lattice/hdmi_tfp410/top.v(87[17:24])
    wire [31:0]random_num;   // d:/31_ws/lattice/hdmi_tfp410/top.v(94[17:27])
    
    wire mode_bit, out_vga_ck_c_enable_80, mode_bit_N_65;
    wire [3:0]dir_chg_sr;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(49[17:27])
    
    wire u0_vid_new_line, n119, n120, n121, n122, n123, n124, 
        n125, n112, n113, n114, n115, n116, n117, n118, n105, 
        n106, n107, n108, n109, n110, n111, n102, n103, n104, 
        n155, n154, n153, n152, n151, n150, n149, n148, n147, 
        n146, n145, n144, n143, n142, n141, n140, n139, n138, 
        n137, n136, n135, n134, n133, n132, n131, n130, n129, 
        n128, n127, n126, n30, n29, n28, n27, n3545, n26, 
        n25, n24, n23, n22, n21, n20, n19, n18, n17, n16, 
        n15, n14, n13, n12, n11, n10, n9, out_vga_ck_c_enable_82, 
        out_vga_ck_c_enable_71, n3011, n3010, n3009, n3008, n3007, 
        n3006, n3005, n3004, n3003, n3002, n3001, n3000, n2999, 
        n2998, n2997, n2996, n2995, n2994, n2993, n2992, n2991, 
        n2990, n2989, n2988, n2987, n2986, n2985, out_vga_ck_c_enable_69, 
        n3688, n3684, n2448;
    
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3AX mode_bit_19 (.D(mode_bit_N_65), .CK(out_vga_ck_c), .Q(mode_bit));   // d:/31_ws/lattice/hdmi_tfp410/top.v(214[11] 228[5])
    defparam mode_bit_19.GSR = "ENABLED";
    OSCH IOSC (.STDBY(GND_net), .OSC(clk_13_3m)) /* synthesis syn_instantiated=1 */ ;
    defparam IOSC.NOM_FREQ = "13.3";
    OB out_vga_hs_pad (.I(out_vga_hs_c), .O(out_vga_hs));   // d:/31_ws/lattice/hdmi_tfp410/top.v(72[14:24])
    OB out_vga_vs_pad (.I(out_vga_vs_c), .O(out_vga_vs));   // d:/31_ws/lattice/hdmi_tfp410/top.v(71[14:24])
    LUT4 i2_3_lut (.A(led_cnt[28]), .B(led_cnt[29]), .C(led_cnt[27]), 
         .Z(mode_bit_N_65)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(222[9:31])
    defparam i2_3_lut.init = 16'hfefe;
    FD1S3AX led_cnt_450__i0 (.D(n155), .CK(out_vga_ck_c), .Q(n30)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i0.GSR = "ENABLED";
    LUT4 i461_2_lut (.A(u0_vid_new_line), .B(n3688), .Z(out_vga_ck_c_enable_80)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i461_2_lut.init = 16'heeee;
    LUT4 led_cnt_29__I_0_20_i8_1_lut (.A(led_cnt[29]), .Z(led_c_7)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i8_1_lut.init = 16'h5555;
    LUT4 led_cnt_29__I_0_20_i7_1_lut (.A(led_cnt[28]), .Z(led_c_6)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i7_1_lut.init = 16'h5555;
    LUT4 led_cnt_29__I_0_20_i6_1_lut (.A(led_cnt[27]), .Z(led_c_5)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i6_1_lut.init = 16'h5555;
    LUT4 led_cnt_29__I_0_20_i5_1_lut (.A(led_cnt[26]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i5_1_lut.init = 16'h5555;
    LUT4 led_cnt_29__I_0_20_i4_1_lut (.A(led_cnt[25]), .Z(led_c_3)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i4_1_lut.init = 16'h5555;
    LUT4 led_cnt_29__I_0_20_i3_1_lut (.A(led_cnt[24]), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i3_1_lut.init = 16'h5555;
    LUT4 led_cnt_29__I_0_20_i2_1_lut (.A(led_cnt[23]), .Z(led_c_1)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i2_1_lut.init = 16'h5555;
    LUT4 led_cnt_29__I_0_20_i1_1_lut (.A(led_cnt[22]), .Z(led_c_0)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(144[14:29])
    defparam led_cnt_29__I_0_20_i1_1_lut.init = 16'h5555;
    FD1S3AX random_num_449_480__i1 (.D(n125), .CK(out_vga_ck_c), .Q(random_num[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i1.GSR = "ENABLED";
    LUT4 i315_1_lut_rep_45 (.A(mode_bit), .Z(n3545)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(214[11] 228[5])
    defparam i315_1_lut_rep_45.init = 16'h5555;
    OB out_vga_de_pad (.I(out_vga_de_c), .O(out_vga_de));   // d:/31_ws/lattice/hdmi_tfp410/top.v(73[14:24])
    LUT4 i1_2_lut_2_lut (.A(mode_bit), .B(n3688), .Z(out_vga_ck_c_enable_69)) /* synthesis lut_function=((B)+!A) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(214[11] 228[5])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i186_3_lut_3_lut (.A(mode_bit), .B(n3688), .C(n2448), .Z(out_vga_ck_c_enable_82)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(214[11] 228[5])
    defparam i186_3_lut_3_lut.init = 16'h5d5d;
    LUT4 i204_3_lut_3_lut (.A(mode_bit), .B(n3688), .C(dir_chg_sr[0]), 
         .Z(out_vga_ck_c_enable_71)) /* synthesis lut_function=((B (C))+!A) */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(214[11] 228[5])
    defparam i204_3_lut_3_lut.init = 16'hd5d5;
    GSR GSR_INST (.GSR(rst_l_c));
    OB out_vga_ck_pad (.I(out_vga_ck_c), .O(out_vga_ck));   // d:/31_ws/lattice/hdmi_tfp410/top.v(74[14:24])
    OB out_vga_r_pad (.I(out_vga_r_c_23), .O(out_vga_r));   // d:/31_ws/lattice/hdmi_tfp410/top.v(75[14:23])
    OB out_vga_g_pad (.I(out_vga_g_c_15), .O(out_vga_g));   // d:/31_ws/lattice/hdmi_tfp410/top.v(76[14:23])
    OB out_vga_b_pad (.I(out_vga_b_c_7), .O(out_vga_b));   // d:/31_ws/lattice/hdmi_tfp410/top.v(77[14:23])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // d:/31_ws/lattice/hdmi_tfp410/top.v(78[20:23])
    IB rst_l_pad (.I(rst_l), .O(rst_l_c));   // d:/31_ws/lattice/hdmi_tfp410/top.v(61[23:28])
    CCU2D random_num_449_480_add_4_25 (.A0(random_num[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3011), .S0(n102));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_25.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_25.INIT1 = 16'h0000;
    defparam random_num_449_480_add_4_25.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_25.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_23 (.A0(random_num[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3010), .COUT(n3011), .S0(n104), 
          .S1(n103));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_23.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_23.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_23.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_23.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_21 (.A0(random_num[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3009), .COUT(n3010), .S0(n106), 
          .S1(n105));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_21.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_21.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_21.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_21.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_19 (.A0(random_num[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3008), .COUT(n3009), .S0(n108), 
          .S1(n107));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_19.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_19.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_19.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_19.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_17 (.A0(random_num[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3007), .COUT(n3008), .S0(n110), 
          .S1(n109));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_17.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_17.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_17.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_17.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_15 (.A0(random_num[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3006), .COUT(n3007), .S0(n112), 
          .S1(n111));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_15.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_15.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_15.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_15.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_13 (.A0(random_num[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3005), .COUT(n3006), .S0(n114), 
          .S1(n113));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_13.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_13.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_13.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_13.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_11 (.A0(random_num[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3004), .COUT(n3005), .S0(n116), 
          .S1(n115));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_11.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_11.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_11.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_11.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_9 (.A0(random_num[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3003), .COUT(n3004), .S0(n118), 
          .S1(n117));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_9.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_9.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_9.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_9.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_7 (.A0(random_num[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3002), .COUT(n3003), .S0(n120), 
          .S1(n119));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_7.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_7.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_7.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_7.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_5 (.A0(random_num[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3001), .COUT(n3002), .S0(n122), 
          .S1(n121));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_5.INIT0 = 16'hfaaa;
    defparam random_num_449_480_add_4_5.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_5.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_5.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_3 (.A0(random_num[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(random_num[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3000), .COUT(n3001), .S0(n124), 
          .S1(n123));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_3.INIT0 = 16'h0555;
    defparam random_num_449_480_add_4_3.INIT1 = 16'hfaaa;
    defparam random_num_449_480_add_4_3.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_3.INJECT1_1 = "NO";
    CCU2D random_num_449_480_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(random_num[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3000), .S1(n125));   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480_add_4_1.INIT0 = 16'hF000;
    defparam random_num_449_480_add_4_1.INIT1 = 16'h0555;
    defparam random_num_449_480_add_4_1.INJECT1_0 = "NO";
    defparam random_num_449_480_add_4_1.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_31 (.A0(led_cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2999), .S0(n126));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_31.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_31.INIT1 = 16'h0000;
    defparam led_cnt_450_add_4_31.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_31.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_29 (.A0(led_cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_cnt[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2998), .COUT(n2999), .S0(n128), .S1(n127));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_29.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_29.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_29.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_29.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_27 (.A0(led_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_cnt[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2997), .COUT(n2998), .S0(n130), .S1(n129));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_27.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_27.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_27.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_27.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_25 (.A0(led_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(led_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2996), .COUT(n2997), .S0(n132), .S1(n131));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_25.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_25.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_25.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_25.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_23 (.A0(n9), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(led_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2995), .COUT(n2996), .S0(n134), .S1(n133));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_23.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_23.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_23.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_23.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_21 (.A0(n11), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n10), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2994), .COUT(n2995), .S0(n136), .S1(n135));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_21.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_21.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_21.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_21.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_19 (.A0(n13), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n12), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2993), .COUT(n2994), .S0(n138), .S1(n137));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_19.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_19.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_19.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_19.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_17 (.A0(n15), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2992), .COUT(n2993), .S0(n140), .S1(n139));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_17.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_17.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_17.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_17.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_15 (.A0(n17), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2991), .COUT(n2992), .S0(n142), .S1(n141));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_15.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_15.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_15.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_15.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_13 (.A0(n19), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2990), .COUT(n2991), .S0(n144), .S1(n143));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_13.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_13.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_13.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_13.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_11 (.A0(n21), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2989), .COUT(n2990), .S0(n146), .S1(n145));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_11.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_11.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_11.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_11.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_9 (.A0(n23), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2988), 
          .COUT(n2989), .S0(n148), .S1(n147));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_9.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_9.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_9.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_9.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_7 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n24), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2987), 
          .COUT(n2988), .S0(n150), .S1(n149));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_7.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_7.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_7.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_7.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_5 (.A0(n27), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n26), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2986), 
          .COUT(n2987), .S0(n152), .S1(n151));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_5.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_5.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_5.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_5.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_3 (.A0(n29), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n28), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2985), 
          .COUT(n2986), .S0(n154), .S1(n153));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_3.INIT0 = 16'hfaaa;
    defparam led_cnt_450_add_4_3.INIT1 = 16'hfaaa;
    defparam led_cnt_450_add_4_3.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_3.INJECT1_1 = "NO";
    CCU2D led_cnt_450_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n30), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2985), .S1(n155));   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450_add_4_1.INIT0 = 16'hF000;
    defparam led_cnt_450_add_4_1.INIT1 = 16'h0555;
    defparam led_cnt_450_add_4_1.INJECT1_0 = "NO";
    defparam led_cnt_450_add_4_1.INJECT1_1 = "NO";
    clk clk (.clk_13_3m(clk_13_3m), .out_vga_ck_c(out_vga_ck_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(117[5:42])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n3684)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    vga_core u_vga_core (.n2448(n2448), .GND_net(GND_net), .out_vga_b_c_7(out_vga_b_c_7), 
            .out_vga_ck_c(out_vga_ck_c), .n3545(n3545), .mode_bit(mode_bit), 
            .\random_num[3] (random_num[3]), .dir_chg_sr({Open_0, Open_1, 
            Open_2, dir_chg_sr[0]}), .u0_vid_new_line(u0_vid_new_line), 
            .out_vga_ck_c_enable_80(out_vga_ck_c_enable_80), .\random_num[4] (random_num[4]), 
            .\random_num[2] (random_num[2]), .\random_num[14] (random_num[14]), 
            .\random_num[5] (random_num[5]), .\random_num[6] (random_num[6]), 
            .\random_num[7] (random_num[7]), .\random_num[8] (random_num[8]), 
            .\random_num[9] (random_num[9]), .\random_num[10] (random_num[10]), 
            .\random_num[11] (random_num[11]), .\random_num[15] (random_num[15]), 
            .\random_num[16] (random_num[16]), .\random_num[17] (random_num[17]), 
            .\random_num[18] (random_num[18]), .\random_num[19] (random_num[19]), 
            .\random_num[20] (random_num[20]), .\random_num[21] (random_num[21]), 
            .\random_num[22] (random_num[22]), .\random_num[23] (random_num[23]), 
            .out_vga_ck_c_enable_69(out_vga_ck_c_enable_69), .out_vga_ck_c_enable_71(out_vga_ck_c_enable_71), 
            .out_vga_r_c_23(out_vga_r_c_23), .out_vga_g_c_15(out_vga_g_c_15), 
            .n3688(n3688), .out_vga_ck_c_enable_82(out_vga_ck_c_enable_82), 
            .n3684(n3684), .out_vga_vs_c(out_vga_vs_c), .out_vga_de_c(out_vga_de_c), 
            .out_vga_hs_c(out_vga_hs_c)) /* synthesis syn_module_defined=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(149[10] 160[2])
    FD1S3AX led_cnt_450__i1 (.D(n154), .CK(out_vga_ck_c), .Q(n29)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i1.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i2 (.D(n153), .CK(out_vga_ck_c), .Q(n28)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i2.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i3 (.D(n152), .CK(out_vga_ck_c), .Q(n27)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i3.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i4 (.D(n151), .CK(out_vga_ck_c), .Q(n26)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i4.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i5 (.D(n150), .CK(out_vga_ck_c), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i5.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i6 (.D(n149), .CK(out_vga_ck_c), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i6.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i7 (.D(n148), .CK(out_vga_ck_c), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i7.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i8 (.D(n147), .CK(out_vga_ck_c), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i8.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i9 (.D(n146), .CK(out_vga_ck_c), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i9.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i10 (.D(n145), .CK(out_vga_ck_c), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i10.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i11 (.D(n144), .CK(out_vga_ck_c), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i11.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i12 (.D(n143), .CK(out_vga_ck_c), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i12.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i13 (.D(n142), .CK(out_vga_ck_c), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i13.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i14 (.D(n141), .CK(out_vga_ck_c), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i14.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i15 (.D(n140), .CK(out_vga_ck_c), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i15.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i16 (.D(n139), .CK(out_vga_ck_c), .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i16.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i17 (.D(n138), .CK(out_vga_ck_c), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i17.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i18 (.D(n137), .CK(out_vga_ck_c), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i18.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i19 (.D(n136), .CK(out_vga_ck_c), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i19.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i20 (.D(n135), .CK(out_vga_ck_c), .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i20.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i21 (.D(n134), .CK(out_vga_ck_c), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i21.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i22 (.D(n133), .CK(out_vga_ck_c), .Q(led_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i22.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i23 (.D(n132), .CK(out_vga_ck_c), .Q(led_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i23.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i24 (.D(n131), .CK(out_vga_ck_c), .Q(led_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i24.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i25 (.D(n130), .CK(out_vga_ck_c), .Q(led_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i25.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i26 (.D(n129), .CK(out_vga_ck_c), .Q(led_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i26.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i27 (.D(n128), .CK(out_vga_ck_c), .Q(led_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i27.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i28 (.D(n127), .CK(out_vga_ck_c), .Q(led_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i28.GSR = "ENABLED";
    FD1S3AX led_cnt_450__i29 (.D(n126), .CK(out_vga_ck_c), .Q(led_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(218[20:31])
    defparam led_cnt_450__i29.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i2 (.D(n124), .CK(out_vga_ck_c), .Q(random_num[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i2.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i3 (.D(n123), .CK(out_vga_ck_c), .Q(random_num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i3.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i4 (.D(n122), .CK(out_vga_ck_c), .Q(random_num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i4.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i5 (.D(n121), .CK(out_vga_ck_c), .Q(random_num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i5.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i6 (.D(n120), .CK(out_vga_ck_c), .Q(random_num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i6.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i7 (.D(n119), .CK(out_vga_ck_c), .Q(random_num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i7.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i8 (.D(n118), .CK(out_vga_ck_c), .Q(random_num[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i8.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i9 (.D(n117), .CK(out_vga_ck_c), .Q(random_num[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i9.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i10 (.D(n116), .CK(out_vga_ck_c), .Q(random_num[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i10.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i11 (.D(n115), .CK(out_vga_ck_c), .Q(random_num[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i11.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i12 (.D(n114), .CK(out_vga_ck_c), .Q(random_num[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i12.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i13 (.D(n113), .CK(out_vga_ck_c), .Q(random_num[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i13.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i14 (.D(n112), .CK(out_vga_ck_c), .Q(random_num[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i14.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i15 (.D(n111), .CK(out_vga_ck_c), .Q(random_num[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i15.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i16 (.D(n110), .CK(out_vga_ck_c), .Q(random_num[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i16.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i17 (.D(n109), .CK(out_vga_ck_c), .Q(random_num[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i17.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i18 (.D(n108), .CK(out_vga_ck_c), .Q(random_num[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i18.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i19 (.D(n107), .CK(out_vga_ck_c), .Q(random_num[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i19.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i20 (.D(n106), .CK(out_vga_ck_c), .Q(random_num[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i20.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i21 (.D(n105), .CK(out_vga_ck_c), .Q(random_num[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i21.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i22 (.D(n104), .CK(out_vga_ck_c), .Q(random_num[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i22.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i23 (.D(n103), .CK(out_vga_ck_c), .Q(random_num[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i23.GSR = "ENABLED";
    FD1S3AX random_num_449_480__i24 (.D(n102), .CK(out_vga_ck_c), .Q(random_num[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(215[20:34])
    defparam random_num_449_480__i24.GSR = "ENABLED";
    VHI i2258 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clk
//

module clk (clk_13_3m, out_vga_ck_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_13_3m;
    output out_vga_ck_c;
    input GND_net;
    
    wire clk_13_3m /* synthesis is_clock=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(83[8:17])
    wire out_vga_ck_c /* synthesis SET_AS_NETWORK=out_vga_ck_c, is_clock=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(74[14:24])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_13_3m), .CLKFB(out_vga_ck_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(out_vga_ck_c)) /* synthesis FREQUENCY_PIN_CLKOP="39.900000", FREQUENCY_PIN_CLKI="13.300000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=42, LSE_LLINE=117, LSE_RLINE=117 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(117[5:42])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 3;
    defparam PLLInst_0.CLKOP_DIV = 13;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 12;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module vga_core
//

module vga_core (n2448, GND_net, out_vga_b_c_7, out_vga_ck_c, n3545, 
            mode_bit, \random_num[3] , dir_chg_sr, u0_vid_new_line, 
            out_vga_ck_c_enable_80, \random_num[4] , \random_num[2] , 
            \random_num[14] , \random_num[5] , \random_num[6] , \random_num[7] , 
            \random_num[8] , \random_num[9] , \random_num[10] , \random_num[11] , 
            \random_num[15] , \random_num[16] , \random_num[17] , \random_num[18] , 
            \random_num[19] , \random_num[20] , \random_num[21] , \random_num[22] , 
            \random_num[23] , out_vga_ck_c_enable_69, out_vga_ck_c_enable_71, 
            out_vga_r_c_23, out_vga_g_c_15, n3688, out_vga_ck_c_enable_82, 
            n3684, out_vga_vs_c, out_vga_de_c, out_vga_hs_c) /* synthesis syn_module_defined=1 */ ;
    output n2448;
    input GND_net;
    output out_vga_b_c_7;
    input out_vga_ck_c;
    input n3545;
    input mode_bit;
    input \random_num[3] ;
    output [3:0]dir_chg_sr;
    output u0_vid_new_line;
    input out_vga_ck_c_enable_80;
    input \random_num[4] ;
    input \random_num[2] ;
    input \random_num[14] ;
    input \random_num[5] ;
    input \random_num[6] ;
    input \random_num[7] ;
    input \random_num[8] ;
    input \random_num[9] ;
    input \random_num[10] ;
    input \random_num[11] ;
    input \random_num[15] ;
    input \random_num[16] ;
    input \random_num[17] ;
    input \random_num[18] ;
    input \random_num[19] ;
    input \random_num[20] ;
    input \random_num[21] ;
    input \random_num[22] ;
    input \random_num[23] ;
    input out_vga_ck_c_enable_69;
    input out_vga_ck_c_enable_71;
    output out_vga_r_c_23;
    output out_vga_g_c_15;
    output n3688;
    input out_vga_ck_c_enable_82;
    input n3684;
    output out_vga_vs_c;
    output out_vga_de_c;
    output out_vga_hs_c;
    
    wire out_vga_ck_c /* synthesis SET_AS_NETWORK=out_vga_ck_c, is_clock=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(74[14:24])
    wire [15:0]n2;
    wire [15:0]n3;
    
    wire n2964;
    wire [15:0]line_y_pos;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(54[17:27])
    wire [15:0]n487;
    
    wire n2965;
    wire [23:0]vga_pixel_rgb_23__N_387;
    
    wire n2903;
    wire [15:0]u0_pel_y;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(39[17:25])
    wire [15:0]n2163;
    
    wire n2904;
    wire [23:0]vga_rgb_ball;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(41[17:29])
    wire [23:0]vga_rgb_line;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(42[17:29])
    wire [3:0]demo_mode;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(51[17:26])
    wire [23:0]n5;
    wire [15:0]n468;
    wire [15:0]u0_pel_x;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(38[17:25])
    
    wire n2807;
    wire [15:0]ball_x_dir;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(45[17:27])
    wire [15:0]ball_x_dir_15__N_195;
    
    wire n2902, n2901, n2453;
    wire [15:0]n1688;
    wire [15:0]line_x_pos;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(53[17:27])
    
    wire out_vga_ck_c_enable_53;
    wire [15:0]n331;
    
    wire n16, n2900;
    wire [15:0]n1;
    wire [15:0]line_x_pos_15__N_307;
    
    wire n2917;
    wire [12:0]n375;
    
    wire n2918, n2916, n3522, n2825, n2826, n2824, n2899, n2823, 
        n2822, n2963;
    wire [23:0]ball_y_pos;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(48[17:27])
    wire [23:0]n748;
    wire [3:0]n7;
    wire [23:0]ball_x_pos;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(47[17:27])
    wire [23:0]n722;
    
    wire n2898;
    wire [15:0]n2181;
    
    wire n3543, out_vga_ck_c_enable_65, out_vga_ck_c_enable_34, n2638;
    wire [15:0]u0_pel_x_15__N_671;
    
    wire n1964, n2897, n2962;
    wire [15:0]n449;
    
    wire n2896, n2890;
    wire [12:0]n389;
    
    wire n980;
    wire [15:0]ball_y_dir;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(46[17:27])
    wire [15:0]ball_y_dir_15__N_211;
    
    wire n2808, n2809, n2915, n3248, n1818, n4, n3282, n2889, 
        n2888, n2887, n3218, mode_bit_p1, n2886, n2961, n26, n2960, 
        n2959, n2958, n2957, n2956, n2930;
    wire [15:0]n1083;
    
    wire n961, n2929, n2928, n20, n2955, n2806, n466, n2804, 
        n2805, n2885, n2884, n2883, n2954, n2953, n2891, n2892, 
        n2893, n2952, n2894, n2927, n2951, n2926, n2906, n3246, 
        n2895, n28, n22;
    wire [15:0]line_y_pos_15__N_323;
    
    wire n28_adj_801, n2882;
    wire [15:0]n1122;
    
    wire n999;
    wire [23:0]vga_rgb_tp;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(40[17:27])
    
    wire n17_adj_802, n30, n26_adj_803, n18, n2881, n2880, n3523, 
        n2457, n22_adj_804, n2950, n2949, n2879, n2925, n2878, 
        n2877, n2876, n2803, n2948, n2947, n2924, n2905, n2923, 
        n2875, n2873, n2872, n2871, n2870, n28_adj_805, n22_adj_806, 
        n2869, n2868, n2866, n10, n2865, n2864, n2863, n2862, 
        n2946, n2861;
    wire [3:0]dir_chg_sr_c;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(49[17:27])
    
    wire n2945, n2859, n2858, n2857, n2856, n2855, n2854;
    wire [23:0]ball_y_pos_23__N_521;
    
    wire n942, n6, n1274, n2853, n3309, n504, n1248, n524, n485, 
        n2852, n2851, n2850, n2849, n2846, n2845, n2844, n2843, 
        n2842;
    wire [23:0]ball_x_pos_23__N_497;
    
    wire n2841, n2840, n2839, n2838, n2837, n2836, n2834;
    wire [15:0]n507;
    
    wire n2833, n2810, n2832, n2831, n2830, n2829, n2828, n2827, 
        n3041, u0_vid_new_frame, n1963, n3350, n10_adj_816;
    wire [23:0]ball_rgb;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(50[17:25])
    wire [15:0]ball_x_dir_15__N_569;
    wire [15:0]ball_y_dir_15__N_585;
    
    wire n25_adj_817, n3047, n30_adj_818, n26_adj_819, n17_adj_820, 
        n30_adj_821, n26_adj_822, n18_adj_823, n1836, n3258, n12, 
        n3249, n3040;
    wire [23:0]line_rgb;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(55[17:25])
    
    wire n4_adj_824, n2944, n2818, n2817, n2816, n2922, n2983, 
        n2982, n2943, n2921, n2981, n2980, n2979, n2978, n2976, 
        n2975, n2974, n2942, n2973, n2941, n2972, n2971, n2815, 
        n2940, n2939, n2920, n2970, n2814, n2813, n2919, n2812, 
        n2811, n2969, n28_adj_825, n24, n2968, n2967, n2966;
    
    LUT4 i1513_2_lut (.A(n2[9]), .B(n2448), .Z(n3[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1513_2_lut.init = 16'h8888;
    CCU2D sub_61_add_2_5 (.A0(line_y_pos[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2964), .COUT(n2965), .S0(n487[3]), .S1(n487[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_5.INIT0 = 16'h0aaa;
    defparam sub_61_add_2_5.INIT1 = 16'hf555;
    defparam sub_61_add_2_5.INJECT1_0 = "NO";
    defparam sub_61_add_2_5.INJECT1_1 = "NO";
    FD1S3AX vga_rgb_i1 (.D(vga_pixel_rgb_23__N_387[7]), .CK(out_vga_ck_c), 
            .Q(out_vga_b_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(74[8] 111[4])
    defparam vga_rgb_i1.GSR = "DISABLED";
    CCU2D add_185_11 (.A0(u0_pel_y[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2903), .COUT(n2904), .S0(n2163[9]), .S1(n2163[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_11.INIT0 = 16'h5aaa;
    defparam add_185_11.INIT1 = 16'h5aaa;
    defparam add_185_11.INJECT1_0 = "NO";
    defparam add_185_11.INJECT1_1 = "NO";
    LUT4 mux_39_i2_3_lut (.A(vga_rgb_ball[15]), .B(vga_rgb_line[15]), .C(demo_mode[0]), 
         .Z(n5[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(86[16] 88[10])
    defparam mux_39_i2_3_lut.init = 16'hcaca;
    CCU2D equal_59_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n468[15]), .B1(u0_pel_x[15]), .C1(n468[14]), .D1(u0_pel_x[14]), 
          .COUT(n2807));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[10:48])
    defparam equal_59_0.INIT0 = 16'hF000;
    defparam equal_59_0.INIT1 = 16'h9009;
    defparam equal_59_0.INJECT1_0 = "NO";
    defparam equal_59_0.INJECT1_1 = "YES";
    FD1S3AX ball_x_dir_i1 (.D(ball_x_dir_15__N_195[1]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i1.GSR = "DISABLED";
    CCU2D add_185_9 (.A0(u0_pel_y[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2902), .COUT(n2903), .S0(n2163[7]), .S1(n2163[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_9.INIT0 = 16'h5aaa;
    defparam add_185_9.INIT1 = 16'h5aaa;
    defparam add_185_9.INJECT1_0 = "NO";
    defparam add_185_9.INJECT1_1 = "NO";
    CCU2D add_185_7 (.A0(u0_pel_y[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2901), .COUT(n2902), .S0(n2163[5]), .S1(n2163[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_7.INIT0 = 16'h5aaa;
    defparam add_185_7.INIT1 = 16'h5aaa;
    defparam add_185_7.INJECT1_0 = "NO";
    defparam add_185_7.INJECT1_1 = "NO";
    LUT4 i1548_2_lut (.A(n2163[15]), .B(n2453), .Z(n1688[15])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1548_2_lut.init = 16'heeee;
    FD1P3IX line_x_pos_i0 (.D(n331[0]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i0.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(u0_pel_x[0]), .B(u0_pel_x[6]), .Z(n16)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D add_185_5 (.A0(u0_pel_y[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2900), .COUT(n2901), .S0(n2163[3]), .S1(n2163[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_5.INIT0 = 16'h5aaa;
    defparam add_185_5.INIT1 = 16'h5aaa;
    defparam add_185_5.INJECT1_0 = "NO";
    defparam add_185_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(mode_bit), .B(n2448), .C(n1[7]), .Z(line_x_pos_15__N_307[7])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf7f7;
    CCU2D sub_306_add_2_7 (.A0(n375[2]), .B0(u0_pel_x[5]), .C0(GND_net), 
          .D0(GND_net), .A1(n375[3]), .B1(u0_pel_x[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2917), .COUT(n2918));
    defparam sub_306_add_2_7.INIT0 = 16'h5999;
    defparam sub_306_add_2_7.INIT1 = 16'h5999;
    defparam sub_306_add_2_7.INJECT1_0 = "NO";
    defparam sub_306_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_306_add_2_5 (.A0(n375[0]), .B0(u0_pel_x[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n375[1]), .B1(u0_pel_x[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2916), .COUT(n2917));
    defparam sub_306_add_2_5.INIT0 = 16'h5999;
    defparam sub_306_add_2_5.INIT1 = 16'h5999;
    defparam sub_306_add_2_5.INJECT1_0 = "NO";
    defparam sub_306_add_2_5.INJECT1_1 = "NO";
    LUT4 i1547_2_lut (.A(n2163[14]), .B(n2453), .Z(n1688[14])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1547_2_lut.init = 16'heeee;
    LUT4 ball_x_dir_15__I_0_i2_4_lut (.A(\random_num[3] ), .B(ball_x_dir[1]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[1])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i2_4_lut.init = 16'h3aca;
    CCU2D add_58_9 (.A0(line_x_pos[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_x_pos[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2825), .COUT(n2826), .S0(n468[11]), .S1(n468[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[22:48])
    defparam add_58_9.INIT0 = 16'hfaaa;
    defparam add_58_9.INIT1 = 16'hfaaa;
    defparam add_58_9.INJECT1_0 = "NO";
    defparam add_58_9.INJECT1_1 = "NO";
    CCU2D add_58_7 (.A0(line_x_pos[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_x_pos[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2824), .COUT(n2825), .S0(n468[9]), .S1(n468[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[22:48])
    defparam add_58_7.INIT0 = 16'hfaaa;
    defparam add_58_7.INIT1 = 16'hfaaa;
    defparam add_58_7.INJECT1_0 = "NO";
    defparam add_58_7.INJECT1_1 = "NO";
    CCU2D add_185_3 (.A0(u0_pel_y[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2899), .COUT(n2900), .S0(n2163[1]), .S1(n2163[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_3.INIT0 = 16'h5aaa;
    defparam add_185_3.INIT1 = 16'h5aaa;
    defparam add_185_3.INJECT1_0 = "NO";
    defparam add_185_3.INJECT1_1 = "NO";
    FD1P3IX line_y_pos_i0 (.D(n3[0]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i0.GSR = "DISABLED";
    CCU2D add_58_5 (.A0(line_x_pos[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_x_pos[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2823), .COUT(n2824), .S0(n468[7]), .S1(n468[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[22:48])
    defparam add_58_5.INIT0 = 16'h0555;
    defparam add_58_5.INIT1 = 16'h0555;
    defparam add_58_5.INJECT1_0 = "NO";
    defparam add_58_5.INJECT1_1 = "NO";
    CCU2D add_58_3 (.A0(line_x_pos[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_x_pos[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2822), .COUT(n2823), .S0(n468[5]), .S1(n468[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[22:48])
    defparam add_58_3.INIT0 = 16'hfaaa;
    defparam add_58_3.INIT1 = 16'hfaaa;
    defparam add_58_3.INJECT1_0 = "NO";
    defparam add_58_3.INJECT1_1 = "NO";
    CCU2D sub_61_add_2_3 (.A0(line_y_pos[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2963), .COUT(n2964), .S0(n487[1]), .S1(n487[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_3.INIT0 = 16'hf555;
    defparam sub_61_add_2_3.INIT1 = 16'h0aaa;
    defparam sub_61_add_2_3.INJECT1_0 = "NO";
    defparam sub_61_add_2_3.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i23 (.D(n748[23]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i23.GSR = "DISABLED";
    FD1S3AX demo_mode_i0_i0 (.D(n7[0]), .CK(out_vga_ck_c), .Q(demo_mode[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(74[8] 111[4])
    defparam demo_mode_i0_i0.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i0 (.D(n722[0]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i0.GSR = "DISABLED";
    CCU2D add_185_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2899), .S1(n2163[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_1.INIT0 = 16'hF000;
    defparam add_185_1.INIT1 = 16'h5555;
    defparam add_185_1.INJECT1_0 = "NO";
    defparam add_185_1.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i22 (.D(n748[22]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i22.GSR = "DISABLED";
    CCU2D add_186_17 (.A0(u0_pel_x[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2898), 
          .S0(n2181[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_17.INIT0 = 16'h5aaa;
    defparam add_186_17.INIT1 = 16'h0000;
    defparam add_186_17.INJECT1_0 = "NO";
    defparam add_186_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_43 (.A(u0_pel_x[7]), .B(u0_pel_x[8]), .Z(n3543)) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(205[12] 217[6])
    defparam i1_2_lut_rep_43.init = 16'h8888;
    LUT4 i2129_2_lut_rep_34_3_lut (.A(u0_pel_x[7]), .B(u0_pel_x[8]), .C(u0_pel_x[9]), 
         .Z(out_vga_ck_c_enable_65)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(205[12] 217[6])
    defparam i2129_2_lut_rep_34_3_lut.init = 16'h7f7f;
    CCU2D sub_61_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_y_pos[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2963), .S1(n487[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_1.INIT0 = 16'hF000;
    defparam sub_61_add_2_1.INIT1 = 16'h0aaa;
    defparam sub_61_add_2_1.INJECT1_0 = "NO";
    defparam sub_61_add_2_1.INJECT1_1 = "NO";
    FD1P3AX dir_chg_sr_i0_i0 (.D(n2638), .SP(out_vga_ck_c_enable_34), .CK(out_vga_ck_c), 
            .Q(dir_chg_sr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam dir_chg_sr_i0_i0.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i0 (.D(u0_pel_x_15__N_671[0]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i0.GSR = "DISABLED";
    LUT4 i2125_2_lut_3_lut_4_lut (.A(u0_pel_x[7]), .B(u0_pel_x[8]), .C(u0_pel_x[6]), 
         .D(u0_pel_x[9]), .Z(n1964)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(205[12] 217[6])
    defparam i2125_2_lut_3_lut_4_lut.init = 16'h070f;
    FD1P3IX ball_y_pos_i21 (.D(n748[21]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i21.GSR = "DISABLED";
    CCU2D add_186_15 (.A0(u0_pel_x[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2897), .COUT(n2898), .S0(n2181[13]), .S1(n2181[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_15.INIT0 = 16'h5aaa;
    defparam add_186_15.INIT1 = 16'h5aaa;
    defparam add_186_15.INJECT1_0 = "NO";
    defparam add_186_15.INJECT1_1 = "NO";
    CCU2D sub_56_add_2_17 (.A0(line_x_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2962), .S0(n449[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_17.INIT0 = 16'hf555;
    defparam sub_56_add_2_17.INIT1 = 16'h0000;
    defparam sub_56_add_2_17.INJECT1_0 = "NO";
    defparam sub_56_add_2_17.INJECT1_1 = "NO";
    CCU2D add_186_13 (.A0(u0_pel_x[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2896), .COUT(n2897), .S0(n2181[11]), .S1(n2181[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_13.INIT0 = 16'h5aaa;
    defparam add_186_13.INIT1 = 16'h5aaa;
    defparam add_186_13.INJECT1_0 = "NO";
    defparam add_186_13.INJECT1_1 = "NO";
    CCU2D sub_310_add_2_17 (.A0(n389[12]), .B0(u0_pel_y[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2890), .S1(n980));
    defparam sub_310_add_2_17.INIT0 = 16'h5999;
    defparam sub_310_add_2_17.INIT1 = 16'h0000;
    defparam sub_310_add_2_17.INJECT1_0 = "NO";
    defparam sub_310_add_2_17.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i0 (.D(n748[0]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i0.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i0 (.D(ball_x_dir_15__N_195[0]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i0.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i0 (.D(ball_y_dir_15__N_211[0]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i0.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i20 (.D(n748[20]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i20.GSR = "DISABLED";
    CCU2D equal_59_13 (.A0(n468[9]), .B0(u0_pel_x[9]), .C0(n468[8]), .D0(u0_pel_x[8]), 
          .A1(n468[7]), .B1(u0_pel_x[7]), .C1(n468[6]), .D1(u0_pel_x[6]), 
          .CIN(n2808), .COUT(n2809));
    defparam equal_59_13.INIT0 = 16'h9009;
    defparam equal_59_13.INIT1 = 16'h9009;
    defparam equal_59_13.INJECT1_0 = "YES";
    defparam equal_59_13.INJECT1_1 = "YES";
    CCU2D sub_306_add_2_3 (.A0(ball_x_pos[9]), .B0(u0_pel_x[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[10]), .B1(u0_pel_x[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2915), .COUT(n2916));
    defparam sub_306_add_2_3.INIT0 = 16'h5999;
    defparam sub_306_add_2_3.INIT1 = 16'h5999;
    defparam sub_306_add_2_3.INJECT1_0 = "NO";
    defparam sub_306_add_2_3.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n3248), .B(n1818), .C(ball_x_pos[17]), .D(n4), 
         .Z(n3282)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hfddd;
    CCU2D sub_310_add_2_15 (.A0(n389[10]), .B0(u0_pel_y[13]), .C0(GND_net), 
          .D0(GND_net), .A1(n389[11]), .B1(u0_pel_y[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2889), .COUT(n2890));
    defparam sub_310_add_2_15.INIT0 = 16'h5999;
    defparam sub_310_add_2_15.INIT1 = 16'h5999;
    defparam sub_310_add_2_15.INJECT1_0 = "NO";
    defparam sub_310_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_306_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x_pos[8]), .B1(u0_pel_x[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2915));
    defparam sub_306_add_2_1.INIT0 = 16'h0000;
    defparam sub_306_add_2_1.INIT1 = 16'h5999;
    defparam sub_306_add_2_1.INJECT1_0 = "NO";
    defparam sub_306_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_310_add_2_13 (.A0(n389[8]), .B0(u0_pel_y[11]), .C0(GND_net), 
          .D0(GND_net), .A1(n389[9]), .B1(u0_pel_y[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2888), .COUT(n2889));
    defparam sub_310_add_2_13.INIT0 = 16'h5999;
    defparam sub_310_add_2_13.INIT1 = 16'h5999;
    defparam sub_310_add_2_13.INJECT1_0 = "NO";
    defparam sub_310_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_310_add_2_11 (.A0(n389[6]), .B0(u0_pel_y[9]), .C0(GND_net), 
          .D0(GND_net), .A1(n389[7]), .B1(u0_pel_y[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2887), .COUT(n2888));
    defparam sub_310_add_2_11.INIT0 = 16'h5999;
    defparam sub_310_add_2_11.INIT1 = 16'h5999;
    defparam sub_310_add_2_11.INJECT1_0 = "NO";
    defparam sub_310_add_2_11.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i19 (.D(n748[19]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i19.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_20 (.A(u0_pel_x[7]), .B(u0_pel_x[8]), .C(u0_pel_x[9]), 
         .Z(n3218)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(205[12] 217[6])
    defparam i1_2_lut_3_lut_adj_20.init = 16'hf8f8;
    FD1S3AX mode_bit_p1_167 (.D(mode_bit), .CK(out_vga_ck_c), .Q(mode_bit_p1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(74[8] 111[4])
    defparam mode_bit_p1_167.GSR = "DISABLED";
    CCU2D sub_310_add_2_9 (.A0(n389[4]), .B0(u0_pel_y[7]), .C0(GND_net), 
          .D0(GND_net), .A1(n389[5]), .B1(u0_pel_y[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2886), .COUT(n2887));
    defparam sub_310_add_2_9.INIT0 = 16'h5999;
    defparam sub_310_add_2_9.INIT1 = 16'h5999;
    defparam sub_310_add_2_9.INJECT1_0 = "NO";
    defparam sub_310_add_2_9.INJECT1_1 = "NO";
    LUT4 i1546_2_lut (.A(n2163[13]), .B(n2453), .Z(n1688[13])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1546_2_lut.init = 16'heeee;
    CCU2D sub_56_add_2_15 (.A0(line_x_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2961), .COUT(n2962), .S0(n449[13]), .S1(n449[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_15.INIT0 = 16'hf555;
    defparam sub_56_add_2_15.INIT1 = 16'hf555;
    defparam sub_56_add_2_15.INJECT1_0 = "NO";
    defparam sub_56_add_2_15.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(u0_pel_x[11]), .B(u0_pel_x[9]), .C(u0_pel_x[14]), 
         .D(u0_pel_x[15]), .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'h8000;
    FD1P3IX u0_pel_y__i6 (.D(n1688[6]), .SP(out_vga_ck_c_enable_80), .CD(out_vga_ck_c_enable_53), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i6.GSR = "DISABLED";
    CCU2D sub_56_add_2_13 (.A0(line_x_pos[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2960), .COUT(n2961), .S0(n449[11]), .S1(n449[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_13.INIT0 = 16'hf555;
    defparam sub_56_add_2_13.INIT1 = 16'hf555;
    defparam sub_56_add_2_13.INJECT1_0 = "NO";
    defparam sub_56_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_56_add_2_11 (.A0(line_x_pos[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2959), .COUT(n2960), .S0(n449[9]), .S1(n449[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_11.INIT0 = 16'hf555;
    defparam sub_56_add_2_11.INIT1 = 16'hf555;
    defparam sub_56_add_2_11.INJECT1_0 = "NO";
    defparam sub_56_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_56_add_2_9 (.A0(line_x_pos[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2958), .COUT(n2959), .S0(n449[7]), .S1(n449[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_9.INIT0 = 16'h0aaa;
    defparam sub_56_add_2_9.INIT1 = 16'h0aaa;
    defparam sub_56_add_2_9.INJECT1_0 = "NO";
    defparam sub_56_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_56_add_2_7 (.A0(line_x_pos[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2957), .COUT(n2958), .S0(n449[5]), .S1(n449[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_7.INIT0 = 16'hf555;
    defparam sub_56_add_2_7.INIT1 = 16'hf555;
    defparam sub_56_add_2_7.INJECT1_0 = "NO";
    defparam sub_56_add_2_7.INJECT1_1 = "NO";
    LUT4 i1545_2_lut (.A(n2163[12]), .B(n2453), .Z(n1688[12])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1545_2_lut.init = 16'heeee;
    FD1P3IX ball_y_pos_i18 (.D(n748[18]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i18.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i17 (.D(n748[17]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i17.GSR = "DISABLED";
    CCU2D sub_56_add_2_5 (.A0(line_x_pos[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2956), .COUT(n2957), .S0(n449[3]), .S1(n449[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_5.INIT0 = 16'hf555;
    defparam sub_56_add_2_5.INIT1 = 16'h0aaa;
    defparam sub_56_add_2_5.INJECT1_0 = "NO";
    defparam sub_56_add_2_5.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i16 (.D(n748[16]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i16.GSR = "DISABLED";
    LUT4 i1544_2_lut (.A(n2163[11]), .B(n2453), .Z(n1688[11])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1544_2_lut.init = 16'heeee;
    LUT4 i1543_2_lut (.A(n2163[10]), .B(n2453), .Z(n1688[10])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1543_2_lut.init = 16'heeee;
    CCU2D sub_308_add_2_17 (.A0(u0_pel_x[15]), .B0(n1083[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2930), .S1(n961));
    defparam sub_308_add_2_17.INIT0 = 16'h5999;
    defparam sub_308_add_2_17.INIT1 = 16'h0000;
    defparam sub_308_add_2_17.INJECT1_0 = "NO";
    defparam sub_308_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_308_add_2_15 (.A0(u0_pel_x[13]), .B0(n1083[13]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_x[14]), .B1(n1083[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2929), .COUT(n2930));
    defparam sub_308_add_2_15.INIT0 = 16'h5999;
    defparam sub_308_add_2_15.INIT1 = 16'h5999;
    defparam sub_308_add_2_15.INJECT1_0 = "NO";
    defparam sub_308_add_2_15.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i15 (.D(n748[15]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i15.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i14 (.D(n748[14]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i14.GSR = "DISABLED";
    CCU2D sub_308_add_2_13 (.A0(u0_pel_x[11]), .B0(n1083[11]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_x[12]), .B1(n1083[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2928), .COUT(n2929));
    defparam sub_308_add_2_13.INIT0 = 16'h5999;
    defparam sub_308_add_2_13.INIT1 = 16'h5999;
    defparam sub_308_add_2_13.INJECT1_0 = "NO";
    defparam sub_308_add_2_13.INJECT1_1 = "NO";
    FD1P3IX u0_pel_y__i5 (.D(n1688[5]), .SP(out_vga_ck_c_enable_80), .CD(out_vga_ck_c_enable_53), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i5.GSR = "DISABLED";
    LUT4 i5_2_lut (.A(u0_pel_x[12]), .B(u0_pel_x[2]), .Z(n20)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    FD1P3IX ball_y_pos_i12 (.D(n748[12]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i12.GSR = "DISABLED";
    CCU2D sub_56_add_2_3 (.A0(line_x_pos[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2955), .COUT(n2956), .S0(n449[1]), .S1(n449[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_3.INIT0 = 16'hf555;
    defparam sub_56_add_2_3.INIT1 = 16'hf555;
    defparam sub_56_add_2_3.INJECT1_0 = "NO";
    defparam sub_56_add_2_3.INJECT1_1 = "NO";
    CCU2D equal_57_16 (.A0(n449[1]), .B0(u0_pel_x[1]), .C0(n449[0]), .D0(u0_pel_x[0]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2806), 
          .S1(n466));
    defparam equal_57_16.INIT0 = 16'h9009;
    defparam equal_57_16.INIT1 = 16'hFFFF;
    defparam equal_57_16.INJECT1_0 = "YES";
    defparam equal_57_16.INJECT1_1 = "NO";
    CCU2D equal_57_13 (.A0(n449[9]), .B0(u0_pel_x[9]), .C0(n449[8]), .D0(u0_pel_x[8]), 
          .A1(n449[7]), .B1(u0_pel_x[7]), .C1(n449[6]), .D1(u0_pel_x[6]), 
          .CIN(n2804), .COUT(n2805));
    defparam equal_57_13.INIT0 = 16'h9009;
    defparam equal_57_13.INIT1 = 16'h9009;
    defparam equal_57_13.INJECT1_0 = "YES";
    defparam equal_57_13.INJECT1_1 = "YES";
    FD1P3IX ball_y_pos_i9 (.D(n748[9]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i9.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i8 (.D(n748[8]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i8.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i7 (.D(n748[7]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i7.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i6 (.D(n748[6]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i6.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i5 (.D(n748[5]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i5.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i4 (.D(n748[4]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i4.GSR = "DISABLED";
    FD1P3IX ball_y_pos_i3 (.D(n748[3]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i3.GSR = "DISABLED";
    LUT4 i1529_2_lut (.A(n1[6]), .B(n2448), .Z(n331[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1529_2_lut.init = 16'h8888;
    CCU2D sub_310_add_2_7 (.A0(n389[2]), .B0(u0_pel_y[5]), .C0(GND_net), 
          .D0(GND_net), .A1(n389[3]), .B1(u0_pel_y[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2885), .COUT(n2886));
    defparam sub_310_add_2_7.INIT0 = 16'h5999;
    defparam sub_310_add_2_7.INIT1 = 16'h5999;
    defparam sub_310_add_2_7.INJECT1_0 = "NO";
    defparam sub_310_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_310_add_2_5 (.A0(n389[0]), .B0(u0_pel_y[3]), .C0(GND_net), 
          .D0(GND_net), .A1(n389[1]), .B1(u0_pel_y[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2884), .COUT(n2885));
    defparam sub_310_add_2_5.INIT0 = 16'h5999;
    defparam sub_310_add_2_5.INIT1 = 16'h5999;
    defparam sub_310_add_2_5.INJECT1_0 = "NO";
    defparam sub_310_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_310_add_2_3 (.A0(ball_y_pos[9]), .B0(u0_pel_y[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[10]), .B1(u0_pel_y[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2883), .COUT(n2884));
    defparam sub_310_add_2_3.INIT0 = 16'h5999;
    defparam sub_310_add_2_3.INIT1 = 16'h5999;
    defparam sub_310_add_2_3.INJECT1_0 = "NO";
    defparam sub_310_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_56_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_x_pos[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2955), .S1(n449[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[22:48])
    defparam sub_56_add_2_1.INIT0 = 16'hF000;
    defparam sub_56_add_2_1.INIT1 = 16'h0aaa;
    defparam sub_56_add_2_1.INJECT1_0 = "NO";
    defparam sub_56_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_30_add_2_17 (.A0(line_y_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2954), .S0(n2[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_17.INIT0 = 16'h5555;
    defparam sub_30_add_2_17.INIT1 = 16'h0000;
    defparam sub_30_add_2_17.INJECT1_0 = "NO";
    defparam sub_30_add_2_17.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i2 (.D(n748[2]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i2.GSR = "DISABLED";
    LUT4 i1763_2_lut (.A(ball_y_pos[0]), .B(ball_y_dir[0]), .Z(n748[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1763_2_lut.init = 16'h6666;
    CCU2D sub_30_add_2_15 (.A0(line_y_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2953), .COUT(n2954), .S0(n2[13]), .S1(n2[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_15.INIT0 = 16'h5555;
    defparam sub_30_add_2_15.INIT1 = 16'h5555;
    defparam sub_30_add_2_15.INJECT1_0 = "NO";
    defparam sub_30_add_2_15.INJECT1_1 = "NO";
    CCU2D add_186_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2891), .S1(n2181[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_1.INIT0 = 16'hF000;
    defparam add_186_1.INIT1 = 16'h5555;
    defparam add_186_1.INJECT1_0 = "NO";
    defparam add_186_1.INJECT1_1 = "NO";
    CCU2D add_186_3 (.A0(u0_pel_x[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2891), .COUT(n2892), .S0(n2181[1]), .S1(n2181[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_3.INIT0 = 16'h5aaa;
    defparam add_186_3.INIT1 = 16'h5aaa;
    defparam add_186_3.INJECT1_0 = "NO";
    defparam add_186_3.INJECT1_1 = "NO";
    CCU2D add_186_5 (.A0(u0_pel_x[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2892), .COUT(n2893), .S0(n2181[3]), .S1(n2181[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_5.INIT0 = 16'h5aaa;
    defparam add_186_5.INIT1 = 16'h5aaa;
    defparam add_186_5.INJECT1_0 = "NO";
    defparam add_186_5.INJECT1_1 = "NO";
    CCU2D sub_30_add_2_13 (.A0(line_y_pos[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2952), .COUT(n2953), .S0(n2[11]), .S1(n2[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_13.INIT0 = 16'h5555;
    defparam sub_30_add_2_13.INIT1 = 16'h5555;
    defparam sub_30_add_2_13.INJECT1_0 = "NO";
    defparam sub_30_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_310_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y_pos[8]), .B1(u0_pel_y[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2883));
    defparam sub_310_add_2_1.INIT0 = 16'h0000;
    defparam sub_310_add_2_1.INIT1 = 16'h5999;
    defparam sub_310_add_2_1.INJECT1_0 = "NO";
    defparam sub_310_add_2_1.INJECT1_1 = "NO";
    CCU2D add_186_7 (.A0(u0_pel_x[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2893), .COUT(n2894), .S0(n2181[5]), .S1(n2181[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_7.INIT0 = 16'h5aaa;
    defparam add_186_7.INIT1 = 16'h5aaa;
    defparam add_186_7.INJECT1_0 = "NO";
    defparam add_186_7.INJECT1_1 = "NO";
    CCU2D sub_308_add_2_11 (.A0(u0_pel_x[9]), .B0(n1083[9]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_x[10]), .B1(n1083[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2927), .COUT(n2928));
    defparam sub_308_add_2_11.INIT0 = 16'h5999;
    defparam sub_308_add_2_11.INIT1 = 16'h5999;
    defparam sub_308_add_2_11.INJECT1_0 = "NO";
    defparam sub_308_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_30_add_2_11 (.A0(line_y_pos[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2951), .COUT(n2952), .S0(n2[9]), .S1(n2[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_11.INIT0 = 16'h5555;
    defparam sub_30_add_2_11.INIT1 = 16'h5555;
    defparam sub_30_add_2_11.INJECT1_0 = "NO";
    defparam sub_30_add_2_11.INJECT1_1 = "NO";
    FD1P3IX ball_y_pos_i1 (.D(n748[1]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_y_pos[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i1.GSR = "DISABLED";
    LUT4 i1530_2_lut (.A(n1[5]), .B(n2448), .Z(n331[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1530_2_lut.init = 16'h8888;
    CCU2D sub_308_add_2_9 (.A0(u0_pel_x[7]), .B0(n1083[7]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_x[8]), .B1(n1083[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2926), .COUT(n2927));
    defparam sub_308_add_2_9.INIT0 = 16'h5999;
    defparam sub_308_add_2_9.INIT1 = 16'h5999;
    defparam sub_308_add_2_9.INJECT1_0 = "NO";
    defparam sub_308_add_2_9.INJECT1_1 = "NO";
    CCU2D add_185_17 (.A0(u0_pel_y[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2906), 
          .S0(n2163[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_17.INIT0 = 16'h5aaa;
    defparam add_185_17.INIT1 = 16'h0000;
    defparam add_185_17.INJECT1_0 = "NO";
    defparam add_185_17.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(ball_x_pos[16]), .B(n1818), .C(ball_x_pos[17]), 
         .D(n3246), .Z(n3248)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    FD1P3IX u0_pel_y__i4 (.D(n1688[4]), .SP(out_vga_ck_c_enable_80), .CD(out_vga_ck_c_enable_53), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i4.GSR = "DISABLED";
    CCU2D add_186_9 (.A0(u0_pel_x[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2894), .COUT(n2895), .S0(n2181[7]), .S1(n2181[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_9.INIT0 = 16'h5aaa;
    defparam add_186_9.INIT1 = 16'h5aaa;
    defparam add_186_9.INJECT1_0 = "NO";
    defparam add_186_9.INJECT1_1 = "NO";
    LUT4 i1542_2_lut (.A(n2163[9]), .B(n2453), .Z(n1688[9])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1542_2_lut.init = 16'heeee;
    LUT4 i1539_2_lut (.A(n2163[6]), .B(n2453), .Z(n1688[6])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1539_2_lut.init = 16'heeee;
    LUT4 i1541_2_lut (.A(n2163[8]), .B(n2453), .Z(n1688[8])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1541_2_lut.init = 16'heeee;
    LUT4 i1540_2_lut (.A(n2163[7]), .B(n2453), .Z(n1688[7])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1540_2_lut.init = 16'heeee;
    LUT4 i1531_2_lut (.A(n1[3]), .B(n2448), .Z(n331[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1531_2_lut.init = 16'h8888;
    LUT4 i1532_2_lut (.A(n1[2]), .B(n2448), .Z(n331[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1532_2_lut.init = 16'h8888;
    LUT4 i12_4_lut (.A(line_y_pos[4]), .B(line_y_pos[6]), .C(line_y_pos[1]), 
         .D(line_y_pos[0]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(line_y_pos[13]), .B(line_y_pos[8]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i1533_2_lut (.A(n1[1]), .B(n2448), .Z(n331[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1533_2_lut.init = 16'h8888;
    LUT4 ball_x_dir_15__I_0_i3_4_lut (.A(\random_num[4] ), .B(ball_x_dir[2]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[2])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i3_4_lut.init = 16'h3aca;
    LUT4 i1_2_lut_3_lut_adj_21 (.A(mode_bit), .B(n2448), .C(n2[8]), .Z(line_y_pos_15__N_323[8])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_21.init = 16'hf7f7;
    CCU2D add_186_11 (.A0(u0_pel_x[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2895), .COUT(n2896), .S0(n2181[9]), .S1(n2181[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(244[19:31])
    defparam add_186_11.INIT0 = 16'h5aaa;
    defparam add_186_11.INIT1 = 16'h5aaa;
    defparam add_186_11.INJECT1_0 = "NO";
    defparam add_186_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_22 (.A(mode_bit), .B(n2448), .C(n2[5]), .Z(line_y_pos_15__N_323[5])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_22.init = 16'hf7f7;
    LUT4 i12_4_lut_adj_23 (.A(line_x_pos[4]), .B(line_x_pos[6]), .C(line_x_pos[1]), 
         .D(line_x_pos[0]), .Z(n28_adj_801)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut_adj_23.init = 16'hfffe;
    CCU2D sub_312_add_2_17 (.A0(u0_pel_y[15]), .B0(n1122[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2882), .S1(n999));
    defparam sub_312_add_2_17.INIT0 = 16'h5999;
    defparam sub_312_add_2_17.INIT1 = 16'h0000;
    defparam sub_312_add_2_17.INJECT1_0 = "NO";
    defparam sub_312_add_2_17.INJECT1_1 = "NO";
    FD1P3IX u0_pel_y__i3 (.D(n1688[3]), .SP(out_vga_ck_c_enable_80), .CD(out_vga_ck_c_enable_53), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_24 (.A(mode_bit), .B(n2448), .C(n2[3]), .Z(line_y_pos_15__N_323[3])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_24.init = 16'hf7f7;
    LUT4 mux_37_i1_3_lut (.A(vga_rgb_tp[7]), .B(n5[7]), .C(mode_bit), 
         .Z(vga_pixel_rgb_23__N_387[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(80[14] 89[8])
    defparam mux_37_i1_3_lut.init = 16'hcaca;
    LUT4 mux_37_i3_3_lut (.A(vga_rgb_tp[23]), .B(n5[23]), .C(mode_bit), 
         .Z(vga_pixel_rgb_23__N_387[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(80[14] 89[8])
    defparam mux_37_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(mode_bit), .B(n2448), .C(n1[4]), .Z(line_x_pos_15__N_307[4])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'hf7f7;
    LUT4 i15_4_lut (.A(n17_adj_802), .B(n30), .C(n26_adj_803), .D(n18), 
         .Z(n2453)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i15_4_lut.init = 16'h8000;
    LUT4 mux_39_i3_3_lut (.A(vga_rgb_ball[23]), .B(vga_rgb_line[23]), .C(demo_mode[0]), 
         .Z(n5[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(86[16] 88[10])
    defparam mux_39_i3_3_lut.init = 16'hcaca;
    LUT4 mux_37_i2_3_lut (.A(vga_rgb_tp[15]), .B(n5[15]), .C(mode_bit), 
         .Z(vga_pixel_rgb_23__N_387[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(80[14] 89[8])
    defparam mux_37_i2_3_lut.init = 16'hcaca;
    CCU2D sub_312_add_2_15 (.A0(u0_pel_y[13]), .B0(n1122[13]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_y[14]), .B1(n1122[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2881), .COUT(n2882));
    defparam sub_312_add_2_15.INIT0 = 16'h5999;
    defparam sub_312_add_2_15.INIT1 = 16'h5999;
    defparam sub_312_add_2_15.INJECT1_0 = "NO";
    defparam sub_312_add_2_15.INJECT1_1 = "NO";
    FD1P3IX u0_pel_y__i2 (.D(n1688[2]), .SP(out_vga_ck_c_enable_80), .CD(out_vga_ck_c_enable_53), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i2.GSR = "DISABLED";
    LUT4 ball_x_dir_15__I_0_i1_4_lut (.A(\random_num[2] ), .B(ball_x_dir[0]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[0])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i1_4_lut.init = 16'h3aca;
    CCU2D sub_312_add_2_13 (.A0(u0_pel_y[11]), .B0(n1122[11]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_y[12]), .B1(n1122[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2880), .COUT(n2881));
    defparam sub_312_add_2_13.INIT0 = 16'h5999;
    defparam sub_312_add_2_13.INIT1 = 16'h5999;
    defparam sub_312_add_2_13.INJECT1_0 = "NO";
    defparam sub_312_add_2_13.INJECT1_1 = "NO";
    LUT4 ball_y_dir_15__I_0_i1_4_lut (.A(\random_num[14] ), .B(ball_y_dir[0]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[0])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i1_4_lut.init = 16'h3aca;
    LUT4 mux_39_i1_3_lut (.A(vga_rgb_ball[7]), .B(vga_rgb_line[7]), .C(demo_mode[0]), 
         .Z(n5[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(86[16] 88[10])
    defparam mux_39_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(mode_bit), .B(n2448), .C(n2[2]), .Z(line_y_pos_15__N_323[2])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_26.init = 16'hf7f7;
    LUT4 i1553_2_lut (.A(n2181[5]), .B(n2457), .Z(u0_pel_x_15__N_671[5])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1553_2_lut.init = 16'heeee;
    LUT4 i6_2_lut_adj_27 (.A(line_x_pos[13]), .B(line_x_pos[8]), .Z(n22_adj_804)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut_adj_27.init = 16'heeee;
    LUT4 ball_x_dir_15__I_0_i4_4_lut (.A(\random_num[5] ), .B(ball_x_dir[3]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[3])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i4_4_lut.init = 16'h3aca;
    LUT4 ball_x_dir_15__I_0_i5_4_lut (.A(\random_num[6] ), .B(ball_x_dir[4]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[4])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i5_4_lut.init = 16'h3aca;
    CCU2D sub_30_add_2_9 (.A0(line_y_pos[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2950), .COUT(n2951), .S0(n2[7]), .S1(n2[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_9.INIT0 = 16'h5555;
    defparam sub_30_add_2_9.INIT1 = 16'h5555;
    defparam sub_30_add_2_9.INJECT1_0 = "NO";
    defparam sub_30_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_30_add_2_7 (.A0(line_y_pos[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2949), .COUT(n2950), .S0(n2[5]), .S1(n2[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_7.INIT0 = 16'h5555;
    defparam sub_30_add_2_7.INIT1 = 16'h5555;
    defparam sub_30_add_2_7.INJECT1_0 = "NO";
    defparam sub_30_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_312_add_2_11 (.A0(u0_pel_y[9]), .B0(n1122[9]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_y[10]), .B1(n1122[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2879), .COUT(n2880));
    defparam sub_312_add_2_11.INIT0 = 16'h5999;
    defparam sub_312_add_2_11.INIT1 = 16'h5999;
    defparam sub_312_add_2_11.INJECT1_0 = "NO";
    defparam sub_312_add_2_11.INJECT1_1 = "NO";
    LUT4 ball_x_dir_15__I_0_i6_4_lut (.A(\random_num[7] ), .B(ball_x_dir[5]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[5])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i6_4_lut.init = 16'h3aca;
    LUT4 i1_2_lut_3_lut_adj_28 (.A(mode_bit), .B(n2448), .C(n1[8]), .Z(line_x_pos_15__N_307[8])) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_28.init = 16'hf7f7;
    LUT4 i1_2_lut_adj_29 (.A(u0_pel_y[0]), .B(u0_pel_y[6]), .Z(n17_adj_802)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_29.init = 16'h8888;
    CCU2D sub_308_add_2_7 (.A0(u0_pel_x[5]), .B0(n1083[5]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_x[6]), .B1(n1083[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2925), .COUT(n2926));
    defparam sub_308_add_2_7.INIT0 = 16'h5999;
    defparam sub_308_add_2_7.INIT1 = 16'h5999;
    defparam sub_308_add_2_7.INJECT1_0 = "NO";
    defparam sub_308_add_2_7.INJECT1_1 = "NO";
    LUT4 ball_x_dir_15__I_0_i7_4_lut (.A(\random_num[8] ), .B(ball_x_dir[6]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[6])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i7_4_lut.init = 16'h3aca;
    LUT4 ball_x_dir_15__I_0_i8_4_lut (.A(\random_num[9] ), .B(ball_x_dir[7]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[7])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i8_4_lut.init = 16'h3aca;
    CCU2D sub_312_add_2_9 (.A0(u0_pel_y[7]), .B0(n1122[7]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_y[8]), .B1(n1122[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2878), .COUT(n2879));
    defparam sub_312_add_2_9.INIT0 = 16'h5999;
    defparam sub_312_add_2_9.INIT1 = 16'h5999;
    defparam sub_312_add_2_9.INJECT1_0 = "NO";
    defparam sub_312_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_312_add_2_7 (.A0(u0_pel_y[5]), .B0(n1122[5]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_y[6]), .B1(n1122[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2877), .COUT(n2878));
    defparam sub_312_add_2_7.INIT0 = 16'h5999;
    defparam sub_312_add_2_7.INIT1 = 16'h5999;
    defparam sub_312_add_2_7.INJECT1_0 = "NO";
    defparam sub_312_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_312_add_2_5 (.A0(u0_pel_y[3]), .B0(n1122[3]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_y[4]), .B1(n1122[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2876), .COUT(n2877));
    defparam sub_312_add_2_5.INIT0 = 16'h5999;
    defparam sub_312_add_2_5.INIT1 = 16'h5999;
    defparam sub_312_add_2_5.INJECT1_0 = "NO";
    defparam sub_312_add_2_5.INJECT1_1 = "NO";
    CCU2D equal_57_11 (.A0(n449[13]), .B0(u0_pel_x[13]), .C0(n449[12]), 
          .D0(u0_pel_x[12]), .A1(n449[11]), .B1(u0_pel_x[11]), .C1(n449[10]), 
          .D1(u0_pel_x[10]), .CIN(n2803), .COUT(n2804));
    defparam equal_57_11.INIT0 = 16'h9009;
    defparam equal_57_11.INIT1 = 16'h9009;
    defparam equal_57_11.INJECT1_0 = "YES";
    defparam equal_57_11.INJECT1_1 = "YES";
    LUT4 ball_x_dir_15__I_0_i9_4_lut (.A(\random_num[10] ), .B(ball_x_dir[8]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[8])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i9_4_lut.init = 16'h3aca;
    CCU2D sub_30_add_2_5 (.A0(line_y_pos[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2948), .COUT(n2949), .S0(n2[3]), .S1(n2[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_5.INIT0 = 16'h5555;
    defparam sub_30_add_2_5.INIT1 = 16'h5555;
    defparam sub_30_add_2_5.INJECT1_0 = "NO";
    defparam sub_30_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_30_add_2_3 (.A0(line_y_pos[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2947), .COUT(n2948), .S0(n2[1]), .S1(n2[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_3.INIT0 = 16'h5555;
    defparam sub_30_add_2_3.INIT1 = 16'h5555;
    defparam sub_30_add_2_3.INJECT1_0 = "NO";
    defparam sub_30_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_308_add_2_5 (.A0(u0_pel_x[3]), .B0(n1083[3]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_x[4]), .B1(n1083[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2924), .COUT(n2925));
    defparam sub_308_add_2_5.INIT0 = 16'h5999;
    defparam sub_308_add_2_5.INIT1 = 16'h5999;
    defparam sub_308_add_2_5.INJECT1_0 = "NO";
    defparam sub_308_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_30_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_y_pos[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2947), .S1(n2[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(126[21:35])
    defparam sub_30_add_2_1.INIT0 = 16'hF000;
    defparam sub_30_add_2_1.INIT1 = 16'h5555;
    defparam sub_30_add_2_1.INJECT1_0 = "NO";
    defparam sub_30_add_2_1.INJECT1_1 = "NO";
    FD1P3IX u0_pel_y__i1 (.D(n1688[1]), .SP(out_vga_ck_c_enable_80), .CD(out_vga_ck_c_enable_53), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i1.GSR = "DISABLED";
    CCU2D add_185_15 (.A0(u0_pel_y[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2905), .COUT(n2906), .S0(n2163[13]), .S1(n2163[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_15.INIT0 = 16'h5aaa;
    defparam add_185_15.INIT1 = 16'h5aaa;
    defparam add_185_15.INJECT1_0 = "NO";
    defparam add_185_15.INJECT1_1 = "NO";
    CCU2D sub_308_add_2_3 (.A0(u0_pel_x[1]), .B0(ball_x_pos[9]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_x[2]), .B1(ball_x_pos[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2923), .COUT(n2924));
    defparam sub_308_add_2_3.INIT0 = 16'h5999;
    defparam sub_308_add_2_3.INIT1 = 16'h5999;
    defparam sub_308_add_2_3.INJECT1_0 = "NO";
    defparam sub_308_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_312_add_2_3 (.A0(u0_pel_y[1]), .B0(ball_y_pos[9]), .C0(GND_net), 
          .D0(GND_net), .A1(u0_pel_y[2]), .B1(ball_y_pos[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2875), .COUT(n2876));
    defparam sub_312_add_2_3.INIT0 = 16'h5999;
    defparam sub_312_add_2_3.INIT1 = 16'h5999;
    defparam sub_312_add_2_3.INJECT1_0 = "NO";
    defparam sub_312_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_312_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[0]), .B1(ball_y_pos[8]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2875));
    defparam sub_312_add_2_1.INIT0 = 16'h0000;
    defparam sub_312_add_2_1.INIT1 = 16'h5999;
    defparam sub_312_add_2_1.INJECT1_0 = "NO";
    defparam sub_312_add_2_1.INJECT1_1 = "NO";
    CCU2D add_119_13 (.A0(ball_y_pos[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2873), .S0(n1122[14]), .S1(n1122[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(189[21:45])
    defparam add_119_13.INIT0 = 16'h5aaa;
    defparam add_119_13.INIT1 = 16'h5aaa;
    defparam add_119_13.INJECT1_0 = "NO";
    defparam add_119_13.INJECT1_1 = "NO";
    CCU2D add_119_11 (.A0(ball_y_pos[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2872), .COUT(n2873), .S0(n1122[12]), .S1(n1122[13]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(189[21:45])
    defparam add_119_11.INIT0 = 16'h5aaa;
    defparam add_119_11.INIT1 = 16'h5aaa;
    defparam add_119_11.INJECT1_0 = "NO";
    defparam add_119_11.INJECT1_1 = "NO";
    CCU2D add_119_9 (.A0(ball_y_pos[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2871), .COUT(n2872), .S0(n1122[10]), .S1(n1122[11]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(189[21:45])
    defparam add_119_9.INIT0 = 16'h5aaa;
    defparam add_119_9.INIT1 = 16'h5aaa;
    defparam add_119_9.INJECT1_0 = "NO";
    defparam add_119_9.INJECT1_1 = "NO";
    LUT4 ball_x_dir_15__I_0_i10_4_lut (.A(\random_num[11] ), .B(ball_x_dir[9]), 
         .C(mode_bit), .D(n3522), .Z(ball_x_dir_15__N_195[9])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_x_dir_15__I_0_i10_4_lut.init = 16'h3aca;
    CCU2D add_119_7 (.A0(ball_y_pos[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2870), .COUT(n2871), .S0(n1122[8]), .S1(n1122[9]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(189[21:45])
    defparam add_119_7.INIT0 = 16'h5aaa;
    defparam add_119_7.INIT1 = 16'h5aaa;
    defparam add_119_7.INJECT1_0 = "NO";
    defparam add_119_7.INJECT1_1 = "NO";
    LUT4 ball_y_dir_15__I_0_i2_4_lut (.A(\random_num[15] ), .B(ball_y_dir[1]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[1])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i2_4_lut.init = 16'h3aca;
    LUT4 i14_4_lut (.A(u0_pel_y[10]), .B(n28_adj_805), .C(n22_adj_806), 
         .D(u0_pel_y[12]), .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i14_4_lut.init = 16'h8000;
    CCU2D add_119_5 (.A0(ball_y_pos[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2869), .COUT(n2870), .S0(n1122[6]), .S1(n1122[7]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(189[21:45])
    defparam add_119_5.INIT0 = 16'h5aaa;
    defparam add_119_5.INIT1 = 16'h5aaa;
    defparam add_119_5.INJECT1_0 = "NO";
    defparam add_119_5.INJECT1_1 = "NO";
    FD1S3IX u0_pel_x__i15 (.D(u0_pel_x_15__N_671[15]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i15.GSR = "DISABLED";
    CCU2D add_119_3 (.A0(ball_y_pos[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2868), .COUT(n2869), .S0(n1122[4]), .S1(n1122[5]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(189[21:45])
    defparam add_119_3.INIT0 = 16'h5aaa;
    defparam add_119_3.INIT1 = 16'h5aaa;
    defparam add_119_3.INJECT1_0 = "NO";
    defparam add_119_3.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(u0_pel_y[8]), .B(u0_pel_y[3]), .C(u0_pel_y[13]), 
         .D(u0_pel_y[5]), .Z(n26_adj_803)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 ball_y_dir_15__I_0_i3_4_lut (.A(\random_num[16] ), .B(ball_y_dir[2]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[2])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i3_4_lut.init = 16'h3aca;
    CCU2D add_119_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y_pos[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2868), .S1(n1122[3]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(189[21:45])
    defparam add_119_1.INIT0 = 16'hF000;
    defparam add_119_1.INIT1 = 16'h5555;
    defparam add_119_1.INJECT1_0 = "NO";
    defparam add_119_1.INJECT1_1 = "NO";
    CCU2D add_113_13 (.A0(ball_x_pos[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2866), .S0(n1083[14]), .S1(n1083[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(187[21:45])
    defparam add_113_13.INIT0 = 16'h5aaa;
    defparam add_113_13.INIT1 = 16'h5aaa;
    defparam add_113_13.INJECT1_0 = "NO";
    defparam add_113_13.INJECT1_1 = "NO";
    CCU2D add_185_13 (.A0(u0_pel_y[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_y[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2904), .COUT(n2905), .S0(n2163[11]), .S1(n2163[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(234[19:31])
    defparam add_185_13.INIT0 = 16'h5aaa;
    defparam add_185_13.INIT1 = 16'h5aaa;
    defparam add_185_13.INJECT1_0 = "NO";
    defparam add_185_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(ball_x_pos[16]), .B(ball_x_pos[9]), .C(n10), .D(n3246), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa8;
    LUT4 ball_y_dir_15__I_0_i4_4_lut (.A(\random_num[17] ), .B(ball_y_dir[3]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[3])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i4_4_lut.init = 16'h3aca;
    CCU2D add_113_11 (.A0(ball_x_pos[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2865), .COUT(n2866), .S0(n1083[12]), .S1(n1083[13]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(187[21:45])
    defparam add_113_11.INIT0 = 16'h5aaa;
    defparam add_113_11.INIT1 = 16'h5aaa;
    defparam add_113_11.INJECT1_0 = "NO";
    defparam add_113_11.INJECT1_1 = "NO";
    CCU2D sub_308_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(u0_pel_x[0]), .B1(ball_x_pos[8]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2923));
    defparam sub_308_add_2_1.INIT0 = 16'h0000;
    defparam sub_308_add_2_1.INIT1 = 16'h5999;
    defparam sub_308_add_2_1.INJECT1_0 = "NO";
    defparam sub_308_add_2_1.INJECT1_1 = "NO";
    LUT4 ball_y_dir_15__I_0_i5_4_lut (.A(\random_num[18] ), .B(ball_y_dir[4]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[4])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i5_4_lut.init = 16'h3aca;
    CCU2D add_113_9 (.A0(ball_x_pos[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2864), .COUT(n2865), .S0(n1083[10]), .S1(n1083[11]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(187[21:45])
    defparam add_113_9.INIT0 = 16'h5aaa;
    defparam add_113_9.INIT1 = 16'h5aaa;
    defparam add_113_9.INJECT1_0 = "NO";
    defparam add_113_9.INJECT1_1 = "NO";
    CCU2D add_113_7 (.A0(ball_x_pos[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2863), .COUT(n2864), .S0(n1083[8]), .S1(n1083[9]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(187[21:45])
    defparam add_113_7.INIT0 = 16'h5aaa;
    defparam add_113_7.INIT1 = 16'h5aaa;
    defparam add_113_7.INJECT1_0 = "NO";
    defparam add_113_7.INJECT1_1 = "NO";
    FD1S3IX u0_pel_x__i14 (.D(u0_pel_x_15__N_671[14]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i14.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i13 (.D(u0_pel_x_15__N_671[13]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i13.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i12 (.D(u0_pel_x_15__N_671[12]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i12.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i11 (.D(u0_pel_x_15__N_671[11]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i11.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i10 (.D(u0_pel_x_15__N_671[10]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i10.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i9 (.D(u0_pel_x_15__N_671[9]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i9.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i8 (.D(u0_pel_x_15__N_671[8]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i8.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i7 (.D(u0_pel_x_15__N_671[7]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i7.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i6 (.D(u0_pel_x_15__N_671[6]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i6.GSR = "DISABLED";
    CCU2D add_113_5 (.A0(ball_x_pos[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2862), .COUT(n2863), .S0(n1083[6]), .S1(n1083[7]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(187[21:45])
    defparam add_113_5.INIT0 = 16'h5aaa;
    defparam add_113_5.INIT1 = 16'h5aaa;
    defparam add_113_5.INJECT1_0 = "NO";
    defparam add_113_5.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_17 (.A0(line_x_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2946), .S0(n1[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_17.INIT0 = 16'h5555;
    defparam sub_29_add_2_17.INIT1 = 16'h0000;
    defparam sub_29_add_2_17.INJECT1_0 = "NO";
    defparam sub_29_add_2_17.INJECT1_1 = "NO";
    FD1S3IX u0_pel_x__i5 (.D(u0_pel_x_15__N_671[5]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i5.GSR = "DISABLED";
    CCU2D add_113_3 (.A0(ball_x_pos[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2861), .COUT(n2862), .S0(n1083[4]), .S1(n1083[5]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(187[21:45])
    defparam add_113_3.INIT0 = 16'h5aaa;
    defparam add_113_3.INIT1 = 16'h5aaa;
    defparam add_113_3.INJECT1_0 = "NO";
    defparam add_113_3.INJECT1_1 = "NO";
    FD1S3IX u0_pel_x__i4 (.D(u0_pel_x_15__N_671[4]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i4.GSR = "DISABLED";
    CCU2D add_113_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x_pos[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2861), .S1(n1083[3]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(187[21:45])
    defparam add_113_1.INIT0 = 16'hF000;
    defparam add_113_1.INIT1 = 16'h5555;
    defparam add_113_1.INJECT1_0 = "NO";
    defparam add_113_1.INJECT1_1 = "NO";
    FD1S3IX u0_pel_x__i3 (.D(u0_pel_x_15__N_671[3]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i3.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i2 (.D(u0_pel_x_15__N_671[2]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i2.GSR = "DISABLED";
    FD1S3IX u0_pel_x__i1 (.D(u0_pel_x_15__N_671[1]), .CK(out_vga_ck_c), 
            .CD(u0_vid_new_line), .Q(u0_pel_x[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_x__i1.GSR = "DISABLED";
    FD1P3AX dir_chg_sr_i0_i3 (.D(dir_chg_sr_c[2]), .SP(out_vga_ck_c_enable_34), 
            .CK(out_vga_ck_c), .Q(dir_chg_sr_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam dir_chg_sr_i0_i3.GSR = "DISABLED";
    FD1P3AX dir_chg_sr_i0_i2 (.D(dir_chg_sr_c[1]), .SP(out_vga_ck_c_enable_34), 
            .CK(out_vga_ck_c), .Q(dir_chg_sr_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam dir_chg_sr_i0_i2.GSR = "DISABLED";
    FD1P3AX dir_chg_sr_i0_i1 (.D(dir_chg_sr[0]), .SP(out_vga_ck_c_enable_34), 
            .CK(out_vga_ck_c), .Q(dir_chg_sr_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam dir_chg_sr_i0_i1.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i23 (.D(n722[23]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i23.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(ball_x_pos[12]), .B(ball_x_pos[10]), .C(ball_x_pos[8]), 
         .D(ball_x_pos[11]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 ball_y_dir_15__I_0_i6_4_lut (.A(\random_num[19] ), .B(ball_y_dir[5]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[5])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i6_4_lut.init = 16'h3aca;
    CCU2D sub_29_add_2_15 (.A0(line_x_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2945), .COUT(n2946), .S0(n1[13]), .S1(n1[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_15.INIT0 = 16'h5555;
    defparam sub_29_add_2_15.INIT1 = 16'h5555;
    defparam sub_29_add_2_15.INJECT1_0 = "NO";
    defparam sub_29_add_2_15.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(u0_pel_y[1]), .B(u0_pel_y[4]), .Z(n18)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    CCU2D add_79_24 (.A0(ball_y_pos[22]), .B0(ball_y_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[23]), .B1(ball_y_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2859), .S0(n748[22]), .S1(n748[23]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_24.INIT0 = 16'h5666;
    defparam add_79_24.INIT1 = 16'h5666;
    defparam add_79_24.INJECT1_0 = "NO";
    defparam add_79_24.INJECT1_1 = "NO";
    LUT4 i12_4_lut_adj_30 (.A(u0_pel_y[11]), .B(u0_pel_y[9]), .C(u0_pel_y[14]), 
         .D(u0_pel_y[15]), .Z(n28_adj_805)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut_adj_30.init = 16'h8000;
    CCU2D add_79_22 (.A0(ball_y_pos[20]), .B0(ball_y_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[21]), .B1(ball_y_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2858), .COUT(n2859), .S0(n748[20]), .S1(n748[21]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_22.INIT0 = 16'h5666;
    defparam add_79_22.INIT1 = 16'h5666;
    defparam add_79_22.INJECT1_0 = "NO";
    defparam add_79_22.INJECT1_1 = "NO";
    LUT4 i6_2_lut_adj_31 (.A(u0_pel_y[2]), .B(u0_pel_y[7]), .Z(n22_adj_806)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut_adj_31.init = 16'h8888;
    CCU2D add_79_20 (.A0(ball_y_pos[18]), .B0(ball_y_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[19]), .B1(ball_y_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2857), .COUT(n2858), .S0(n748[18]), .S1(n748[19]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_20.INIT0 = 16'h5666;
    defparam add_79_20.INIT1 = 16'h5666;
    defparam add_79_20.INJECT1_0 = "NO";
    defparam add_79_20.INJECT1_1 = "NO";
    LUT4 ball_y_dir_15__I_0_i7_4_lut (.A(\random_num[20] ), .B(ball_y_dir[6]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[6])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i7_4_lut.init = 16'h3aca;
    CCU2D add_79_18 (.A0(ball_y_pos[16]), .B0(ball_y_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[17]), .B1(ball_y_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2856), .COUT(n2857), .S0(n748[16]), .S1(n748[17]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_18.INIT0 = 16'h5666;
    defparam add_79_18.INIT1 = 16'h5666;
    defparam add_79_18.INJECT1_0 = "NO";
    defparam add_79_18.INJECT1_1 = "NO";
    CCU2D add_79_16 (.A0(ball_y_pos[14]), .B0(ball_y_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[15]), .B1(ball_y_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2855), .COUT(n2856), .S0(n748[14]), .S1(n748[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_16.INIT0 = 16'h5666;
    defparam add_79_16.INIT1 = 16'h5666;
    defparam add_79_16.INJECT1_0 = "NO";
    defparam add_79_16.INJECT1_1 = "NO";
    CCU2D add_79_14 (.A0(ball_y_pos[12]), .B0(ball_y_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[13]), .B1(ball_y_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2854), .COUT(n2855), .S0(n748[12]), .S1(ball_y_pos_23__N_521[13]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_14.INIT0 = 16'h5666;
    defparam add_79_14.INIT1 = 16'h5666;
    defparam add_79_14.INJECT1_0 = "NO";
    defparam add_79_14.INJECT1_1 = "NO";
    LUT4 ball_y_dir_15__I_0_i8_4_lut (.A(\random_num[21] ), .B(ball_y_dir[7]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[7])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i8_4_lut.init = 16'h3aca;
    LUT4 ball_y_dir_15__I_0_i9_4_lut (.A(\random_num[22] ), .B(ball_y_dir[8]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[8])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i9_4_lut.init = 16'h3aca;
    LUT4 ball_y_dir_15__I_0_i10_4_lut (.A(\random_num[23] ), .B(ball_y_dir[9]), 
         .C(mode_bit), .D(n3523), .Z(ball_y_dir_15__N_211[9])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam ball_y_dir_15__I_0_i10_4_lut.init = 16'h3aca;
    LUT4 i468_4_lut (.A(mode_bit), .B(n942), .C(n6), .D(n980), .Z(n1274)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam i468_4_lut.init = 16'haaa8;
    LUT4 i2_2_lut_adj_32 (.A(n999), .B(n961), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_32.init = 16'heeee;
    CCU2D add_79_12 (.A0(ball_y_pos[10]), .B0(ball_y_dir[10]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[11]), .B1(ball_y_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2853), .COUT(n2854), .S0(ball_y_pos_23__N_521[10]), 
          .S1(ball_y_pos_23__N_521[11]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_12.INIT0 = 16'h5666;
    defparam add_79_12.INIT1 = 16'h5666;
    defparam add_79_12.INJECT1_0 = "NO";
    defparam add_79_12.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_33 (.A(mode_bit), .B(n466), .C(n3309), .D(n504), 
         .Z(n1248)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_33.init = 16'h0002;
    LUT4 i2058_2_lut (.A(n524), .B(n485), .Z(n3309)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2058_2_lut.init = 16'heeee;
    CCU2D add_79_10 (.A0(ball_y_pos[8]), .B0(ball_y_dir[8]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[9]), .B1(ball_y_dir[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2852), .COUT(n2853), .S0(n748[8]), .S1(n748[9]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_10.INIT0 = 16'h5666;
    defparam add_79_10.INIT1 = 16'h5666;
    defparam add_79_10.INJECT1_0 = "NO";
    defparam add_79_10.INJECT1_1 = "NO";
    CCU2D add_79_8 (.A0(ball_y_pos[6]), .B0(ball_y_dir[6]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[7]), .B1(ball_y_dir[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2851), .COUT(n2852), .S0(n748[6]), .S1(n748[7]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_8.INIT0 = 16'h5666;
    defparam add_79_8.INIT1 = 16'h5666;
    defparam add_79_8.INJECT1_0 = "NO";
    defparam add_79_8.INJECT1_1 = "NO";
    CCU2D add_79_6 (.A0(ball_y_pos[4]), .B0(ball_y_dir[4]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[5]), .B1(ball_y_dir[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2850), .COUT(n2851), .S0(n748[4]), .S1(n748[5]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_6.INIT0 = 16'h5666;
    defparam add_79_6.INIT1 = 16'h5666;
    defparam add_79_6.INJECT1_0 = "NO";
    defparam add_79_6.INJECT1_1 = "NO";
    CCU2D add_79_4 (.A0(ball_y_pos[2]), .B0(ball_y_dir[2]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[3]), .B1(ball_y_dir[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2849), .COUT(n2850), .S0(n748[2]), .S1(n748[3]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_4.INIT0 = 16'h5666;
    defparam add_79_4.INIT1 = 16'h5666;
    defparam add_79_4.INJECT1_0 = "NO";
    defparam add_79_4.INJECT1_1 = "NO";
    CCU2D add_79_2 (.A0(ball_y_pos[0]), .B0(ball_y_dir[0]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[1]), .B1(ball_y_dir[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2849), .S1(n748[1]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(163[21:76])
    defparam add_79_2.INIT0 = 16'h7000;
    defparam add_79_2.INIT1 = 16'h5666;
    defparam add_79_2.INJECT1_0 = "NO";
    defparam add_79_2.INJECT1_1 = "NO";
    CCU2D add_78_24 (.A0(ball_x_pos[22]), .B0(ball_x_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[23]), .B1(ball_x_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2846), .S0(n722[22]), .S1(n722[23]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_24.INIT0 = 16'h5666;
    defparam add_78_24.INIT1 = 16'h5666;
    defparam add_78_24.INJECT1_0 = "NO";
    defparam add_78_24.INJECT1_1 = "NO";
    CCU2D add_78_22 (.A0(ball_x_pos[20]), .B0(ball_x_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[21]), .B1(ball_x_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2845), .COUT(n2846), .S0(n722[20]), .S1(n722[21]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_22.INIT0 = 16'h5666;
    defparam add_78_22.INIT1 = 16'h5666;
    defparam add_78_22.INJECT1_0 = "NO";
    defparam add_78_22.INJECT1_1 = "NO";
    CCU2D add_78_20 (.A0(ball_x_pos[18]), .B0(ball_x_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[19]), .B1(ball_x_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2844), .COUT(n2845), .S0(n722[18]), .S1(n722[19]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_20.INIT0 = 16'h5666;
    defparam add_78_20.INIT1 = 16'h5666;
    defparam add_78_20.INJECT1_0 = "NO";
    defparam add_78_20.INJECT1_1 = "NO";
    CCU2D add_78_18 (.A0(ball_x_pos[16]), .B0(ball_x_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[17]), .B1(ball_x_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2843), .COUT(n2844), .S0(n722[16]), .S1(n722[17]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_18.INIT0 = 16'h5666;
    defparam add_78_18.INIT1 = 16'h5666;
    defparam add_78_18.INJECT1_0 = "NO";
    defparam add_78_18.INJECT1_1 = "NO";
    CCU2D add_78_16 (.A0(ball_x_pos[14]), .B0(ball_x_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[15]), .B1(ball_x_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2842), .COUT(n2843), .S0(n722[14]), .S1(ball_x_pos_23__N_497[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_16.INIT0 = 16'h5666;
    defparam add_78_16.INIT1 = 16'h5666;
    defparam add_78_16.INJECT1_0 = "NO";
    defparam add_78_16.INJECT1_1 = "NO";
    CCU2D add_78_14 (.A0(ball_x_pos[12]), .B0(ball_x_dir[11]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[13]), .B1(ball_x_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2841), .COUT(n2842), .S0(ball_x_pos_23__N_497[12]), 
          .S1(n722[13]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_14.INIT0 = 16'h5666;
    defparam add_78_14.INIT1 = 16'h5666;
    defparam add_78_14.INJECT1_0 = "NO";
    defparam add_78_14.INJECT1_1 = "NO";
    CCU2D add_78_12 (.A0(ball_x_pos[10]), .B0(ball_x_dir[10]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[11]), .B1(ball_x_dir[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2840), .COUT(n2841), .S0(n722[10]), .S1(n722[11]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_12.INIT0 = 16'h5666;
    defparam add_78_12.INIT1 = 16'h5666;
    defparam add_78_12.INJECT1_0 = "NO";
    defparam add_78_12.INJECT1_1 = "NO";
    CCU2D add_78_10 (.A0(ball_x_pos[8]), .B0(ball_x_dir[8]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[9]), .B1(ball_x_dir[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2839), .COUT(n2840), .S0(n722[8]), .S1(n722[9]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_10.INIT0 = 16'h5666;
    defparam add_78_10.INIT1 = 16'h5666;
    defparam add_78_10.INJECT1_0 = "NO";
    defparam add_78_10.INJECT1_1 = "NO";
    CCU2D add_78_8 (.A0(ball_x_pos[6]), .B0(ball_x_dir[6]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[7]), .B1(ball_x_dir[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2838), .COUT(n2839), .S0(n722[6]), .S1(n722[7]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_8.INIT0 = 16'h5666;
    defparam add_78_8.INIT1 = 16'h5666;
    defparam add_78_8.INJECT1_0 = "NO";
    defparam add_78_8.INJECT1_1 = "NO";
    CCU2D add_78_6 (.A0(ball_x_pos[4]), .B0(ball_x_dir[4]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[5]), .B1(ball_x_dir[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2837), .COUT(n2838), .S0(n722[4]), .S1(n722[5]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_6.INIT0 = 16'h5666;
    defparam add_78_6.INIT1 = 16'h5666;
    defparam add_78_6.INJECT1_0 = "NO";
    defparam add_78_6.INJECT1_1 = "NO";
    CCU2D add_78_4 (.A0(ball_x_pos[2]), .B0(ball_x_dir[2]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[3]), .B1(ball_x_dir[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2836), .COUT(n2837), .S0(n722[2]), .S1(n722[3]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_4.INIT0 = 16'h5666;
    defparam add_78_4.INIT1 = 16'h5666;
    defparam add_78_4.INJECT1_0 = "NO";
    defparam add_78_4.INJECT1_1 = "NO";
    CCU2D add_78_2 (.A0(ball_x_pos[0]), .B0(ball_x_dir[0]), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[1]), .B1(ball_x_dir[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2836), .S1(n722[1]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(162[21:76])
    defparam add_78_2.INIT0 = 16'h7000;
    defparam add_78_2.INIT1 = 16'h5666;
    defparam add_78_2.INJECT1_0 = "NO";
    defparam add_78_2.INJECT1_1 = "NO";
    CCU2D add_64_15 (.A0(line_y_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2834), .S0(n507[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_15.INIT0 = 16'hfaaa;
    defparam add_64_15.INIT1 = 16'h0000;
    defparam add_64_15.INJECT1_0 = "NO";
    defparam add_64_15.INJECT1_1 = "NO";
    CCU2D add_64_13 (.A0(line_y_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2833), .COUT(n2834), .S0(n507[13]), .S1(n507[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_13.INIT0 = 16'hfaaa;
    defparam add_64_13.INIT1 = 16'hfaaa;
    defparam add_64_13.INJECT1_0 = "NO";
    defparam add_64_13.INJECT1_1 = "NO";
    CCU2D equal_59_16 (.A0(line_x_pos[1]), .B0(u0_pel_x[1]), .C0(line_x_pos[0]), 
          .D0(u0_pel_x[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2810), .S1(n485));
    defparam equal_59_16.INIT0 = 16'h9009;
    defparam equal_59_16.INIT1 = 16'hFFFF;
    defparam equal_59_16.INJECT1_0 = "YES";
    defparam equal_59_16.INJECT1_1 = "NO";
    CCU2D add_64_11 (.A0(line_y_pos[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2832), .COUT(n2833), .S0(n507[11]), .S1(n507[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_11.INIT0 = 16'hfaaa;
    defparam add_64_11.INIT1 = 16'hfaaa;
    defparam add_64_11.INJECT1_0 = "NO";
    defparam add_64_11.INJECT1_1 = "NO";
    CCU2D add_64_9 (.A0(line_y_pos[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_y_pos[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2831), .COUT(n2832), .S0(n507[9]), .S1(n507[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_9.INIT0 = 16'hfaaa;
    defparam add_64_9.INIT1 = 16'hfaaa;
    defparam add_64_9.INJECT1_0 = "NO";
    defparam add_64_9.INJECT1_1 = "NO";
    CCU2D add_64_7 (.A0(line_y_pos[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_y_pos[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2830), .COUT(n2831), .S0(n507[7]), .S1(n507[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_7.INIT0 = 16'hfaaa;
    defparam add_64_7.INIT1 = 16'h0555;
    defparam add_64_7.INJECT1_0 = "NO";
    defparam add_64_7.INJECT1_1 = "NO";
    CCU2D add_64_5 (.A0(line_y_pos[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_y_pos[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2829), .COUT(n2830), .S0(n507[5]), .S1(n507[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_5.INIT0 = 16'h0555;
    defparam add_64_5.INIT1 = 16'hfaaa;
    defparam add_64_5.INJECT1_0 = "NO";
    defparam add_64_5.INJECT1_1 = "NO";
    CCU2D add_64_3 (.A0(line_y_pos[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_y_pos[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2828), .COUT(n2829), .S0(n507[3]), .S1(n507[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_3.INIT0 = 16'h0555;
    defparam add_64_3.INIT1 = 16'hfaaa;
    defparam add_64_3.INJECT1_0 = "NO";
    defparam add_64_3.INJECT1_1 = "NO";
    CCU2D equal_59_15 (.A0(n468[5]), .B0(u0_pel_x[5]), .C0(n468[4]), .D0(u0_pel_x[4]), 
          .A1(line_x_pos[3]), .B1(u0_pel_x[3]), .C1(line_x_pos[2]), .D1(u0_pel_x[2]), 
          .CIN(n2809), .COUT(n2810));
    defparam equal_59_15.INIT0 = 16'h9009;
    defparam equal_59_15.INIT1 = 16'h9009;
    defparam equal_59_15.INJECT1_0 = "YES";
    defparam equal_59_15.INJECT1_1 = "YES";
    CCU2D add_64_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_y_pos[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2828), .S1(n507[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[22:48])
    defparam add_64_1.INIT0 = 16'hF000;
    defparam add_64_1.INIT1 = 16'h0555;
    defparam add_64_1.INJECT1_0 = "NO";
    defparam add_64_1.INJECT1_1 = "NO";
    CCU2D add_58_13 (.A0(line_x_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2827), .S0(n468[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[22:48])
    defparam add_58_13.INIT0 = 16'hfaaa;
    defparam add_58_13.INIT1 = 16'h0000;
    defparam add_58_13.INJECT1_0 = "NO";
    defparam add_58_13.INJECT1_1 = "NO";
    LUT4 i1552_2_lut (.A(n2181[4]), .B(n2457), .Z(u0_pel_x_15__N_671[4])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1552_2_lut.init = 16'heeee;
    LUT4 i1554_2_lut (.A(n2181[6]), .B(n2457), .Z(u0_pel_x_15__N_671[6])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1554_2_lut.init = 16'heeee;
    LUT4 i1551_2_lut (.A(n2181[3]), .B(n2457), .Z(u0_pel_x_15__N_671[3])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1551_2_lut.init = 16'heeee;
    LUT4 i1550_2_lut (.A(n2181[2]), .B(n2457), .Z(u0_pel_x_15__N_671[2])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1550_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_34 (.A(dir_chg_sr[0]), .B(dir_chg_sr_c[2]), .C(dir_chg_sr_c[1]), 
         .D(dir_chg_sr_c[3]), .Z(n3041)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(168[47:65])
    defparam i3_4_lut_adj_34.init = 16'hfffe;
    LUT4 i1549_2_lut (.A(n2181[1]), .B(n2457), .Z(u0_pel_x_15__N_671[1])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1549_2_lut.init = 16'heeee;
    FD1P3IX ball_x_pos_i22 (.D(n722[22]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i22.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i21 (.D(n722[21]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i21.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i20 (.D(n722[20]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i20.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i19 (.D(n722[19]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i19.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i18 (.D(n722[18]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i18.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i17 (.D(n722[17]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i17.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i16 (.D(n722[16]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i16.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i14 (.D(n722[14]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i14.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i13 (.D(n722[13]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i13.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i11 (.D(n722[11]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i11.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i10 (.D(n722[10]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i10.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i9 (.D(n722[9]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i9.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i8 (.D(n722[8]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i8.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i7 (.D(n722[7]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i7.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i6 (.D(n722[6]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i6.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i5 (.D(n722[5]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i5.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i4 (.D(n722[4]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i4.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i3 (.D(n722[3]), .SP(out_vga_ck_c_enable_53), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i3.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i2 (.D(n722[2]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i2.GSR = "DISABLED";
    FD1P3IX ball_x_pos_i1 (.D(n722[1]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(ball_x_pos[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i1.GSR = "DISABLED";
    FD1P3IX line_y_pos_i15 (.D(n3[15]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i15.GSR = "DISABLED";
    FD1P3IX line_y_pos_i14 (.D(n3[14]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i14.GSR = "DISABLED";
    FD1P3IX line_y_pos_i13 (.D(n3[13]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i13.GSR = "DISABLED";
    FD1P3IX line_y_pos_i12 (.D(n3[12]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i12.GSR = "DISABLED";
    FD1P3IX line_y_pos_i11 (.D(n3[11]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i11.GSR = "DISABLED";
    FD1P3IX line_y_pos_i10 (.D(n3[10]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i10.GSR = "DISABLED";
    FD1P3IX line_y_pos_i9 (.D(n3[9]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i9.GSR = "DISABLED";
    FD1P3AX line_y_pos_i8 (.D(line_y_pos_15__N_323[8]), .SP(out_vga_ck_c_enable_69), 
            .CK(out_vga_ck_c), .Q(line_y_pos[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i8.GSR = "DISABLED";
    FD1P3IX line_y_pos_i7 (.D(n3[7]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i7.GSR = "DISABLED";
    FD1P3IX line_y_pos_i6 (.D(n3[6]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i6.GSR = "DISABLED";
    FD1P3AX line_y_pos_i5 (.D(line_y_pos_15__N_323[5]), .SP(out_vga_ck_c_enable_69), 
            .CK(out_vga_ck_c), .Q(line_y_pos[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i5.GSR = "DISABLED";
    FD1P3IX line_y_pos_i4 (.D(n3[4]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i4.GSR = "DISABLED";
    FD1P3AX line_y_pos_i3 (.D(line_y_pos_15__N_323[3]), .SP(out_vga_ck_c_enable_69), 
            .CK(out_vga_ck_c), .Q(line_y_pos[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i3.GSR = "DISABLED";
    FD1P3AX line_y_pos_i2 (.D(line_y_pos_15__N_323[2]), .SP(out_vga_ck_c_enable_69), 
            .CK(out_vga_ck_c), .Q(line_y_pos[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i2.GSR = "DISABLED";
    FD1P3IX line_y_pos_i1 (.D(n3[1]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_y_pos[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_y_pos_i1.GSR = "DISABLED";
    LUT4 i1555_2_lut (.A(n2181[7]), .B(n2457), .Z(u0_pel_x_15__N_671[7])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1555_2_lut.init = 16'heeee;
    FD1P3JX ball_x_pos_i12 (.D(ball_x_pos_23__N_497[12]), .SP(out_vga_ck_c_enable_69), 
            .PD(n3545), .CK(out_vga_ck_c), .Q(ball_x_pos[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i12.GSR = "DISABLED";
    LUT4 i1507_2_lut (.A(n2[15]), .B(n2448), .Z(n3[15])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1507_2_lut.init = 16'h8888;
    LUT4 i1556_2_lut (.A(n2181[8]), .B(n2457), .Z(u0_pel_x_15__N_671[8])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1556_2_lut.init = 16'heeee;
    LUT4 i1557_2_lut (.A(n2181[9]), .B(n2457), .Z(u0_pel_x_15__N_671[9])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1557_2_lut.init = 16'heeee;
    FD1P3JX ball_x_pos_i15 (.D(ball_x_pos_23__N_497[15]), .SP(out_vga_ck_c_enable_69), 
            .PD(n3545), .CK(out_vga_ck_c), .Q(ball_x_pos[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_pos_i15.GSR = "DISABLED";
    FD1P3JX ball_y_pos_i10 (.D(ball_y_pos_23__N_521[10]), .SP(out_vga_ck_c_enable_69), 
            .PD(n3545), .CK(out_vga_ck_c), .Q(ball_y_pos[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i10.GSR = "DISABLED";
    LUT4 i1558_2_lut (.A(n2181[10]), .B(n2457), .Z(u0_pel_x_15__N_671[10])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1558_2_lut.init = 16'heeee;
    FD1P3JX ball_y_pos_i11 (.D(ball_y_pos_23__N_521[11]), .SP(out_vga_ck_c_enable_69), 
            .PD(n3545), .CK(out_vga_ck_c), .Q(ball_y_pos[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i11.GSR = "DISABLED";
    FD1P3IX line_x_pos_i15 (.D(n331[15]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i15.GSR = "DISABLED";
    LUT4 i1559_2_lut (.A(n2181[11]), .B(n2457), .Z(u0_pel_x_15__N_671[11])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1559_2_lut.init = 16'heeee;
    FD1P3JX ball_y_pos_i13 (.D(ball_y_pos_23__N_521[13]), .SP(out_vga_ck_c_enable_69), 
            .PD(n3545), .CK(out_vga_ck_c), .Q(ball_y_pos[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_pos_i13.GSR = "DISABLED";
    FD1P3IX vga_rgb_tp__i1 (.D(n1963), .SP(out_vga_ck_c_enable_65), .CD(n1964), 
            .CK(out_vga_ck_c), .Q(vga_rgb_tp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(200[8] 220[4])
    defparam vga_rgb_tp__i1.GSR = "DISABLED";
    LUT4 i1560_2_lut (.A(n2181[12]), .B(n2457), .Z(u0_pel_x_15__N_671[12])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1560_2_lut.init = 16'heeee;
    LUT4 i1561_2_lut (.A(n2181[13]), .B(n2457), .Z(u0_pel_x_15__N_671[13])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1561_2_lut.init = 16'heeee;
    FD1P3IX vga_rgb_tp__i2 (.D(n3218), .SP(out_vga_ck_c_enable_65), .CD(n1964), 
            .CK(out_vga_ck_c), .Q(vga_rgb_tp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(200[8] 220[4])
    defparam vga_rgb_tp__i2.GSR = "DISABLED";
    FD1P3IX vga_rgb_tp__i3 (.D(n3350), .SP(out_vga_ck_c_enable_65), .CD(n1964), 
            .CK(out_vga_ck_c), .Q(vga_rgb_tp[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(200[8] 220[4])
    defparam vga_rgb_tp__i3.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i0 (.D(n1688[0]), .SP(out_vga_ck_c_enable_80), .CD(out_vga_ck_c_enable_53), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i0.GSR = "DISABLED";
    LUT4 i5_3_lut (.A(ball_x_pos[20]), .B(n10_adj_816), .C(ball_x_pos[23]), 
         .Z(n1818)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i630_3_lut (.A(demo_mode[0]), .B(mode_bit_p1), .C(mode_bit), 
         .Z(n7[0])) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(74[8] 111[4])
    defparam i630_3_lut.init = 16'h9a9a;
    LUT4 i4_4_lut_adj_35 (.A(ball_x_pos[21]), .B(ball_x_pos[19]), .C(ball_x_pos[22]), 
         .D(ball_x_pos[18]), .Z(n10_adj_816)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_35.init = 16'hfffe;
    FD1P3IX line_x_pos_i14 (.D(n331[14]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i14.GSR = "DISABLED";
    FD1P3IX line_x_pos_i13 (.D(n331[13]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i13.GSR = "DISABLED";
    FD1P3IX line_x_pos_i12 (.D(n331[12]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i12.GSR = "DISABLED";
    FD1P3IX line_x_pos_i11 (.D(n331[11]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i11.GSR = "DISABLED";
    FD1P3IX line_x_pos_i10 (.D(n331[10]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i10.GSR = "DISABLED";
    FD1P3IX line_x_pos_i9 (.D(n331[9]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i9.GSR = "DISABLED";
    FD1P3AX line_x_pos_i8 (.D(line_x_pos_15__N_307[8]), .SP(out_vga_ck_c_enable_69), 
            .CK(out_vga_ck_c), .Q(line_x_pos[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i8.GSR = "DISABLED";
    FD1P3AX line_x_pos_i7 (.D(line_x_pos_15__N_307[7]), .SP(out_vga_ck_c_enable_69), 
            .CK(out_vga_ck_c), .Q(line_x_pos[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i7.GSR = "DISABLED";
    FD1P3IX line_x_pos_i6 (.D(n331[6]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i6.GSR = "DISABLED";
    FD1P3IX line_x_pos_i5 (.D(n331[5]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i5.GSR = "DISABLED";
    FD1P3AX line_x_pos_i4 (.D(line_x_pos_15__N_307[4]), .SP(out_vga_ck_c_enable_69), 
            .CK(out_vga_ck_c), .Q(line_x_pos[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i4.GSR = "DISABLED";
    FD1P3IX line_x_pos_i3 (.D(n331[3]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i3.GSR = "DISABLED";
    FD1P3IX line_x_pos_i2 (.D(n331[2]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i2.GSR = "DISABLED";
    FD1P3IX line_x_pos_i1 (.D(n331[1]), .SP(u0_vid_new_frame), .CD(n3545), 
            .CK(out_vga_ck_c), .Q(line_x_pos[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_x_pos_i1.GSR = "DISABLED";
    FD1P3AX ball_rgb__i16 (.D(\random_num[15] ), .SP(out_vga_ck_c_enable_71), 
            .CK(out_vga_ck_c), .Q(ball_rgb[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_rgb__i16.GSR = "DISABLED";
    FD1P3AX ball_rgb__i8 (.D(\random_num[7] ), .SP(out_vga_ck_c_enable_71), 
            .CK(out_vga_ck_c), .Q(ball_rgb[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_rgb__i8.GSR = "DISABLED";
    FD1S3AX vga_rgb_i3 (.D(vga_pixel_rgb_23__N_387[23]), .CK(out_vga_ck_c), 
            .Q(out_vga_r_c_23)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(74[8] 111[4])
    defparam vga_rgb_i3.GSR = "DISABLED";
    FD1S3AX vga_rgb_i2 (.D(vga_pixel_rgb_23__N_387[15]), .CK(out_vga_ck_c), 
            .Q(out_vga_g_c_15)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(74[8] 111[4])
    defparam vga_rgb_i2.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i15 (.D(n1688[15]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i15.GSR = "DISABLED";
    LUT4 i1762_2_lut (.A(ball_x_pos[0]), .B(ball_x_dir[0]), .Z(n722[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1762_2_lut.init = 16'h6666;
    FD1P3IX u0_pel_y__i14 (.D(n1688[14]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i14.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i13 (.D(n1688[13]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i13.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i12 (.D(n1688[12]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i12.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i11 (.D(n1688[11]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i11.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i10 (.D(n1688[10]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i10.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i9 (.D(n1688[9]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i9.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i8 (.D(n1688[8]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i8.GSR = "DISABLED";
    FD1P3IX u0_pel_y__i7 (.D(n1688[7]), .SP(out_vga_ck_c_enable_80), .CD(u0_vid_new_frame), 
            .CK(out_vga_ck_c), .Q(u0_pel_y[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(226[8] 249[4])
    defparam u0_pel_y__i7.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i2 (.D(ball_x_dir_15__N_195[2]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i2.GSR = "DISABLED";
    LUT4 i1514_2_lut (.A(n2[7]), .B(n2448), .Z(n3[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1514_2_lut.init = 16'h8888;
    FD1S3AX ball_x_dir_i3 (.D(ball_x_dir_15__N_195[3]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i3.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i4 (.D(ball_x_dir_15__N_195[4]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i4.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i5 (.D(ball_x_dir_15__N_195[5]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i5.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i6 (.D(ball_x_dir_15__N_195[6]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i6.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i7 (.D(ball_x_dir_15__N_195[7]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i7.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i8 (.D(ball_x_dir_15__N_195[8]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i8.GSR = "DISABLED";
    FD1S3AX ball_x_dir_i9 (.D(ball_x_dir_15__N_195[9]), .CK(out_vga_ck_c), 
            .Q(ball_x_dir[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i9.GSR = "DISABLED";
    FD1S3JX ball_x_dir_i10 (.D(ball_x_dir_15__N_569[10]), .CK(out_vga_ck_c), 
            .PD(n3545), .Q(ball_x_dir[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i10.GSR = "DISABLED";
    FD1S3IX ball_x_dir_i11 (.D(ball_x_dir_15__N_569[11]), .CK(out_vga_ck_c), 
            .CD(n3545), .Q(ball_x_dir[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_x_dir_i11.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i1 (.D(ball_y_dir_15__N_211[1]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i1.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i2 (.D(ball_y_dir_15__N_211[2]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i2.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i3 (.D(ball_y_dir_15__N_211[3]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i3.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i4 (.D(ball_y_dir_15__N_211[4]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i4.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i5 (.D(ball_y_dir_15__N_211[5]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i5.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i6 (.D(ball_y_dir_15__N_211[6]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i6.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i7 (.D(ball_y_dir_15__N_211[7]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i7.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i8 (.D(ball_y_dir_15__N_211[8]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i8.GSR = "DISABLED";
    FD1S3AX ball_y_dir_i9 (.D(ball_y_dir_15__N_211[9]), .CK(out_vga_ck_c), 
            .Q(ball_y_dir[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i9.GSR = "DISABLED";
    FD1S3JX ball_y_dir_i10 (.D(ball_y_dir_15__N_585[10]), .CK(out_vga_ck_c), 
            .PD(n3545), .Q(ball_y_dir[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i10.GSR = "DISABLED";
    FD1S3IX ball_y_dir_i11 (.D(ball_y_dir_15__N_585[11]), .CK(out_vga_ck_c), 
            .CD(n3545), .Q(ball_y_dir[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam ball_y_dir_i11.GSR = "DISABLED";
    LUT4 i1515_2_lut (.A(n2[6]), .B(n2448), .Z(n3[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1515_2_lut.init = 16'h8888;
    LUT4 i1404_2_lut (.A(n1[0]), .B(n2448), .Z(n331[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1404_2_lut.init = 16'h8888;
    LUT4 i1644_4_lut (.A(n25_adj_817), .B(n3047), .C(n30_adj_818), .D(n26_adj_819), 
         .Z(n2448)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1644_4_lut.init = 16'hccc8;
    LUT4 i9_4_lut (.A(line_x_pos[15]), .B(line_x_pos[14]), .C(line_x_pos[9]), 
         .D(line_x_pos[11]), .Z(n25_adj_817)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1516_2_lut (.A(n2[4]), .B(n2448), .Z(n3[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1516_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_22_3_lut (.A(n3688), .B(n3041), .C(n3282), .Z(n3522)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(160[5] 182[8])
    defparam i1_2_lut_rep_22_3_lut.init = 16'h2020;
    LUT4 i206_2_lut (.A(n3688), .B(mode_bit), .Z(out_vga_ck_c_enable_34)) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(156[12] 192[6])
    defparam i206_2_lut.init = 16'h8888;
    LUT4 i619_2_lut_3_lut_4_lut (.A(n3688), .B(n3041), .C(ball_x_dir[10]), 
         .D(n3282), .Z(ball_x_dir_15__N_569[10])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(160[5] 182[8])
    defparam i619_2_lut_3_lut_4_lut.init = 16'hd2f0;
    LUT4 i15_4_lut_adj_36 (.A(n17_adj_820), .B(n30_adj_821), .C(n26_adj_822), 
         .D(n18_adj_823), .Z(n3047)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut_adj_36.init = 16'hfffe;
    LUT4 i14_4_lut_adj_37 (.A(line_x_pos[5]), .B(n28_adj_801), .C(n22_adj_804), 
         .D(line_x_pos[3]), .Z(n30_adj_818)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut_adj_37.init = 16'hfffe;
    LUT4 i10_4_lut_adj_38 (.A(line_x_pos[7]), .B(line_x_pos[12]), .C(line_x_pos[2]), 
         .D(line_x_pos[10]), .Z(n26_adj_819)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_38.init = 16'hfffe;
    LUT4 i1592_3_lut (.A(n3041), .B(n1836), .C(n3282), .Z(n2638)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(175[16] 178[10])
    defparam i1592_3_lut.init = 16'h5454;
    LUT4 i1_2_lut_adj_39 (.A(line_y_pos[15]), .B(line_y_pos[9]), .Z(n17_adj_820)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_39.init = 16'heeee;
    LUT4 i6_4_lut (.A(n3258), .B(n12), .C(ball_y_pos[19]), .D(ball_y_pos[21]), 
         .Z(n1836)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i618_2_lut_3_lut_4_lut (.A(n3688), .B(n3041), .C(ball_x_dir[11]), 
         .D(n3282), .Z(ball_x_dir_15__N_569[11])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(160[5] 182[8])
    defparam i618_2_lut_3_lut_4_lut.init = 16'hd2f0;
    LUT4 i1_2_lut_rep_23_3_lut (.A(n3688), .B(n3041), .C(n1836), .Z(n3523)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(160[5] 182[8])
    defparam i1_2_lut_rep_23_3_lut.init = 16'h2020;
    LUT4 i14_4_lut_adj_40 (.A(line_y_pos[5]), .B(n28), .C(n22), .D(line_y_pos[3]), 
         .Z(n30_adj_821)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut_adj_40.init = 16'hfffe;
    LUT4 i1519_2_lut (.A(n2[1]), .B(n2448), .Z(n3[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1519_2_lut.init = 16'h8888;
    LUT4 i1520_2_lut (.A(n1[15]), .B(n2448), .Z(n331[15])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1520_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_41 (.A(n3249), .B(n3040), .C(ball_y_pos[13]), .D(ball_y_pos[17]), 
         .Z(n3258)) /* synthesis lut_function=(A (D)+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i1_4_lut_adj_41.init = 16'hea05;
    LUT4 i5_4_lut (.A(ball_y_pos[18]), .B(ball_y_pos[23]), .C(ball_y_pos[22]), 
         .D(ball_y_pos[20]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i913_1_lut (.A(u0_pel_x[7]), .Z(n1963)) /* synthesis lut_function=(!(A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(205[12] 217[6])
    defparam i913_1_lut.init = 16'h5555;
    LUT4 i2106_2_lut (.A(u0_pel_x[8]), .B(u0_pel_x[7]), .Z(n3350)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(205[12] 217[6])
    defparam i2106_2_lut.init = 16'h6666;
    LUT4 i608_2_lut_3_lut_4_lut (.A(n3688), .B(n3041), .C(ball_y_dir[10]), 
         .D(n1836), .Z(ball_y_dir_15__N_585[10])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(160[5] 182[8])
    defparam i608_2_lut_3_lut_4_lut.init = 16'hd2f0;
    LUT4 i607_2_lut_3_lut_4_lut (.A(n3688), .B(n3041), .C(ball_y_dir[11]), 
         .D(n1836), .Z(ball_y_dir_15__N_585[11])) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(160[5] 182[8])
    defparam i607_2_lut_3_lut_4_lut.init = 16'hd2f0;
    FD1P3AX line_rgb__i8 (.D(\random_num[7] ), .SP(out_vga_ck_c_enable_82), 
            .CK(out_vga_ck_c), .Q(line_rgb[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_rgb__i8.GSR = "DISABLED";
    LUT4 i1562_2_lut (.A(n2181[14]), .B(n2457), .Z(u0_pel_x_15__N_671[14])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1562_2_lut.init = 16'heeee;
    LUT4 i1409_2_lut (.A(n2163[0]), .B(n2453), .Z(n1688[0])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1409_2_lut.init = 16'heeee;
    LUT4 i1563_2_lut (.A(n2181[15]), .B(n2457), .Z(u0_pel_x_15__N_671[15])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1563_2_lut.init = 16'heeee;
    LUT4 i1538_2_lut (.A(n2163[5]), .B(n2453), .Z(n1688[5])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1538_2_lut.init = 16'heeee;
    LUT4 i1535_2_lut (.A(n2163[2]), .B(n2453), .Z(n1688[2])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1535_2_lut.init = 16'heeee;
    FD1P3AX line_rgb__i16 (.D(\random_num[15] ), .SP(out_vga_ck_c_enable_82), 
            .CK(out_vga_ck_c), .Q(line_rgb[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam line_rgb__i16.GSR = "DISABLED";
    FD1P3IX vga_rgb_ball__i7 (.D(ball_rgb[7]), .SP(mode_bit), .CD(n1274), 
            .CK(out_vga_ck_c), .Q(vga_rgb_ball[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam vga_rgb_ball__i7.GSR = "DISABLED";
    LUT4 i1521_2_lut (.A(n1[14]), .B(n2448), .Z(n331[14])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1521_2_lut.init = 16'h8888;
    LUT4 i1508_2_lut (.A(n2[14]), .B(n2448), .Z(n3[14])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1508_2_lut.init = 16'h8888;
    LUT4 i1509_2_lut (.A(n2[13]), .B(n2448), .Z(n3[13])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1509_2_lut.init = 16'h8888;
    CCU2D add_58_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_x_pos[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2822), .S1(n468[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[22:48])
    defparam add_58_1.INIT0 = 16'hF000;
    defparam add_58_1.INIT1 = 16'h0555;
    defparam add_58_1.INJECT1_0 = "NO";
    defparam add_58_1.INJECT1_1 = "NO";
    CCU2D add_58_11 (.A0(line_x_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2826), .COUT(n2827), .S0(n468[13]), .S1(n468[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(135[22:48])
    defparam add_58_11.INIT0 = 16'hfaaa;
    defparam add_58_11.INIT1 = 16'hfaaa;
    defparam add_58_11.INJECT1_0 = "NO";
    defparam add_58_11.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_42 (.A(ball_y_pos[12]), .B(ball_y_pos[11]), .C(ball_y_pos[10]), 
         .D(n4_adj_824), .Z(n3040)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_42.init = 16'hfeee;
    LUT4 i1537_2_lut (.A(n2163[4]), .B(n2453), .Z(n1688[4])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1537_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_43 (.A(ball_y_pos[9]), .B(ball_y_pos[8]), .Z(n4_adj_824)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_43.init = 16'h8888;
    LUT4 i1522_2_lut (.A(n1[13]), .B(n2448), .Z(n331[13])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1522_2_lut.init = 16'h8888;
    LUT4 i2_3_lut (.A(ball_y_pos[16]), .B(ball_y_pos[15]), .C(ball_y_pos[14]), 
         .Z(n3249)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1523_2_lut (.A(n1[12]), .B(n2448), .Z(n331[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1523_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_adj_44 (.A(ball_x_pos[14]), .B(ball_x_pos[15]), .C(ball_x_pos[13]), 
         .Z(n3246)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_44.init = 16'hfefe;
    LUT4 i1510_2_lut (.A(n2[12]), .B(n2448), .Z(n3[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1510_2_lut.init = 16'h8888;
    LUT4 i1524_2_lut (.A(n1[11]), .B(n2448), .Z(n331[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1524_2_lut.init = 16'h8888;
    CCU2D sub_29_add_2_13 (.A0(line_x_pos[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2944), .COUT(n2945), .S0(n1[11]), .S1(n1[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_13.INIT0 = 16'h5555;
    defparam sub_29_add_2_13.INIT1 = 16'h5555;
    defparam sub_29_add_2_13.INJECT1_0 = "NO";
    defparam sub_29_add_2_13.INJECT1_1 = "NO";
    CCU2D equal_65_16 (.A0(line_y_pos[1]), .B0(u0_pel_y[1]), .C0(line_y_pos[0]), 
          .D0(u0_pel_y[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2818), .S1(n524));
    defparam equal_65_16.INIT0 = 16'h9009;
    defparam equal_65_16.INIT1 = 16'hFFFF;
    defparam equal_65_16.INJECT1_0 = "YES";
    defparam equal_65_16.INJECT1_1 = "NO";
    FD1P3IX vga_rgb_ball__i15 (.D(ball_rgb[15]), .SP(mode_bit), .CD(n1274), 
            .CK(out_vga_ck_c), .Q(vga_rgb_ball[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam vga_rgb_ball__i15.GSR = "DISABLED";
    FD1P3IX vga_rgb_ball__i23 (.D(n3684), .SP(mode_bit), .CD(n1274), .CK(out_vga_ck_c), 
            .Q(vga_rgb_ball[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(148[8] 194[4])
    defparam vga_rgb_ball__i23.GSR = "DISABLED";
    CCU2D equal_57_15 (.A0(n449[5]), .B0(u0_pel_x[5]), .C0(n449[4]), .D0(u0_pel_x[4]), 
          .A1(n449[3]), .B1(u0_pel_x[3]), .C1(n449[2]), .D1(u0_pel_x[2]), 
          .CIN(n2805), .COUT(n2806));
    defparam equal_57_15.INIT0 = 16'h9009;
    defparam equal_57_15.INIT1 = 16'h9009;
    defparam equal_57_15.INJECT1_0 = "YES";
    defparam equal_57_15.INJECT1_1 = "YES";
    CCU2D equal_65_15 (.A0(n507[5]), .B0(u0_pel_y[5]), .C0(n507[4]), .D0(u0_pel_y[4]), 
          .A1(n507[3]), .B1(u0_pel_y[3]), .C1(n507[2]), .D1(u0_pel_y[2]), 
          .CIN(n2817), .COUT(n2818));
    defparam equal_65_15.INIT0 = 16'h9009;
    defparam equal_65_15.INIT1 = 16'h9009;
    defparam equal_65_15.INJECT1_0 = "YES";
    defparam equal_65_15.INJECT1_1 = "YES";
    LUT4 i1525_2_lut (.A(n1[10]), .B(n2448), .Z(n331[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1525_2_lut.init = 16'h8888;
    CCU2D equal_65_13 (.A0(n507[9]), .B0(u0_pel_y[9]), .C0(n507[8]), .D0(u0_pel_y[8]), 
          .A1(n507[7]), .B1(u0_pel_y[7]), .C1(n507[6]), .D1(u0_pel_y[6]), 
          .CIN(n2816), .COUT(n2817));
    defparam equal_65_13.INIT0 = 16'h9009;
    defparam equal_65_13.INIT1 = 16'h9009;
    defparam equal_65_13.INJECT1_0 = "YES";
    defparam equal_65_13.INJECT1_1 = "YES";
    CCU2D sub_306_add_2_17 (.A0(n375[12]), .B0(u0_pel_x[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2922), .S1(n942));
    defparam sub_306_add_2_17.INIT0 = 16'h5999;
    defparam sub_306_add_2_17.INIT1 = 16'h0000;
    defparam sub_306_add_2_17.INJECT1_0 = "NO";
    defparam sub_306_add_2_17.INJECT1_1 = "NO";
    FD1P3IX vga_rgb_line__i7 (.D(line_rgb[7]), .SP(mode_bit), .CD(n1248), 
            .CK(out_vga_ck_c), .Q(vga_rgb_line[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam vga_rgb_line__i7.GSR = "DISABLED";
    LUT4 i1534_2_lut (.A(n2163[1]), .B(n2453), .Z(n1688[1])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1534_2_lut.init = 16'heeee;
    CCU2D sub_33_add_2_13 (.A0(ball_y_pos[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2983), .S0(n389[11]), .S1(n389[12]));
    defparam sub_33_add_2_13.INIT0 = 16'h5555;
    defparam sub_33_add_2_13.INIT1 = 16'h5555;
    defparam sub_33_add_2_13.INJECT1_0 = "NO";
    defparam sub_33_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_11 (.A0(ball_y_pos[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2982), .COUT(n2983), .S0(n389[9]), .S1(n389[10]));
    defparam sub_33_add_2_11.INIT0 = 16'h5555;
    defparam sub_33_add_2_11.INIT1 = 16'h5555;
    defparam sub_33_add_2_11.INJECT1_0 = "NO";
    defparam sub_33_add_2_11.INJECT1_1 = "NO";
    LUT4 i1511_2_lut (.A(n2[11]), .B(n2448), .Z(n3[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1511_2_lut.init = 16'h8888;
    LUT4 i1512_2_lut (.A(n2[10]), .B(n2448), .Z(n3[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1512_2_lut.init = 16'h8888;
    CCU2D sub_29_add_2_11 (.A0(line_x_pos[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2943), .COUT(n2944), .S0(n1[9]), .S1(n1[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_11.INIT0 = 16'h5555;
    defparam sub_29_add_2_11.INIT1 = 16'h5555;
    defparam sub_29_add_2_11.INJECT1_0 = "NO";
    defparam sub_29_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_306_add_2_15 (.A0(n375[10]), .B0(u0_pel_x[13]), .C0(GND_net), 
          .D0(GND_net), .A1(n375[11]), .B1(u0_pel_x[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2921), .COUT(n2922));
    defparam sub_306_add_2_15.INIT0 = 16'h5999;
    defparam sub_306_add_2_15.INIT1 = 16'h5999;
    defparam sub_306_add_2_15.INJECT1_0 = "NO";
    defparam sub_306_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_9 (.A0(ball_y_pos[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2981), .COUT(n2982), .S0(n389[7]), .S1(n389[8]));
    defparam sub_33_add_2_9.INIT0 = 16'h5555;
    defparam sub_33_add_2_9.INIT1 = 16'h5555;
    defparam sub_33_add_2_9.INJECT1_0 = "NO";
    defparam sub_33_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_7 (.A0(ball_y_pos[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2980), .COUT(n2981), .S0(n389[5]), .S1(n389[6]));
    defparam sub_33_add_2_7.INIT0 = 16'h5555;
    defparam sub_33_add_2_7.INIT1 = 16'h5555;
    defparam sub_33_add_2_7.INJECT1_0 = "NO";
    defparam sub_33_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_5 (.A0(ball_y_pos[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2979), .COUT(n2980), .S0(n389[3]), .S1(n389[4]));
    defparam sub_33_add_2_5.INIT0 = 16'h5555;
    defparam sub_33_add_2_5.INIT1 = 16'h5555;
    defparam sub_33_add_2_5.INJECT1_0 = "NO";
    defparam sub_33_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_3 (.A0(ball_y_pos[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_y_pos[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2978), .COUT(n2979), .S0(n389[1]), .S1(n389[2]));
    defparam sub_33_add_2_3.INIT0 = 16'h5555;
    defparam sub_33_add_2_3.INIT1 = 16'h5555;
    defparam sub_33_add_2_3.INJECT1_0 = "NO";
    defparam sub_33_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_33_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_y_pos[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2978), .S1(n389[0]));
    defparam sub_33_add_2_1.INIT0 = 16'hF000;
    defparam sub_33_add_2_1.INIT1 = 16'h5555;
    defparam sub_33_add_2_1.INJECT1_0 = "NO";
    defparam sub_33_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_32_add_2_13 (.A0(ball_x_pos[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2976), .S0(n375[11]), .S1(n375[12]));
    defparam sub_32_add_2_13.INIT0 = 16'h5555;
    defparam sub_32_add_2_13.INIT1 = 16'h5555;
    defparam sub_32_add_2_13.INJECT1_0 = "NO";
    defparam sub_32_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_32_add_2_11 (.A0(ball_x_pos[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2975), .COUT(n2976), .S0(n375[9]), .S1(n375[10]));
    defparam sub_32_add_2_11.INIT0 = 16'h5555;
    defparam sub_32_add_2_11.INIT1 = 16'h5555;
    defparam sub_32_add_2_11.INJECT1_0 = "NO";
    defparam sub_32_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_32_add_2_9 (.A0(ball_x_pos[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2974), .COUT(n2975), .S0(n375[7]), .S1(n375[8]));
    defparam sub_32_add_2_9.INIT0 = 16'h5555;
    defparam sub_32_add_2_9.INIT1 = 16'h5555;
    defparam sub_32_add_2_9.INJECT1_0 = "NO";
    defparam sub_32_add_2_9.INJECT1_1 = "NO";
    LUT4 i1536_2_lut (.A(n2163[3]), .B(n2453), .Z(n1688[3])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(233[14] 235[8])
    defparam i1536_2_lut.init = 16'heeee;
    LUT4 i1526_2_lut (.A(n1[9]), .B(n2448), .Z(n331[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1526_2_lut.init = 16'h8888;
    CCU2D sub_29_add_2_9 (.A0(line_x_pos[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2942), .COUT(n2943), .S0(n1[7]), .S1(n1[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_9.INIT0 = 16'h5555;
    defparam sub_29_add_2_9.INIT1 = 16'h5555;
    defparam sub_29_add_2_9.INJECT1_0 = "NO";
    defparam sub_29_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_32_add_2_7 (.A0(ball_x_pos[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2973), .COUT(n2974), .S0(n375[5]), .S1(n375[6]));
    defparam sub_32_add_2_7.INIT0 = 16'h5555;
    defparam sub_32_add_2_7.INIT1 = 16'h5555;
    defparam sub_32_add_2_7.INJECT1_0 = "NO";
    defparam sub_32_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_7 (.A0(line_x_pos[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2941), .COUT(n2942), .S0(n1[5]), .S1(n1[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_7.INIT0 = 16'h5555;
    defparam sub_29_add_2_7.INIT1 = 16'h5555;
    defparam sub_29_add_2_7.INJECT1_0 = "NO";
    defparam sub_29_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_32_add_2_5 (.A0(ball_x_pos[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2972), .COUT(n2973), .S0(n375[3]), .S1(n375[4]));
    defparam sub_32_add_2_5.INIT0 = 16'h5555;
    defparam sub_32_add_2_5.INIT1 = 16'h5555;
    defparam sub_32_add_2_5.INJECT1_0 = "NO";
    defparam sub_32_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_32_add_2_3 (.A0(ball_x_pos[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ball_x_pos[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2971), .COUT(n2972), .S0(n375[1]), .S1(n375[2]));
    defparam sub_32_add_2_3.INIT0 = 16'h5555;
    defparam sub_32_add_2_3.INIT1 = 16'h5555;
    defparam sub_32_add_2_3.INJECT1_0 = "NO";
    defparam sub_32_add_2_3.INJECT1_1 = "NO";
    CCU2D equal_59_11 (.A0(n468[13]), .B0(u0_pel_x[13]), .C0(n468[12]), 
          .D0(u0_pel_x[12]), .A1(n468[11]), .B1(u0_pel_x[11]), .C1(n468[10]), 
          .D1(u0_pel_x[10]), .CIN(n2807), .COUT(n2808));
    defparam equal_59_11.INIT0 = 16'h9009;
    defparam equal_59_11.INIT1 = 16'h9009;
    defparam equal_59_11.INJECT1_0 = "YES";
    defparam equal_59_11.INJECT1_1 = "YES";
    CCU2D sub_32_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ball_x_pos[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2971), .S1(n375[0]));
    defparam sub_32_add_2_1.INIT0 = 16'hF000;
    defparam sub_32_add_2_1.INIT1 = 16'h5555;
    defparam sub_32_add_2_1.INJECT1_0 = "NO";
    defparam sub_32_add_2_1.INJECT1_1 = "NO";
    CCU2D equal_65_11 (.A0(n507[13]), .B0(u0_pel_y[13]), .C0(n507[12]), 
          .D0(u0_pel_y[12]), .A1(n507[11]), .B1(u0_pel_y[11]), .C1(n507[10]), 
          .D1(u0_pel_y[10]), .CIN(n2815), .COUT(n2816));
    defparam equal_65_11.INIT0 = 16'h9009;
    defparam equal_65_11.INIT1 = 16'h9009;
    defparam equal_65_11.INJECT1_0 = "YES";
    defparam equal_65_11.INJECT1_1 = "YES";
    CCU2D sub_29_add_2_5 (.A0(line_x_pos[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2940), .COUT(n2941), .S0(n1[3]), .S1(n1[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_5.INIT0 = 16'h5555;
    defparam sub_29_add_2_5.INIT1 = 16'h5555;
    defparam sub_29_add_2_5.INJECT1_0 = "NO";
    defparam sub_29_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_3 (.A0(line_x_pos[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_x_pos[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2939), .COUT(n2940), .S0(n1[1]), .S1(n1[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_3.INIT0 = 16'h5555;
    defparam sub_29_add_2_3.INIT1 = 16'h5555;
    defparam sub_29_add_2_3.INJECT1_0 = "NO";
    defparam sub_29_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_306_add_2_13 (.A0(n375[8]), .B0(u0_pel_x[11]), .C0(GND_net), 
          .D0(GND_net), .A1(n375[9]), .B1(u0_pel_x[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2920), .COUT(n2921));
    defparam sub_306_add_2_13.INIT0 = 16'h5999;
    defparam sub_306_add_2_13.INIT1 = 16'h5999;
    defparam sub_306_add_2_13.INJECT1_0 = "NO";
    defparam sub_306_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_61_add_2_17 (.A0(line_y_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2970), .S0(n487[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_17.INIT0 = 16'hf555;
    defparam sub_61_add_2_17.INIT1 = 16'h0000;
    defparam sub_61_add_2_17.INJECT1_0 = "NO";
    defparam sub_61_add_2_17.INJECT1_1 = "NO";
    CCU2D equal_65_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n507[15]), .B1(u0_pel_y[15]), .C1(n507[14]), .D1(u0_pel_y[14]), 
          .COUT(n2815));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(137[10:48])
    defparam equal_65_0.INIT0 = 16'hF000;
    defparam equal_65_0.INIT1 = 16'h9009;
    defparam equal_65_0.INJECT1_0 = "NO";
    defparam equal_65_0.INJECT1_1 = "YES";
    CCU2D equal_62_16 (.A0(n487[1]), .B0(u0_pel_y[1]), .C0(n487[0]), .D0(u0_pel_y[0]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2814), 
          .S1(n504));
    defparam equal_62_16.INIT0 = 16'h9009;
    defparam equal_62_16.INIT1 = 16'hFFFF;
    defparam equal_62_16.INJECT1_0 = "YES";
    defparam equal_62_16.INJECT1_1 = "NO";
    CCU2D equal_62_15 (.A0(n487[5]), .B0(u0_pel_y[5]), .C0(n487[4]), .D0(u0_pel_y[4]), 
          .A1(n487[3]), .B1(u0_pel_y[3]), .C1(n487[2]), .D1(u0_pel_y[2]), 
          .CIN(n2813), .COUT(n2814));
    defparam equal_62_15.INIT0 = 16'h9009;
    defparam equal_62_15.INIT1 = 16'h9009;
    defparam equal_62_15.INJECT1_0 = "YES";
    defparam equal_62_15.INJECT1_1 = "YES";
    CCU2D sub_306_add_2_11 (.A0(n375[6]), .B0(u0_pel_x[9]), .C0(GND_net), 
          .D0(GND_net), .A1(n375[7]), .B1(u0_pel_x[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2919), .COUT(n2920));
    defparam sub_306_add_2_11.INIT0 = 16'h5999;
    defparam sub_306_add_2_11.INIT1 = 16'h5999;
    defparam sub_306_add_2_11.INJECT1_0 = "NO";
    defparam sub_306_add_2_11.INJECT1_1 = "NO";
    CCU2D equal_62_13 (.A0(n487[9]), .B0(u0_pel_y[9]), .C0(n487[8]), .D0(u0_pel_y[8]), 
          .A1(n487[7]), .B1(u0_pel_y[7]), .C1(n487[6]), .D1(u0_pel_y[6]), 
          .CIN(n2812), .COUT(n2813));
    defparam equal_62_13.INIT0 = 16'h9009;
    defparam equal_62_13.INIT1 = 16'h9009;
    defparam equal_62_13.INJECT1_0 = "YES";
    defparam equal_62_13.INJECT1_1 = "YES";
    LUT4 i1405_2_lut (.A(n2[0]), .B(n2448), .Z(n3[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(127[7] 131[10])
    defparam i1405_2_lut.init = 16'h8888;
    LUT4 i1413_2_lut (.A(n2181[0]), .B(n2457), .Z(u0_pel_x_15__N_671[0])) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(243[14] 245[8])
    defparam i1413_2_lut.init = 16'heeee;
    LUT4 i10_4_lut_adj_45 (.A(line_y_pos[7]), .B(line_y_pos[12]), .C(line_y_pos[2]), 
         .D(line_y_pos[10]), .Z(n26_adj_822)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_45.init = 16'hfffe;
    CCU2D equal_62_11 (.A0(n487[13]), .B0(u0_pel_y[13]), .C0(n487[12]), 
          .D0(u0_pel_y[12]), .A1(n487[11]), .B1(u0_pel_y[11]), .C1(n487[10]), 
          .D1(u0_pel_y[10]), .CIN(n2811), .COUT(n2812));
    defparam equal_62_11.INIT0 = 16'h9009;
    defparam equal_62_11.INIT1 = 16'h9009;
    defparam equal_62_11.INJECT1_0 = "YES";
    defparam equal_62_11.INJECT1_1 = "YES";
    CCU2D sub_306_add_2_9 (.A0(n375[4]), .B0(u0_pel_x[7]), .C0(GND_net), 
          .D0(GND_net), .A1(n375[5]), .B1(u0_pel_x[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2918), .COUT(n2919));
    defparam sub_306_add_2_9.INIT0 = 16'h5999;
    defparam sub_306_add_2_9.INIT1 = 16'h5999;
    defparam sub_306_add_2_9.INJECT1_0 = "NO";
    defparam sub_306_add_2_9.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_46 (.A(line_y_pos[14]), .B(line_y_pos[11]), .Z(n18_adj_823)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_46.init = 16'heeee;
    CCU2D equal_57_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n449[15]), .B1(u0_pel_x[15]), .C1(n449[14]), .D1(u0_pel_x[14]), 
          .COUT(n2803));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(134[10:48])
    defparam equal_57_0.INIT0 = 16'hF000;
    defparam equal_57_0.INIT1 = 16'h9009;
    defparam equal_57_0.INJECT1_0 = "NO";
    defparam equal_57_0.INJECT1_1 = "YES";
    CCU2D sub_61_add_2_15 (.A0(line_y_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2969), .COUT(n2970), .S0(n487[13]), .S1(n487[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_15.INIT0 = 16'hf555;
    defparam sub_61_add_2_15.INIT1 = 16'hf555;
    defparam sub_61_add_2_15.INJECT1_0 = "NO";
    defparam sub_61_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(line_x_pos[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2939), .S1(n1[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(125[21:35])
    defparam sub_29_add_2_1.INIT0 = 16'hF000;
    defparam sub_29_add_2_1.INIT1 = 16'h5555;
    defparam sub_29_add_2_1.INJECT1_0 = "NO";
    defparam sub_29_add_2_1.INJECT1_1 = "NO";
    LUT4 i14_4_lut_adj_47 (.A(n3543), .B(n28_adj_825), .C(n24), .D(n16), 
         .Z(n2457)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i14_4_lut_adj_47.init = 16'h8000;
    FD1P3IX vga_rgb_line__i15 (.D(line_rgb[15]), .SP(mode_bit), .CD(n1248), 
            .CK(out_vga_ck_c), .Q(vga_rgb_line[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam vga_rgb_line__i15.GSR = "DISABLED";
    CCU2D sub_61_add_2_13 (.A0(line_y_pos[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2968), .COUT(n2969), .S0(n487[11]), .S1(n487[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_13.INIT0 = 16'hf555;
    defparam sub_61_add_2_13.INIT1 = 16'hf555;
    defparam sub_61_add_2_13.INJECT1_0 = "NO";
    defparam sub_61_add_2_13.INJECT1_1 = "NO";
    FD1P3IX vga_rgb_line__i23 (.D(n3684), .SP(mode_bit), .CD(n1248), .CK(out_vga_ck_c), 
            .Q(vga_rgb_line[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=160 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(117[8] 142[4])
    defparam vga_rgb_line__i23.GSR = "DISABLED";
    CCU2D equal_62_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n487[15]), .B1(u0_pel_y[15]), .C1(n487[14]), .D1(u0_pel_y[14]), 
          .COUT(n2811));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[10:48])
    defparam equal_62_0.INIT0 = 16'hF000;
    defparam equal_62_0.INIT1 = 16'h9009;
    defparam equal_62_0.INJECT1_0 = "NO";
    defparam equal_62_0.INJECT1_1 = "YES";
    LUT4 i13_4_lut (.A(u0_pel_x[5]), .B(n26), .C(n20), .D(u0_pel_x[10]), 
         .Z(n28_adj_825)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    CCU2D sub_61_add_2_11 (.A0(line_y_pos[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2967), .COUT(n2968), .S0(n487[9]), .S1(n487[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_11.INIT0 = 16'hf555;
    defparam sub_61_add_2_11.INIT1 = 16'hf555;
    defparam sub_61_add_2_11.INJECT1_0 = "NO";
    defparam sub_61_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_61_add_2_9 (.A0(line_y_pos[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2966), .COUT(n2967), .S0(n487[7]), .S1(n487[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_9.INIT0 = 16'hf555;
    defparam sub_61_add_2_9.INIT1 = 16'h0aaa;
    defparam sub_61_add_2_9.INJECT1_0 = "NO";
    defparam sub_61_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_61_add_2_7 (.A0(line_y_pos[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(line_y_pos[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2965), .COUT(n2966), .S0(n487[5]), .S1(n487[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(136[22:48])
    defparam sub_61_add_2_7.INIT0 = 16'h0aaa;
    defparam sub_61_add_2_7.INIT1 = 16'hf555;
    defparam sub_61_add_2_7.INJECT1_0 = "NO";
    defparam sub_61_add_2_7.INJECT1_1 = "NO";
    LUT4 i9_4_lut_adj_48 (.A(u0_pel_x[1]), .B(u0_pel_x[13]), .C(u0_pel_x[4]), 
         .D(u0_pel_x[3]), .Z(n24)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut_adj_48.init = 16'h8000;
    vga_timing u0_vga_timing (.out_vga_ck_c(out_vga_ck_c), .out_vga_vs_c(out_vga_vs_c), 
            .GND_net(GND_net), .u0_vid_new_line(u0_vid_new_line), .out_vga_de_c(out_vga_de_c), 
            .out_vga_hs_c(out_vga_hs_c), .u0_vid_new_frame(u0_vid_new_frame), 
            .out_vga_ck_c_enable_53(out_vga_ck_c_enable_53), .n3688(n3688)) /* synthesis syn_module_defined=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_core.v(255[12] 264[2])
    
endmodule
//
// Verilog Description of module vga_timing
//

module vga_timing (out_vga_ck_c, out_vga_vs_c, GND_net, u0_vid_new_line, 
            out_vga_de_c, out_vga_hs_c, u0_vid_new_frame, out_vga_ck_c_enable_53, 
            n3688) /* synthesis syn_module_defined=1 */ ;
    input out_vga_ck_c;
    output out_vga_vs_c;
    input GND_net;
    output u0_vid_new_line;
    output out_vga_de_c;
    output out_vga_hs_c;
    output u0_vid_new_frame;
    output out_vga_ck_c_enable_53;
    output n3688;
    
    wire out_vga_ck_c /* synthesis SET_AS_NETWORK=out_vga_ck_c, is_clock=1 */ ;   // d:/31_ws/lattice/hdmi_tfp410/top.v(74[14:24])
    
    wire n2937;
    wire [15:0]cnt_v;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(170[16:21])
    
    wire n23, n6, n10;
    wire [15:0]cnt_v_15__N_746;
    
    wire n2938;
    wire [1:0]fsm_v;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(172[16:21])
    
    wire n3339, h_rollover;
    wire [1:0]n1;
    wire [15:0]cnt_h;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(169[16:21])
    
    wire n3269, n3537, n4, n3234, n1230, n2936, n2935, n3492, 
        n3538, n3348;
    wire [1:0]fsm_h;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(171[16:21])
    
    wire cnt_h_15__N_741;
    wire [1:0]fsm_h_1__N_744;
    
    wire n6_adj_783, n3530, n2340, n3337, n3338, n2934, n3540, 
        n2487, n7, n3535, n3531, n14, n3, vsync_loc_N_775, n50, 
        n82, n2096, n3536, n6_adj_784, n41, n6_adj_785, n3131, 
        n3539, n10_adj_786, vsync_loc, n2933, n2932, n2931, n3544, 
        n3532, n2914;
    wire [15:0]n2;
    
    wire n3336, n2913, n2912, n2911, vid_active_N_771, n2910, hsync_loc, 
        hsync_loc_N_773, n3347, n2909, n3520, n2908, n3029, n2907, 
        n35, vid_new_frame_N_765, n3521, n2473, n3297, n3292, n3529, 
        n3526, n3542, n40, n3527, n3060, n3533, n5, n3335, n3541, 
        n3300, n3334, n3280, n3528, n6_adj_791, n9_adj_792, n3524, 
        n65, n3525, n3519, n6_adj_793, n8;
    
    CCU2D add_277_15 (.A0(cnt_v[5]), .B0(n23), .C0(n6), .D0(cnt_v[13]), 
          .A1(n23), .B1(n10), .C1(n6), .D1(cnt_v[14]), .CIN(n2937), 
          .COUT(n2938), .S0(cnt_v_15__N_746[13]), .S1(cnt_v_15__N_746[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_15.INIT0 = 16'hff00;
    defparam add_277_15.INIT1 = 16'hfd00;
    defparam add_277_15.INJECT1_0 = "NO";
    defparam add_277_15.INJECT1_1 = "NO";
    LUT4 i1038_3_lut (.A(fsm_v[0]), .B(n3339), .C(h_rollover), .Z(n1[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(176[16:26])
    defparam i1038_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_h[6]), .B(cnt_h[4]), .C(cnt_h[7]), 
         .D(cnt_h[3]), .Z(n3269)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i2112_3_lut_3_lut (.A(n3537), .B(n4), .C(n3234), .Z(n1230)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam i2112_3_lut_3_lut.init = 16'h0101;
    CCU2D add_277_13 (.A0(n23), .B0(n10), .C0(n6), .D0(cnt_v[11]), .A1(n23), 
          .B1(n10), .C1(n6), .D1(cnt_v[12]), .CIN(n2936), .COUT(n2937), 
          .S0(cnt_v_15__N_746[11]), .S1(cnt_v_15__N_746[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_13.INIT0 = 16'hfd00;
    defparam add_277_13.INIT1 = 16'hfd00;
    defparam add_277_13.INJECT1_0 = "NO";
    defparam add_277_13.INJECT1_1 = "NO";
    CCU2D add_277_11 (.A0(n23), .B0(n10), .C0(n6), .D0(cnt_v[9]), .A1(n23), 
          .B1(n10), .C1(n6), .D1(cnt_v[10]), .CIN(n2935), .COUT(n2936), 
          .S0(cnt_v_15__N_746[9]), .S1(cnt_v_15__N_746[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_11.INIT0 = 16'hfd00;
    defparam add_277_11.INIT1 = 16'hfd00;
    defparam add_277_11.INJECT1_0 = "NO";
    defparam add_277_11.INJECT1_1 = "NO";
    LUT4 i2098_1_lut_4_lut_4_lut_4_lut (.A(cnt_h[7]), .B(cnt_h[5]), .C(n3492), 
         .D(n3538), .Z(n3348)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(215[9:31])
    defparam i2098_1_lut_4_lut_4_lut_4_lut.init = 16'hffbf;
    FD1S3IX fsm_h__i0 (.D(fsm_h_1__N_744[0]), .CK(out_vga_ck_c), .CD(cnt_h_15__N_741), 
            .Q(fsm_h[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam fsm_h__i0.GSR = "ENABLED";
    LUT4 i12_4_lut_4_lut (.A(cnt_h[7]), .B(n3538), .C(n6_adj_783), .D(n3530), 
         .Z(n2340)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(215[9:31])
    defparam i12_4_lut_4_lut.init = 16'h02ff;
    PFUMX i2087 (.BLUT(n3337), .ALUT(n3338), .C0(cnt_v[4]), .Z(n3339));
    CCU2D add_277_9 (.A0(n23), .B0(n10), .C0(n6), .D0(cnt_v[7]), .A1(n23), 
          .B1(n10), .C1(n6), .D1(cnt_v[8]), .CIN(n2934), .COUT(n2935), 
          .S0(cnt_v_15__N_746[7]), .S1(cnt_v_15__N_746[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_9.INIT0 = 16'hfd00;
    defparam add_277_9.INIT1 = 16'hfd00;
    defparam add_277_9.INJECT1_0 = "NO";
    defparam add_277_9.INJECT1_1 = "NO";
    LUT4 i2_2_lut_4_lut_4_lut (.A(n3540), .B(n2487), .C(n3537), .D(n3234), 
         .Z(n7)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_2_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i2064_2_lut_rep_35 (.A(cnt_v[6]), .B(cnt_v[9]), .Z(n3535)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2064_2_lut_rep_35.init = 16'heeee;
    LUT4 i1_2_lut_rep_31_3_lut (.A(cnt_v[6]), .B(cnt_v[9]), .C(cnt_v[1]), 
         .Z(n3531)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_31_3_lut.init = 16'hfefe;
    PFUMX i24 (.BLUT(n14), .ALUT(n3), .C0(fsm_v[0]), .Z(vsync_loc_N_775));
    PFUMX i1045 (.BLUT(n50), .ALUT(n82), .C0(cnt_v[4]), .Z(n2096));
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_v[6]), .B(cnt_v[9]), .C(n3536), 
         .D(cnt_v[3]), .Z(n6_adj_784)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    PFUMX i1298 (.BLUT(n2340), .ALUT(n41), .C0(fsm_h[0]), .Z(fsm_h_1__N_744[0]));
    FD1P3AY cnt_v_i0_i0 (.D(cnt_v_15__N_746[0]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i0.GSR = "ENABLED";
    LUT4 i4_4_lut_4_lut (.A(cnt_v[3]), .B(n6_adj_785), .C(n3531), .D(fsm_v[1]), 
         .Z(n3131)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i4_4_lut_4_lut.init = 16'h0400;
    LUT4 i4_4_lut (.A(n7), .B(n3539), .C(fsm_h[0]), .D(n3538), .Z(cnt_h_15__N_741)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i4_4_lut_adj_8 (.A(cnt_v[3]), .B(cnt_v[9]), .C(cnt_v[6]), .D(cnt_v[2]), 
         .Z(n10_adj_786)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i4_4_lut_adj_8.init = 16'h0080;
    FD1S3AY fsm_v__i0 (.D(n1[0]), .CK(out_vga_ck_c), .Q(fsm_v[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam fsm_v__i0.GSR = "ENABLED";
    FD1S3AX vga_vsync_79 (.D(vsync_loc), .CK(out_vga_ck_c), .Q(out_vga_vs_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(187[11] 191[5])
    defparam vga_vsync_79.GSR = "ENABLED";
    CCU2D add_277_7 (.A0(cnt_v[13]), .B0(n23), .C0(n6), .D0(cnt_v[5]), 
          .A1(n23), .B1(n10), .C1(n6), .D1(cnt_v[6]), .CIN(n2933), 
          .COUT(n2934), .S0(cnt_v_15__N_746[5]), .S1(cnt_v_15__N_746[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_7.INIT0 = 16'hff00;
    defparam add_277_7.INIT1 = 16'hfd00;
    defparam add_277_7.INJECT1_0 = "NO";
    defparam add_277_7.INJECT1_1 = "NO";
    CCU2D add_277_5 (.A0(n23), .B0(n10), .C0(n6), .D0(cnt_v[3]), .A1(n23), 
          .B1(n10), .C1(n6), .D1(cnt_v[4]), .CIN(n2932), .COUT(n2933), 
          .S0(cnt_v_15__N_746[3]), .S1(cnt_v_15__N_746[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_5.INIT0 = 16'hfd00;
    defparam add_277_5.INIT1 = 16'hfd00;
    defparam add_277_5.INJECT1_0 = "NO";
    defparam add_277_5.INJECT1_1 = "NO";
    CCU2D add_277_3 (.A0(n23), .B0(n10), .C0(n6), .D0(cnt_v[1]), .A1(n23), 
          .B1(n10), .C1(n6), .D1(cnt_v[2]), .CIN(n2931), .COUT(n2932), 
          .S0(cnt_v_15__N_746[1]), .S1(cnt_v_15__N_746[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_3.INIT0 = 16'hfd00;
    defparam add_277_3.INIT1 = 16'hfd00;
    defparam add_277_3.INJECT1_0 = "NO";
    defparam add_277_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_36 (.A(cnt_v[2]), .B(fsm_v[1]), .Z(n3536)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i1_2_lut_rep_36.init = 16'h2222;
    LUT4 i2060_2_lut_rep_44 (.A(cnt_v[11]), .B(cnt_v[10]), .Z(n3544)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2060_2_lut_rep_44.init = 16'heeee;
    LUT4 i1_2_lut_rep_32_3_lut (.A(cnt_v[2]), .B(fsm_v[1]), .C(cnt_v[3]), 
         .Z(n3532)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i1_2_lut_rep_32_3_lut.init = 16'h0202;
    CCU2D add_8_17 (.A0(cnt_h[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2914), 
          .S0(n2[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h0000;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_rep_37 (.A(cnt_h[15]), .B(cnt_h[0]), .C(cnt_h[14]), 
         .D(cnt_h[10]), .Z(n3537)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(215[9:31])
    defparam i1_4_lut_rep_37.init = 16'hfffe;
    LUT4 i3_3_lut_4_lut (.A(cnt_v[11]), .B(cnt_v[10]), .C(cnt_v[8]), .D(n3336), 
         .Z(n23)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_3_lut_4_lut.init = 16'h0100;
    CCU2D add_8_15 (.A0(cnt_h[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2913), .COUT(n2914), .S0(n2[13]), .S1(n2[14]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    CCU2D add_8_13 (.A0(cnt_h[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2912), .COUT(n2913), .S0(n2[11]), .S1(n2[12]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    CCU2D add_8_11 (.A0(cnt_h[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2911), .COUT(n2912), .S0(n2[9]), .S1(n2[10]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(fsm_v[0]), .B(fsm_v[1]), .C(fsm_h[0]), .D(fsm_h[1]), 
         .Z(vid_active_N_771)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i2_3_lut_4_lut.init = 16'h0400;
    CCU2D add_8_9 (.A0(cnt_h[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2910), 
          .COUT(n2911), .S0(n2[7]), .S1(n2[8]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    FD1S3AX hsync_loc_81 (.D(hsync_loc_N_773), .CK(out_vga_ck_c), .Q(hsync_loc)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam hsync_loc_81.GSR = "ENABLED";
    PFUMX i88 (.BLUT(n3347), .ALUT(n3348), .C0(fsm_h[1]), .Z(n4));
    CCU2D add_8_7 (.A0(cnt_h[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2909), 
          .COUT(n2910), .S0(n2[5]), .S1(n2[6]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    CCU2D add_277_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n23), .B1(n10), .C1(n6), .D1(cnt_v[0]), .COUT(n2931), 
          .S1(cnt_v_15__N_746[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_1.INIT0 = 16'hF000;
    defparam add_277_1.INIT1 = 16'h02ff;
    defparam add_277_1.INJECT1_0 = "NO";
    defparam add_277_1.INJECT1_1 = "NO";
    FD1S3AX vid_new_line_82 (.D(n3520), .CK(out_vga_ck_c), .Q(u0_vid_new_line)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam vid_new_line_82.GSR = "ENABLED";
    CCU2D add_8_5 (.A0(cnt_h[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2908), 
          .COUT(n2909), .S0(n2[3]), .S1(n2[4]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    FD1S3AX vid_active_84 (.D(vid_active_N_771), .CK(out_vga_ck_c), .Q(out_vga_de_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam vid_active_84.GSR = "ENABLED";
    FD1S3AY h_rollover_88 (.D(cnt_h_15__N_741), .CK(out_vga_ck_c), .Q(h_rollover)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam h_rollover_88.GSR = "ENABLED";
    FD1P3AX vsync_loc_90 (.D(vsync_loc_N_775), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(vsync_loc));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam vsync_loc_90.GSR = "ENABLED";
    FD1S3JX cnt_h_i0 (.D(n2[0]), .CK(out_vga_ck_c), .PD(n1230), .Q(cnt_h[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_3_lut_4_lut_4_lut (.A(cnt_h[3]), .B(cnt_h[7]), .C(cnt_h[4]), 
         .D(cnt_h[6]), .Z(n3029)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(226[9:29])
    defparam i2_3_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    FD1S3AX vga_hsync_78 (.D(hsync_loc), .CK(out_vga_ck_c), .Q(out_vga_hs_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(187[11] 191[5])
    defparam vga_hsync_78.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(fsm_v[0]), .B(fsm_v[1]), .C(h_rollover), .D(n2096), 
         .Z(n1[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C (D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i1_4_lut_4_lut.init = 16'hfc4c;
    CCU2D add_8_3 (.A0(cnt_h[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2907), 
          .COUT(n2908), .S0(n2[1]), .S1(n2[2]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    FD1S3IX vid_new_frame_83 (.D(vid_new_frame_N_765), .CK(out_vga_ck_c), 
            .CD(n35), .Q(u0_vid_new_frame));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam vid_new_frame_83.GSR = "ENABLED";
    LUT4 i2067_2_lut_3_lut (.A(fsm_v[1]), .B(n3521), .C(cnt_v[4]), .Z(n3)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i2067_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_rep_38 (.A(cnt_h[6]), .B(cnt_h[4]), .Z(n3538)) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam i1_2_lut_rep_38.init = 16'heeee;
    LUT4 i2_4_lut (.A(n3537), .B(n3538), .C(n2473), .D(n2487), .Z(n3297)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam i2_4_lut.init = 16'hefff;
    LUT4 i1428_2_lut (.A(cnt_h[9]), .B(cnt_h[8]), .Z(n2473)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1428_2_lut.init = 16'h8888;
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_h[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2907), 
          .S1(n2[0]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(213[21:34])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h5555;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_39 (.A(cnt_h[3]), .B(cnt_h[7]), .Z(n3539)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam i1_2_lut_rep_39.init = 16'h2222;
    LUT4 i2122_2_lut_rep_40 (.A(cnt_h[8]), .B(cnt_h[9]), .Z(n3540)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2122_2_lut_rep_40.init = 16'h1111;
    LUT4 i1_2_lut (.A(fsm_h[0]), .B(cnt_h[3]), .Z(n3292)) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(215[9:31])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2115_2_lut (.A(fsm_h[0]), .B(fsm_h[1]), .Z(hsync_loc_N_773)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2115_2_lut.init = 16'h1111;
    LUT4 i1_3_lut_rep_29_3_lut_4_lut (.A(cnt_h[8]), .B(cnt_h[9]), .C(n3234), 
         .D(n3537), .Z(n3529)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_29_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut (.A(cnt_h[7]), .B(n3526), .C(n3542), .D(cnt_h[3]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(238[9:29])
    defparam i3_4_lut.init = 16'hefff;
    LUT4 i2_3_lut_4_lut_4_lut (.A(cnt_v[0]), .B(fsm_v[1]), .C(n3527), 
         .D(cnt_v[2]), .Z(n3060)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i2083_4_lut (.A(n3533), .B(n5), .C(fsm_v[0]), .D(n6_adj_784), 
         .Z(n3335)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i2083_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_41 (.A(fsm_v[1]), .B(cnt_v[0]), .Z(n3541)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i1_2_lut_rep_41.init = 16'h2222;
    LUT4 i5_3_lut_rep_33_4_lut (.A(fsm_v[1]), .B(cnt_v[0]), .C(n10_adj_786), 
         .D(cnt_v[1]), .Z(n3533)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i5_3_lut_rep_33_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_4_lut_adj_9 (.A(fsm_v[1]), .B(n3300), .C(cnt_v[2]), 
         .D(cnt_v[4]), .Z(n14)) /* synthesis lut_function=(!(A+!(((D)+!C)+!B))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i1_4_lut_4_lut_adj_9.init = 16'h5515;
    PFUMX i2084 (.BLUT(n3334), .ALUT(n3335), .C0(cnt_v[4]), .Z(n3336));
    LUT4 i1_2_lut_rep_42 (.A(cnt_h[6]), .B(cnt_h[4]), .Z(n3542)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_42.init = 16'h8888;
    LUT4 i1442_2_lut (.A(cnt_h[5]), .B(fsm_h[1]), .Z(n2487)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1442_2_lut.init = 16'h8888;
    LUT4 i2095_3_lut (.A(n3280), .B(n3131), .C(fsm_v[0]), .Z(n3334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2095_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_21_4_lut (.A(n3528), .B(n3531), .C(cnt_v[2]), .D(cnt_v[0]), 
         .Z(n3521)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_rep_21_4_lut.init = 16'hfeff;
    LUT4 i4_4_lut_adj_10 (.A(cnt_h[1]), .B(cnt_h[11]), .C(cnt_h[12]), 
         .D(n6_adj_791), .Z(n3234)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_10.init = 16'hfffe;
    LUT4 i1_2_lut_adj_11 (.A(cnt_h[2]), .B(cnt_h[13]), .Z(n6_adj_791)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'heeee;
    LUT4 i2104_3_lut_4_lut (.A(n9_adj_792), .B(n3533), .C(fsm_v[0]), .D(n3060), 
         .Z(n3338)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i2104_3_lut_4_lut.init = 16'hf404;
    LUT4 i2_3_lut_rep_26 (.A(fsm_h[1]), .B(n3529), .C(cnt_h[5]), .Z(n3526)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_26.init = 16'hfefe;
    LUT4 i2_2_lut_4_lut (.A(fsm_h[1]), .B(n3529), .C(cnt_h[5]), .D(n3292), 
         .Z(n6_adj_783)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_4_lut_adj_12 (.A(n3530), .B(fsm_h[1]), .C(n40), 
         .D(fsm_h[0]), .Z(fsm_h_1__N_744[1])) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(218[9:31])
    defparam i2_3_lut_4_lut_4_lut_adj_12.init = 16'hdfdd;
    LUT4 i1_4_lut_rep_30 (.A(n3297), .B(n3292), .C(cnt_h[7]), .D(n3234), 
         .Z(n3530)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam i1_4_lut_rep_30.init = 16'hfffe;
    FD1S3IX fsm_h__i1 (.D(fsm_h_1__N_744[1]), .CK(out_vga_ck_c), .CD(cnt_h_15__N_741), 
            .Q(fsm_h[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam fsm_h__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_24_4_lut (.A(n3528), .B(n3535), .C(cnt_v[1]), .D(cnt_v[2]), 
         .Z(n3524)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_2_lut_rep_24_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_adj_13 (.A(cnt_v[2]), .B(cnt_v[0]), .Z(n6_adj_785)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_13.init = 16'h4444;
    LUT4 cnt_h_3__bdd_4_lut (.A(cnt_h[3]), .B(fsm_h[0]), .C(cnt_h[9]), 
         .D(cnt_h[8]), .Z(n3492)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;
    defparam cnt_h_3__bdd_4_lut.init = 16'h1008;
    PFUMX i1314 (.BLUT(n3029), .ALUT(n3269), .C0(fsm_h[0]), .Z(n65));
    LUT4 i1_2_lut_2_lut (.A(n3530), .B(n40), .Z(n41)) /* synthesis lut_function=((B)+!A) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(218[9:31])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_20 (.A(fsm_h[0]), .B(n40), .Z(n3520)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam i1_2_lut_rep_20.init = 16'h2222;
    LUT4 i2097_1_lut_4_lut (.A(cnt_h[8]), .B(cnt_h[9]), .C(n65), .D(cnt_h[5]), 
         .Z(n3347)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2097_1_lut_4_lut.init = 16'hffef;
    LUT4 i1311_1_lut_2_lut (.A(fsm_h[0]), .B(n40), .Z(n35)) /* synthesis lut_function=((B)+!A) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam i1311_1_lut_2_lut.init = 16'hdddd;
    LUT4 i2_3_lut_rep_27_4_lut (.A(cnt_v[3]), .B(n9_adj_792), .C(cnt_v[1]), 
         .D(n3535), .Z(n3527)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_27_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_19_4_lut (.A(n3525), .B(cnt_v[0]), .C(cnt_v[2]), 
         .D(fsm_v[1]), .Z(n3519)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_19_4_lut.init = 16'hfbff;
    FD1P3AX cnt_v_i0_i1 (.D(cnt_v_15__N_746[1]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i2 (.D(cnt_v_15__N_746[2]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i3 (.D(cnt_v_15__N_746[3]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i4 (.D(cnt_v_15__N_746[4]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i5 (.D(cnt_v_15__N_746[5]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i6 (.D(cnt_v_15__N_746[6]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i7 (.D(cnt_v_15__N_746[7]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i8 (.D(cnt_v_15__N_746[8]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i9 (.D(cnt_v_15__N_746[9]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i10 (.D(cnt_v_15__N_746[10]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i11 (.D(cnt_v_15__N_746[11]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i12 (.D(cnt_v_15__N_746[12]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i13 (.D(cnt_v_15__N_746[13]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i14 (.D(cnt_v_15__N_746[14]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_v_i0_i15 (.D(cnt_v_15__N_746[15]), .SP(h_rollover), .CK(out_vga_ck_c), 
            .Q(cnt_v[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam cnt_v_i0_i15.GSR = "ENABLED";
    FD1S3AY fsm_v__i1 (.D(n1[1]), .CK(out_vga_ck_c), .Q(fsm_v[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam fsm_v__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n3525), .B(cnt_v[0]), .C(cnt_v[2]), .D(fsm_v[1]), 
         .Z(n50)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfb00;
    LUT4 i1_2_lut_rep_28 (.A(cnt_v[3]), .B(n9_adj_792), .Z(n3528)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_28.init = 16'heeee;
    LUT4 i3_4_lut_adj_14 (.A(cnt_v[12]), .B(cnt_v[14]), .C(cnt_v[15]), 
         .D(cnt_v[7]), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i3_4_lut_adj_14.init = 16'hfffe;
    LUT4 i1_2_lut_adj_15 (.A(cnt_v[13]), .B(cnt_v[5]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_15.init = 16'heeee;
    LUT4 i1_4_lut (.A(fsm_v[0]), .B(n3541), .C(n6_adj_793), .D(cnt_v[4]), 
         .Z(vid_new_frame_N_765)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i1_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_adj_16 (.A(cnt_v[0]), .B(cnt_v[1]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'h8888;
    LUT4 i1_2_lut_rep_25_3_lut_4_lut (.A(cnt_v[1]), .B(n3535), .C(n9_adj_792), 
         .D(cnt_v[3]), .Z(n3525)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_25_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_17 (.A(cnt_v[0]), .B(fsm_v[1]), .C(n3524), .D(fsm_v[0]), 
         .Z(n82)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(172[16:21])
    defparam i1_4_lut_adj_17.init = 16'hcecc;
    FD1S3IX cnt_h_i1 (.D(n2[1]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i1.GSR = "ENABLED";
    FD1S3IX cnt_h_i2 (.D(n2[2]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i2.GSR = "ENABLED";
    FD1S3IX cnt_h_i3 (.D(n2[3]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i3.GSR = "ENABLED";
    FD1S3IX cnt_h_i4 (.D(n2[4]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i4.GSR = "ENABLED";
    FD1S3IX cnt_h_i5 (.D(n2[5]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i5.GSR = "ENABLED";
    FD1S3IX cnt_h_i6 (.D(n2[6]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i6.GSR = "ENABLED";
    FD1S3IX cnt_h_i7 (.D(n2[7]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i7.GSR = "ENABLED";
    FD1S3IX cnt_h_i8 (.D(n2[8]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i8.GSR = "ENABLED";
    FD1S3IX cnt_h_i9 (.D(n2[9]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i9.GSR = "ENABLED";
    FD1S3IX cnt_h_i10 (.D(n2[10]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i10.GSR = "ENABLED";
    FD1S3IX cnt_h_i11 (.D(n2[11]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i11.GSR = "ENABLED";
    FD1S3IX cnt_h_i12 (.D(n2[12]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i12.GSR = "ENABLED";
    FD1S3IX cnt_h_i13 (.D(n2[13]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i13.GSR = "ENABLED";
    FD1S3IX cnt_h_i14 (.D(n2[14]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i14.GSR = "ENABLED";
    FD1S3IX cnt_h_i15 (.D(n2[15]), .CK(out_vga_ck_c), .CD(n1230), .Q(cnt_h[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=255, LSE_RLINE=264 */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam cnt_h_i15.GSR = "ENABLED";
    LUT4 i2085_4_lut (.A(n3536), .B(n3519), .C(fsm_v[0]), .D(n3300), 
         .Z(n3337)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i2085_4_lut.init = 16'hcac0;
    LUT4 i2118_2_lut_3_lut_4_lut (.A(cnt_v[3]), .B(n9_adj_792), .C(cnt_v[0]), 
         .D(n3531), .Z(n3300)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2118_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i5_4_lut (.A(cnt_v[5]), .B(n3544), .C(n6), .D(n8), .Z(n9_adj_792)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt_v[8]), .B(cnt_v[13]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(255[11] 281[5])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_18 (.A(cnt_v[1]), .B(n3535), .C(cnt_v[0]), 
         .D(n3532), .Z(n3280)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_18.init = 16'h0100;
    LUT4 i2_2_lut_4_lut_adj_19 (.A(n3528), .B(n3535), .C(cnt_v[1]), .D(cnt_v[2]), 
         .Z(n6_adj_793)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_2_lut_4_lut_adj_19.init = 16'hffef;
    FD1S3IX vid_new_frame_83_rep_47 (.D(vid_new_frame_N_765), .CK(out_vga_ck_c), 
            .CD(n35), .Q(out_vga_ck_c_enable_53));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam vid_new_frame_83_rep_47.GSR = "ENABLED";
    FD1S3IX vid_new_frame_83_rep_46 (.D(vid_new_frame_N_765), .CK(out_vga_ck_c), 
            .CD(n35), .Q(n3688));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(207[11] 243[5])
    defparam vid_new_frame_83_rep_46.GSR = "ENABLED";
    CCU2D add_277_17 (.A0(n23), .B0(n10), .C0(n6), .D0(cnt_v[15]), .A1(GND_net), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2938), .S0(cnt_v_15__N_746[15]));   // d:/31_ws/lattice/hdmi_tfp410/vga_timing.v(259[6] 262[9])
    defparam add_277_17.INIT0 = 16'hfd00;
    defparam add_277_17.INIT1 = 16'h0000;
    defparam add_277_17.INJECT1_0 = "NO";
    defparam add_277_17.INJECT1_1 = "NO";
    
endmodule
