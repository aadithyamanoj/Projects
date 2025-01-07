module mux_2to1(
input logic [1:0] in,
input logic s,
output logic out
);
 
or(out, (in[0]&(~s)), (in[1]&s));


endmodule