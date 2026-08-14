## Custom SDC for async_fifo — two independent, asynchronous clock domains

create_clock [get_ports wclk] -name wclk -period 10.0
create_clock [get_ports rclk] -name rclk -period 14.0

# wclk and rclk are asynchronous to each other (crossed only through the
# sync2ff double-flop synchronizers), so timing paths between them should
# not be analyzed together.
set_clock_groups -name async_fifo_clocks -asynchronous \
    -group [get_clocks {wclk}] \
    -group [get_clocks {rclk}]