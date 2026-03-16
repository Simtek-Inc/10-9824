# Top Level Design Parameters

# Clocks

create_clock -name {mainprogram|SerialClock} -period 10.000000 -waveform {0.000000 5.000000} SerialClock
create_clock -name {mainprogram|XCLK} -period 10.000000 -waveform {0.000000 5.000000} XCLK

# False Paths Between Clocks


# False Path Constraints


# Maximum Delay Constraints


# Multicycle Constraints


# Virtual Clocks
# Output Load Constraints
# Driving Cell Constraints
# Wire Loads
# set_wire_load_mode top

# Other Constraints
