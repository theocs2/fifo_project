module sync2ff #(
    parameter WIDTH = 5
) (
    input  logic             clk,
    input  logic             rst_n,
    input  logic [WIDTH-1:0] d1,
    output logic [WIDTH-1:0] q2
);

    logic [WIDTH-1:0] q1;

    always_ff @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            q2 <= '0;
            q1 <= '0;
        end else begin
            q1 <= d1;
            q2 <= q1;
        end
    end



endmodule
