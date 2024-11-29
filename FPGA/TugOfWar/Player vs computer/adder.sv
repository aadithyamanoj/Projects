module adder(
input logic a, b, Cin, 
output logic Cout, sum
);

	xor(sum, Cin, a^b);
	or(Cout, a&b, Cin & (a^b));





















endmodule 