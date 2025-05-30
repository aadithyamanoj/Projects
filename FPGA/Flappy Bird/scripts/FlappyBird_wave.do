onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /FlappyBird_tb/clk
add wave -noupdate /FlappyBird_tb/dut/gravClk
add wave -noupdate /FlappyBird_tb/dut/pClk
add wave -noupdate /FlappyBird_tb/reset
add wave -noupdate /FlappyBird_tb/player
add wave -noupdate {/FlappyBird_tb/RedPixels[4]}
add wave -noupdate /FlappyBird_tb/GrnPixels
add wave -noupdate /FlappyBird_tb/HEX0
add wave -noupdate /FlappyBird_tb/HEX1
add wave -noupdate /FlappyBird_tb/HEX2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {72 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 200
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
WaveRestoreZoom {0 ps} {979 ps}
