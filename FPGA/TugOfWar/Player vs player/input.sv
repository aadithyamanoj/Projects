module keys (
    input logic clk, reset, key,
    output logic keyOut
);

logic out;

synch s (.clk(clk), .reset(reset), .in(key), .out(out));
pulse p (.clk(clk), .reset(reset), .in(out), .out(keyOut));
    
endmodule