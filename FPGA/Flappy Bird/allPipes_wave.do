onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /allPipes_tb/clk
add wave -noupdate /allPipes_tb/clkP
add wave -noupdate /allPipes_tb/reset
add wave -noupdate /allPipes_tb/gameover
add wave -noupdate /allPipes_tb/newPipe
add wave -noupdate {/allPipes_tb/pipefield[15]}
add wave -noupdate {/allPipes_tb/pipefield[14]}
add wave -noupdate {/allPipes_tb/pipefield[13]}
add wave -noupdate {/allPipes_tb/pipefield[12]}
add wave -noupdate {/allPipes_tb/pipefield[11]}
add wave -noupdate {/allPipes_tb/pipefield[10]}
add wave -noupdate {/allPipes_tb/pipefield[9]}
add wave -noupdate {/allPipes_tb/pipefield[8]}
add wave -noupdate {/allPipes_tb/pipefield[7]}
add wave -noupdate {/allPipes_tb/pipefield[6]}
add wave -noupdate {/allPipes_tb/pipefield[5]}
add wave -noupdate {/allPipes_tb/pipefield[4]}
add wave -noupdate {/allPipes_tb/pipefield[3]}
add wave -noupdate {/allPipes_tb/pipefield[2]}
add wave -noupdate {/allPipes_tb/pipefield[1]}
add wave -noupdate {/allPipes_tb/pipefield[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1350 ps} 0}
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
WaveRestoreZoom {1201 ps} {2726 ps}
