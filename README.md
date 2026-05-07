# low-latency-axi-dram

This project consists of a low-latency AXI-based DRAM access module that can be integrated into designs requiring high-throughput DRAM access.

`mem_test_axi` is the primary design module. It writes data to 16 DRAM locations, reads the data back, and verifies correctness while achieving minimal latency using independent pipelines for AXI Data and Response channels to maximize throughput.

The project initially started with minimizing BRAM access latency using AXI through `mem_test_axi_bram`, and was later extended to support DRAM using the Xilinx MIG7 IP and AXI Interconnect IP.

All versions of `mem_test_axi` are available in the `mem_test_axi` branch.

Block Design (`.bd`) files are also included to provide an overall RTL/system-level view of the interconnections between IPs and modules used in the project.

This project has been tested on:
- Basys3 (BRAM)
- Genesys2 (DDR3)
- KCU105 (DDR4)

for both functionality and performance evaluation.
