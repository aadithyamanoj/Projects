module D_FF (
input loigc clk, reset, d,
output logic q
);

always_ff @(posedge clk) begin
	if(reset) begin
		q <= 0;
	end else begin
		q <= d;
	end
end









endmodule 