module BoothMultiplier (
    input signed [3:0] A,  // Multiplicand
    input signed [3:0] B,  // Multiplier
    output signed [7:0] Product // 8-bit result
);
    reg signed [7:0] P; // Product register
    reg signed [4:0] X; // Extended multiplicand
    reg signed [3:0] Y; // Multiplier register
    integer i;

    always @(*) begin
        P = 0;
        X = {A, 1'b0}; // Append a zero for Booth encoding
        Y = B;

        for (i = 0; i < 4; i = i + 1) begin
            case ({Y[0], Y[1]}) // Booth encoding
                2'b01: P = P + X;   // Add multiplicand
                2'b10: P = P - X;   // Subtract multiplicand
                default: P = P;     // No operation
            end
            P = P >>> 1; // Arithmetic shift right
            Y = Y >>> 1; // Shift multiplier right
        end
    end

    assign Product = P;
endmodule