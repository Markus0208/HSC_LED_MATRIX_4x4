# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/gab41928/hsc/Project/Vitis/Project_SW_system/_ide/scripts/debugger_project_sw-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/gab41928/hsc/Project/Vitis/Project_SW_system/_ide/scripts/debugger_project_sw-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Cora Z7 - 7007S 210370A92FC0A" && level==0 && jtag_device_ctx=="jsn-Cora Z7 - 7007S-210370A92FC0A-13722093-0"}
fpga -file /home/gab41928/hsc/Project/V2/Main_Project_V2/Main_Project_V2.runs/impl_1/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/gab41928/hsc/Project/Vitis/Project2_SW/export/Project2_SW/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/gab41928/hsc/Project/Vitis/Project_SW/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/gab41928/hsc/Project/Vitis/Project_SW/Debug/Project_SW.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
