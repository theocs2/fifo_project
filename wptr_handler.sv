module wrptr_handler #(parameter PTR_WIDTH = 5)(
    input logic [PTR_WIDTH-1:0] g_rdptr_sync,
    input logic                 wclk,
    input logic                 wrst_n,
    input logic                 wen,
    output logic [PTR_WIDTH-1:0] b_wptr, g_wptr,
    output logic                 full
);

    logic [PTR_WIDTH-1:0] b_wptr_next, g_wptr_next;

    //combinationally assign next pointers

    assign b_wptr_next = b_wptr + (wen && !full);
    assign g_wptr_next = b_wptr_next ^ (b_wptr_next >> 1);

    always_ff @(posedge wclk or negedge wrst_n) begin
        if(!wrst_n) begin
            b_wptr <= '0;
            g_wptr <= '0;
        end else begin
            b_wptr <= b_wptr_next;
            g_wptr <= g_wptr_next;
        end
    end

    //Full when write ptr is one full wrap ahead of the (synced) read ptr
    assign full = (g_wptr[PTR_WIDTH-1] != g_rdptr_sync[PTR_WIDTH-1]) &&
                  (g_wptr[PTR_WIDTH-2:0] == g_rdptr_sync[PTR_WIDTH-2:0]);




endmodule