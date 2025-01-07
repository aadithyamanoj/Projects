module mux_4to1(
input logic [3:0] in,
input logic [1:0] s,
output logic out
);

logic tmp0, tmp1;



mux_2to1 m1(.in(in[1:0]), .s(s[0]), .out(tmp0));
mux_2to1 m2(.in(in[3:2]), .s(s[0]), .out(tmp1));
mux_2to1 m3(.in({tmp1,tmp0}), .s(s[1]), .out(out));


endmodule