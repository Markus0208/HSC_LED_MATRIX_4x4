# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test19\design_1_wrappertry\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test19\design_1_wrappertry\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrappertry}\
-hw {C:\Users\thego\Downloads\git_first_commit\V2\Main_Project_V2\design_1_wrappertry.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test19}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrappertry}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
