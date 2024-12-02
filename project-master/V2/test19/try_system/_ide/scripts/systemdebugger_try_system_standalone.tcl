# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test19\try_system\_ide\scripts\systemdebugger_try_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\thego\Desktop\021120241015\project-master\project-master\V2\test19\try_system\_ide\scripts\systemdebugger_try_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Cora Z7 - 7007S 210370A9303AA" && level==0 && jtag_device_ctx=="jsn-Cora Z7 - 7007S-210370A9303AA-13722093-0"}
fpga -file C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test19/try/_ide/bitstream/design_1_wrappertry.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test19/design_1_wrappertry/export/design_1_wrappertry/hw/design_1_wrappertry.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test19/try/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/thego/Desktop/021120241015/project-master/project-master/V2/test19/try/Debug/try.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
