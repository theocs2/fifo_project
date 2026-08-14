module async_fifo #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
) (
    // write domain
    input  logic                  wclk,
    input  logic                  wrst_n,
    input  logic                  wen,
    input  logic [DATA_WIDTH-1:0] wdata,
    output logic                  full,

    // read domain
    input  logic                  rclk,
    input  logic                  rrst_n,
    input  logic                  ren,
    output logic [DATA_WIDTH-1:0] rdata,
    output logic                  empty
);
    localparam PTR_WIDTH = ADDR_WIDTH + 1;

    //binary pointers
    logic[PTR_WIDTH-1:0] r_ptr_bin, w_ptr_bin;

    //gray pointers
    logic[PTR_WIDTH-1:0] r_ptr_gray, w_ptr_gray;

    //synchronized gray pointers
    logic [PTR_WIDTH-1:0] w_ptr_gray_sync;  // w_ptr_gray synced to rclk
    logic [PTR_WIDTH-1:0] r_ptr_gray_sync;  // r_ptr_gray synced to wclk

    logic [ADDR_WIDTH-1:0] w_addr, r_addr; // RAM addresses

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