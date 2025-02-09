# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/gab41928/hsc/Project/Vitis/Project2_SW/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/gab41928/hsc/Project/Vitis/Project2_SW/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Project2_SW}\
-hw {/home/gab41928/hsc/Project/V2/Software/design_1_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {/home/gab41928/hsc/Project/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {Project2_SW}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform active {Project2_SW}
platform active {Project2_SW}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
platform generate
platform active {Project2_SW}
domain active {zynq_fsbl}
bsp reload
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {Project2_SW}
platform generate -domains 
platform config -updatehw {/home/gab41928/hsc/Project/V2/Software/design_1_wrapper.xsa}
platform generate -domains 
platform generate
platform generate
platform clean
platform generate
platform generate
platform active {Project2_SW}
platform config -updatehw {/home/gab41928/hsc/Project/V2/Main_Project_V2/design_1_wrapper.xsa}
platform generate -domains 
