module or_gate_mux (
    input A, B,
    output Y
);

assign Y = (B == 1) ? 1 : A; // Equivalent to A OR B

endmodule