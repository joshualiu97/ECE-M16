`timescale 1ns / 1ps
// Name: Joshua Liu
// Date: 1/31/19
// ID: 105136031
// Project: Project #1 Orientation of Verilog and ISE
// Class: EE M16 Logic Design of Digital Systems
// Discussion: 2B

module simulation;

	// Inputs
	reg x0;
	reg x1;
	reg x2;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	eem16_proj1 uut (
		.x0(x0), 
		.x1(x1), 
		.x2(x2), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x0 = 0;
		x1 = 0;
		x2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		
		// After the first 100ns, every 100ns after is a period of time
		// when the input value increases(from 0 to 7), and ends with
		// a time interval of 100ns where all inputs are zero
		
		//000   0
		x2 = 0; x1 = 0; x0 = 0;
		#100; // Duration set to 100ns
		
		//001   1
		x2 = 0; x1 = 0; x0 = 1;
		#100;
		
		//010   2
		x2 = 0; x1 = 1; x0 = 0;
		#100;
		
		//011   3
		x2 = 0; x1 = 1; x0 = 1;
		#100;
		
		//100   4
		x2 = 1; x1 = 0; x0 = 0;
		#100;
		
		//101   5
		x2 = 1; x1 = 0; x0 = 1;
		#100;
		
		//110   6
		x2 = 1; x1 = 1; x0 = 0;
		#100;
		
		//111   7
		x2 = 1; x1 = 1; x0 = 1;
		#100;

		// Set all input to zero
		x2 = 0; x1 = 0; x0 = 0;
		#100;
		
		$finish;
		
	end
      
endmodule
