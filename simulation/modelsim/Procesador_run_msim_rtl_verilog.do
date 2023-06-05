transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/ALU_G.sv}
vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/mux_4x1.sv}
vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/and_R.sv}
vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/Procesador.sv}
vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/decoder.sv}
vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/registro.sv}
vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/mux_2x1.sv}
vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/Shifter.sv}

vlog -sv -work work +incdir+D:/Cursos\ y\ Carreras/INGENIERIA\ ELECTRONICA/Tecnicas\ Digitales\ 2/Quartus2_proyectos/Proyecto\ TP1\ -\ CPUV_5_simOK.rar/Proyecto\ TP1\ -\ CPUV_5_simOK.rar {D:/Cursos y Carreras/INGENIERIA ELECTRONICA/Tecnicas Digitales 2/Quartus2_proyectos/Proyecto TP1 - CPUV_5_simOK.rar/Proyecto TP1 - CPUV_5_simOK.rar/Procesador_simulation.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Procesador_simulate

add wave *
view structure
view signals
run -all
