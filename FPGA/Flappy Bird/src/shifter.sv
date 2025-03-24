module shifter(
input logic clkM, clk, reset, gameover,
input  logic [15:0] pipeRight, pipeLeft,
output logic [15:0] curCol

);




always_ff @(posedge clkM) begin
	if(reset) begin
		curCol<= 16'd0;
	end
	
	else if(gameover) begin
		curCol <= 16'd0;
	end
	else if(clk) begin
		if(pipeRight != 16'd0 &&~gameover) begin
		
		curCol <= pipeRight;
		end
		
		else if((pipeLeft != 16'd0)&&~gameover) begin 
			curCol <= 16'd0;
		end
	end

end







endmodule 