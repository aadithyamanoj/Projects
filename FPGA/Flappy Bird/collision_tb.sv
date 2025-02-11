module collision_tb();

logic clk, clkP, reset;
logic [15:0] bird, pipe;
logic [9:0] score;
 logic gameover;

 collision dut(.*);
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  
  
  
 initial begin
	reset = 1; bird = 16'd0; pipe = 16'd0; @(posedge clk);
	reset = 0; bird = 16'b1000000000000000; pipe = 16'b0111111111111111; @(posedge clk);
	repeat(20) @(posedge clk);
	reset = 0; bird = 16'b1000000000000000; pipe = 16'b1111111111111111; @(posedge clk);
	reset = 1; bird = 16'd0; pipe = 16'd0; @(posedge clk);
	reset = 0; bird = 16'd0000000000000001; pipe = 16'd0; @(posedge clk);
	@(posedge clk);
	
 
 
 
 







	$stop;







end





















endmodule 