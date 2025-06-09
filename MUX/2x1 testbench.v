`timescale 1ns/1ps
module test_mux2x1;

    reg A, B, Sel;
    wire Y;

    // Instantiate the multiplexer module
    mux2x1 uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Sel=%b | Y=%b", $time, A, B, Sel, Y);
        
        // Apply test cases
        A = 0; B = 0; Sel = 0; #10;
        A = 0; B = 1; Sel = 0; #10;
        A = 1; B = 0; Sel = 0; #10;
        A = 1; B = 1; Sel = 0; #10;

        A = 0; B = 0; Sel = 1; #10;
        A = 0; B = 1; Sel = 1; #10;
        A = 1; B = 0; Sel = 1; #10;
        A = 1; B = 1; Sel = 1; #10;

        $stop;
    end

endmodule