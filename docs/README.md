# Asynchronous FIFO with Clock Domain Crossing

This project implements a parameterized asynchronous FIFO in SystemVerilog for safe data transfer between independent write and read clock domains.

The design uses binary read/write pointers for memory addressing, Gray-code pointer conversion for proper clock-domain crossing, and dual-flop synchronizers to reduce metastability risks when transferring pointers to a new clock domain.

# Features
* Parameterized data width and address width
* Independent write and read clocks
* Dual-port memory
* Binary read/write pointers
* Binary-to-Gray pointer conversion
* Full and empty flag generation
* Dual flop Gray-code synchronizer
* Self-checking SystemVerilog testbench
* Scoreboard-based FIFO ordering for verification
* Directed testing for reset, full, single-entry writes/reads, and multi-entry ordering

# Architecture

## RTL-to-GDSII Physical Implementation

The verified asynchronous FIFO RTL was implemented using OpenLane2
with the SKY130 PDK.


## RTL-to-GDSII Physical Implementation

The verified RTL was implemented through OpenLane2 using the SKY130 PDK.

### Detailed Placement

![Detailed placement](docs/detailed_placement.png)

*Detailed placement of the async FIFO standard cells before routing.*

### Routed Interconnect

![Routed interconnect](docs/routing_closeup.png)

*Zoomed post-route view showing cell geometry, vias, and metal interconnect. (~15-20% of chip shown in this image)*

### Final GDSII

![Final GDSII](docs/final_gds.png)

*Final GDSII layout after routing and physical verification.*

| Metric | Result |
|---|---:|
| Die Area | 18,549 µm² |
| Core Area | 14,313.7 µm² |
| Core Utilization | 55.38% |
| Standard Cells | 712 |
| Sequential Cells | 174 |
| Routed Wirelength | 13,879 µm |
| Vias | 3,781 |
| Worst Setup Slack | +4.255 ns |
| Worst Hold Slack | +0.220 ns |
| Setup Violations | 0 |
| Hold Violations | 0 |
| Max Slew Violations | 0 |
| Max Capacitance Violations | 0 |
| DRC | Passed |
| LVS | Passed |
| Antenna | Passed |
