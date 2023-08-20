# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Xilinx\VivadoProjects\uart_platform\uart_platform.vitis\uart_app_system\_ide\scripts\debugger_uart_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Xilinx\VivadoProjects\uart_platform\uart_platform.vitis\uart_app_system\_ide\scripts\debugger_uart_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty 210319A396E5A" && level==0 && jtag_device_ctx=="jsn-Arty-210319A396E5A-0362d093-0"}
fpga -file C:/Xilinx/VivadoProjects/uart_platform/uart_platform.vitis/uart_app/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Xilinx/VivadoProjects/uart_platform/uart_platform.vitis/uart_platform_project/export/uart_platform_project/hw/uart_platform_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Xilinx/VivadoProjects/uart_platform/uart_platform.vitis/uart_app/Debug/uart_app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
