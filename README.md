# UART_Receiver
## overview
This project implements a UART(universal Asynchronous Receiver Transmitter) Receiver in verilog HDL. The design receives serial UART data and converts it into 8-bit parallel data. The receiver was verified using both verilator + GTK wave and xilinx vivado simulator.

## UART Receiver Design specifications :
- Baud rate :115200 bps
- system clock : 25MHz
- Data width : 8-bits(1byte)
## Features:
- FSM-based UART Receiver
- Four state Architecture :
  - IDLE
  - START
  - RECV
  - STOP
- Two stage synchronizer(rx_meta,rx_sync)
- Data Ready indication after succesful reception
- Verilator and Vivado verification
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

![IMG-20260619-WA0018.jpg](https://github.com/user-attachments/assets/431bd878-be69-43b0-abad-e33b85ee9ee5)

##  UART Frame format 

![Screenshot_2026-06-19-16-43-23-91_e2d5b3f32b79de1d45acd1fad96fbb0f.jpg](https://github.com/user-attachments/assets/d5221391-7f85-4890-a464-fe5dcdade949)

 ## Tools & Languages used
 - Verilog HDL
 - Verilator
 - GTK Wave
 - Xilinx Vivado
## How to Run in Xilinx Vivado
1) create a project file
2) create a design file , name it as uart_receiver.v and paste/write the design code in it.
3) create a tesbench file , name it as uart_receiver_tb.v and paste/write the testbench code in it.
4) Now click on run simulation to get the waveform and enter run 300us in the tcl console inorder to verify the uart sent data frames.
5) verify the wave forms with the data sent.

## How to Run in verilator

1) create a design file , name it as uart_receiver.v and paste/write the design code in it.
2) create a tesbench file , name it as uart_receiver_tb.v and paste/write the testbench code in it.
3) create a file run.sh and paste/write the code and save it.
4) open the verilator terminal and enter the commands
   chmod +x run.sh
   ./run.sh
5) Then enter the command gtkwave uat_receiver.vcd and hit enter it will redirect you to the gtk wave application now select the required signals and append them to the waveform and verify the results.

## Verification Results 
 ### Verilator Terminal output 
 <img width="1366" height="578" alt="Verilator_Terminal_output" src="https://github.com/user-attachments/assets/08c47bd7-fed3-4178-a4f1-83d02d9efe4d" />

 ### GTK Waveform
 <img width="1366" height="681" alt="gtk waveforms" src="https://github.com/user-attachments/assets/a63fe407-d78d-4c84-a492-5717fab96c0e" />

 ###  Vivado TCL output 
 <img width="1366" height="768" alt="VIVADO_TCLCONSOLE_OUTPUT" src="https://github.com/user-attachments/assets/89c4ed73-6bed-48c6-b367-0f4c95236de2" />
 
 ###  Vivado simulation waveform 
 <img width="1366" height="312" alt="vivado waveform" src="https://github.com/user-attachments/assets/f6218444-ba59-4410-b5b7-9600e813b25e" />
 





