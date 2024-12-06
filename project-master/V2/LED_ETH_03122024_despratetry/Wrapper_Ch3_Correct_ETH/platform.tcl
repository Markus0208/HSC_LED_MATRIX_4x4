# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\thego\Desktop\HSC_PNM\project-master\V2\LED_ETH_03122024_despratetry\Wrapper_Ch3_Correct_ETH\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\thego\Desktop\HSC_PNM\project-master\V2\LED_ETH_03122024_despratetry\Wrapper_Ch3_Correct_ETH\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Wrapper_Ch3_Correct_ETH}\
-hw {C:\Users\thego\Desktop\HSC_PNM\Wrapper_Ch3_Correct_ETH.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/thego/Desktop/HSC_PNM/project-master/V2/LED_ETH_03122024_despratetry}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_echo_server}
platform generate -domains 
platform active {Wrapper_Ch3_Correct_ETH}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0 
platform generate -domains freertos10_xilinx_ps7_cortexa9_0,zynq_fsbl 
