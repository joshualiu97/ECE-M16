`timescale 1ns / 1ps

module MUX_J1(s, q);
			
			input[3:0]s;
			wire[15:0]p;
			output q;
			reg q;
			
			assign p[0] = 0;
			assign p[1] = 0;
			assign p[2] = 0;
			assign p[3] = 1;
			assign p[4] = 0;
			assign p[5] = 1;
			assign p[6] = 0;
			assign p[7] = 1;
			assign p[8] = 0;
			assign p[9] = 0;
			assign p[10] = 0;
			assign p[11] = 0;
			assign p[12] = 0;
			assign p[13] = 0;
			assign p[14] = 0;
			assign p[15] = 0;
			
			always@(s or p) begin
				case(s)
					4'b0000:q=p[0];
					4'b0001:q=p[1];
					4'b0010:q=p[2];
					4'b0011:q=p[3];
					4'b0100:q=p[4];
					4'b0101:q=p[5];
					4'b0110:q=p[6];
					4'b0111:q=p[7];
					4'b1000:q=p[8];
					4'b1001:q=p[9];
					4'b1010:q=p[10];
					4'b1011:q=p[11];
					4'b1100:q=p[12];
					4'b1101:q=p[13];
					4'b1110:q=p[14];
					4'b1111:q=p[15];
				endcase
			end
endmodule

module MUX_K1(s, q);
			
			input[3:0]s;
			wire[15:0]p;
			output q;
			reg q;
			
			assign p[0] = 0;
			assign p[1] = 0;
			assign p[2] = 0;
			assign p[3] = 0;
			assign p[4] = 0;
			assign p[5] = 0;
			assign p[6] = 0;
			assign p[7] = 0;
			assign p[8] = 0;
			assign p[9] = 1;
			assign p[10] = 0;
			assign p[11] = 1;
			assign p[12] = 0;
			assign p[13] = 0;
			assign p[14] = 0;
			assign p[15] = 1;
			
			always@(s or p) begin
				case(s)
					4'b0000:q=p[0];
					4'b0001:q=p[1];
					4'b0010:q=p[2];
					4'b0011:q=p[3];
					4'b0100:q=p[4];
					4'b0101:q=p[5];
					4'b0110:q=p[6];
					4'b0111:q=p[7];
					4'b1000:q=p[8];
					4'b1001:q=p[9];
					4'b1010:q=p[10];
					4'b1011:q=p[11];
					4'b1100:q=p[12];
					4'b1101:q=p[13];
					4'b1110:q=p[14];
					4'b1111:q=p[15];
				endcase
			end
endmodule

module MUX_J0(s, q);
			
			input[3:0]s;
			wire[15:0]p;
			output q;
			reg q;
			
			assign p[0] = 0;
			assign p[1] = 1;
			assign p[2] = 0;
			assign p[3] = 1;
			assign p[4] = 0;
			assign p[5] = 0;
			assign p[6] = 0;
			assign p[7] = 0;
			assign p[8] = 0;
			assign p[9] = 0;
			assign p[10] = 0;
			assign p[11] = 0;
			assign p[12] = 0;
			assign p[13] = 0;
			assign p[14] = 0;
			assign p[15] = 0;
			
			always@(s or p) begin
				case(s)
					4'b0000:q=p[0];
					4'b0001:q=p[1];
					4'b0010:q=p[2];
					4'b0011:q=p[3];
					4'b0100:q=p[4];
					4'b0101:q=p[5];
					4'b0110:q=p[6];
					4'b0111:q=p[7];
					4'b1000:q=p[8];
					4'b1001:q=p[9];
					4'b1010:q=p[10];
					4'b1011:q=p[11];
					4'b1100:q=p[12];
					4'b1101:q=p[13];
					4'b1110:q=p[14];
					4'b1111:q=p[15];
				endcase
			end
endmodule

module MUX_K0(s, q);
			
			input[3:0]s;
			wire[15:0]p;
			output q;
			reg q;
			
			assign p[0] = 0;
			assign p[1] = 0;
			assign p[2] = 0;
			assign p[3] = 0;
			assign p[4] = 0;
			assign p[5] = 0;
			assign p[6] = 0;
			assign p[7] = 1;
			assign p[8] = 0;
			assign p[9] = 0;
			assign p[10] = 0;
			assign p[11] = 0;
			assign p[12] = 0;
			assign p[13] = 1;
			assign p[14] = 0;
			assign p[15] = 1;
			
			always@(s or p) begin
				case(s)
					4'b0000:q=p[0];
					4'b0001:q=p[1];
					4'b0010:q=p[2];
					4'b0011:q=p[3];
					4'b0100:q=p[4];
					4'b0101:q=p[5];
					4'b0110:q=p[6];
					4'b0111:q=p[7];
					4'b1000:q=p[8];
					4'b1001:q=p[9];
					4'b1010:q=p[10];
					4'b1011:q=p[11];
					4'b1100:q=p[12];
					4'b1101:q=p[13];
					4'b1110:q=p[14];
					4'b1111:q=p[15];
				endcase
			end
endmodule

module MUX_RG(s, q);
			
			input[3:0]s;
			wire[15:0]p;
			output q;
			reg q;
			
			assign p[0] = 0;
			assign p[1] = 0;
			assign p[2] = 0;
			assign p[3] = 0;
			assign p[4] = 0;
			assign p[5] = 0;
			assign p[6] = 0;
			assign p[7] = 0;
			assign p[8] = 0;
			assign p[9] = 1;
			assign p[10] = 0;
			assign p[11] = 1;
			assign p[12] = 0;
			assign p[13] = 0;
			assign p[14] = 0;
			assign p[15] = 1;
			
			always@(s or p) begin
				case(s)
					4'b0000:q=p[0];
					4'b0001:q=p[1];
					4'b0010:q=p[2];
					4'b0011:q=p[3];
					4'b0100:q=p[4];
					4'b0101:q=p[5];
					4'b0110:q=p[6];
					4'b0111:q=p[7];
					4'b1000:q=p[8];
					4'b1001:q=p[9];
					4'b1010:q=p[10];
					4'b1011:q=p[11];
					4'b1100:q=p[12];
					4'b1101:q=p[13];
					4'b1110:q=p[14];
					4'b1111:q=p[15];
				endcase
			end
endmodule

module MUX_RN(s, q);
			
			input[3:0]s;
			wire[15:0]p;
			output q;
			reg q;
			
			assign p[0] = 0;
			assign p[1] = 0;
			assign p[2] = 0;
			assign p[3] = 0;
			assign p[4] = 0;
			assign p[5] = 0;
			assign p[6] = 0;
			assign p[7] = 0;
			assign p[8] = 0;
			assign p[9] = 0;
			assign p[10] = 0;
			assign p[11] = 1;
			assign p[12] = 0;
			assign p[13] = 0;
			assign p[14] = 0;
			assign p[15] = 0;
			
			always@(s or p) begin
				case(s)
					4'b0000:q=p[0];
					4'b0001:q=p[1];
					4'b0010:q=p[2];
					4'b0011:q=p[3];
					4'b0100:q=p[4];
					4'b0101:q=p[5];
					4'b0110:q=p[6];
					4'b0111:q=p[7];
					4'b1000:q=p[8];
					4'b1001:q=p[9];
					4'b1010:q=p[10];
					4'b1011:q=p[11];
					4'b1100:q=p[12];
					4'b1101:q=p[13];
					4'b1110:q=p[14];
					4'b1111:q=p[15];
				endcase
			end
endmodule
