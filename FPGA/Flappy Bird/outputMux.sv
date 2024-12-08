module outputMux(


    input  logic [15:0][15:0] playing,  
    input  logic [15:0][15:0] lost,         
    input  logic gameover,       
    output logic [15:0][15:0] GrnPixels         
);

    always_comb begin
        if (gameover) begin
            GrnPixels = lost;          
        end else begin
            GrnPixels = playing;          
        end
    end

endmodule