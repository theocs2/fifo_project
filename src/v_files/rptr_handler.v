module rptr_handler #(parameter PTR_WIDTH = 5)(
    input  wire [PTR_WIDTH-1:0] g_wptr_sync,
    input  wire                 rclk,
    input  wire                 rrst_n,
    input  wire                 ren,
    output reg  [PTR_WIDTH-1:0] b_rptr,
    output reg  [PTR_WIDTH-1:0] g_rptr,
    output wire                 empty
);

    wire [PTR_WIDTH-1:0] b_rptr_next, g_rptr_next;

    //combinationally assign next pointers

    assign b_rptr_next = b_rptr + (ren && !empty);
    assign g_rptr_next = b_rptr_next ^ (b_rptr_next >> 1);

    always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            b_rptr <= {PTR_WIDTH{1'b0}};
            g_rptr <= {PTR_WIDTH{1'b0}};
        end else begin
            b_rptr <= b_rptr_next;
            g_rptr <= g_rptr_next;
        end
    end

    //Empty when both gray pointers match, checked in read domain
    assign empty = (g_rptr == g_wptr_sync);

endmodule
