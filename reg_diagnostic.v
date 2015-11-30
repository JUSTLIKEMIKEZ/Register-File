`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:36 10/19/2015
// Design Name:   reg16
// Module Name:   Y:/Documents/GitHub Files/301/lab5/reg_diagnostic.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_diagnostic;

	// Inputs
	reg clk;
	reg reset;
	reg ld;
	reg [15:0] Din;
	reg oeA;
	reg oeB;

	// Outputs
	wire [15:0] DA;
	wire [15:0] DB;

	// Instantiate the Unit Under Test (UUT)
	reg16 uut (
		.clk(clk), 
		.reset(reset), 
		.ld(ld), 
		.Din(Din), 
		.DA(DA), 
		.DB(DB), 
		.oeA(oeA), 
		.oeB(oeB)
	);
	
	always begin
		clk = 1'b1;
		#10;
		clk = 1'b0;
		#10;
	end
	
	initial begin
		// Initialize Inputs
		reset = 1'b1;
		#10;
		
		reset = 1'b0;
		ld = 1;
		Din = 16'hAAAA;
		oeA = 1;
		oeB = 1;
		#30;
		
		reset = 1;
		oeA = 0;
		oeB = 0;
		ld = 0;
		#10;
		
		reset = 0;
		oeA = 1;
		oeB = 1;
		ld = 1;
		Din = 16'h5555;
		#30;
		oeA = 0;
		oeB = 0;
		ld = 0;
		#10;
		oeA = 1;
		oeB = 1;
		ld = 1;
		Din = 16'hC3C3;
		#30;
		
		/*Din = 16'h3C3C;
		#30;
		
		Din = 16'hCCCC;
		#30;
		
		Din = 16'h3333;
		#30;
		
		Din = 16'h0001;
		#30;
		
		Din = 16'h0002;
		#30;
		Din = 16'h0004;
		#30;
		Din = 16'h0008;
		#30;
		Din = 16'h0010;
		#30;
		Din = 16'h0020;
		#30;
		Din = 16'h0040;
		#30;
		Din = 16'h0080;
		#30;*/
	end
      
endmodule

