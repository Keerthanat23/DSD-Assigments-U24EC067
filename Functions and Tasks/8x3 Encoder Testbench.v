module tb_encoder_8x3;
    reg [7:0] in;
    wire [2:0] out;

    encoder_8x3 uut (.in(in), .out(out));

    // Task for applying inputs
    task apply_input;
        input [7:0] value;
        begin
            in = value;
            #10;
            $display("Time=%0t, Input=%b, Output=%b", $time, in, out);
        end
    endtask

    initial begin
        apply_input(8'b00000001);
        apply_input(8'b00000010);
        apply_input(8'b00000100);
        apply_input(8'b00001000);
        apply_input(8'b00010000);
        apply_input(8'b00100000);
        apply_input(8'b01000000);
        apply_input(8'b10000000);

        $stop;
    end
endmodule