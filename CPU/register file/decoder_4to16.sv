module decoder_4to16(
input logic [3:0] in,
input logic en,
output logic [15:0] out
); 

logic [3:0] tmp;

decoder_2to4 d0(.in(in[3:2]), .en, .out(tmp));


decoder_2to4 d1(.in(in[1:0]), .en(tmp[0]), .out(out[3:0]));
decoder_2to4 d2(.in(in[1:0]), .en(tmp[1]), .out(out[7:4]));
decoder_2to4 d3(.in(in[1:0]), .en(tmp[2]), .out(out[11:8]));
decoder_2to4 d4(.in(in[1:0]), .en(tmp[3]), .out(out[15:12]));

endmodule
