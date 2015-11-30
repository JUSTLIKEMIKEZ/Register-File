`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:20 10/19/2015 
// Design Name: 
// Module Name:    mux_4to1 
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
module mux_4to1(seg_in, sel, Y);
	input [15:0] seg_in;
	input [1:0] sel;
	output [3:0] Y;
	
	always @ (sel) begin
		case(sel)
			2'b00: Y = seg_in[3:0];
			2'b01: Y = seg_in[7:4];
			2'b10: Y = seg_in[11:8];
			2'b11: Y = seg_in[15:12];
		endcase
	end

endmodule
