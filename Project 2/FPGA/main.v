`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:25 02/20/2019 
// Design Name: 
// Module Name:    main 
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
module main(
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
