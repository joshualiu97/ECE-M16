`timescale 1ns / 1ps
// Name: Joshua Liu
// Date: 1/31/19
// ID: 105136031
// Project: Project #1 Orientation of Verilog and ISE
// Class: EE M16 Logic Design of Digital Systems
// Discussion: 2B

module eem16_proj1(input x0, input x1, input x2, output z
    );
	 // We create wires to link to gates in order to create a 2-level network
	 // Wires notx0, notx1, and notx2 connect to an AND gate
	 // Wires m1, m2, m6 connect to the OR gate as represented in the textbook
	 wire notx0, notx1, notx2, m1, m2, m6;
	 
// NOT gates
assign notx0 = !x0;
assign notx1 = !x1;
assign notx2 = !x2;

// AND gates
assign m1 = notx2 && notx1 && x0;
assign m2 = notx2 && x1 && notx0;
assign m6 = x2 && x1 && notx0;

// OR gates, output
assign z = m1 || m2 || m6;

endmodule
