module lights_tb();
logic clk, reset, L, R;
logic [9:1] led;

lights dut(.*);


parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

initial begin
	reset = 1; L = 0; R = 0; @(posedge clk);
	reset = 0; L = 1;			 @(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	reset = 1; L = 0; R = 0; @(posedge clk);
	reset = 0;						R = 1; @(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
				 L = 1; @(posedge clk);
				 @(posedge clk);
				 @(posedge clk);
				 @(posedge clk);
				 R = 0; @(posedge clk);
				@(posedge clk);
				@(posedge clk);
				@(posedge clk);
				@(posedge clk);
	


$stop;

end


endmodule 