# RTL Script to run Basic Synthesis Flow
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib   
set_db hdl_search_path /home/vlsi/Desktop/1dt23ec097/32bit_alu

set_db library slow.lib
read_hdl 32bit.v
elaborate 
read_sdc /home/vlsi/Desktop/1dt23ec097/32bit_alu/constraints_sdc.sdc
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt


write_hdl > 32bit_netlist.v
write_sdc > 32bit_block.sdc
report_area > 32bit_area.rep
report_gates > 32bit_gate.rep
report_power > 32bit_power.rep
report_timing > 32bit_timing.rep
gui_show


