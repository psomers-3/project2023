# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Xilinx\VivadoProjects\microblaze_mcu\microblaze_mcu.vitis\microblaze_mcu_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Xilinx\VivadoProjects\microblaze_mcu\microblaze_mcu.vitis\microblaze_mcu_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {microblaze_mcu_platform}\
-hw {C:\Xilinx\VivadoProjects\microblaze_mcu\design_1_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Xilinx/VivadoProjects/microblaze_mcu/microblaze_mcu.vitis}

platform write
platform generate -domains 
platform active {microblaze_mcu_platform}
bsp reload
platform generate
