`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:29:13 10/20/2015
// Design Name:   register_file
// Module Name:   Y:/Documents/GitHub Files/301/lab5/regfile_diagnostic.v
// Project Name:  lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regfile_diagnostic;
	
	// Inputs
	reg clk;
	reg reset;
	reg [2:0] W_Adr;
	reg [2:0] R_Adr;
	reg [2:0] S_Adr;
	reg we_pulse;
	reg [3:0] Din;
	integer i;

	// Outputs
	wire [15:0] R;
	wire [15:0] S;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.clk(clk), 
		.reset(reset), 
		.W_Adr(W_Adr), 
		.R_Adr(R_Adr), 
		.S_Adr(S_Adr), 
		.we_pulse(we_pulse), 
		.Din(Din), 
		.R(R), 
		.S(S)
	);
	
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		clk = 0; reset = 0; W_Adr = 0; R_Adr = 0; S_Adr = 0; we_pulse = 0; Din = 0;
		@(negedge clk)
			reset = 1'b1;
		@(negedge clk)
			reset = 1'b0;
			Din = 4'hf;
		
		for( i = 0; i < 8; i = i+1 ) begin
			@(negedge clk) begin
				we_pulse = 1'b1;
				W_Adr = i;
				Din = Din - 1;
			end
			@(posedge clk) begin
				we_pulse = 1'b0;
			end
		end
		
		@(negedge clk)begin
			S_Adr = 0;
			R_Adr = 4;
		end
		
		for( i = 0; i < 4; i = i + 1) begin
			@(negedge clk) begin
				we_pulse = 1'b0;
				S_Adr = S_Adr+1;
				R_Adr = R_Adr+1;
			end
			#1 $display("S_Adr = %b, R_Adr = %b, W_Adr = %b", S_Adr, R_Adr, W_Adr);
		end
		
		$stop;
		// Add stimulus here

	end
    
endmodule

