setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/docs/FPGA/HelloWorld/simulation/simulation.adf"]} { 
	design create simulation "D:/docs/FPGA/HelloWorld"
  set newDesign 1
}
design open "D:/docs/FPGA/HelloWorld/simulation"
cd "D:/docs/FPGA/HelloWorld"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo3l
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/docs/FPGA/HelloWorld/top.v"
addfile "D:/docs/FPGA/HelloWorld/testbench.v"
vlib "D:/docs/FPGA/HelloWorld/simulation/work"
set worklib work
adel -all
vlog -dbg -work work "D:/docs/FPGA/HelloWorld/top.v"
vlog -dbg -work work "D:/docs/FPGA/HelloWorld/testbench.v"
module testbench
vsim  +access +r testbench   -PL pmi_work -L ovi_machxo3l
add wave *
run 1000ns
