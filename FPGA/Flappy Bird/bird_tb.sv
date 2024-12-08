module bird_tb();
	logic clk, clkG, reset, key, gameover;
	logic [15:0] lights;
	
	
	bird dut(.*);
	
	parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end


	initial begin
		reset = 1; key = 0; gameover = 0; clkG = 0; @(posedge clk);
		reset = 0; key = 0; gameover = 0; @(posedge clk);
								  gameover = 1; @(posedge clk);
		reset = 1;						  gameover = 0; @(posedge clk);
		reset = 0;			  key = 1; 					 @(posedge clk);
					  repeat(10)          @(posedge clk);
					  key = 0; clkG = 1; 	 @(posedge clk);
					  repeat(35)				 @(posedge clk);
					    
		
		
	
	
	
		$stop;
	
	end




endmodule 