module collision(
input logic clk, clkP, reset,
input logic [15:0] bird, pipe,
output logic [9:0] score,
output logic gameover

);



always_ff @(posedge clk) begin
	if(reset) begin
		score <= 10'd0;
		gameover <= 0;
	end
	else if(bird <=16'b0000000000000001)begin
		gameover <=1;
	end
	else if(clkP) begin
		if((bird & pipe)!= 16'd0) begin
			gameover<=1;
		end

		
		else if((gameover == 0) && (pipe != 16'd0)) begin
			score <= score + 1;	
		end
	end

end

endmodule 