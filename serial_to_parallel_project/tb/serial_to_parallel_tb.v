`timescale 1ns/1ps

module serial_to_parallel_tb;

reg clk;
reg reset;
reg serial_in;

wire [3:0] parallel_out;

serial_to_parallel uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .parallel_out(parallel_out)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, serial_to_parallel_tb);

    clk = 0;
    reset = 1;
    serial_in = 0;

    #10 reset = 0;

    #10 serial_in = 1;
    #10 serial_in = 0;
    #10 serial_in = 1;
    #10 serial_in = 1;

    #40 $finish;
end

always #5 clk = ~clk;

endmodule