module tb_demux_1x16;
    reg in;
    reg [3:0] sel;
    wire [15:0] out;

    demux_1x16 uut (.in(in), .sel(sel), .out(out));

    // Task for applying test cases
    task apply_test;
        input in_value;
        input [3:0] sel_value;
        begin
            in = in_value;
            sel = sel_value;
            #10;
            $display("Time=%0t, Input=%b, Select=%b, Output=%b", $time, in, sel, out);
        end
    endtask

    initial begin
        apply_test(1'b1, 4'b0000);
        apply_test(1'b1, 4'b0010);
        apply_test(1'b1, 4'b0101);
        apply_test(1'b1, 4'b0111);
        apply_test(1'b1, 4'b1001);
        apply_test(1'b1, 4'b1100);
        apply_test(1'b1, 4'b1111);

        $stop;
    end
endmodule