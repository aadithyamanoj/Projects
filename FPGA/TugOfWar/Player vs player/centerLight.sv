module centerLight (
  input logic clk, reset,

  // L - True when left key (KEY[3]) is pressed
  // R - True when right key (KEY[0]) is pressed
  // NL - True when the light to the left of this one is ON
  // NR - True when the light on the right of this one is ON
  input logic L, R, NL, NR,

  // lightOn – True when this normal light should be ON/lit
  output logic lightOn
  );
  logic PS, NS;
  parameter ON = 1'b1, OFF = 1'b0;

  always_comb begin 
    case (PS)
        OFF: begin
            if(NL&R) NS = ON;
            else if(NR&L) NS = ON;
            else NS = OFF;
        end 
        ON: begin 
            if(R^L) NS = OFF;
            else NS = ON;
        end
        default: NS = OFF;
    endcase
  end

  always_comb begin 

    case (PS)
        OFF: lightOn = OFF;
        ON: lightOn  = ON; 
        default: lightOn = OFF;
    endcase    
  end

  always_ff @(posedge clk) begin
    if(reset)
        PS<=ON;
    else
        PS<=NS;

  end



endmodule  // normalLight