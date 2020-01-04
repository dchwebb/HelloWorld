// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.1.441
// Netlist written on Fri Jan 03 18:33:48 2020
//
// Verilog Description of module top
//

module top (leds, pushbutton) /* synthesis syn_module_defined=1 */ ;   // d:/docs/fpga/helloworld/top.v(1[8:11])
    output [7:0]leds;   // d:/docs/fpga/helloworld/top.v(3[20:24])
    input pushbutton;   // d:/docs/fpga/helloworld/top.v(4[13:23])
    
    wire fpga_clock /* synthesis SET_AS_NETWORK=fpga_clock, is_clock=1 */ ;   // d:/docs/fpga/helloworld/top.v(6[7:17])
    
    wire GND_net, leds_c_7, leds_c_6, leds_c_5, leds_c_4, leds_c_3, 
        leds_c_2, leds_c_1, leds_c_0, pushbutton_c, VCC_net;
    
    VHI i5 (.Z(VCC_net));
    OB leds_pad_6 (.I(leds_c_6), .O(leds[6]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    OSCH rc_oscillator (.STDBY(GND_net), .OSC(fpga_clock)) /* synthesis syn_instantiated=1 */ ;
    defparam rc_oscillator.NOM_FREQ = "133.00";
    slow_counter counter_c (.fpga_clock(fpga_clock), .pushbutton_c(pushbutton_c), 
            .leds_c_0(leds_c_0), .leds_c_7(leds_c_7), .GND_net(GND_net), 
            .leds_c_6(leds_c_6), .leds_c_5(leds_c_5), .leds_c_4(leds_c_4), 
            .leds_c_3(leds_c_3), .leds_c_2(leds_c_2), .leds_c_1(leds_c_1)) /* synthesis syn_module_defined=1 */ ;   // d:/docs/fpga/helloworld/top.v(9[15:83])
    OB leds_pad_7 (.I(leds_c_7), .O(leds[7]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    OB leds_pad_5 (.I(leds_c_5), .O(leds[5]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    OB leds_pad_4 (.I(leds_c_4), .O(leds[4]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    OB leds_pad_3 (.I(leds_c_3), .O(leds[3]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    OB leds_pad_2 (.I(leds_c_2), .O(leds[2]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    OB leds_pad_1 (.I(leds_c_1), .O(leds[1]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    OB leds_pad_0 (.I(leds_c_0), .O(leds[0]));   // d:/docs/fpga/helloworld/top.v(3[20:24])
    IB pushbutton_pad (.I(pushbutton), .O(pushbutton_c));   // d:/docs/fpga/helloworld/top.v(4[13:23])
    
endmodule
//
// Verilog Description of module slow_counter
//

module slow_counter (fpga_clock, pushbutton_c, leds_c_0, leds_c_7, GND_net, 
            leds_c_6, leds_c_5, leds_c_4, leds_c_3, leds_c_2, leds_c_1) /* synthesis syn_module_defined=1 */ ;
    input fpga_clock;
    input pushbutton_c;
    output leds_c_0;
    output leds_c_7;
    input GND_net;
    output leds_c_6;
    output leds_c_5;
    output leds_c_4;
    output leds_c_3;
    output leds_c_2;
    output leds_c_1;
    
    wire fpga_clock /* synthesis SET_AS_NETWORK=fpga_clock, is_clock=1 */ ;   // d:/docs/fpga/helloworld/top.v(6[7:17])
    wire [31:0]counter;   // d:/docs/fpga/helloworld/top.v(18[13:20])
    wire [7:0]output_byte_7__N_73;
    wire [31:0]n233;
    wire [31:0]n133;
    
    wire n57, n56, n55, n54, n53, n52, n51, n50, n49, n48, 
        n47, n46, n45, n44, n43, n42;
    
    LUT4 inv_5_i5_1_lut (.A(counter[28]), .Z(output_byte_7__N_73[4])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i5_1_lut.init = 16'h5555;
    FD1P3AX counter_10__i0 (.D(n133[0]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i0.GSR = "ENABLED";
    LUT4 inv_5_i4_1_lut (.A(counter[27]), .Z(output_byte_7__N_73[3])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i4_1_lut.init = 16'h5555;
    LUT4 inv_5_i3_1_lut (.A(counter[26]), .Z(output_byte_7__N_73[2])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i3_1_lut.init = 16'h5555;
    LUT4 inv_5_i2_1_lut (.A(counter[25]), .Z(output_byte_7__N_73[1])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i2_1_lut.init = 16'h5555;
    LUT4 inv_5_i1_1_lut (.A(counter[24]), .Z(output_byte_7__N_73[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i1_1_lut.init = 16'h5555;
    FD1P3AX counter_10__i31 (.D(n133[31]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i31.GSR = "ENABLED";
    FD1P3AY output_byte_i0_i1 (.D(output_byte_7__N_73[0]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_0)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i1.GSR = "ENABLED";
    FD1P3AX counter_10__i30 (.D(n133[30]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i30.GSR = "ENABLED";
    FD1P3AX counter_10__i29 (.D(n133[29]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i29.GSR = "ENABLED";
    FD1P3AX counter_10__i28 (.D(n133[28]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i28.GSR = "ENABLED";
    FD1P3AX counter_10__i27 (.D(n133[27]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i27.GSR = "ENABLED";
    FD1P3AX counter_10__i26 (.D(n133[26]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i26.GSR = "ENABLED";
    FD1P3AX counter_10__i25 (.D(n133[25]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i25.GSR = "ENABLED";
    FD1P3AX counter_10__i24 (.D(n133[24]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i24.GSR = "ENABLED";
    FD1P3AX counter_10__i23 (.D(n133[23]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i23.GSR = "ENABLED";
    FD1P3AX counter_10__i22 (.D(n133[22]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i22.GSR = "ENABLED";
    FD1P3AX counter_10__i21 (.D(n133[21]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i21.GSR = "ENABLED";
    FD1P3AX counter_10__i20 (.D(n133[20]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i20.GSR = "ENABLED";
    FD1P3AX counter_10__i19 (.D(n133[19]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i19.GSR = "ENABLED";
    FD1P3AX counter_10__i18 (.D(n133[18]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i18.GSR = "ENABLED";
    FD1P3AX counter_10__i17 (.D(n133[17]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i17.GSR = "ENABLED";
    FD1P3AX counter_10__i16 (.D(n133[16]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i16.GSR = "ENABLED";
    FD1P3AX counter_10__i15 (.D(n133[15]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i15.GSR = "ENABLED";
    FD1P3AX counter_10__i14 (.D(n133[14]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i14.GSR = "ENABLED";
    FD1P3AX counter_10__i13 (.D(n133[13]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i13.GSR = "ENABLED";
    FD1P3AX counter_10__i12 (.D(n133[12]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i12.GSR = "ENABLED";
    FD1P3AX counter_10__i11 (.D(n133[11]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i11.GSR = "ENABLED";
    FD1P3AX counter_10__i10 (.D(n133[10]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i10.GSR = "ENABLED";
    FD1P3AX counter_10__i9 (.D(n133[9]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i9.GSR = "ENABLED";
    FD1P3AX counter_10__i8 (.D(n133[8]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i8.GSR = "ENABLED";
    FD1P3AX counter_10__i7 (.D(n133[7]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i7.GSR = "ENABLED";
    FD1P3AX counter_10__i6 (.D(n133[6]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i6.GSR = "ENABLED";
    FD1P3AX counter_10__i5 (.D(n133[5]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i5.GSR = "ENABLED";
    FD1P3AX counter_10__i4 (.D(n133[4]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i4.GSR = "ENABLED";
    FD1P3AX counter_10__i3 (.D(n133[3]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i3.GSR = "ENABLED";
    FD1P3AX counter_10__i2 (.D(n133[2]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i2.GSR = "ENABLED";
    FD1P3AX counter_10__i1 (.D(n133[1]), .SP(pushbutton_c), .CK(fpga_clock), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10__i1.GSR = "ENABLED";
    FD1P3AY output_byte_i0_i8 (.D(output_byte_7__N_73[7]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_7)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i8.GSR = "ENABLED";
    LUT4 inv_5_i8_1_lut (.A(counter[31]), .Z(output_byte_7__N_73[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i8_1_lut.init = 16'h5555;
    LUT4 inv_5_i7_1_lut (.A(counter[30]), .Z(output_byte_7__N_73[6])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i7_1_lut.init = 16'h5555;
    LUT4 inv_5_i6_1_lut (.A(counter[29]), .Z(output_byte_7__N_73[5])) /* synthesis lut_function=(!(A)) */ ;   // d:/docs/fpga/helloworld/top.v(31[19:34])
    defparam inv_5_i6_1_lut.init = 16'h5555;
    CCU2D counter_10_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n57), .S0(n133[31]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_33.INIT1 = 16'h0000;
    defparam counter_10_add_4_33.INJECT1_0 = "NO";
    defparam counter_10_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n56), .COUT(n57), .S0(n133[29]), .S1(n133[30]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_31.INJECT1_0 = "NO";
    defparam counter_10_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n55), .COUT(n56), .S0(n133[27]), .S1(n133[28]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_29.INJECT1_0 = "NO";
    defparam counter_10_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n54), .COUT(n55), .S0(n133[25]), .S1(n133[26]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_27.INJECT1_0 = "NO";
    defparam counter_10_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_25 (.A0(n233[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n53), .COUT(n54), .S0(n133[23]), .S1(n133[24]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_25.INJECT1_0 = "NO";
    defparam counter_10_add_4_25.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_23 (.A0(n233[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n52), .COUT(n53), .S0(n133[21]), .S1(n133[22]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_23.INJECT1_0 = "NO";
    defparam counter_10_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_21 (.A0(n233[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n51), .COUT(n52), .S0(n133[19]), .S1(n133[20]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_21.INJECT1_0 = "NO";
    defparam counter_10_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_19 (.A0(n233[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n50), .COUT(n51), .S0(n133[17]), .S1(n133[18]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_19.INJECT1_0 = "NO";
    defparam counter_10_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_17 (.A0(n233[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n49), .COUT(n50), .S0(n133[15]), .S1(n133[16]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_17.INJECT1_0 = "NO";
    defparam counter_10_add_4_17.INJECT1_1 = "NO";
    FD1P3AY output_byte_i0_i7 (.D(output_byte_7__N_73[6]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_6)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i7.GSR = "ENABLED";
    FD1P3AY output_byte_i0_i6 (.D(output_byte_7__N_73[5]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_5)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i6.GSR = "ENABLED";
    FD1P3AY output_byte_i0_i5 (.D(output_byte_7__N_73[4]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_4)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i5.GSR = "ENABLED";
    FD1P3AY output_byte_i0_i4 (.D(output_byte_7__N_73[3]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_3)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i4.GSR = "ENABLED";
    FD1P3AY output_byte_i0_i3 (.D(output_byte_7__N_73[2]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_2)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i3.GSR = "ENABLED";
    FD1P3AY output_byte_i0_i2 (.D(output_byte_7__N_73[1]), .SP(pushbutton_c), 
            .CK(fpga_clock), .Q(leds_c_1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=15, LSE_RCOL=83, LSE_LLINE=9, LSE_RLINE=9 */ ;   // d:/docs/fpga/helloworld/top.v(26[9] 33[5])
    defparam output_byte_i0_i2.GSR = "ENABLED";
    CCU2D counter_10_add_4_15 (.A0(n233[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n48), .COUT(n49), .S0(n133[13]), .S1(n133[14]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_15.INJECT1_0 = "NO";
    defparam counter_10_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_13 (.A0(n233[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n47), .COUT(n48), .S0(n133[11]), .S1(n133[12]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_13.INJECT1_0 = "NO";
    defparam counter_10_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_11 (.A0(n233[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n46), .COUT(n47), .S0(n133[9]), .S1(n133[10]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_11.INJECT1_0 = "NO";
    defparam counter_10_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_9 (.A0(n233[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n45), .COUT(n46), .S0(n133[7]), .S1(n133[8]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_9.INJECT1_0 = "NO";
    defparam counter_10_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n44), .COUT(n45), .S0(n133[5]), .S1(n133[6]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_7.INJECT1_0 = "NO";
    defparam counter_10_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n43), .COUT(n44), .S0(n133[3]), .S1(n133[4]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_5.INJECT1_0 = "NO";
    defparam counter_10_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n42), .COUT(n43), .S0(n133[1]), .S1(n133[2]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_10_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_10_add_4_3.INJECT1_0 = "NO";
    defparam counter_10_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_10_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n42), .S1(n133[0]));   // d:/docs/fpga/helloworld/top.v(30[15:29])
    defparam counter_10_add_4_1.INIT0 = 16'hF000;
    defparam counter_10_add_4_1.INIT1 = 16'h0555;
    defparam counter_10_add_4_1.INJECT1_0 = "NO";
    defparam counter_10_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

