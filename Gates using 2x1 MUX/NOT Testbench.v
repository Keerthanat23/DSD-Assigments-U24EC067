`timescale 1ns/1ps
module test_not_gate_mux;

    reg A;   // Input signal
    wire Y;  // Output signal

    // Instantiate the NOT gate using a 2x1 mux
    not_gate_mux uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b | Y=%b", $time, A, Y);

        // Apply test cases
        A = 0; #10;  // Expected Y = 1
        A = 1; #10;  // Expected Y = 0

        $stop;
    end

endmodule