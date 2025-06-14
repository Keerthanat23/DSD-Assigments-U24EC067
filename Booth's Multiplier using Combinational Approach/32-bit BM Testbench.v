module BoothMultiplier32_tb;
    reg signed [31:0] A, B;
    wire signed [63:0] Product;

    BoothMultiplier32 uut (.A(A), .B(B), .Product(Product));

    initial begin
        $monitor("Time=%0t | A=%d | B=%d | Product=%d", $time, A, B, Product);

        A = 32'd12345; B = 32'd6789; #10;
        A = -32'd10000; B = 32'd5; #10;
        A = 32'd32000; B = -32'd16; #10;
        A = -32'd25000; B = -32'd12; #10;
        A = 32'd2147483647; B = 32'd1; #10;  // Edge case

        $finish;
    end
endmodule