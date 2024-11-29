module adder_tb();
 logic a, b, Cin, Cout, sum;
 
 adder dut(a, b,  Cin, Cout, sum);
 
 initial begin
	a = 0;
	b = 0;
	Cin = 0;
 
 
 end


logic [3:0] i;

initial begin

	for(i = 0; ~i[3]; i = i+1) begin
		a = i[2];
		b = i[1];
		Cin = i[0];

	end

end







endmodule 