# UART_Receiver
##overview
This project implements a UART(universal Asynchronous Receiver Transmitter) Receiver in verilog HDL. The design receives serial UART data and converts it into 8-bit parallel data. The receiver was verified using both verilator + GTK wave and xilinx vivado simulator.

## UART Receiver Design specifications :
-Baud rate :115200 bps
-system clock : 25MHz
-Data width : 8-bits(1byte)
## Features:
-FSM-based UART Receiver
-Four state Architecture :
  -IDLE
  -START
  -RECV
  -STOP
-Two stage synchronizer(rx_meta,rx_sync)
-Data Ready indication after succesful reception
-Verilator and Vivado verification
## FSM Description :
### IDLE
waits for UART line to go low,indicating the start bit.

### START
waits for half bit period and confirms a valid UART frame

### RECV
Receives and stores the 8 serial data bits.

### STOP
checks the stop bit,transfers data to output and asserts data_ready.

## Block Diagram 

