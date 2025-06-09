module dmux1x2 (
    input D,      // Single data input
    input Sel,    // Select line
    output Y0, Y1 // Two outputs
);

assign Y0 = (Sel == 0) ? D : 0;
assign Y1 = (Sel == 1) ? D : 0;

endmodule