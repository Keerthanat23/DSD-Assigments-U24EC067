module CLA_8bit_tb;
    reg [7:0] A, B;
    reg Cin;
    wire [7:0] Sum;
    wire Cout;

    CLA_8bit uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b", $time, A, B, Cin, Sum, Cout);

        // Test Cases
        A = 8'b00001101; B = 8'b00000011; Cin = 1'b0; #10;
        A = 8'b10101010; B = 8'b01010101; Cin = 1'b1; #10;
        A = 8'b11111111; B = 8'b11111111; Cin = 1'b0; #10;
        A = 8'b00000000; B = 8'b00000000; Cin = 1'b1; #10;
        
        $finish;
    end
endmodule