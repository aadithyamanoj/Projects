module adder9Bit(
input logic [8:0] a, b,
output logic [8:0] sum,
output logic cOut
);

logic [8:0] C;

adder one(a[0], b[0], 0, C[0], sum[0]);
adder two(a[1], b[1], C[0], C[1], sum[1]);
adder three(a[2], b[2], C[1], C[2], sum[2]);
adder four(a[3], b[3], C[2], C[3], sum[3]);
adder five(a[4], b[4], C[3], C[4], sum[4]);
adder six(a[5], b[5], C[4], C[5], sum[5]);
adder seven(a[6], b[6], C[5], C[6], sum[6]);
adder eight(a[7], b[7], C[6], C[7], sum[7]);
adder nine(a[8], b[8], C[7], C[8], sum[8]);

assign cOut = C[8];

endmodule 