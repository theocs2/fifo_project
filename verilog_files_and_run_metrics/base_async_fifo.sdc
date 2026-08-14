## asynchronous clock domains set below, 10 & 14ns
create_clock [get_ports wclk] -name wclk -period 10.0
create_clock [get_ports rclk] -name rclk -period 14.0

set_clock_groups -name async_fifo_clocks -asynchronous \
    -group [get_clocks {wclk}] \
    -group [get_clocks {rclk}]