module adder9Bit_tb();

logic [8:0] a, b, aSigned, aUnsigned, bSigned, bUnsigned;

logic[8:0] sum, sumSigned;

logic Cout;

assign aSigned = a;
assign aUnsigned = a;
assign bSigned = b;
assign bUnsigned = b;
assign sumSigned = sum;

adder9Bit dut(a, b, sum, Cout);

initial begin 

	a = 0;
	b = 341;
	#10;
	$display("A = %b (%0d), B = %b (%0d) -> Sum = %b (%0d), Cout = %b", a, a, b, b, sum, sum, Cout);
	
	a = 9'b111111110;
	b = 9'b000000001;
	#10;
	$display("A = %b (%0d), B = %b (%0d) -> Sum = %b (%0d), Cout = %b", a, a, b, b, sum, sum, Cout);	
	a = 9'b000000101;
	b = 9'b111111011;
	#10;
	$display("A = %b (%0d), B = %b (%0d) -> Sum = %b (%0d), Cout = %b", a, a, b, b, sum, sum, Cout);	
	a = 9'b111111111;
	b = 9'b000000001;
	#10;
	$display("A = %b (%0d), B = %b (%0d) -> Sum = %b (%0d), Cout = %b", a, a, b, b, sum, sum, Cout);	
	a = 9'b011111111;
	b = 9'b000000001;
	#10;
	$display("A = %b (%0d), B = %b (%0d) -> Sum = %b (%0d), Cout = %b", a, a, b, b, sum, sum, Cout);	
	a = 9'b100000000;
	b = 9'b111111111;
	#10;
	$display("A = %b (%0d), B = %b (%0d) -> Sum = %b (%0d), Cout = %b", a, a, b, b, sum, sum, Cout);	
	
	
end


endmodule 
	