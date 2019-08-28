`timescale 1ns / 1ps
// Team: Joshua Liu (105136031), Cody Fan (205102002)
// Date: 3/6/19
// Team ID: P07
// Project: Project #3 Design of Sequential Systems
// Class: EE M16 Logic Design of Digital Systems

module eem16_proj3(x1, x0, reset, clk, RG, RN);
		
		// Declare input and outputs
		input x1, x0, reset, clk;
		output RG, RN;
		
		// Need wire since these are both inputs and outputs
		wire S1, S0;
		wire J1, K1, J0, K0;
		
		// Instantiate JK flip flops
		jkff jkff1(reset, clk, J1, K1, S1);
		jkff jkff0(reset, clk, J0, K0, S0);
		
		// Outputs of system
		assign RG = x0 & S1 & (~S0 | x1);
		assign RN = x1 & ~S0 & S1;
		
		// Inputs to flip flops
		assign J1 = x0 & (S0 | x1);
		assign K1 = x0 & (~S0 | x1);
		assign J0 = ~S1 & x0;
		assign K0 = x0 & (S1 | x1);
		
endmodule
