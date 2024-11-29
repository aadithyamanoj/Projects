module LFSR(
input logic clk, reset,
output logic [8:0] Q
);
/*
logic [8:0] PS, NS;

logic F;

always_comb begin
	F = ~(PS[4]^PS[8]);
	NS = {PS[7:0], F};

end




assign out = PS;
*/

always_ff @(posedge clk) begin

	if(reset) Q <= 9'b000000000;
	else Q<= {Q[7:0], ~(Q[4]^Q[8])};


end


endmodule  