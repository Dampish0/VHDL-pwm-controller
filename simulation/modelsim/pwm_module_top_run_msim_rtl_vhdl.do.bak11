transcript on
if ![file isdirectory pwm_module_top_iputf_libs] {
	file mkdir pwm_module_top_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/pll_altera_sim/pll_altera.vho"

vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/startup_reset.vhd}
vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/serial_uart_rtl.vhd}
vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/serial_ctrl.vhd}
vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/reset_ctrl_rtl.vhd}
vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/pwm_ctrl.vhd}
vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/key_ctrl.vhd}
vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/dc_disp_ctrl.vhd}
vcom -93 -work work {C:/Users/elias/Documents/_MAIN_/SchoolProjects/digitalTEKNIK/lab72s/lab72/pwm_module_top.vhd}

