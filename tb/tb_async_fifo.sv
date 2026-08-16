`timescale 1ns/1ps

module tb_async_fifo;

    // instantiate async_fifo as dut here,
    // drive wclk/rclk, wen/ren, wdata,
    // check rdata against your own scoreboard
    localparam DATA_WIDTH = 8;
    localparam ADDR_WIDTH = 4;  
    localparam FIFO_DEPTH = (1 << ADDR_WIDTH);

    //write domain signals
    logic wclk;
    logic wrst_n;
    logic wen;
    logic [DATA_WIDTH-1:0] wdata;
    logic full;

    //read domain logic
    logic rclk;
    logic rrst_n;
    logic ren;
    logic [DATA_WIDTH-1:0] rdata;
    logic empty;

    logic [DATA_WIDTH-1:0] scoreboard[$]; //scoreboard queue


    async_fifo #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    )
    dut (
        .wclk(wclk),
        .wrst_n(wrst_n),
        .wen(wen),
        .wdata(wdata),
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



    task automatic fifo_read_check;

        logic [DATA_WIDTH-1:0] expected;

        while (empty)
            @(posedge rclk);

        @(negedge rclk);
        ren = 1'b1;            

        @(posedge rclk); //perform read
        #1;

        if (scoreboard.size() == 0) begin

            $error(
                "[%0t] SCOREBOARD UNDERFLOW",
                $time
            );

        end
        else begin

            expected = scoreboard.pop_front();

            if (rdata !== expected)
                $error(
                    "[%0t] READ FAIL: expected=%h actual=%h", 
                    $time,
                    expected,
                    rdata
                );

            else
                $display(
                    "[%0t] READ PASS: expected=%h actual=%h | scoreboard size = %0d",
                    $time,
                    expected,
                    rdata,
                    scoreboard.size()
                );

        end

        @(negedge rclk);
        ren = 1'b0; //deassert read enable

    endtask


    task automatic fifo_write(
        input logic [DATA_WIDTH-1:0] data
    );

        while (full)
            @(posedge wclk);

        @(negedge wclk);

        wdata = data; //perform write to fifo
        wen = 1'b1;

        @(posedge wclk);

        scoreboard.push_back(data);

        $display(
            "[%0t] WRITE: %h | scoreboard size = %0d",
            $time,
            data,
            scoreboard.size()
        );

        @(negedge wclk);

        wen = 1'b0;

    endtask


    initial begin

        wrst_n = 1'b0;
        rrst_n = 1'b0;

        wen = 1'b0;
        ren = 1'b0;
        wdata = '0;

        scoreboard.delete();

        #50;

        wrst_n = 1'b1;
        rrst_n = 1'b1; //enable FIFO

        repeat (3) @(posedge rclk);

        $display("");
        $display("========================================");
        $display("TEST 1: Reset state");
        $display("========================================");


        if (empty !== 1'b1)
            $error("FAIL: FIFO should be empty after reset.");
        else
            $display("PASS: FIFO empty after reset.");


        if (full !== 1'b0)
            $error("FAIL: FIFO should not be full after reset.");
        else
            $display("PASS: FIFO not full after reset.");


        // single write/read

        $display("");
        $display("========================================");
        $display("TEST 2: Single write/read");
        $display("========================================");


        fifo_write(8'hA5);

        fifo_read_check();


        $display("");
        $display("========================================");
        $display("TEST 3: Multiple-entry FIFO ordering");
        $display("========================================");


        fifo_write(8'h11);
        fifo_write(8'h22);
        fifo_write(8'h33);
        fifo_write(8'h44);


        fifo_read_check();
        fifo_read_check();
        fifo_read_check();
        fifo_read_check();

        $display("");
        $display("========================================");
        $display("TEST 4: Full test");
        $display("========================================");

        for(int i = 0; i < FIFO_DEPTH; i++) begin
            fifo_write(i);
        end

        @(posedge wclk);
        #5;

        if(full != 1'b1)
            $error("FAIL: FIFO should be full after %0d writes.", FIFO_DEPTH);
        else 
            $display("PASS: FIFO full asserted after %0d writes.", FIFO_DEPTH);



        @(negedge wclk);
        #1;

        wdata = 8'hFF;
        wen = 1'b1;

        @(posedge wclk);
        #1;

        @(negedge wclk);
        wen = 1'b0;

        if(scoreboard.size() != FIFO_DEPTH)
            $error(
            "FAIL: scoreboard changed during blocked full write. size=%0d",
            scoreboard.size()
            );
        else
            $display(
                "PASS: write while full was not added to scoreboard."
            );


        for(int i = 0; i < FIFO_DEPTH; i++) begin
            fifo_read_check();
        end

        @(posedge rclk);
        #1;

        if(empty != 1'b1)
            $error("FAIL: FIFO should be empty after draining.");
        else 
            $display("PASS: FIFO empty asserted after draning.");

        @(negedge rclk);
        #1;

        ren = 1'b1; //try reading when empty

        @(posedge rclk);
        #1;

        @(negedge rclk);
        ren = 1'b0;

        if(scoreboard.size() != 0) 
            $error(
                "FAIL: scoreboard changed during empty read. size=%0d",
                scoreboard.size()
            );           
         else
            $display(
                "PASS: read while empty did not affect scoreboard."
            );    
        // wait 50 ns
        #50;


        $display("");
        $display("========================================");
        $display("END OF TESTBENCH");
        $display("========================================");


        $finish;

    end

endmodule