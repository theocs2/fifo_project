module dual_port_ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
) (
    input  wire                  wclk,
    input  wire                  wen,
    input  wire [ADDR_WIDTH-1:0] waddr,
    input  wire [DATA_WIDTH-1:0] wdata,

    input  wire                  rclk,
    input  wire [ADDR_WIDTH-1:0] raddr,
    output reg  [DATA_WIDTH-1:0] rdata
);

    reg [DATA_WIDTH-1:0] mem [(1 << ADDR_WIDTH) - 1:0];

    //write port logic
    always @(posedge wclk) begin
        if (wen)
            mem[waddr] <= wdata;
    end

    //read port
    reg [DATA_WIDTH-1:0] rdata_reg;

    always @(posedge rclk) begin
        rdata <= mem[raddr];
    end

endmodule
