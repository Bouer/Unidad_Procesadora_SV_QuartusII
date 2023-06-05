onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Procesador/D_sel
add wave -noupdate /Procesador/Load_en
add wave -noupdate /Procesador/enable_deco
add wave -noupdate /Procesador/Sal_deco
add wave -noupdate /Procesador/Load_0
add wave -noupdate /Procesador/Load_1
add wave -noupdate /Procesador/Load_2
add wave -noupdate /Procesador/Load_3
add wave -noupdate -radix decimal /Procesador/Sal_R0
add wave -noupdate -radix decimal /Procesador/Sal_R1
add wave -noupdate -radix decimal /Procesador/Sal_R2
add wave -noupdate -radix decimal /Procesador/Sal_R3
add wave -noupdate /Procesador/A_sel
add wave -noupdate /Procesador/B_sel
add wave -noupdate -radix binary /Procesador/Address_out
add wave -noupdate -radix binary /Procesador/B_dataBH
add wave -noupdate /Procesador/Cons_IN
add wave -noupdate /Procesador/MB_sel
add wave -noupdate -radix binary /Procesador/Data_out
add wave -noupdate /Procesador/H_sel
add wave -noupdate -radix decimal /Procesador/BUS_shift
add wave -noupdate /Procesador/G_sel
add wave -noupdate -radix binary -childformat {{{/Procesador/BUS_AF[7]} -radix decimal} {{/Procesador/BUS_AF[6]} -radix decimal} {{/Procesador/BUS_AF[5]} -radix decimal} {{/Procesador/BUS_AF[4]} -radix decimal} {{/Procesador/BUS_AF[3]} -radix decimal} {{/Procesador/BUS_AF[2]} -radix decimal} {{/Procesador/BUS_AF[1]} -radix decimal} {{/Procesador/BUS_AF[0]} -radix decimal}} -subitemconfig {{/Procesador/BUS_AF[7]} {-radix decimal} {/Procesador/BUS_AF[6]} {-radix decimal} {/Procesador/BUS_AF[5]} {-radix decimal} {/Procesador/BUS_AF[4]} {-radix decimal} {/Procesador/BUS_AF[3]} {-radix decimal} {/Procesador/BUS_AF[2]} {-radix decimal} {/Procesador/BUS_AF[1]} {-radix decimal} {/Procesador/BUS_AF[0]} {-radix decimal}} /Procesador/BUS_AF
add wave -noupdate /Procesador/MF_sel
add wave -noupdate -radix binary /Procesador/BUS_FD
add wave -noupdate -radix decimal /Procesador/Data_IN
add wave -noupdate /Procesador/MD_sel
add wave -noupdate -radix decimal /Procesador/Reg_in
add wave -noupdate -expand /Procesador/Tags
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {520 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 230
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {351 ps} {572 ps}
