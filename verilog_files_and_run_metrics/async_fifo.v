module async_fifo #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
) (
    // write domain
    input  wire                  wclk,
    input  wire                  wrst_n,
    input  wire                  wen,
    input  wire [DATA_WIDTH-1:0] wdata,
    output wire                  full,

    // read domain
    input  wire                  rclk,
    input  wire                  rrst_n,
    input  wire                  ren,
    output wire [DATA_WIDTH-1:0] rdata,
    output wire                  empty
);
    localparam PTR_WIDTH = ADDR_WIDTH + 1;

    //binary pointers
    wire [PTR_WIDTH-1:0] r_ptr_bin, w_ptr_bin;

    //gray pointers
    wire [PTR_WIDTH-1:0] r_ptr_gray, w_ptr_gray;

    //synchronized gray pointers
    wire [PTR_WIDTH-1:0] w_ptr_gray_sync;  // w_ptr_gray synced to rclk
    wire [PTR_WIDTH-1:0] r_ptr_gray_sync;  // r_ptr_gray synced to wclk

    wire [ADDR_WIDTH-1:0] w_addr, r_addr; // RAM addresses

    // **** FF synchronizers ****
    //send write gray ptr into READ domain (drives empty)
    sync2ff #(.WIDTH(PTR_WIDTH)) sync_gwptr_to_rd (
        .clk(rclk),
        .rst_n(rrst_n),
        .d1(w_ptr_gray),
        .q2(w_ptr_gray_sync)
    );

    //send read gray ptr into WRITE domain (drives full)
    sync2ff #(.WIDTH(PTR_WIDTH)) sync_grptr_to_wr (
        .clk(wclk),
        .rst_n(wrst_n),
        .d1(r_ptr_gray),
        .q2(r_ptr_gray_sync)
    );

    // **** Pointer handling ****
    wrptr_handler #(.PTR_WIDTH(PTR_WIDTH)) u_wrptr_handler (
        .g_rdptr_sync(r_ptr_gray_sync),
        .wclk(wclk),
        .wrst_n(wrst_n),
        .wen(wen),
        .b_wptr(w_ptr_bin),
        .g_wptr(w_ptr_gray),
        .full(full)
    );

    rptr_handler #(.PTR_WIDTH(PTR_WIDTH)) u_rptr_handler (
        .g_wptr_sync(w_ptr_gray_sync),
        .rclk(rclk),
        .rrst_n(rrst_n),
        .ren(ren),
        .b_rptr(r_ptr_bin),
        .g_rptr(r_ptr_gray),
        .empty(empty)
    );

    //memory instantiation
    assign w_addr = w_ptr_bin[ADDR_WIDTH-1:0];
    assign r_addr = r_ptr_bin[ADDR_WIDTH-1:0];

    dual_port_ram bram(
        .wclk(wclk),
        .wen(wen && ~full), //gated write enable, only when not full
        .waddr(w_addr),
        .wdata(wdata),
        .rclk(rclk),
        .raddr(r_addr),
        .rdata(rdata)
    );

endmodule
