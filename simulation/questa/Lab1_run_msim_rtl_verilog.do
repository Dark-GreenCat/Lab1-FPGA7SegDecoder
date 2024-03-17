transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/OneDrive\ -\ Hanoi\ University\ of\ Science\ and\ Technology/Programs/DigitalDesign/Assignment/Lab1-FPGA7SegDecoder {D:/OneDrive - Hanoi University of Science and Technology/Programs/DigitalDesign/Assignment/Lab1-FPGA7SegDecoder/display_7segment.v}

