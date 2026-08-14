module sync2ff #(
    parameter WIDTH = 5
) (
    input  wire             clk,
    input  wire             rst_n,
    input  wire [WIDTH-1:0] d1,
    output reg  [WIDTH-1:0] q2
);

    reg [WIDTH-1:0] q1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            q2 <= {WIDTH{1'b0}};
            q1 <= {WIDTH{1'b0}};
        end else begin
            q1 <= d1;
            q2 <= q1;
        end
    end

endmodule
