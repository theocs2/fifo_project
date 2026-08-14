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
* Designed for RTL-to-GDSII implementation using OpenLane2 and the open source SKY130 PDK

# Architecture

## RTL-to-GDSII Physical Implementation

The verified asynchronous FIFO RTL was implemented using OpenLane2
with the SKY130 PDK.

### Final Layout

![Final GDSII layout](docs/final_layout.png)
