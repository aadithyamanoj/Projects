module lights (
    input logic clk, reset,
    input logic L, R,
    output logic [9:1] led
);

normalLight n1(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[2]), .NR(1'b0), .lightOn(led[1]));
normalLight n2(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[3]), .NR(led[1]), .lightOn(led[2]));
normalLight n3(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[4]), .NR(led[2]), .lightOn(led[3]));
normalLight n4(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[5]), .NR(led[3]), .lightOn(led[4]));
centerLight n5(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[6]), .NR(led[4]), .lightOn(led[5]));
normalLight n6(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[7]), .NR(led[5]), .lightOn(led[6]));
normalLight n7(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[8]), .NR(led[6]), .lightOn(led[7]));
normalLight n8(.clk(clk), .reset(reset), .L(L), .R(R), .NL(led[9]), .NR(led[7]), .lightOn(led[8]));
normalLight n9(.clk(clk), .reset(reset), .L(L), .R(R), .NL(1'b0), .NR(led[8]), .lightOn(led[9]));
    
endmodule