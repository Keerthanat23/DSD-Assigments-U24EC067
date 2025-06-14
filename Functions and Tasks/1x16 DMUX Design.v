module demux_1x16 (
    input in,
    input [3:0] sel,
    output reg [15:0] out
);

    // Function for DMUX selection logic
    function [15:0] demux_select;
        input in_signal;
        input [3:0] sel_signal;
        begin
            demux_select = 16'b0; // Initialize all outputs to zero
            case (sel_signal)
                4'b0000: demux_select[0]  = in_signal;
                4'b0001: demux_select[1]  = in_signal;
                4'b0010: demux_select[2]  = in_signal;
                4'b0011: demux_select[3]  = in_signal;
                4'b0100: demux_select[4]  = in_signal;
                4'b0101: demux_select[5]  = in_signal;
                4'b0110: demux_select[6]  = in_signal;
                4'b0111: demux_select[7]  = in_signal;
                4'b1000: demux_select[8]  = in_signal;
                4'b1001: demux_select[9]  = in_signal;
                4'b1010: demux_select[10] = in_signal;
                4'b1011: demux_select[11] = in_signal;
                4'b1100: demux_select[12] = in_signal;
                4'b1101: demux_select[13] = in_signal;
                4'b1110: demux_select[14] = in_signal;
                4'b1111: demux_select[15] = in_signal;
                default: demux_select = 16'b0;
            endcase
        end
    endfunction

    always @(*) begin
        out = demux_select(in, sel);
    end
endmodule