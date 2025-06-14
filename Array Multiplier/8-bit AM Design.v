module array_multiplier_8bit (
    input [7:0] A, B,
    output [15:0] P
);
    integer i, j;
    reg [15:0] temp [7:0];

    always @(*) begin
        P = 16'b0;
        
        for (i = 0; i < 8; i = i + 1) begin
            temp[i] = (B[i]) ? (A << i) : 16'b0;
        end

        for (j = 0; j < 8; j = j + 1) begin
            P = P + temp[j];
        end
    end
endmodule