module tb_decoder_3x8;
    reg [2:0] in;
    wire [7:0] out;

    decoder_3x8 uut (.in(in), .out(out));

    // Task for applying test cases
    task apply_test;
        input [2:0] value;
        begin
            in = value;
            #10;
            $display("Time=%0t, Input=%b, Output=%b", $time, in, out);
        end
    endtask

    initial begin
        apply_test(3'b000);
        apply_test(3'b001);
        apply_test(3'b010);
        apply_test(3'b011);
        apply_test(3'b100);
        apply_test(3'b101);
        apply_test(3'b110);
        apply_test(3'b111);

        $stop;
    end
endmodule