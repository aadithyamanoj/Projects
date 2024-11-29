module victory_tb();

	logic clk, reset, L, R, NL, NR;
	logic [6:0] disp;
	
	
	victory dut(.*);
	
	parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

  
  initial begin
		reset = 1; L = 0; R = 0; NL = 0; NR = 0;  @(posedge clk);
		reset = 0; L = 1;        NL = 1;          @(posedge clk);
																@(posedge clk);
																@(posedge clk);
																@(posedge clk);
																@(posedge clk);
																@(posedge clk);
		reset = 1; L = 0; R = 0; NL = 0; NR = 0;  @(posedge clk);
		reset = 0; 			R = 1;         NR = 1;  @(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
	$stop;
		
		
  
  
  
  
  end



endmodule 