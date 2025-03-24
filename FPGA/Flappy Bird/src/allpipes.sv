module allPipes(
input logic clkM, clk, clkP, reset, gameover,
input logic [15:0] newPipe,

output logic [15:0][15:0] pipefield

);







shifterRight s0(.clkM, .clk(clk), .reset(reset), .clkP(clkP), .gameover(gameover),.pipeRight(16'd0), .pipeLeft(pipefield[1]), .newPipe(newPipe), .curCol(pipefield[0]));
shifter s1(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[0]), .pipeLeft(pipefield[2]), .curCol(pipefield[1]));
shifter s2(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[1]), .pipeLeft(pipefield[3]), .curCol(pipefield[2]));
shifter s3(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[2]), .pipeLeft(pipefield[4]), .curCol(pipefield[3]));
shifter s4(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[3]), .pipeLeft(pipefield[5]), .curCol(pipefield[4]));
shifter s5(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[4]), .pipeLeft(pipefield[6]), .curCol(pipefield[5]));
shifter s6(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[5]), .pipeLeft(pipefield[7]), .curCol(pipefield[6]));
shifter s7(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[6]), .pipeLeft(pipefield[8]), .curCol(pipefield[7]));
shifter s8(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[7]), .pipeLeft(pipefield[9]), .curCol(pipefield[8]));
shifter s9(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[8]), .pipeLeft(pipefield[10]), .curCol(pipefield[9]));
shifter s10(.clkM,.clk(clk), .reset(reset), .gameover(gameover),.pipeRight(pipefield[9]), .pipeLeft(pipefield[11]), .curCol(pipefield[10]));
shifter s11(.clkM,.clk(clk), .reset(reset), .gameover(gameover),.pipeRight(pipefield[10]), .pipeLeft(pipefield[12]), .curCol(pipefield[11]));
shifter s12(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[11]), .pipeLeft(pipefield[13]), .curCol(pipefield[12]));
shifter s13(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[12]), .pipeLeft(pipefield[14]), .curCol(pipefield[13]));
shifter s14(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[13]), .pipeLeft(pipefield[15]), .curCol(pipefield[14]));
shifter s15(.clkM,.clk(clk), .reset(reset),.gameover(gameover), .pipeRight(pipefield[14]), .pipeLeft(16'd1), .curCol(pipefield[15]));




endmodule 