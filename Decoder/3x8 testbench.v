`timescale 1ns/1ps
module test_decoder3x8;

    reg [2:0] A;
    reg En;
    wire [7:0] Y;

    // Instantiate the decoder module
    decoder3x8 uut (
        .A(A),
        .En(En),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b | En=%b | Y=%b", $time, A, En, Y);
        
        // Apply test cases
        En = 1;
        A = 3'b000; #10;
        A = 3'b001; #10;
        A = 3'b010; #10;
        A = 3'b011; #10;
        A = 3'b100; #10;
        A = 3'b101; #10;
        A = 3'b110; #10;
        A = 3'b111; #10;

        En = 0; // Disable test
        A = 3'b011; #10;

        $stop;
    end

endmodule