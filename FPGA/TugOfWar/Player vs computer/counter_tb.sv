module counter_tb();
 logic clk, reset, in;
 logic [2:0] out;
 
 
 counter dut(.*);
 
 parameter CLOCK_PERIOD=100;
  initial begin
    clk <= 0;
    forever #(CLOCK_PERIOD/2) clk <= ~clk;
  end
  
  initial begin 
  
  reset = 1; in = 0; @(posedge clk);
  reset = 0; in = 1; @(posedge clk);@(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  in = 0; @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  @(posedge clk);
  
  @(posedge clk);
  @(posedge clk);
  in = 1; @(posedge clk);
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