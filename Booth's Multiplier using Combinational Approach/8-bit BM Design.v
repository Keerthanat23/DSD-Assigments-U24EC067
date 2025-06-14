module BoothMultiplier8(A, B, Product);
    input signed [7:0] A, B;  // Signed 8-bit inputs
    output signed [15:0] Product;  // Signed 16-bit output

    reg signed [15:0] P;
    reg signed [8:0] Q;
    reg signed [7:0] M;
    integer i;

    always @(*) begin
        P = 0;
        Q = {B, 1'b0}; // Append extra LSB (Q-1)
        M = A;

        for (i = 0; i < 8; i = i + 1) begin
            case (Q[1:0])
                2'b01: P = P + (M << i);  // Add shifted multiplicand
                2'b10: P = P - (M << i);  // Subtract shifted multiplicand
                default: P = P;  // No operation
            end
            Q = Q >> 1;  // Arithmetic shift right
        end

        Product = P;  // Assign final product
    end
endmodule