##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Wed Jul 26 20:23:46 2023

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       example_top.xdc
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A35TI-CSG324
##                    Speedgrade:        -1L
##                    Design Entry:      VERILOG
##                    Frequency:         324.99000000000001 MHz
##                    Time Period:       3077 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41K128M16XX-15E
## Data Width: 16
## Time Period: 3077
## Data Mask: 1
##################################################################################################
############## NET - IOSTANDARD ##################



set_property INTERNAL_VREF  0.675 [get_iobanks 34]