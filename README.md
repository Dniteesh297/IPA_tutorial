# Verilog Example Codes

A few example codes to get used to Verilog.

### Instructions to run:

To run example codes:

* Navigate to the directory for the component you want to run.

  For example,
  ```cd mux_21```
* Command format to compile testbench and the verilog module:
 ```iverilog -o <output> <testbench> <code>```

  For example, if I want to run code for the 2*1 MUX:
  
  ```iverilog -o mux_21_test mux_21_test.v mux_21.v```
  
* Execute the compiled file:
  ```vvp mux_21_test```
  
* To open GTKWave:
  ```gtkwave mux_21_test.vcd &```

