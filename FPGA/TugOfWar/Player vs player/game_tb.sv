module game_tb();

	 logic clk;
	 logic [3:0] key;
	 logic reset;
	 logic [9:1] LED;
	 logic [6:0] HEX;
	 
	 game dut(.*);
	 
	 
	 parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  
  initial begin 
  
  
  reset = 1; key = 4'b0000; @(posedge clk); // reset behavior 
  reset = 0; key = 4'b0001; @(posedge clk); // move right 
   key = 4'b0001; @(posedge clk);
   key = 4'b0000; @(posedge clk);
	   key = 4'b0001; @(posedge clk);
		   key = 4'b0000; @(posedge clk);
			   key = 4'b0001; @(posedge clk);
				  key = 4'b0000; @(posedge clk);
	   key = 4'b0001; @(posedge clk);
		   key = 4'b0000; @(posedge clk);
			   key = 4'b0001; @(posedge clk);
				  key = 4'b0000; @(posedge clk);
	   key = 4'b0001; @(posedge clk);
		   key = 4'b0000; @(posedge clk);
			   key = 4'b0001; @(posedge clk);
				  key = 4'b0000; @(posedge clk);
	   key = 4'b0001; @(posedge clk);
		   key = 4'b0000; @(posedge clk);
			   key = 4'b0001; @(posedge clk);
				  key = 4'b0000; @(posedge clk);
	   key = 4'b0001; @(posedge clk);
		   key = 4'b0000; @(posedge clk);
			   key = 4'b0001; @(posedge clk);
				  key = 4'b0000; @(posedge clk);
	   key = 4'b0001; @(posedge clk);
		   key = 4'b0000; @(posedge clk);
			   key = 4'b0001; @(posedge clk);
				  key = 4'b0000; @(posedge clk);
	   key = 4'b0001; @(posedge clk);
		   key = 4'b0000; @(posedge clk);
			   key = 4'b0001; @(posedge clk);
				
				
				reset = 1; key = 4'b0000; @(posedge clk);
				reset = 0; key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				key = 4'b1000; @(posedge clk);
				key = 4'b0000; @(posedge clk);
				
			/*	 KEY = 4'b1000; @(posedge clk);// move left
  KEY = 4'b1000; @(posedge clk);// move left
 KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left
KEY = 4'b1000; @(posedge clk);// move left // let left win
  
  reset = 1; KEY = 4'b0000; @(posedge clk); // reset
  reset = 0; KEY = 4'b0001; @(posedge clk);// move right and let right win
  
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);
  KEY = 4'b0001; @(posedge clk);*/

  
  
  
  $stop;
  
  
  
  end 






endmodule 