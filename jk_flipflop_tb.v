`timescale 1ns/1ps

module jk_flipflop_tb;

reg clk;
reg rst;
reg J;
reg K;

wire Q;

jk_flipflop uut(
    .clk(clk),
    .rst(rst),
    .J(J),
    .K(K),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;
    J = 0;
    K = 0;

    #10 rst = 0;

    // No Change
    J = 0; K = 0;
    #10;

    // Reset
    J = 0; K = 1;
    #10;

    // Set
    J = 1; K = 0;
    #10;

    // Toggle
    J = 1; K = 1;
    #10;

    // Toggle again
    J = 1; K = 1;
    #10;

    $finish;

end

initial begin
    $monitor("Time=%0t J=%b K=%b Q=%b", $time, J, K, Q);
end

endmodule