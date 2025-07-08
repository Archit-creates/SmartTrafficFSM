module traffic_light (
    input wire clk,
    input wire rst,
    output reg [2:0] lights  // {Red, Yellow, Green}
);

// Manual state encoding
parameter GREEN  = 2'b00;
parameter YELLOW = 2'b01;
parameter RED    = 2'b10;

reg [1:0] state, next_state;
reg [3:0] timer;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= RED;
        timer <= 0;
    end else begin
        state <= next_state;
        timer <= (state != next_state) ? 0 : timer + 1;
    end
end

always @(*) begin
    next_state = state;
    case (state)
        GREEN:  if (timer >= 4) next_state = YELLOW;
        YELLOW: if (timer >= 2) next_state = RED;
        RED:    if (timer >= 5) next_state = GREEN;
    endcase
end

always @(*) begin
    case (state)
        GREEN:  lights = 3'b001;
        YELLOW: lights = 3'b010;
        RED:    lights = 3'b100;
        default: lights = 3'b000;
    endcase
end

endmodule
