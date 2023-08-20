# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Xilinx\VivadoProjects\uart_platform\uart_platform.vitis\uart_platform_project\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Xilinx\VivadoProjects\uart_platform\uart_platform.vitis\uart_platform_project\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {uart_platform_project}\
-hw {C:\Xilinx\VivadoProjects\uart_platform\uart_platform_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Xilinx/VivadoProjects/uart_platform/uart_platform.vitis}

platform write
platform generate -domains 
platform active {uart_platform_project}
platform generate
