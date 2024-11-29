module counter(
input logic clk, reset, in,
output logic [2:0] out
);

logic [2:0] PS, NS;

logic [2:0] curSum;


adder3Bit add(PS, 3'b001, curSum);

always_comb begin
	if(reset) NS = 3'b000;
	
	else if (in) NS = curSum;
	
	else NS = PS;
		
end 

always_ff @(posedge clk) begin
	out <= PS;
	PS <= NS;

end

endmodule 