transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {Procesador.svo}

vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV4 {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV4/CPU_test.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L cyclonev_ver -L lpm_ver -L sgate_ver -L cyclonev_hssi_ver -L altera_mf_ver -L cyclonev_pcie_hip_ver -L gate_work -L work -voptargs="+acc"  Test_CPU_1

add wave *
view structure
view signals
run -all
