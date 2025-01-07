module EN_D_FF(
input loigc clk, reset, en, d,
output logic q
);

logic tmp;

mux_2to1 mux(.in({d,q}), .s(en), .out(tmp));
D_FF d(.clk, .rest, .d(tmp), .q); 



endmodule