module shifterRight(
input logic clkM, clk, reset, clkP,gameover,
input logic [15:0] pipeRight, pipeLeft, newPipe,
output logic [15:0] curCol

);


always_ff @(posedge clkM) begin 
    if (reset) begin 
        curCol <= 16'd0;
    end 
	 else if(clk)begin
		 if (~gameover && clkP) begin
			  curCol <= newPipe;
		 end
		 else if(gameover) begin
			curCol <= 16'd0;
		end
		else if(~clkP && ~gameover)begin 
			 if((pipeLeft != 16'd0)) begin 
				curCol <= 16'd0;
			end
		end
	end
end






endmodule 