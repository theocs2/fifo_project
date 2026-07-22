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

    //local pointers to both write and read domains (binary)
    logic[PTR_WIDTH-1:0] r_ptr_bin, w_ptr_bin;

    //gray local pointers
    logic[PTR_WIDTH-1:0] r_ptr_gray, w_ptr_gray;

    //synchronized gray pointers
    logic [PTR_WIDTH-1:0] w_ptr_gray_sync;  // w_ptr_gray synced to clk_rd
    logic [PTR_WIDTH-1:0] r_ptr_gray_sync;  // r_ptr_gray synced to clk_wr

    logic [ADDR_WIDTH-1:0] w_addr, r_addr; // RAM adddresses
    
    bin2gray u_bin2gray_wr (
        .bin(w_ptr_bin),
        .gray(w_ptr_gray)
    );


    // ** insert FF synchronizers here ** 





    // Pointer Increment Logic

    always_ff @(posedge wclk or negedge wrst_n) begin
        if(!wrst_n)
            w_ptr_bin <= '0;
        else if (wen && !full) 
            w_ptr_bin <= w_ptr_bin + 1;
    end

    always_ff @(posedge rclk or negedge rrst_n) begin
        if(!rrst_n) 
            r_ptr_bin <= '0;
        else if (ren && !empty)
            r_ptr_bin <= r_ptr_bin + 1; //increment pointer
    end



    //Empty if all gray bits match, checked in READ domain
    assign empty = w_ptr_gray_sync == r_ptr_gray;


    //Full condition checked in WRITE domain
    assign full = (w_ptr_gray[PTR_WIDTH-1] != r_ptr_gray_sync[PTR_WIDTH-1]) && 
    (w_ptr_gray[PTR_WIDTH-2:0] == r_ptr_gray_sync[PTR_WIDTH-2:0]);


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
