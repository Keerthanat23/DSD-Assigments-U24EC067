`timescale 1ns/1ps
module test_dmux1xN;

    parameter N = 8; // Define the number of outputs
    reg D;
    reg [$clog2(N)-1:0] Sel;
    wire [N-1:0] Y;

    // Instantiate the demultiplexer module
    dmux1xN #(N) uut (
        .D(D),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Sel=%b | Y=%b", $time, D, Sel, Y);
        
        D = 1;
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