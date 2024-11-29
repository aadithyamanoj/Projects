module game (
	input logic clk,
	input logic [3:0] key,
	input logic [8:0] SW,
	input logic reset,
	output logic [9:1] LED,
	output logic [6:0] HEX0, HEX4
);
  
    logic left, right, wL, wR;
	 logic [2:0] countR, countL;
	 logic cPress;
  
  cyberPlayer b1(.clk(clk), .reset(reset), .SW(SW), .out(left));

  //pulse computer(.clk(clk), .reset(reset), .in(cPress), .out(left));
  keys b2(.clk(clk), .reset(reset), .key(key[0]), .keyOut(right));

  lights all(.clk(clk),.reset(reset), .L(left), .R(right), .wL(wL), .wR(wR), .led(LED[9:1]));

  victory win(.clk(clk), .reset(reset), .L(left), .R(right), .NL(LED[9]), .NR(LED[1]), .wL(wL), .wR(wR));
  
  counter L(.clk(clk), .reset(reset), .in(wL), .out(countL));
  counter R(.clk(clk), .reset(reset), .in(wR), .out(countR));
  
  disp Left(.clk(clk), .reset(reset), .count(countL), .light(HEX4));
  disp Right(.clk(clk), .reset(reset), .count(countR), .light(HEX0));
  
endmodule 