module full_adder_behavioral(A, B, Cin, Sum, Cout);
    input A, B, Cin;
    output reg Sum, Cout;
    
    always @ (A or B or Cin) begin
        {Cout, Sum} = A + B + Cin; // Using addition to determine outputs
    end
    
endmodule
