`timescale 1ns/1ps
module test_encoder8x3;

    reg [7:0] D;
    wire [2:0] Y;

    // Instantiate the encoder module
    encoder8x3 uut (
        .D(D),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Y=%b", $time, D, Y);
        
        // Apply test cases
        D = 8'b00000001; #10;
        D = 8'b00000010; #10;
        D = 8'b00000100; #10;
        D = 8'b00001000; #10;
        D = 8'b00010000; #10;
        D = 8'b00100000; #10;
        D = 8'b01000000; #10;
        D = 8'b10000000; #10;

        // Edge case: multiple bits active (priority condition)
        D = 8'b10101010; #10;

        $stop;
    end

endmodule