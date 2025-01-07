module decoder_5to32(
input logic [4:0] in,
input logic en,
output logic [31:0] out
);

logic [1:0] tmp;

decoder_2to1 d0(.in(in[4]), .en, .out(tmp));
decoder_4to16 d1(.in(in[3:0]), .en(tmp[0]), .out(out[15:0]));
decoder_4to16 d1(.in(in[3:0]), .en(tmp[1]), .out(out[31:16]));



endmodule