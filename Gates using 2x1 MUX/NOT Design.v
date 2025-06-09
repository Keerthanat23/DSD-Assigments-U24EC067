module not_gate_mux (
    input A,
    output Y
);

assign Y = (A == 1) ? 0 : 1; // Equivalent to NOT A

endmodule