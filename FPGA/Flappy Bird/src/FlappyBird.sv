module FlappyBird(
input logic	 clk, reset, 
    output logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
	 output logic [9:0]  LEDR,
    input  logic player,
    input  logic [9:0]  SW,
	 	output logic [15:0][15:0]RedPixels, 
   output logic [15:0][15:0]GrnPixels
);

	logic gravClk, pClk, tap, gameover, pgClk;
	logic [3:0] random;
	logic [15:0] newPattern;
	logic [9:0] score;
	logic [15:0][15:0] playfield, losefield;

	
	
	 
	 gravity grav(.clk(clk), .reset(reset), .clkOut(gravClk));
	 pipeClk pSynch(.clk(clk), .reset(reset), .clkOut(pClk));
	 pipeGclk pgen(.clk(clk), .reset(reset), .clkOut(pgClk));
	 keyIn in(.clk(clk), .reset(reset), .key(player), .keyOut(tap));
	 bird flapper(.clk(clk), .clkG(gravClk), .reset(reset), .key(tap), .gameover(gameover), .lights(RedPixels[13]));
	 randLFSR newHole(.clk(clk), .reset(reset),  .random(random));
	 pipeGen generator(.clk(clk), .reset(reset), .hole(random), .pipe(newPattern));
	 allPipes obstacle(.clkM(clk), .clk(pClk), .clkP(pgClk), .reset(reset), .gameover(gameover), .newPipe(newPattern), .pipefield(playfield));
	 frownyFace lost(.Grn(losefield));
	 outputMux out (.playing(playfield), .lost(losefield), .gameover, .GrnPixels);
	 collision winOrLose(.clk(clk), .clkP(pClk),.reset(reset), .bird(RedPixels[13]), .pipe(GrnPixels[13]), .score(score), .gameover(gameover));
	 scoreLights lights(.clk(clk), .reset(reset), .gameover(gameover), .score(score), .hex0(HEX0), .hex1(HEX1), .hex2(HEX2));
	 
	 
	 
	 
	 
	 
endmodule 