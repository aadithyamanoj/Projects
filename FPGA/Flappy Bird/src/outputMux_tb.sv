module outputMux_tb();

      logic [15:0][15:0] playing;
    logic [15:0][15:0] lost;    
    logic gameover;
    logic [15:0][15:0] GrnPixels;
	outputMux dut(.*);
	
	
	
	initial begin 
		playing = 0;
		lost = 1;
		gameover = 0; 
		#2;
		gameover = 1;
		#2;

$stop;






	end


endmodule 	