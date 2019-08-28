`timescale 1ns / 1ps
// Team: Joshua Liu (105136031), Cody Fan (205102002)
// Date: 2/17/19
// Project: Project #2 Design of Combinational Systems
// Class: EE M16 Logic Design of Digital Systems

module eem16_proj2_tb;

	integer i;
	
	// Inputs
	reg x3;
	reg x2;
	reg x1;
	reg x0;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	eem16_proj2 uut (
		.x3(x3), 
		.x2(x2), 
		.x1(x1), 
		.x0(x0), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		x3 = 0;
		x2 = 0;
		x1 = 0;
		x0 = 0;
	end
	
	always @ (x3, x2, x1, x0)
		begin
      
		// Generate truth table
		for (i = 0; i < 10; i = i + 1)
			begin
			// Every 10 ns set x3, x2, x1, x0 to BCD of integer i
			#10 {x3, x2, x1, x0} = i;
			$monitor( "%d ns: x3 + x2 + x1 + x0 = %b + %b + %b + %b = decimal = %b",
				$time, x3, x2, x1, x0, a, b, c, d, e, f, g);
			end
		// Stop 10ns after last change of inputs
		#10;
		$finish;
		
	end
		
	/*
		// Method involving manually seting inuputs
	
		// Wait 10 ns for global reset to finish
		#10;
      
		// After the first 10ns, every 10ns after is a period of time
		// when the input value increases(from 0 to 9), and ends with
		// a time interval of 10ns where all inputs are zero
		
		//0000   0
		x3 = 0; x2 = 0; x1 = 0; x0 = 0;
		#10; // Duration set to 50ns
		
		//0001   1
		x3 = 0; x2 = 0; x1 = 0; x0 = 1;
		#10;
		
		//0010   2
		x3 = 0; x2 = 0; x1 = 1; x0 = 0;
		#10;
		
		//0011   3
		x3 = 0; x2 = 0; x1 = 1; x0 = 1;
		#10;
		
		//0100   4
		x3 = 0; x2 = 1; x1 = 0; x0 = 0;
		#10;
		
		//0101   5
		x3 = 0; x2 = 1; x1 = 0; x0 = 1;
		#10;
		
		//0110   6
		x3 = 0; x2 = 1; x1 = 1; x0 = 0;
		#10;
		
		//0111   7
		x3 = 0; x2 = 1; x1 = 1; x0 = 1;
		#10;

		//1000   8
		x3 = 1; x2 = 0; x1 = 0; x0 = 0;
		#10;

		//1001   9
		x3 = 1; x2 = 0; x1 = 0; x0 = 1;
		#10;

		// Set all inputs to zero
		x3 = 0; x2 = 0; x1 = 0; x0 = 0;
		#10;
		
		$finish;
		
	end
	*/
      
endmodule
