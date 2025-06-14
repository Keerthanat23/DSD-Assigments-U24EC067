module tb_mux_16x1;
    reg [15:0] in;
    reg [3:0] sel;
    wire out;

    mux_16x1 uut (.in(in), .sel(sel), .out(out));

    // Task to apply test inputs
    task apply_test;
        input [3:0] sel_value;
        begin
            sel = sel_value;
            #10;
            $display("Time=%0t, Select=%b, Output=%b", $time, sel, out);
        end
    endtask

    initial begin
        in = 16'b1010101010101010; // Test input pattern

        apply_test(4'b0000);
        apply_test(4'b0010);
        apply_test(4'b0101);
        apply_test(4'b0111);
        apply_test(4'b1001);
        apply_test(4'b1100);
        apply_test(4'b1111);

        $stop;
    end
endmodule