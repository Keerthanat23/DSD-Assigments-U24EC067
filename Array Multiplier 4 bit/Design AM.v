module ArrayMultiplier (
    input [3:0] A, // Multiplicand
    input [3:0] B, // Multiplier
    output [7:0] Product // 8-bit result
);
    wire [3:0] P0, P1, P2, P3; // Partial products
    wire [7:0] Sum1, Sum2, Sum3;

    assign P0 = A & {4{B[0]}}; // Partial product for B[0]
    assign P1 = A & {4{B[1]}}; // Partial product for B[1]
    assign P2 = A & {4{B[2]}}; // Partial product for B[2]
    assign P3 = A & {4{B[3]}}; // Partial product for B[3] 

    // Summation using ripple-carry addition
    assign Sum1 = {P1, 1'b0} + {P0};
    assign Sum2 = {P2, 2'b00} + Sum1;
    assign Sum3 = {P3, 3'b000} + Sum2;

    assign Product = Sum3;
endmodule