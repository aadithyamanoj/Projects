module cyberPlayer(
input logic clk, reset, 
input logic [8:0] SW,
output logic out

);

logic 	[8:0] random;
logic [8:0] sum;
logic press;

LFSR num(clk, reset, random);

adder9Bit add(random, SW, sum, press);

assign out = press;




endmodule

