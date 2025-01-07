module regfile(
input logic [63:0] write_Data,
input logic [4:0] write_Reg, read_Reg1, read_Reg2,
input logic reg_Write,clk,
output logic [63:0] read_Data1, read_Data2 
);

//decoder
logic [31:0] decoded_Write;
decoder_5to32(
	.in(write_Reg),
	.en(reg_Write),
	.out(decoded_Write)
);


//registers
logic [31:0][63:0] reg_Out;
genvar i;
generate
	for (int i = 0; i < 31; i++) begin
		EN_D_FF regi(
			.clk,
			.reset(0),
			.en(decoded_Write[i]),
			.d(write_Data),
			.q(reg_Out[i]);
		);
	end
endgenerate

assign reg_Out[31] = 64'd0;

//flip registers to be in the same format as the mux
logic [63:0][31:0] in_Mux;
genvar j,k; 
always_comb begin 
 	for (j = 0; j < 64; j++) begin
 		for (k = 0; k < 31; k++) begin
 			in_mux[j][k] = reg_Out[k][j];
 		end
 	end
 end 

 genvar h;
 generate
 	for (int h = 0; h < 64; h++) begin
 		mux_32to1 m0(.in(in_Mux[h]), .s(read_Reg1), .out(read_Data1[h]));
  		mux_32to1 m0(.in(in_Mux[h]), .s(read_Reg2), .out(read_Data2[h]));
 	end
 endgenerate


endmodule