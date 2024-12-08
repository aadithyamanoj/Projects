module randLFSR(
input logic clk, reset,
output logic [3:0] random 


);


logic [3:0] lfsr;

always_ff @(posedge clk) begin

	if(reset)begin 
		lfsr <= 4'b0010;
		random <=4'b0010;
	end
	
	else begin 
		lfsr <= {lfsr[2:0], lfsr[3] ^ lfsr[2]};
		if(lfsr < 4'b0010) begin
			 random <= 4'b0010;
		
		end
		else if(lfsr > 4'b1101)begin
			 random <= 4'b1101;
		end
		else begin
			 random <= lfsr;
		end
		
	
	end





end











endmodule 