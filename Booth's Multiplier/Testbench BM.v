module BoothMultiplier_tb;
    reg signed [3:0] A, B;
    wire signed [7:0] Product;

    BoothMultiplier uut (
        .A(A),
        .B(B),
        .Product(Product)
    );

    initial begin
        $monitor("A = %d, B = %d, Product = %d", A, B, Product);

        // Test Cases
        A = 4'b0011; B = 4'b0101; #10; // 3 × 5 = 15
        A = 4'b1101; B = 4'b0010; #10; // -3 × 2 = -6
        A = 4'b0110; B = 4'b1010; #10; // 6 × -6 = -36
        A = 4'b1111; B = 4'b1111; #10; // -1 × -1 = 1

        $finish;
    end
endmodule