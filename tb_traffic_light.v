`timescale 1ns/1ps

module tb_traffic_light;

reg clk = 0;
reg rst;
wire [2:0] lights;

traffic_light uut (
    .clk(clk),
    .rst(rst),
    .lights(lights)
);

// Clock generation: 10ns period
always #5 clk = ~clk;

initial begin
    $display("Starting Traffic Light Simulation");

    rst = 1; #15; // Assert reset
    rst = 0;      // Deassert reset

    #200;         // Let FSM run
    $finish;
end

endmodule
