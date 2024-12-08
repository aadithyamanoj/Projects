module shifterRight_tb();
logic clkM, clk, reset, clkP,gameover;
logic [15:0] pipeRight, pipeLeft, newPipe;
logic [15:0] curCol;

shifterRight dut(.*);
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  


initial begin

	reset = 1; clkP = 0; gameover = 0; pipeRight = 16'd0; pipeLeft = 16'd0; newPipe = 16'd0; @(posedge clk)
	reset = 0; clkP = 1; gameover = 0; pipeRight = 16'd0; pipeLeft = 16'd0; newPipe = 16'b1100110011001100; @(posedge clk)
		reset = 0; clkP = 0; gameover = 1; pipeRight = 16'd0; pipeLeft = 16'd0; newPipe = 16'b1100110011001100; @(posedge clk)
			reset = 0; clkP = 1; gameover = 0; pipeRight = 16'd0; pipeLeft = 16'b1001100110011001; newPipe = 16'b1100110011001100; @(posedge clk)

			reset = 0; clkP = 0; gameover = 0; pipeRight = 16'd0; pipeLeft = 16'b1001100110011001; newPipe = 16'b1100110011001100; @(posedge clk)
			@(posedge clk);
			
	











$stop;



end












endmodule 