module bird_tb();
	logic clk, clkG, reset, key;
	logic [15:0] lights;
	
	
	bird dut(.*);
	
	parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end


	initial begin
		reset = 0; key = 0; @(posedge clk);
		reset = 0; key = 0; @(posedge clk);
	
	
	
		$stop;
	
	end




endmodule 