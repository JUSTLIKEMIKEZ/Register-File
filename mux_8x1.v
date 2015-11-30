`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:03 10/05/2015 
// Design Name: 
// Module Name:    mux_8x1 
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
module mux_8x1( D, sel, Y );
	input  [31:0] D;
	input  [ 2:0] sel;
	output [ 3:0] Y;
	reg 	 [ 3:0] Y;
	
	always @ ( * )
		case ( sel )
			3'b000  : Y = D[ 3: 0];
			3'b001  : Y = D[ 7: 4];
			3'b010  : Y = D[11: 8];
			3'b011  : Y = D[15:12];
			3'b000  : Y = D[19:16];
			3'b001  : Y = D[23:20];
			3'b010  : Y = D[27:24];
			3'b011  : Y = D[31:28];
			default : Y = 4'b0000 ;
		endcase
		
endmodule 
