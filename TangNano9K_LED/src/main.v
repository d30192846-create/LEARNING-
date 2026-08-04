module led(
    input wire clk,
    output reg led
);

reg [24:0] cnt;

always @(posedge clk)
begin
    cnt <= cnt + 1;

    if(cnt == 25'd25000000)
    begin
        led <= ~led;
        cnt <= 0;
    end
end

endmodule