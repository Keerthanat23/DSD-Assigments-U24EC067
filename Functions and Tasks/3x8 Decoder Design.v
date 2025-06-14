module decoder_3x8 (
    input [2:0] in,
    output reg [7:0] out
);

    // Function for decoding logic
    function [7:0] decode;
        input [2:0] in_signal;
        begin
            case (in_signal)
                3'b000: decode = 8'b00000001;
                3'b001: decode = 8'b00000010;
                3'b010: decode = 8'b00000100;
                3'b011: decode = 8'b00001000;
                3'b100: decode = 8'b00010000;
                3'b101: decode = 8'b00100000;
                3'b110: decode = 8'b01000000;
                3'b111: decode = 8'b10000000;
                default: decode = 8'b00000000; // Undefined state
            endcase
        end
    endfunction

    always @(*) begin
        out = decode(in);
    end
endmodule