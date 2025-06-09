module full_adder_tb;
    reg A, B, Cin;
    wire Sum, Cout;
    
    // Instantiate the Full Adder module
    full_adder_dataflow uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    
    initial begin
        // Monitor changes in signals
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
        
        $stop;  // End simulation
    end
endmodule
