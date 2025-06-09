`timescale 1ns/1ps
module test_dmux1x4;

    reg D;
    reg [1:0] Sel;
    wire [3:0] Y;

    // Instantiate the demultiplexer module
    dmux1x4 uut (
        .D(D),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Sel=%b | Y=%b", $time, D, Sel, Y);
        
        // Apply test cases
        D = 1;
        Sel = 2'b00; #10;
        Sel = 2'b01; #10;
        Sel = 2'b10; #10;
        Sel = 2'b11; #10;

        D = 0;
        Sel = 2'b00; #10;
        Sel = 2'b01; #10;
        Sel = 2'b10; #10;
        Sel = 2'b11; #10;

        $stop;
    end

endmodule