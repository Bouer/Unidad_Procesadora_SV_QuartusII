onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /ALU_G/a
add wave -noupdate -radix decimal /ALU_G/b
add wave -noupdate -childformat {{{/ALU_G/ALUControl[3]} -radix decimal} {{/ALU_G/ALUControl[2]} -radix decimal} {{/ALU_G/ALUControl[1]} -radix decimal} {{/ALU_G/ALUControl[0]} -radix decimal}} -expand -subitemconfig {{/ALU_G/ALUControl[3]} {-radix decimal} {/ALU_G/ALUControl[2]} {-radix decimal} {/ALU_G/ALUControl[1]} {-radix decimal} {/ALU_G/ALUControl[0]} {-radix decimal}} /ALU_G/ALUControl
add wave -noupdate -radix decimal /ALU_G/Result
add wave -noupdate /ALU_G/ALUFlags
add wave -noupdate -radix decimal /ALU_G/neg
add wave -noupdate -radix decimal /ALU_G/zero
add wave -noupdate -radix decimal /ALU_G/acarreo
add wave -noupdate -radix decimal /ALU_G/overflow
add wave -noupdate -radix decimal /ALU_G/y
add wave -noupdate -radix decimal /ALU_G/sum
add wave -noupdate -radix decimal /ALU_G/cin
add wave -noupdate -radix decimal /ALU_G/cout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {213 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {236 ps}
