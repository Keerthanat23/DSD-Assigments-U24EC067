module encoder4x2 (
    input [3:0] D,    // 4-bit input
    output reg [1:0] Y // 2-bit encoded output
);

always @(*) begin
    casez (D) // 'casez' allows don't-care conditions
        4'b0001: Y = 2'b00;
        4'b0010: Y = 2'b01;
        4'b0100: Y = 2'b10;
        4'b1000: Y = 2'b11;
        default: Y = 2'b00; // Handles multiple inputs or default cases
    endcase
end

endmodule