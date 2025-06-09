module and_gate_mux (
    input A, B,
    output Y
);

assign Y = (B == 1) ? A : 0; // Equivalent to A AND B

endmodule