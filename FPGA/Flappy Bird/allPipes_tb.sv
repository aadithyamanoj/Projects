module allPipes_tb();
logic clkM, clk, clkP, reset, gameover;
logic [15:0] newPipe;

logic [15:0][15:0] pipefield;



allPipes dut(.*);
	
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  initial begin
		reset = 1; clkP = 0; gameover = 0; newPipe = 16'b1001100110011001; @(posedge clk); 
		
		reset = 0; clkP = 0; gameover = 1; newPipe = 16'b1001100110011001; @(posedge clk); 
		reset = 1; clkP = 0; gameover = 0; newPipe = 16'b1001100110011001; @(posedge clk); 
		reset = 0; clkP = 1; gameover = 0; newPipe = 16'b1001100110011001; @(posedge clk); 
		reset = 0; clkP = 0; gameover = 0; newPipe = 16'b1001100110011001; @(posedge clk); 
		repeat(10) @(posedge clk);
				reset = 0; clkP = 1; gameover = 0; newPipe = 16'b1111111111111111; @(posedge clk);
				reset = 0; clkP = 0; gameover = 0; newPipe = 16'b1111111111111111; @(posedge clk);
				repeat(10) @(posedge clk);
				
		










$stop;











	end













endmodule 