module adder3Bit_tb();
 logic [2:0] a, b, sum;
 
 adder3Bit dut(a, b, sum);
 
 initial begin
	a = 0;
	b = 0;
 
 
 end


logic [6:0] i;

initial begin

	for(i = 0; ~i[3]; i = i+1) begin
		a = i[5:3];
		b = i[2:0];

	end

end







endmodule 