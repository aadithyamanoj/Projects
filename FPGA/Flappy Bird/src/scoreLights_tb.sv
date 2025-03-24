module scoreLights_tb();
	
logic clk, reset, gameover;
logic [9:0] score;
logic [6:0] hex0, hex1, hex2;




scoreLights dut(.*);

 
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

  
  initial begin 
		reset = 1; gameover = 0; score = 10'd0; @(posedge clk);
		reset = 0; gameover = 0; score = 10'b0000011001; @(posedge clk);
		reset = 0; gameover = 0; score = 10'b0000111101; @(posedge clk);
		reset = 0; gameover = 0; score = 10'b1001000000; @(posedge clk);
		reset = 0; gameover = 0; score = 10'b1111100111; @(posedge clk);
		reset = 0; gameover = 0; score = 10'b1111101000; @(posedge clk);
		@(posedge clk);
		
		
		


















$stop;





	end













endmodule 