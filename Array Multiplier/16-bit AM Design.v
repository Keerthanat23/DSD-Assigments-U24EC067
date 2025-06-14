module array_multiplier_16bit (
    input [15:0] A, B,
    output [31:0] P
);
    integer i, j;
    reg [31:0] partial_products [15:0];

    always @(*) begin
        // Initialize partial products
        for (i = 0; i < 16; i = i + 1) begin
            partial_products[i] = A[i] ? (B << i) : 0;
        end

        // Sum up partial products
        P = 0;
        for (j = 0; j < 16; j = j + 1) begin
            P = P + partial_products[j];
        end
    end