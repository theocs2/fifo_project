module dual_port_ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
) (
    input  logic                  wclk,
    input  logic                  wen,
    input  logic [ADDR_WIDTH-1:0] waddr,
    input  logic [DATA_WIDTH-1:0] wdata,

    input  logic                  rclk,
    input  logic [ADDR_WIDTH-1:0] raddr,
    output logic [DATA_WIDTH-1:0] rdata
);

    logic [DATA_WIDTH-1:0] mem [(1 << ADDR_WIDTH) - 1:0];   
     
    //write port logic
    always_ff @(posedge wclk) begin
        if(wen)
            mem[waddr] <= wdata;
    end

    //read port
    logic [DATA_WIDTH-1:0] rdata_reg;

    always_ff @(posedge rclk) begin
        rdata <= mem[raddr];
    end

endmodule
