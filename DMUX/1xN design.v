module dmux1xN #(parameter N = 8) ( // Define N as a parameter
    input D,                         // Single data input
    input [$clog2(N)-1:0] Sel,        // Log2(N)-bit select signal
    output reg [N-1:0] Y              // N-bit outputs
);

always @(*) begin
    Y = {N{1'b0}}; // Initialize all outputs to 0
    Y[Sel] = D;    // Route input D to the selected output
end

endmodule