module dmux1x4 (
    input D,        // Single data input
    input [1:0] Sel, // 2-bit select line
    output reg [3:0] Y // 4-bit outputs
);

always @(*) begin
    Y = 4'b0000; // Default all outputs to LOW
    case (Sel)
        2'b00: Y[0] = D;
        2'b01: Y[1] = D;
        2'b10: Y[2] = D;
        2'b11: Y[3] = D;
        default: Y = 4'b0000;
    endcase
end

endmodule