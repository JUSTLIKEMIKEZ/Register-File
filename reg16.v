`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:49 10/19/2015 
// Design Name: 
// Module Name:    reg16 
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
module reg16(clk, reset, ld, Din, DA, DB, oeA, oeB );
	input clk, reset, ld, oeA, oeB;
	input [15:0] Din;
	output [15:0] DA, DB;
	reg [15:0] Dout;
	
	
	always @ (posedge clk, posedge reset) begin
		if(reset)
			Dout <= 16'h0;
		else
			if(ld)
				Dout <= Din;
			else
				Dout <= Dout;
	end
	
	assign DA = (oeA) ? Dout : 16'hz;
	assign DB = (oeB) ? Dout : 16'hz;
	

endmodule
