module cyberPlayer_tb();

logic clk, reset, out;

logic [8:0] sw;

cyberPlayer dut(clk, reset, sw, out);


 parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  initial begin
  reset = 1; sw = 9'b000000000; @(posedge clk);
  reset = 0; sw = 9'b111111111; @(posedge clk);@(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  $stop;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
endmodule 