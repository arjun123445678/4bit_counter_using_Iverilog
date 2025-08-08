// 4_counter.v
module counter (
    input clk,
    input reset,
    output reg [3:0] count
);

// On positive clock or reset, either reset to 0 or increment
always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else
        count <= count + 1;
end

endmodule
