# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Xilinx\VivadoProjects\microblaze_mcu\microblaze_mcu.vitis\microblaze_app1_system\_ide\scripts\debugger_microblaze_app1-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Xilinx\VivadoProjects\microblaze_mcu\microblaze_mcu.vitis\microblaze_app1_system\_ide\scripts\debugger_microblaze_app1-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty 210319A396E5A" && level==0 && jtag_device_ctx=="jsn-Arty-210319A396E5A-0362d093-0"}
fpga -file C:/Xilinx/VivadoProjects/microblaze_mcu/microblaze_mcu.vitis/microblaze_app1/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Xilinx/VivadoProjects/microblaze_mcu/microblaze_mcu.vitis/microblaze_mcu_platform/export/microblaze_mcu_platform/hw/design_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Xilinx/VivadoProjects/microblaze_mcu/microblaze_mcu.vitis/microblaze_app1/Debug/microblaze_app1.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
