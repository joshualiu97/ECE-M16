`timescale 1ns / 1ps
// Team: Joshua Liu (105136031), Cody Fan (205102002)
// Date: 3/6/19
// Team ID: P07
// Project: Project #3 Design of Sequential Systems
// Class: EE M16 Logic Design of Digital Systems

module eem16_proj3_tb;

	// Inputs
	reg x1;
	reg x0;
	reg reset;
	reg clk;

	// Outputs
	wire RG;
	wire RN;

	// Instantiate the Unit Under Test (UUT)
	eem16_proj3 uut (
		.x1(x1), 
		.x0(x0), 
		.reset(reset), 
		.clk(clk), 
		.RG(RG), 
		.RN(RN)
	);

	initial begin
	
		// Initialize inputs (100 ns)
		
///////////////////////////////////////////////////////////////////////
//										BEGIN												//
///////////////////////////////////////////////////////////////////////

		// Set reset to 1
		x1 = 0; x0 = 0; reset = 1; clk = 1; #25;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #25;
		// Set reset to 0
		clk = 1; reset = 0; #25;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #25;
		
///////////////////////////////////////////////////////////////////////
//										END												//
///////////////////////////////////////////////////////////////////////

		
		// Simulation 1 -> D N D (100 ns - 300 ns)
		
		
///////////////////////////////////////////////////////////////////////
//						BEGIN DIME NICKEL DIME SIMULATION						//
///////////////////////////////////////////////////////////////////////

		// Set clock to 1 and inputs to 11 for dime (25 ns) -> 10c state
		clk = 1; x0 = 1; x1 = 1; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		// Set clock to 1 and inputs to 01 for nickel (25 ns) -> 15c state
		clk = 1; x0 = 1; x1 = 0; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		// Set clock to 1 and inputs to 11 for dime (25 ns) -> Init state, return gum and nickel
		clk = 1; x0 = 1; x1 = 1; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		
		// Reset the system
		
		// Set reset to 1
		x1 = 0; x0 = 0; reset = 1; clk = 1; #10;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #10;
		// Set reset to 0
		clk = 1; reset = 0; #10;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #20;
		
		// NEXT SIMULATION STARTS AT 300 ns
		
///////////////////////////////////////////////////////////////////////
//						END DIME NICKEL DIME SIMULATION							//
///////////////////////////////////////////////////////////////////////


		// Simulation 2 -> N N N N (300 ns - 600 ns)

		
///////////////////////////////////////////////////////////////////////
//				BEGIN NICKEL NICKEL NICKEL NICKEL SIMULATION					//
///////////////////////////////////////////////////////////////////////

		// Set clock to 1 and inputs to 01 for nickel (25 ns) -> 5c state
		clk = 1; x0 = 1; x1 = 0; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		// Set clock to 1 and inputs to 01 for nickel (25 ns) -> 10c state
		clk = 1; x0 = 1; x1 = 0; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		// Set clock to 1 and inputs to 01 for nickel (25 ns) -> 15c state
		clk = 1; x0 = 1; x1 = 0; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		// Set clock to 1 and inputs to 01 for nickel (25 ns) -> Init state, return gum
		clk = 1; x0 = 1; x1 = 0; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		
		// Reset the system
		
		// Set reset to 1
		x1 = 0; x0 = 0; reset = 1; clk = 1; #25;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #25;
		// Set reset to 0
		clk = 1; reset = 0; #25;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #25;
		
		// NEXT SIMULATION STARTS AT 600 ns
		
///////////////////////////////////////////////////////////////////////
//				END NICKEL NICKEL NICKEL NICKEL SIMULATION					//
///////////////////////////////////////////////////////////////////////


		// Simulation 3 -> D RESET (600 ns - 900 ns)

		
///////////////////////////////////////////////////////////////////////
//							BEGIN DIME RESET SIMULATION							//
///////////////////////////////////////////////////////////////////////

		// Set clock to 1 and inputs to 01 for nickel (25 ns) -> 5c state
		clk = 1; x0 = 1; x1 = 0; #25;
		// Cycle the clock and reset inputs(set LOW to use HIGH again) (25 ns)
		clk = 0; x0 = 0; x1 = 0; #25;
		// Set reset to 1 (25 ns) -> Init state, return nothing
		clk = 1; reset = 1; #25;
		// Cycle the clock (set LOW to use HIGH again) (5 ns)
		clk = 0; #5;
		// Set reset to 0 (5 ns) -> Init state, return nothing
		clk = 1; reset = 0; #5;
		// Cycle the clock (set LOW to use HIGH again) (15 ns)
		clk = 0; #15;
		
		// Test state by inputting two dimes which should only return gum
		// Set clock to 1 and inputs to 11 for dime (25 ns) -> 10c state
		clk = 1; x0 = 1; x1 = 1; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		// Set clock to 1 and inputs to 11 for time (25 ns) -> Init state, return gum
		clk = 1; x0 = 1; x1 = 1; #25;
		// Cycle the clock (set LOW to use HIGH again) (25 ns)
		clk = 0; #25;
		
		// Reset the system
		
		// Set reset to 1
		x1 = 0; x0 = 0; reset = 1; clk = 1; #25;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #25;
		// Set reset to 0
		clk = 1; reset = 0; #25;
		// Cycle the clock (set LOW to use HIGH again)
		clk = 0; #25;
		
///////////////////////////////////////////////////////////////////////
//							END DIME RESET SIMULATION								//
///////////////////////////////////////////////////////////////////////
		
		
		// Wait 100 ns for finish (finish at 1000 ns)
		#100;
		
	end
	
endmodule

