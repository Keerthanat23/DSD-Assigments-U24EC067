module full_adder_structural(A, B, Cin, Sum, Cout);
    input A, B, Cin;
    output Sum, Cout;
    
    wire S1, C1, C2;
    
    xor (S1, A, B);
    xor (Sum, S1, Cin);
    and (C1, A, B);
    and (C2, S1, Cin);
    or  (Cout, C1, C2);
    
endmodule
