`timescale 1ns / 1ps

module testbench;
    reg [15:0] A, B;
    wire [31:0] P;

    // Instantiate the multiplier
    array_multiplier_16bit uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        // Test Cases
        A = 16'h0003; B = 16'h0004; #10; // 3 * 4 = 12
        A = 16'h000F; B = 16'h000F; #10; // 15 * 15 = 225
        A = 16'h1234; B = 16'h5678; #10; // Random test
        A = 16'hFFFF; B = 16'h0001; #10; // Edge case

        // End simulation
        $display("A = %h, B = %h, P = %h", A, B, P);
        $finish;
    end
endmodule