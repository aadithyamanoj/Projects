module LFSR_tb();
	logic clk,reset;
	logic [8:0] Q;
	LFSR dut(clk, reset, Q);
	logic flag;
	integer cycles;

 parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  always_ff @(posedge clk or posedge reset) begin
	if(reset)begin 
		flag <=0;
		cycles <= 0;
	end
	else begin
		cycles <= cycles + 1;
		if(cycles == 510) begin 
			flag <= 1;
		end
		else begin 
			flag <= 0;
		end
	end
  end
  
  
  initial begin
		reset = 1; @(posedge clk);
		reset = 0; 
		repeat(600) @(posedge clk);
					  
	$stop;
					
  end
  
  
  
  endmodule 