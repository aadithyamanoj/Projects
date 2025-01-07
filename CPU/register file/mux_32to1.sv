module mux_32to1(
input logic [31:0] in,
input logic [4:0] s,
output logic out
); 

logic [1:0] tmp;


mux_16to1 m0(.in(in[15:0]), .s(s[3:0]), .out(tmp[0]));
mux_16to1 m1(.in(in[31:16]), .s(s[3:0]), .out(tmp[1]));
mux_2to1 m2(.in(tmp), .s(s[4]), .out);







endmodule