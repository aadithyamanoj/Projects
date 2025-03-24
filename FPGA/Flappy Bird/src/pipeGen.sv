module pipeGen(
input logic clk, reset,
input logic [3:0] hole,
output logic [15:0] pipe 

);

always_comb begin 
	 pipe = 16'b1111111111111111;

	 pipe[hole] = 1'b0;
	 pipe[hole+1] = 1'b0;


	pipe[hole-1] = 1'b0;
end


endmodule 