module priority_encoder4x2 (
    input [3:0] D,   // 4-bit input
    output reg [1:0] Y // 2-bit encoded output
);

always @(*) begin
    casez (D) // 'casez' allows don't-care conditions
        4'b1000: Y = 2'b11; // Highest priority (D[3])
        4'b0100: Y = 2'b10; // D[2]
        4'b0010: Y = 2'b01; // D[1]
        4'b0001: Y = 2'b00; // Lowest priority (D[0])
        default: Y = 2'b00; // Default case
    endcase
end

endmodule