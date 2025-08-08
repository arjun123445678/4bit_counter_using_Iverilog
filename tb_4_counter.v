// tb_4_counter.v
`timescale 1ns/1ps

module tb_counter;
    reg clk;
    reg reset;
    wire [3:0] count;

    // Instantiate DUT (Device Under Test)
    counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Generate clock with 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, tb_counter);

        reset = 1; #10;
        reset = 0; // Release reset

        #100; // Let counter run
        $finish;
    end
endmodule
