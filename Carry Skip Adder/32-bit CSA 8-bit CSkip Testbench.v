module CarrySkipAdder32_tb;
    reg [31:0] A, B;
    reg Cin;
    wire [31:0] Sum;
    wire Cout;

    CarrySkipAdder32 uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $monitor("Time=%0t | A=%h | B=%h | Cin=%b | Sum=%h | Cout=%b", $time, A, B, Cin, Sum, Cout);

        A = 32'h12345678; B = 32'h87654321; Cin = 0; #10;
        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 1; #10;
        A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 0; #10;
        A = 32'h00000000; B = 32'hFFFFFFFF; Cin = 1; #10;

        $finish;
    end
endmodule