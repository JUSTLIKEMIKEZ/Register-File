`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:49 10/19/2015 
// Design Name: 
// Module Name:    register_file 
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
module register_file(clk, reset, W_Adr, R_Adr, S_Adr, we_pulse, Din, R, S);

	input 		  clk, reset; 
	input  [ 2:0] W_Adr, R_Adr, S_Adr;
	input 		  we_pulse; 
	input  [3:0]  Din;
	output [15:0] R, S;
	
	wire clk500_Hz;
	
	wire [7:0] we_en;
	wire [7:0] r_en;
	wire [7:0] s_en;
	
	
	dec_3to8 dec0 ( .in(W_Adr), .en(we_pulse), .y(we_en)),
				dec1 ( .in(R_Adr), .en(1'b1)	 , .y(r_en) ),
				dec2 ( .in(S_Adr), .en(1'b1)	 , .y(s_en) );
	

	reg16		reg0 ( .clk(clk), .reset(reset), .ld(we_en[0]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[0]), .oeB(s_en[0]) ),
						 
				reg1 ( .clk(clk), .reset(reset), .ld(we_en[1]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[1]), .oeB(s_en[1]) ),
						 
				reg2 ( .clk(clk), .reset(reset), .ld(we_en[2]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[2]), .oeB(s_en[2]) ),
						 
				reg3 ( .clk(clk), .reset(reset), .ld(we_en[3]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[3]), .oeB(s_en[3]) ),
						 
				reg4 ( .clk(clk), .reset(reset), .ld(we_en[4]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[4]), .oeB(s_en[4]) ),
						 
				reg5 ( .clk(clk), .reset(reset), .ld(we_en[5]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[5]), .oeB(s_en[5]) ),
						 
				reg6 ( .clk(clk), .reset(reset), .ld(we_en[6]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[6]), .oeB(s_en[6]) ),
						 
				reg7 ( .clk(clk), .reset(reset), .ld(we_en[7]), .Din({ 12'hFFF, Din }),
						 .DA(S), .DB(R), .oeA(r_en[7]), .oeB(s_en[7]) );
				

endmodule
