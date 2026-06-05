`timescale 1ns/1ps

module tb_or_gate;

    logic a,b,y;

    or_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin 
        $dumpfile("sim/or_gate.vcd");
        $dumpvars(0, tb_or_gate);
    end

    initial begin
        a = 0; b = 0; #10;
        $display("a=%b b=%b y=%b | expect 0", a, b, y);

        a = 1; b = 0; #10;
        $display("a=%b b=%b y=%b | expect 1", a, b, y);

        a = 0; b = 1; #10;
        $display("a=%b b=%b y=%b | expect 1", a, b, y);

        a = 1; b = 1; #10;
        $display("a=%b b=%b y=%b | expect 1", a, b, y);

        $finish;
    end

endmodule
    