onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bird_tb/clk
add wave -noupdate /bird_tb/clkG
add wave -noupdate /bird_tb/reset
add wave -noupdate /bird_tb/key
add wave -noupdate /bird_tb/gameover
add wave -noupdate /bird_tb/lights
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {160 ps} 0}
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
WaveRestoreZoom {0 ps} {1326 ps}
