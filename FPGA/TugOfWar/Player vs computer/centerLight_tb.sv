module centerLight_tb ();
logic clk, reset, L, R, NL, NR, lightOn;

centerLight dut(.*);

parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

initial begin 
	reset = 1; L = 0; R = 0; NL = 0; NR = 0; @(posedge clk);
	reset = 0; L = 1;                NR = 1; @(posedge clk);
														  @(posedge clk);
												NR = 0; @(posedge clk);
				  L = 0; R = 1; NL = 1;         @(posedge clk);
									 NL = 0;					  @(posedge clk);
				  L = 1; 							  @(posedge clk);
														  @(posedge clk);
				  L = 1; 		        @(posedge clk);
														  @(posedge clk);
				  L = 1;                NR = 1; @(posedge clk);
				  L = 1; R = 1;                 @(posedge clk);
				  L = 0; R = 0;                 @(posedge clk);
	$stop;



end


endmodule 