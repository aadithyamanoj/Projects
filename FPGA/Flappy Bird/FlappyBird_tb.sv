module FlappyBird_tb();
	
logic clk, reset;
    logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	 logic [9:0]  LEDR;
      logic player;
      logic [9:0]  SW;
	 	 logic [15:0][15:0]RedPixels; 
   logic [15:0][15:0]GrnPixels;
	
FlappyBird dut(.*);	 
  parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end

  
  
  
  
  
  initial begin 
		reset = 1; SW = 10'd0; player = 0; @(posedge clk)
		reset = 0; SW = 10'd0; player = 1; @(posedge clk)
		player = 0; @(posedge clk)
		player = 1; @(posedge clk)
				player = 0; @(posedge clk)
		player = 1; @(posedge clk)
				player = 0; @(posedge clk)
		player = 1; @(posedge clk)
				player = 0; @(posedge clk)
		player = 1; @(posedge clk)
				player = 0; @(posedge clk)
		player = 1; @(posedge clk)
				player = 0; @(posedge clk)
		player = 1; @(posedge clk)
				player = 0; @(posedge clk)
		player = 1; @(posedge clk)
				player = 0; @(posedge clk)
		player = 1; @(posedge clk)
		repeat(4000) @(posedge clk)
		
	

  
  
  
  
  
  
  $stop;
  
  
  
  
  
  
  
  
  
  
  end
  
  
  
  
  endmodule 