# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test11\design_1_wrapper_Ethernet_DisRes2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test11\design_1_wrapper_Ethernet_DisRes2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper_Ethernet_DisRes2}\
-hw {C:\Users\thego\Downloads\design_1_wrapper_Ethernet_DisRes2.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test11}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_echo_server}
platform generate -domains 
platform active {design_1_wrapper_Ethernet_DisRes2}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
bsp reload
bsp config phy_link_speed "CONFIG_LINKSPEED100"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
platform generate -domains standalone_ps7_cortexa9_0 
bsp config use_axieth_on_zynq "0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp reload
bsp config use_axieth_on_zynq "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config use_axieth_on_zynq "0"
bsp write
bsp reload
catch {bsp regenerate}
bsp config use_axieth_on_zynq "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config use_axieth_on_zynq "0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
bsp config use_axieth_on_zynq "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0 
