`timescale 1ns/1ps

module tb_and_gate;

    logic a, b, y;

    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("sim/and_gate.vcd");
        $dumpvars(0, tb_and_gate);
    end

    initial begin
        a = 0; b = 0; #10;
        $display("a=%b b=%b y=%b | expect 0", a, b, y);

        a = 0; b = 1; #10;
        $display("a=%b b=%b y=%b | expect 0", a, b, y);

        a = 1; b = 0; #10;
        $display("a=%b b=%b y=%b | expect 0", a, b, y);

        a = 1; b = 1; #10;
        $display("a=%b b=%b y=%b | expect 1", a, b, y);

        $finish;
    end

endmodule