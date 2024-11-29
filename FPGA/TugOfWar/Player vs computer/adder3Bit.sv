module adder3Bit (
input logic [2:0] a, b,
output logic [2:0] sum
);

wire[2:0] c;

adder one(a[0], b[0], 0, c[0], sum[0]);
adder two(a[1], b[1], c[0], c[1], sum[1]);
adder three(a[2], b[2], c[1], c[2], sum[2]);






endmodule 

