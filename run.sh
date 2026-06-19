verilator --binary -j 0 -Wall uart_receiver.v uart_receiver_tb.v --top uart_receiver_tb --timing --CFLAGS "-std=c++20" --trace

cd obj_dir ||{ echo"Error:obj_dir not found"; exit 1; }

make -f Vuart_receiver_tb.mk Vuart_receiver_tb ||{ echo "Error: Compilation failed"; exit 1; }

./Vuart_receiver_tb || { "Error: Simulation failed"; exit 1; }

gtkwave uart_receiver_tb.vcd
