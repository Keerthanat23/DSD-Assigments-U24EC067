module decoder2x4 (
    input [1:0] A,    // 2-bit input
    input En,         // Enable signal
    output reg [3:0] Y // 4-bit output
);

always @(*) begin
    if (En)
        case (A)
            2'b00: Y = 4'b0001;
            2'b01: Y = 4'b0010;
            2'b10: Y = 4'b0100;
            2'b11: Y = 4'b1000;
            default: Y = 4'b0000;
        endcase
    else
        Y = 4'b0000;
end

endmodule