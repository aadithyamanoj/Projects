onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /shifterRight_tb/clk
add wave -noupdate /shifterRight_tb/clkP
add wave -noupdate /shifterRight_tb/reset
add wave -noupdate /shifterRight_tb/gameover
add wave -noupdate /shifterRight_tb/pipeRight
add wave -noupdate /shifterRight_tb/pipeLeft
add wave -noupdate /shifterRight_tb/newPipe
add wave -noupdate /shifterRight_tb/curCol
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 195
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
WaveRestoreZoom {0 ps} {974 ps}
