module mux4x1 (
    input [3:0] D,   // 4-bit data inputs
    input [1:0] Sel, // 2-bit select signal
    output Y         // Output
);

assign Y = (Sel == 2'b00) ? D[0] :
           (Sel == 2'b01) ? D[1] :
           (Sel == 2'b10) ? D[2] :
           (Sel == 2'b11) ? D[3] : 1'b0;

endmodule