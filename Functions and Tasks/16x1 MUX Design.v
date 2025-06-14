module mux_16x1 (
    input [15:0] in,
    input [3:0] sel,
    output reg out
);

    // Function for MUX selection logic
    function mux_select;
        input [15:0] in_signal;
        input [3:0] sel_signal;
        begin
            case (sel_signal)
                4'b0000: mux_select = in_signal[0];
                4'b0001: mux_select = in_signal[1];
                4'b0010: mux_select = in_signal[2];
                4'b0011: mux_select = in_signal[3];
                4'b0100: mux_select = in_signal[4];
                4'b0101: mux_select = in_signal[5];
                4'b0110: mux_select = in_signal[6];
                4'b0111: mux_select = in_signal[7];
                4'b1000: mux_select = in_signal[8];
                4'b1001: mux_select = in_signal[9];
                4'b1010: mux_select = in_signal[10];
                4'b1011: mux_select = in_signal[11];
                4'b1100: mux_select = in_signal[12];
                4'b1101: mux_select = in_signal[13];
                4'b1110: mux_select = in_signal[14];
                4'b1111: mux_select = in_signal[15];
                default: mux_select = 1'bx;
            endcase
        end
    endfunction

    always @(*) begin
        out = mux_select(in, sel);
    end
endmodule