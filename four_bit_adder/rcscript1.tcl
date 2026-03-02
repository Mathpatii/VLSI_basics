# RTL Script to run Basic Synthesis Flow
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib   
set_db hdl_search_path /home/vlsi/Desktop/1dt23ec097/four_bit_adder


set_db library slow.lib
read_hdl adder.v
elaborate 
read_sdc /home/vlsi/Desktop/1dt23ec097/four_bit_adder/constraints_sdc.sdc
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt


write_hdl > adder_netlist.v
write_sdc > adder_block.sdc
report_area > adder_area.rep
report_gates > adder_gate.rep
report_power > adder_power.rep
report_timing > adder_timing.rep
gui_show



