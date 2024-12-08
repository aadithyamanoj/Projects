module shifter_tb();

logic clkM, clk, reset, gameover;
logic [15:0] pipeRight, pipeLeft;
logic [15:0] curCol;

shifter dut(.*);

  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  
  initial begin 
		reset = 1; gameover = 0; pipeRight = 16'd0; pipeLeft = 16'd0; @(posedge clk);
		reset = 0; gameover = 1; pipeRight = 16'd0; pipeLeft = 16'd0; @(posedge clk);
		reset = 1; gameover = 0; pipeRight = 16'd0; pipeLeft = 16'd0; @(posedge clk);
		reset = 0; gameover = 0; pipeRight = 16'b1111111111111111; pipeLeft = 16'd0; @(posedge clk);
		reset = 0; gameover = 0; pipeRight = 16'd0; pipeLeft = 16'b1111111111111111; @(posedge clk);
		@(posedge clk);
		
		


		




	$stop;







	end







endmodule 