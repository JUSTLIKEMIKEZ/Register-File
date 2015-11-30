`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:27 10/14/2015 
// Design Name: 
// Module Name:    Lab5_Top_Module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module Lab5_Top_Module( clk, reset, we, W, W_Adr, R_Adr, S_Adr, seg, an );
	
	//input declaration
	input 		 	clk, reset;
	input	 		 	we;
	input  [2:0] 	W_Adr, R_Adr, S_Adr;
	input  [3:0] 	W;
	
	//output declaration
	output [7:0] 	an;
	output [6:0]	seg;
	
	//temporary wire declaration 
	wire 	[15:0] 	R, S;
	wire 	 			we_pulse;
	wire   [7:0]   we_en, r_en, s_en;
	wire 				clk500_Hz;
	
	//clk divider for the we_pulse so that there wil
	clk_500Hz clk_div( .clk_in(clk), .reset(reset), .clk_out(clk500_Hz) );
	
	//debounce for the write decoder
	debounce db   ( .clk(clk500_Hz), .reset(reset), .D_in(we), .D_out(we_pulse));
	
	
	//regfile that will be used to store read and write data of bits
	register_file	regfile(.clk(clk), .reset(reset), .W_Adr(W_Adr), .R_Adr(R_Adr), .S_Adr(S_Adr), 
								  .we_pulse(we_pulse), .Din(W), .R(R), .S(S));
	
	//controlls what the information in each address are
	display_controller dc( .clk(clk), .reset(reset), .seg_in({S, R}), .A(an), .seg_out(seg));

endmodule
