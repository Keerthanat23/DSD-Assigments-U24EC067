`timescale 1ns/1ps
module test_muxNx1;

    parameter N = 8; // Define the number of inputs
    reg [N-1:0] D;
    reg [$clog2(N)-1:0] Sel;
    wire Y;

    // Instantiate the multiplexer module
    muxNx1 #(N) uut (
        .D(D),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Sel=%b | Y=%b", $time, D, Sel, Y);
        
        D = 8'b11001011;
        Sel = 0; #10;
        Sel = 1; #10;
        Sel = 2; #10;
        Sel = 3; #10;
        Sel = 4; #10;
        Sel = 5; #10;
        Sel = 6; #10;
        Sel = 7; #10;

        $stop;
    end

endmodule