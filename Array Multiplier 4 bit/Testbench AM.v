module ArrayMultiplier_tb;
    reg [3:0] A, B;
    wire [7:0] Product;

    ArrayMultiplier uut (
        .A(A),
        .B(B),
        .Product(Product)
    );

    initial begin
        $monitor("A = %d, B = %d, Product = %d", A, B, Product);

        // Test Cases
        A = 4'b0011; B = 4'b0101; #10; // 3 × 5 = 15
        A = 4'b1101; B = 4'b0010; #10; // 13 × 2 = 26
        A = 4'b0110; B = 4'b1010; #10; // 6 × 10 = 60
        A = 4'b1111; B = 4'b1111; #10; // 15 × 15 = 225

        $finish;
    end
endmodule