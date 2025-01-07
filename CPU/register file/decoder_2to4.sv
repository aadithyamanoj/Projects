module decoder_2to4(
input logic [1:0] in,
input logic en,
output logic [3:0] out
);
logic [1:0] tmp;

decoder_2to1 d1(.in(in[1]), .en, .out(tmp));
decoder_2to1 d2(.in(in[0]), .en(tmp[0]), .out(out[1:0]));
decoder_2to1 d3(.in(in[0]), .en(tmp[1]), .out(out[3:2]));

endmodule 