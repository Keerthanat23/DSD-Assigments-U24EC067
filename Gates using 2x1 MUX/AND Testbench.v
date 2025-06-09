`timescale 1ns/1ps
module test_and_gate_mux;

    reg A, B;    // Input signals
    wire Y;      // Output signal

    // Instantiate the AND gate using a 2x1 mux
    and_gate_mux uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Y=%b", $time, A, B, Y);

        // Apply test cases
        A = 0; B = 0; #10;  // Expected Y = 0
        A = 0; B = 1; #10;  // Expected Y = 0
        A = 1; B = 0; #10;  // Expected Y = 0
        A = 1; B = 1; #10;  // Expected Y = 1

        $stop;
    end

endmodule