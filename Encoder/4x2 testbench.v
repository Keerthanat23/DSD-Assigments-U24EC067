`timescale 1ns/1ps
module test_encoder4x2;

    reg [3:0] D;
    wire [1:0] Y;

    // Instantiate the encoder module
    encoder4x2 uut (
        .D(D),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Y=%b", $time, D, Y);
        
        // Apply test cases
        D = 4'b0001; #10;
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;

        // Edge case: multiple bits active (priority condition)
        D = 4'b1010; #10;

        $stop;
    end

endmodule