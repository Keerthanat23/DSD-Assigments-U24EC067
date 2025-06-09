module muxNx1 #(parameter N = 8) ( // Define N as a parameter
    input [N-1:0] D,   // N-bit data inputs
    input [$clog2(N)-1:0] Sel, // Log2(N)-bit select signal
    output Y            // Output
);

assign Y = D[Sel]; // Direct indexing selects the appropriate input

endmodule