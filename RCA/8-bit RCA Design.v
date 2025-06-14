module full_adder (
    input A, B, Cin,
    output Sum, Cout
);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));
endmodule

module ripple_carry_adder_8bit (
    input [7:0] A, B,
    input Cin,
    output [7:0] Sum,
    output Cout
);
    wire [7:0] carry;
    
    // Instantiate 8 Full Adders
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : RCA
            if (i == 0)
                full_adder FA (A[i], B[i], Cin, Sum[i], carry[i]);
            else
                full_adder FA (A[i], B[i], carry[i-1], Sum[i], carry[i]);
        end
    endgenerate
    
    assign Cout = carry[7]; // Final carry output