module pipeGclk_tb();

logic clk, reset, clkOut;

pipeGclk dut(clk, reset, clkOut);

parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end


initial begin 

	reset = 1; @(posedge clk);
	@(posedge clk);
	reset = 0; @(posedge clk);
	@(posedge clk);
	repeat(5000) @(posedge clk);





$stop;





end













endmodule 