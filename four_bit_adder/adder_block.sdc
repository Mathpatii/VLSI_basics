# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Mon Feb 23 12:50:32 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design four_bit_adder

set_load -pin_load 0.15 [get_ports {S[3]}]
set_load -pin_load 0.15 [get_ports {S[2]}]
set_load -pin_load 0.15 [get_ports {S[1]}]
set_load -pin_load 0.15 [get_ports {S[0]}]
set_load -pin_load 0.15 [get_ports {C4[3]}]
set_load -pin_load 0.15 [get_ports {C4[2]}]
set_load -pin_load 0.15 [get_ports {C4[1]}]
set_load -pin_load 0.15 [get_ports {C4[0]}]
set_clock_gating_check -setup 0.0 
set_max_fanout 20.000 [current_design]
set_input_transition 0.12 [get_ports {A[3]}]
set_input_transition 0.12 [get_ports {A[2]}]
set_input_transition 0.12 [get_ports {A[1]}]
set_input_transition 0.12 [get_ports {A[0]}]
set_input_transition 0.12 [get_ports {B[3]}]
set_input_transition 0.12 [get_ports {B[2]}]
set_input_transition 0.12 [get_ports {B[1]}]
set_input_transition 0.12 [get_ports {B[0]}]
set_input_transition 0.12 [get_ports C0]
set_wire_load_mode "enclosed"
