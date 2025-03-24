# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.
vlog "./bird.sv"
vlog "./bird_tb.sv"
vlog "./clock_divider.sv"
vlog "./DE1_SoC.sv"
vlog "./gravity.sv"
vlog "./gravity_tb.sv"
vlog "./LED_test.sv"
vlog "./LEDDriver.sv"
vlog "./pipeGen.sv"
vlog "./shifter.sv"
vlog "./pipeClk.sv"
vlog "./shifterRight.sv"
vlog "./allpipes.sv"
vlog "./randLFSR.sv"
vlog "./collision.sv"
vlog "./synch.sv"
vlog "./pulse.sv"
vlog "./input.sv"
vlog "./scoreLights.sv"
vlog "./FlappyBird.sv"
vlog "./pipeClk_tb.sv"
vlog "./keyIn_tb.sv"
vlog "./randLFSR_tb.sv"
vlog "./pipeGen_tb.sv"
vlog "./allPipes_tb.sv"
vlog "./shifter_tb.sv"
vlog "./shifterRight_tb.sv"
vlog "./collision_tb.sv"
vlog "./scoreLights_tb.sv"
vlog "./FlappyBird_tb.sv"
vlog "./pipeGclk.sv"
vlog "./frownyFace.sv"
vlog "./outputMux.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work pipeClk_tb

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do pipeClk_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
