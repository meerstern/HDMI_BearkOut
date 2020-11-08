/* ****************************************************************************
-- (C) Copyright 2017 Kevin M. Hubbard @ Black Mess Labs - All rights reserved.
-- Source file: top.v                
-- Date:        December 2017
-- Author:      khubbard
-- Description: Spartan3 Test Design 
-- Language:    Verilog-2001 and VHDL-1993
-- Simulation:  Mentor-Modelsim 
-- Synthesis:   Xilinst-XST 
-- License:     This project is licensed with the CERN Open Hardware Licence
--              v1.2.  You may redistribute and modify this project under the
--              terms of the CERN OHL v.1.2. (http://ohwr.org/cernohl).
--              This project is distributed WITHOUT ANY EXPRESS OR IMPLIED
--              WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY
--              AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL
--              v.1.2 for applicable Conditions.
--
-- 3b Module - Facing module pins
--      -------------------------------
--     | 1-GRN 3-CLK 5-HS  7-NC GND 3V |
--     | 0-RED 2-BLU 4-DE  6-VS GND 3V |
--  ___|_______________________________|___
-- |    BML HDMI 3b color PMOD board       |
--  ---------------------------------------
--      pmod_*_*<0> = red
--      pmod_*_*<1> = green
--      pmod_*_*<2> = blue
--      pmod_*_*<3> = pixel_clock
--      pmod_*_*<4> = data_enable
--      pmod_*_*<5> = hsync
--      pmod_*_*<6> = vsync
--      pmod_*_*<7> = nc  
--
--
--
-- 12b Module - Facing module pins
--      ----------------------------        ----------------------------
--     | 1-R3 3-R1 5-G3 7-G1 GND 3V |      | 1-B3 3-ck 5-B0 7-HS GND 3V |
--     | 0-R2 2-R0 4-G2 6-G0 GND 3V |      | 0-B2 2-B1 4-DE 6-VS GND 3V |
--  ___|____________________________|______|____________________________|__
-- |       BML HDMI 12b color PMOD board                                   |
--  -----------------------------------------------------------------------
--       pmod_*_*<0> = r[2]                    pmod_*_*<0> = b[2]
--       pmod_*_*<1> = r[3]                    pmod_*_*<1> = b[3]
--       pmod_*_*<2> = r[0]                    pmod_*_*<2> = b[1]
--       pmod_*_*<3> = r[1]                    pmod_*_*<3> = ck
--       pmod_*_*<4> = g[2]                    pmod_*_*<4> = de
--       pmod_*_*<5> = g[3]                    pmod_*_*<5> = b[0]
--       pmod_*_*<6> = g[0]                    pmod_*_*<6> = vs
--       pmod_*_*<7> = g[1]                    pmod_*_*<7> = hs
--
-- Revision History:
-- Ver#  When      Who      What
-- ----  --------  -------- ---------------------------------------------------
-- 0.1   12.14.17  khubbard Creation
-- ***************************************************************************/
`default_nettype none // Strictly enforce all nets to be declared

module top
(
  input  wire         rst_l,
  // input  wire         clk_40m,     // Main Input Clock
  //input  wire         clk_12m,     // Main Input Clock


//  output wire [7:0]   pmod_m_d,
//  output wire [7:0]   pmod_m_r,
//  output wire [7:0]   pmod_m_g,
//  output wire [7:0]   pmod_m_b

	output wire out_vga_vs,
	output wire out_vga_hs,
	output wire out_vga_de,
	output wire out_vga_ck,
	output wire out_vga_r,
	output wire out_vga_g,
	output wire out_vga_b,
	output wire [7:0] led
	//output wire D5
);// module top

  wire clk_40m;
  wire clk_13_3m;

  wire          reset_loc;
 // wire          clk_40m_tree;
  reg  [29:0]   led_cnt;
  reg  [29:0]   led_cnt_p1;
  wire          vga_de;
  wire          vga_ck;
  wire          vga_hs;
  wire          vga_vs;
  wire [23:0]   vga_rgb;
  reg  [31:0]   random_num;
  wire [7:0]    r;
  wire [7:0]    g;
  wire [7:0]    b;
  reg           mode_bit;


  assign reset_loc  = ~rst_l;

//-----------------------------------------------------------------------------
// Clock Buffer.
//-----------------------------------------------------------------------------
// BUFG u0_clk_tree   (.I( clk_40m         ),.O( clk_40m_tree     ));
//assign clk_40m_tree = clk_40m;

//// Internal OSC setting
        OSCH #( .NOM_FREQ("13.3")) IOSC
        (
          .STDBY(1'b0),
          .OSC(clk_13_3m),
          .SEDSTDBY()
        );

clk clk(.CLKI(clk_13_3m),.CLKOP(clk_40m));

// 40.000 Mhz, see `icepll -i 12 -o 40`
//SB_PLL40_CORE #(
    //.FEEDBACK_PATH("SIMPLE"),
    //.PLLOUT_SELECT("GENCLK"),
    //.DIVR(4'b0000),
    //.DIVF(7'b0110100),
    //.DIVQ(3'b100),
    //.FILTER_RANGE(3'b001),
//) uut (
    //.REFERENCECLK(clkin),
    //.PLLOUTCORE(clk_40m),
    //.LOCK(D5), // keep this!
    //.RESETB(1'b1),
    //.BYPASS(1'b0)
//);



//-----------------------------------------------------------------------------
// Flash an LED. Also control the VGA demos, toggle between color pattern and
// either a bouncing ball or moving lines.
//-----------------------------------------------------------------------------



assign led = ~led_cnt[29:22];

// ----------------------------------------------------------------------------
// VGA Timing Generator
// ----------------------------------------------------------------------------
vga_core u_vga_core
(
  .reset             ( reset_loc           ),
  .random_num        ( random_num[31:0]    ),
  .color_3b          ( 1'b0                ),
  .mode_bit          ( mode_bit            ),
  .clk_dot           ( clk_40m        ),
  .vga_active        ( vga_de              ),
  .vga_hsync         ( vga_hs              ),
  .vga_vsync         ( vga_vs              ),
  .vga_pixel_rgb     ( vga_rgb[23:0]       )
);
  assign r = vga_rgb[23:16];
  assign g = vga_rgb[15:8];
  assign b = vga_rgb[7:0];


// ----------------------------------------------------------------------------
// Assign the PMOD(s) for either 3b or 12b HDMI Module from Black Mesa Labs
// DDR Flop to Mirror pixel clock to TFP410 
// ----------------------------------------------------------------------------
/*
FDDRCPE u1_FDDRCPE
(
  .C0  ( clk_40m_tree   ), .C1  ( ~ clk_40m_tree   ),
  .CE  ( 1'b1           ),
  .CLR ( 1'b0           ), .PRE ( 1'b0      ),
  .D0  ( 1'b1           ), .D1  ( 1'b0      ),
  .Q   ( vga_ck         ) 
);
*/
	assign vga_ck = clk_40m;


// 3b for single-PMOD
//assign  pmod_m_d[7:0] = 8'd0;
//assign  pmod_m_b[7:0] = 8'd0;
//assign  pmod_m_g[7:0] = 8'd0;
//assign  pmod_m_r[7:0] = { 1'b0,vga_vs,vga_hs,vga_de,vga_ck,b[7],g[7],r[7] };

// 12b for dual-PMOD
//  assign  pmod_m_d[7:0] = 8'd0;
//  assign  pmod_m_b[7:0] = 8'd0;
//  assign  pmod_m_g[7:0] = { g[5],g[4],g[7],g[6],r[5],r[4],r[7],r[6] };
//  assign  pmod_m_r[7:0] = { vga_hs,vga_vs,b[4],vga_de,vga_ck,b[5],b[7],b[6] };

	assign out_vga_vs = vga_vs;
	assign out_vga_hs = vga_hs;
	assign out_vga_de = vga_de;
	assign out_vga_ck = vga_ck;
	assign out_vga_r = r[7];
	assign out_vga_g = g[7];
	assign out_vga_b = b[7];

	//assign out_vga_r = r[0];
	//assign out_vga_g = g[0];
	//assign out_vga_b = b[0];
	
	always @ ( posedge clk_40m or posedge reset_loc ) begin : proc_led 
 if ( reset_loc == 1 ) begin
   random_num   <= 32'd0;
   led_cnt      <= 30'd0;
   led_cnt_p1   <= 30'd0;
   // ok_led_loc   <= 0;
   mode_bit     <= 0;
 end else begin
   random_num   <= random_num + 3;
   // ok_led_loc   <= 0;
   led_cnt_p1   <= led_cnt[29:0];
   led_cnt      <= led_cnt + 1;
   if ( led_cnt[19] == 1 ) begin
     // ok_led_loc <= 1;
   end
   if ( led_cnt[29:27] == 3'd0 ) begin
     mode_bit <= 0;
   end else begin
     mode_bit <= 1;
   end 

 end // clk+reset
end // proc_led
	
endmodule // top.v
