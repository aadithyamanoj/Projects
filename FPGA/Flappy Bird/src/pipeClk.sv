module pipeClk(
input logic clk, reset,
output logic clkOut
);

logic [8:0] count;



always_ff @(posedge clk) begin

	if(reset) begin 
		count <= 9'd0;
		clkOut <= 0;
	end
	else if(count == 9'd0) begin
		clkOut <= 1;
		count <= count+1;
	end
	else begin 
		clkOut <= 0;	
		count <= count+1;
	end	
	
	


end

endmodule 