module encoder8x3 (
    input [7:0] D,    // 8-bit input
    output reg [2:0] Y // 3-bit encoded output
);

always @(*) begin
    casez (D) // 'casez' allows don't-care conditions
        8'b00000001: Y = 3'b000;
        8'b00000010: Y = 3'b001;
        8'b00000100: Y = 3'b010;
        8'b00001000: Y = 3'b011;
        8'b00010000: Y = 3'b100;
        8'b00100000: Y = 3'b101;
        8'b01000000: Y = 3'b110;
        8'b10000000: Y = 3'b111;
        default: Y = 3'b000; // Handles priority cases
    endcase
end
