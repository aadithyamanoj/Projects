module pipeGen_tb();
 logic clk, reset;
 logic [3:0] hole;
 logic [15:0] pipe; 


pipeGen dut(.*);

int i;
initial begin
    hole = 4'b0010;
    #10;
    for (i = 0; i < 11; i = i + 1) begin
        hole = hole + 1;
        #10;
    end
    $stop;
end














endmodule 