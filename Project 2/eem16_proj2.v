`timescale 1ns / 1ps
// Team: Joshua Liu (105136031), Cody Fan (205102002)
// Date: 2/17/19
// Project: Project #2 Design of Combinational Systems
// Class: EE M16 Logic Design of Digital Systems

module eem16_proj2(
		input x3,
		input x2,
		input x1,
		input x0,
		output a,
		output b,
		output c,
		output d,
		output e,
		output f,
		output g
		);
		
		assign a = !(!(!x2 & !x0) & !(x2 & x0) & !x3 & !x1);
		assign b = !(x2 & !(!x1 & !x0) & !(x1 & x0));
		assign c = !(x1 & !x2 & !x0);
		assign d = !(!(!x2 & !x0) & !x3 & !(!x2 & x1) & !(x1 & !x0) & !(x2 & !x1 & x0));
		assign e = !(!(!x2 & !x0) & !(x1 & !x0));
		assign f = !(!(!x1 & !x0) & !(x2 & !x0) & !(x2 & !x1) & !x3);
		assign g = !(!(x2 & !x1) & !x3 & !(!x2 & x1) & !(x1 & !x0));

endmodule
