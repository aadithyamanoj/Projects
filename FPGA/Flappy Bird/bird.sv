module bird(
input logic clk, clkG, reset, key,
input logic gameover,
output logic [15:0] lights 
);


//bird is one pixel
//pipes are two pixels wide
//randomly generate a 3 pixel long gap (lfsr makes a bitmask)






always_ff @(posedge clk) begin 

	if(reset) begin 
		lights <= 16'b0000000100000000;
	end
	else if(gameover) begin
		lights <= 16'b0000000000000000;
	end
	else if(lights == 16'b0000000000000001) begin 
		lights <= 16'b0000000000000000;
	end
	else if(lights == 16'b1000000000000000 & key) begin
		lights <= 16'b1000000000000000;
	end
	else if(key) begin 
		lights = lights << 1;
	end
	else if(~key & clkG) begin
		lights = lights >> 1;
	end


end


endmodule 