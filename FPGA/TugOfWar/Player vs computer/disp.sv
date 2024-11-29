module disp(
input logic clk, reset,
input logic[2:0] count,
output logic [6:0] light

);
						 

always_comb begin

	case(count) 
	
		3'b000: light = 7'b1000000;
		3'b001: light = 7'b1111001;
		3'b010: light = 7'b0100100;
		3'b011: light = 7'b0110000;
		3'b100: light = 7'b0011001;
		3'b101: light = 7'b0010010;
		3'b110: light = 7'b0000010;
		3'b111: light = 7'b1111000;
	
		default: light = 7'b1000000;
	endcase 

end






endmodule	