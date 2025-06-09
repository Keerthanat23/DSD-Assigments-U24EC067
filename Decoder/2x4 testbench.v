`timescale 1ns/1ps
module test_decoder2x4;

    reg [1:0] A;
    reg En;
    wire [3:0] Y;

    // Instantiate the decoder module
    decoder2x4 uut (
        .A(A),
        .En(En),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b | En=%b | Y=%b", $time, A, En, Y);
        
        // Apply test cases
        En = 1;
        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;

        En = 0; // Disable
        A = 2'b01; #10;

        $stop;
    end

endmodule