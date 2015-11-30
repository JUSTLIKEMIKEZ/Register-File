`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:52 10/19/2015
// Design Name:   reg16
// Module Name:   Y:/Documents/GitHub Files/301/lab5/reg_diagnostic_tb.v
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

module reg_diagnostic_tb;
	
	reg clk, reset;
	
	// Outputs
	wire ;

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

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

