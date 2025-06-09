module full_adder_dataflow(A, B, Cin, Sum, Cout);
    input A, B, Cin;
    output Sum, Cout;
    
    assign Sum  = A ^ B ^ Cin;  // XOR operation
    assign Cout = (A & B) | (Cin & (A ^ B)); // Carry-out logic
    
endmodule