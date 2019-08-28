`timescale 1ns / 1ps
// Team: Joshua Liu (105136031), Cody Fan (205102002)
// Date: 3/6/19
// Team ID: P07
// Project: Project #3 Design of Sequential Systems
// Class: EE M16 Logic Design of Digital Systems

module jkff(reset, clk, j, k, q);

		input j, k, clk, reset;
		output q;
		
		wire j, k, clk, reset;
		reg q;
		
		always @(posedge clk) begin
		
			if(reset) begin
				q=1'b0;
			end else begin
			
				case({j, k})
					{1'b0, 1'b0}: begin q = q; end
					{1'b0, 1'b1}: begin q = 1'b0; end
					{1'b1, 1'b0}: begin q = 1'b1; end
					{1'b1, 1'b1}: begin q = ~q; end
				endcase
			end
		end
 
endmodule
