`timescale 1ns/1ps
module test_bcd_encoder;

    reg [9:0] D;
    wire [3:0] BCD;

    // Instantiate the BCD encoder module
    bcd_encoder uut (
        .D(D),
        .BCD(BCD)
    );

    initial begin
        $monitor("Time=%0t | D=%b | BCD=%b", $time, D, BCD);
        
        // Apply test cases
        D = 10'b0000000001; #10;
        D = 10'b0000000010; #10;
        D = 10'b0000000100; #10;
        D = 10'b0000001000; #10;
        D = 10'b0000010000; #10;
        D = 10'b0000100000; #10;
        D = 10'b0001000000; #10;
        D = 10'b0010000000; #10;
        D = 10'b0100000000; #10;
        D = 10'b1000000000; #10;

        // Edge case: Invalid input (multiple active bits)
        D = 10'b1100000000; #10;

        $stop;
    end

endmodule