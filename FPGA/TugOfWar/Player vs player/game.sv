module game (
	input logic clk,
	input logic [3:0] key,
	input logic reset,
	output logic [9:1] LED,
	output logic [6:0] HEX
);
  
    logic left, right;
  

  keys b1(.clk(clk), .reset(reset), .key(key[3]), .keyOut(left));
  keys b2(.clk(clk), .reset(reset), .key(key[0]), .keyOut(right));

  lights all(.clk(clk),.reset(reset), .L(left), .R(right), .led(LED[9:1]));

  victory win(.clk(clk), .reset(reset), .L(left), .R(right), .NL(LED[9]), .NR(LED[1]), .disp(HEX));
  
endmodule 