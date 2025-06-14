module BoothMultiplier8_tb;
    reg signed [7:0] A, B;
    wire signed [15:0] Product;

    BoothMultiplier8 uut (.A(A), .B(B), .Product(Product));

    initial begin
        $monitor("Time=%0t | A=%d | B=%d | Product=%d", $time, A, B, Product);

        A = 8'd5; B = 8'd3; #10;
        A = -8'd7; B = 8'd4; #10;
        A = 8'd12; B = -8'd6; #10;
        A = -8'd8; B = -8'd2; #10;
        A = 8'd127; B = 8'd1; #10;

        $finish;
    end
endmodule