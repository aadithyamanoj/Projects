module victory (
    input logic clk, reset,
    input logic L,R,NL,NR,
    output logic wL, wR
);

 and(wL, NL&L, ~R);
 and(wR, NR&R, ~L);

    
endmodule 