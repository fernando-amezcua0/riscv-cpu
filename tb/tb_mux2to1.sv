`timescale 1ns/1ps

module tb_mux2to1;

    logic a, b, sel, y;

    mux2to1 dut(
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $dumpfile("sim/mux2to1.vcd");
        $dumpvars(0, tb_mux2to1);
    end

    initial begin
        a = 0; b = 0; sel = 0; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 0", a, b, sel, y);

        a = 0; b = 1; sel = 0; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 0", a, b, sel, y);

        a = 1; b = 0; sel = 0; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 1", a, b, sel, y);

        a = 1; b = 1; sel = 0; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 1", a, b, sel, y);

        a = 0; b = 0; sel = 1; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 0", a, b, sel, y);

        a = 0; b = 1; sel = 1; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 1", a, b, sel, y);

        a = 1; b = 0; sel = 1; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 0", a, b, sel, y);

        a = 1; b = 1; sel = 1; #10;
        $display("a=%b b=%b sel=%b y=%b | expect 1", a, b, sel, y);

        $finish;
    end
endmodule