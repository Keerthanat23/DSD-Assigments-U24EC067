`timescale 1ns/1ps
module test_mux4x1;

    reg [3:0] D;
    reg [1:0] Sel;
    wire Y;

    // Instantiate the multiplexer module
    mux4x1 uut (
        .D(D),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Sel=%b | Y=%b", $time, D, Sel, Y);
        
        // Apply test cases
        D = 4'b1010;
        Sel = 2'b00; #10;
        Sel = 2'b01; #10;
        Sel = 2'b10; #10;
        Sel = 2'b11; #10;

        $stop;
    end

endmodule