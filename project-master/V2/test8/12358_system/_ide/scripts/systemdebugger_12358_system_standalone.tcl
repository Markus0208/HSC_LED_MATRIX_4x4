# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test8\12358_system\_ide\scripts\systemdebugger_12358_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test8\12358_system\_ide\scripts\systemdebugger_12358_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Cora Z7 - 7007S 210370A9303AA" && level==0 && jtag_device_ctx=="jsn-Cora Z7 - 7007S-210370A9303AA-13722093-0"}
fpga -file C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test8/12358/_ide/bitstream/design_1_wrapper_Ethernet2.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test8/design_1_wrapper_Ethernet2/export/design_1_wrapper_Ethernet2/hw/design_1_wrapper_Ethernet2.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test8/12358/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test8/12358/Debug/12358.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
