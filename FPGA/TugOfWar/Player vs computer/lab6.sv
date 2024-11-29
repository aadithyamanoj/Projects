module lab6 # (
	
  parameter whichClock = 25
  )
  (
  input  logic       CLOCK_50,  // 50MHz clock
  output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
  output logic [9:0] LEDR,
  input  logic [3:0] KEY,     // True when not pressed, False when pressed
  input  logic [9:0] SW
  );
   
  // Generate clk off of CLOCK_50, whichClock picks rate.
  logic [31:0] clk;
  clock_divider cdiv (.clock(CLOCK_50), .divided_clocks(clk));
  
  game play(.clk(clk[15]), .key(~KEY), .SW(SW[8:0]), .reset(SW[9]), .LED(LEDR[9:1]), .HEX0(HEX0), .HEX4(HEX5));
	
  
endmodule 