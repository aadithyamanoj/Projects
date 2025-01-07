module register(
input logic clk, reset, en,
input logic [63:0] d,
output logic [63:0] q 
);

genvar i;
generate
	for ( i = 0; i < 64; i++) begin
		EN_D_FF r(.clk, .reset, .en, .d(d[i]), .q(q[i]));
	end
endgenerate

endmodule