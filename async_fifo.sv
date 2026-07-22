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

endmodule