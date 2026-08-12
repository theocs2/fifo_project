`timescale 1ns/1ps

module tb_async_fifo;

    // instantiate async_fifo as dut here,
    // drive wclk/rclk, wen/ren, wdata,
    // check rdata against your own scoreboard
    localparam DATA_WIDTH = 8;
    localparam ADDR_WIDTH = 4;  

    //write domain signals
    logic wclk;
    logic wrst_n;
    logic wen;
    logic [DATA_WIDTH-1:0] data;
    logic full;

    //read domain logic
    logic rclk;
    logic rrst_n;
    logic ren;
    logic [DATA_WIDTH-1:0] rdata;
    logic empty;

    async_fifo #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH))
    dut(
        .wclk(wclk),
        .wrst_n(wrst_n),
        .wen(wen),
        .data(data),
        .full(full),
        
        .rclk(rclk),
        .rrst_n(rrst_n),
        .ren(ren),
        .rdata(rdata),
        .empty(empty)

    );

    // generate asynchronous clocks

    initial wclk = 1'b0;
    always #5 wclk = ~wclk; //10ns period = 100 MHz freq.

    initial rclk = 1'b0;
    always #7 rclk = ~rclk; //14ns period = 71.4 MHz freq.

    initial begin
        wrst_n = 1'b0;
        rrst_n = 1'b0;

        wen = 1'b0;
        ren = 1'b0;
        wdata = '0;

        #50;

        wrst_n = 1'b1;
        rrst_n = 1'b1; //enable FIFO


        repeat(3) @(posedge rclk);


        $display("TEST 1: Reset state");

        if(empty != 1'b1)
            $error("FAIL: FIFO should be empty after reset.");
        else 
            $display("PASS: FIFO empty after reset.");

        
        //test writing xA5
        @(negedge wclk)

        wdata = 8'hA5;
        wen = 1'b1;

        @(negedge wclk)

        wen = 1'b0;

        //wait for CDC crossing/propagation delays

        while(empty)
            @(posedge rclk);
        
        //read 1 entry
        @(negedge rclk)

        ren = 1'b1;

        @(posedge rclk)

        #1;

        if(rdata != 8'hA5)
            $error("FAIL: expected A5, got %h", rdata);
        else
            $display("PASS: expected A5, got %h", rdata);

        @(negedge rclk)

        ren = 1'b0;

        #50;

        $display("End of read/write FIFO test.");

        $finish;

    end





endmodule