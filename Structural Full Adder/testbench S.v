module full_adder_tb_structural;
    reg A, B, Cin;
    wire Sum, Cout;

    // Instantiate the Structural Full Adder
    full_adder_structural uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $monitor("Time=%0t | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", $time, A, B, Cin, Sum, Cout);

        // Apply test cases
        A = 0; B = 0; Cin = 0; #10;
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $stop;
    end
endmodule
