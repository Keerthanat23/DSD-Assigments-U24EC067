`timescale 1ns / 1ps

module testbench;
    reg [7:0] A, B;
    reg Cin;
    wire [7:0] Sum;
    wire Cout;

    // Instantiate the RCA
    ripple_carry_adder_8bit uut (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        // Test cases
        A = 8'h12; B = 8'h34; Cin = 0; #10; // 18 + 52
        A = 8'hFF; B = 8'h01; Cin = 0; #10; // 255 + 1
        A = 8'hAA; B = 8'h55; Cin = 1; #10; // Random test with carry-in
        A = 8'h00; B = 8'h00; Cin = 0; #10; // Edge case (Zero inputs)
        
        // Display results
        $display("A = %h, B = %h, Cin = %b -> Sum = %h, Cout = %b", A, B, Cin, Sum, Cout);
        $finish;
    end
endmodule