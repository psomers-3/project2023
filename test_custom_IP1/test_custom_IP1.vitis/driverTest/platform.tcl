# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Xilinx\VivadoProjects\test_custom_IP1\test_custom_IP1.vitis\driverTest\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Xilinx\VivadoProjects\test_custom_IP1\test_custom_IP1.vitis\driverTest\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {driverTest}\
-hw {C:\Xilinx\VivadoProjects\test_custom_IP1\design_1_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Xilinx/VivadoProjects/test_custom_IP1/test_custom_IP1.vitis}

platform write
platform generate -domains 
platform active {driverTest}
