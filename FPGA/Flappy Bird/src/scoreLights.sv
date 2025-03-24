module scoreLights(
input logic clk, reset, gameover,
input logic  [9:0] score,
output logic [6:0] hex0, hex1, hex2


); 

	logic [3:0] digit0, digit1, digit2;

	always_comb begin
		digit0 = score % 10;
		digit1 = (score/10)%10;
		digit2 = (score/100)%10;
	end
	
	always_ff @(posedge clk) begin
		if(reset) begin
			hex0 <= 7'd0;
			hex1 <= 7'd0;
			hex2 <= 7'd0;
		end
		else if(gameover)begin 
			hex0 <= hex0;
			hex1 <= hex1;
			hex2 <= hex2;
		end
		else if(score > 999)begin
			hex0 <= 7'b0010000;
			hex1 <= 7'b0010000;
			hex2 <= 7'b0010000;
		end
		
		else begin
			case(digit0) 
				4'b0000: hex0 <= 7'b1000000;
				4'b0001: hex0 <= 7'b1111001;
				4'b0010: hex0 <= 7'b0100100;
				4'b0011: hex0 <= 7'b0110000;
				4'b0100: hex0 <= 7'b0011001;
				4'b0101: hex0 <= 7'b0010010;
				4'b0110: hex0 <= 7'b0000010;
				4'b0111: hex0 <= 7'b1111000;
				4'b1000: hex0 <= 7'b0000000;
				4'b1001: hex0 <= 7'b0010000;
				default: hex0 <= 7'b1000000;
			endcase
			case(digit1) 
				4'b0000: hex1 <= 7'b1000000;
				4'b0001: hex1 <= 7'b1111001;
				4'b0010: hex1 <= 7'b0100100;
				4'b0011: hex1 <= 7'b0110000;
				4'b0100: hex1 <= 7'b0011001;
				4'b0101: hex1 <= 7'b0010010;
				4'b0110: hex1 <= 7'b0000010;
				4'b0111: hex1 <= 7'b1111000;
				4'b1000: hex1 <= 7'b0000000;
				4'b1001: hex1 <= 7'b0010000;
				default: hex1 <= 7'b1000000;				
			endcase
			case(digit2) 
				4'b0000: hex2 <= 7'b1000000;
				4'b0001: hex2 <= 7'b1111001;
				4'b0010: hex2 <= 7'b0100100;
				4'b0011: hex2 <= 7'b0110000;
				4'b0100: hex2 <= 7'b0011001;
				4'b0101: hex2 <= 7'b0010010;
				4'b0110: hex2 <= 7'b0000010;
				4'b0111: hex2 <= 7'b1111000;
				4'b1000: hex2 <= 7'b0000000;
				4'b1001: hex2 <= 7'b0010000;
				default: hex2 <= 7'b1000000;				
			endcase			
		
		end
	end
	
	
	
endmodule 