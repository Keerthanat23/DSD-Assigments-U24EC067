`timescale 1ns/1ps
module test_dmux1x2;

    reg D, Sel;
    wire Y0, Y1;

    // Instantiate the demultiplexer module
    dmux1x2 uut (
        .D(D),
        .Sel(Sel),
        .Y0(Y0),
        .Y1(Y1)
    );

    initial begin
        $monitor("Time=%0t | D=%b | Sel=%b | Y0=%b | Y1=%b", $time, D, Sel, Y0, Y1);
        
        // Apply test cases
        D = 1; Sel = 0; #10;
        D = 1; Sel = 1; #10;
        D = 0; Sel = 0; #10;
        D = 0; Sel = 1; #10;

        $stop;
    end

endmodule