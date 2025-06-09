module bcd_encoder (
    input [9:0] D,   // 10-bit input (only one bit HIGH at a time)
    output reg [3:0] BCD // 4-bit BCD output
);

always @(*) begin
    casez (D) // 'casez' allows don't-care conditions
        10'b0000000001: BCD = 4'b0000; // 0
        10'b0000000010: BCD = 4'b0001; // 1
        10'b0000000100: BCD = 4'b0010; // 2
        10'b0000001000: BCD = 4'b0011; // 3
        10'b0000010000: BCD = 4'b0100; // 4
        10'b0000100000: BCD = 4'b0101; // 5
        10'b0001000000: BCD = 4'b0110; // 6
        10'b0010000000: BCD = 4'b0111; // 7
        10'b0100000000: BCD = 4'b1000; // 8
        10'b1000000000: BCD = 4'b1001; // 9
        default: BCD = 4'b0000; // Default case
    endcase
end

endmodule