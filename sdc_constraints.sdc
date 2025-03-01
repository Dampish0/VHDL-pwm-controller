create_clock -name {tc_clock_50} -period 20 [get_ports clk]
derive_pll_clocks
set_output_delay -clock {tc_clock_50} -max 8 [all_outputs]
set_input_delay -clock {tc_clock_50} -max 8 [all_inputs]
