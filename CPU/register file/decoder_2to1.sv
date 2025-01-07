module decoder_2to1 
(
	input logic in, en
	output logic [1:0] out 
);

and(out[0], ~in, en);
and(out[1], in, en);



endmodule 