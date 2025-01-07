module mux_16to1(
input logic [15:0] in,
input logic [3:0] s,
output logic out
); 


logic [3:0] tmp;

mux_4to1 m0(.in(in[3:0]), .s(s[1:0]), .out[tmp0]);
mux_4to1 m0(.in(in[7:4]), .s(s[1:0]), .out[tmp1]);
mux_4to1 m0(.in(in[11:5]), .s(s[1:0]), .out[tmp2]);
mux_4to1 m0(.in(in[15:12]), .s(s[1:0]), .out[tmp3]);

mux_4to1 m0(.in(tmp), .s(s[3:2]), .out[out]);










endmodule 