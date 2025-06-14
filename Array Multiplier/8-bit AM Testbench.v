module tb_array_multiplier_8bit;
    reg [7:0] A, B;
    wire [15:0] P;

    array_multiplier_8bit uut (.A(A), .B(B), .P(P));

    initial begin
        $monitor("Time=%0t, A=%b, B=%b, P=%b", $time, A, B, P);

        A = 8'b00001100; B = 8'b00000010; #10;  // 12 × 2 = 24
        A = 8'b00000101; B = 8'b00000110; #10;  // 5 × 6 = 30
        A = 8'b00011111; B = 8'b00000011; #10;  // 31 × 3 = 93
        A = 8'b00001010; B = 8'b00001010; #10;  // 10 × 10 = 100

        $stop;
    end
endmodule