
module game_tb();

	 logic clk;
	 logic [3:0] key;
	 logic [8:0] SW;
	 logic reset;
	 logic [9:1] LED;
	 logic [6:0] HEX0, HEX4;
	 
	 game dut(.*);
	 
	 
	 parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  
  initial begin 
  
  
  reset = 1; key = 4'b0000; SW = 9'b000000000; @(posedge clk); // reset behavior 
  reset = 0; key = 4'b0000; SW = 9'b111100000; @(posedge clk);@(posedge clk);
  repeat(80) @(posedge clk);

  
  reset = 1; key = 4'b0000; SW = 9'b000000000; @(posedge clk); // reset behavior 
  reset = 0; key = 4'b0001;  @(posedge clk);
   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
		   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
				   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
			   key = 4'b0001;  @(posedge clk);
	   key = 4'b0000;  @(posedge clk);
	
	


  
  
  $stop;
  
  
  
  end 






endmodule 


