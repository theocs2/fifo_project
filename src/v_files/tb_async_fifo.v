`timescale 1ns/1ps

module tb_async_fifo;

    // instantiate async_fifo as dut here,
    // drive wclk/rclk, wen/ren, wdata,
    // check rdata against your own scoreboard
    localparam DATA_WIDTH = 8;
    localparam ADDR_WIDTH = 4;
    localparam FIFO_DEPTH = (1 << ADDR_WIDTH);

    //write domain signals
    reg wclk;
    reg wrst_n;
    reg wen;
    reg [DATA_WIDTH-1:0] wdata;
    wire full;

    //read domain logic
    reg rclk;
    reg rrst_n;
    reg ren;
    wire [DATA_WIDTH-1:0] rdata;
    wire empty;

    // scoreboard, implemented as a circular buffer (Verilog has no queues)
    localparam SB_DEPTH = 256;
    reg [DATA_WIDTH-1:0] scoreboard [0:SB_DEPTH-1];
    integer sb_head;
    integer sb_tail;
    integer sb_count;

    task automatic sb_push_back(input [DATA_WIDTH-1:0] data);
        begin
            scoreboard[sb_tail] = data;
            sb_tail = (sb_tail + 1) % SB_DEPTH;
            sb_count = sb_count + 1;
        end
    endtask

    task automatic sb_pop_front(output [DATA_WIDTH-1:0] data);
        begin
            data = scoreboard[sb_head];
            sb_head = (sb_head + 1) % SB_DEPTH;
            sb_count = sb_count - 1;
        end
    endtask

    task automatic sb_delete;
        begin
            sb_head  = 0;
            sb_tail  = 0;
            sb_count = 0;
        end
    endtask


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

        reg [DATA_WIDTH-1:0] expected;

        begin
            while (empty)
                @(posedge rclk);

            @(negedge rclk);
            ren = 1'b1;

            @(posedge rclk); //perform read
            #1;

            if (sb_count == 0) begin

                $display(
                    "[%0t] ERROR: SCOREBOARD UNDERFLOW",
                    $time
                );

            end
            else begin

                sb_pop_front(expected);

                if (rdata !== expected)
                    $display(
                        "[%0t] ERROR: READ FAIL: expected=%h actual=%h",
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
                        sb_count
                    );

            end

            @(negedge rclk);
            ren = 1'b0; //deassert read enable
        end

    endtask


    task automatic fifo_write(
        input [DATA_WIDTH-1:0] data
    );

        begin
            while (full)
                @(posedge wclk);

            @(negedge wclk);

            wdata = data; //perform write to fifo
            wen = 1'b1;

            @(posedge wclk);

            sb_push_back(data);

            $display(
                "[%0t] WRITE: %h | scoreboard size = %0d",
                $time,
                data,
                sb_count
            );

            @(negedge wclk);

            wen = 1'b0;
        end

    endtask


    integer i;

    initial begin

        wrst_n = 1'b0;
        rrst_n = 1'b0;

        wen = 1'b0;
        ren = 1'b0;
        wdata = {DATA_WIDTH{1'b0}};

        sb_delete;

        #50;

        wrst_n = 1'b1;
        rrst_n = 1'b1; //enable FIFO

        repeat (3) @(posedge rclk);

        $display("");
        $display("========================================");
        $display("TEST 1: Reset state");
        $display("========================================");


        if (empty !== 1'b1)
            $display("[%0t] ERROR: FAIL: FIFO should be empty after reset.", $time);
        else
            $display("PASS: FIFO empty after reset.");


        if (full !== 1'b0)
            $display("[%0t] ERROR: FAIL: FIFO should not be full after reset.", $time);
        else
            $display("PASS: FIFO not full after reset.");


        // single write/read

        $display("");
        $display("========================================");
        $display("TEST 2: Single write/read");
        $display("========================================");


        fifo_write(8'hA5);

        fifo_read_check;


        $display("");
        $display("========================================");
        $display("TEST 3: Multiple-entry FIFO ordering");
        $display("========================================");


        fifo_write(8'h11);
        fifo_write(8'h22);
        fifo_write(8'h33);
        fifo_write(8'h44);


        fifo_read_check;
        fifo_read_check;
        fifo_read_check;
        fifo_read_check;

        $display("");
        $display("========================================");
        $display("TEST 4: Full test");
        $display("========================================");

        for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
            fifo_write(i);
        end

        @(posedge wclk);
        #5;

        if (full != 1'b1)
            $display("[%0t] ERROR: FAIL: FIFO should be full after %0d writes.", $time, FIFO_DEPTH);
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

        if (sb_count != FIFO_DEPTH)
            $display(
            "[%0t] ERROR: FAIL: scoreboard changed during blocked full write. size=%0d",
            $time,
            sb_count
            );
        else
            $display(
                "PASS: write while full was not added to scoreboard."
            );


        for (i = 0; i < FIFO_DEPTH; i = i + 1) begin
            fifo_read_check;
        end

        @(posedge rclk);
        #1;

        if (empty != 1'b1)
            $display("[%0t] ERROR: FAIL: FIFO should be empty after draining.", $time);
        else
            $display("PASS: FIFO empty asserted after draning.");

        @(negedge rclk);
        #1;

        ren = 1'b1; //try reading when empty

        @(posedge rclk);
        #1;

        @(negedge rclk);
        ren = 1'b0;

        if (sb_count != 0)
            $display(
                "[%0t] ERROR: FAIL: scoreboard changed during empty read. size=%0d",
                $time,
                sb_count
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
