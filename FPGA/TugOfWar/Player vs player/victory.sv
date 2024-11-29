module victory #(parameter P1 = 7'b1111001, P2 = 7'b0100100, OFF = 7'b1111111) (
    input logic clk, reset,
    input logic L,R,NL,NR,
    output logic [6:0] disp
);

logic [6:0] PS, NS;

always_comb begin 
    case (PS)
        P1: NS = P1;
        P2: NS = P2;
        OFF: begin 
            if(L&NL) NS = P1;
            else if(R&NR) NS = P2;
            else NS = OFF;
        end 
        default: NS = OFF;
    endcase
end

assign disp  = PS;

always_ff @(posedge clk) begin 
    if(reset)
        PS<=OFF;
    else   
        PS<=NS;
end

    
endmodule