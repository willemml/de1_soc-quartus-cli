project_new project -overwrite

# Assign family, device, and top-level file
set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name DEVICE 5CSEMA5F31C6
set_global_assignment -name VHDL_FILE toplevel.vhd
set_global_assignment -name TOP_LEVEL_ENTITY toplevel

# Assign pins
set_location_assignment -to CLOCK_50MHZ PIN_AA16

set_location_assignment -to SW[9] PIN_AE12
set_location_assignment -to SW[8] PIN_AD10
set_location_assignment -to SW[7] PIN_AC9
set_location_assignment -to SW[6] PIN_AE11
set_location_assignment -to SW[5] PIN_AD12
set_location_assignment -to SW[4] PIN_AD11
set_location_assignment -to SW[3] PIN_AF10
set_location_assignment -to SW[2] PIN_AF9
set_location_assignment -to SW[1] PIN_AC12
set_location_assignment -to SW[0] PIN_AB12

set_location_assignment -to LEDR[9] PIN_Y21
set_location_assignment -to LEDR[8] PIN_W21
set_location_assignment -to LEDR[7] PIN_W20
set_location_assignment -to LEDR[6] PIN_Y19
set_location_assignment -to LEDR[5] PIN_W19
set_location_assignment -to LEDR[4] PIN_W17
set_location_assignment -to LEDR[3] PIN_V18
set_location_assignment -to LEDR[2] PIN_V17
set_location_assignment -to LEDR[1] PIN_W16
set_location_assignment -to LEDR[0] PIN_V16

set_location_assignment -to KEY[0] PIN_AA14
set_location_assignment -to KEY[1] PIN_AA15
set_location_assignment -to KEY[2] PIN_W15
set_location_assignment -to KEY[3] PIN_Y16

set_location_assignment -to HEX0[0] PIN_AE26
set_location_assignment -to HEX0[1] PIN_AE27
set_location_assignment -to HEX0[2] PIN_AE28
set_location_assignment -to HEX0[3] PIN_AG27
set_location_assignment -to HEX0[4] PIN_AF28
set_location_assignment -to HEX0[5] PIN_AG28
set_location_assignment -to HEX0[6] PIN_AH28

set_location_assignment -to HEX1[0] PIN_AJ29
set_location_assignment -to HEX1[1] PIN_AH29
set_location_assignment -to HEX1[2] PIN_AH30
set_location_assignment -to HEX1[3] PIN_AG30
set_location_assignment -to HEX1[4] PIN_AF29
set_location_assignment -to HEX1[5] PIN_AF30
set_location_assignment -to HEX1[6] PIN_AD27

set_location_assignment -to HEX2[0] PIN_AB23
set_location_assignment -to HEX2[1] PIN_AE29
set_location_assignment -to HEX2[2] PIN_AD29
set_location_assignment -to HEX2[3] PIN_AC28
set_location_assignment -to HEX2[4] PIN_AD30
set_location_assignment -to HEX2[5] PIN_AC29
set_location_assignment -to HEX2[6] PIN_AC30

set_location_assignment -to HEX3[0] PIN_AD26
set_location_assignment -to HEX3[1] PIN_AC27
set_location_assignment -to HEX3[2] PIN_AD25
set_location_assignment -to HEX3[3] PIN_AC25
set_location_assignment -to HEX3[4] PIN_AB28
set_location_assignment -to HEX3[5] PIN_AB25
set_location_assignment -to HEX3[6] PIN_AB22

set_location_assignment -to HEX4[0] PIN_AA24
set_location_assignment -to HEX4[1] PIN_Y23
set_location_assignment -to HEX4[2] PIN_Y24
set_location_assignment -to HEX4[3] PIN_W22
set_location_assignment -to HEX4[4] PIN_W24
set_location_assignment -to HEX4[5] PIN_V23
set_location_assignment -to HEX4[6] PIN_W25

set_location_assignment -to HEX5[0] PIN_V25
set_location_assignment -to HEX5[1] PIN_AA28
set_location_assignment -to HEX5[2] PIN_Y27
set_location_assignment -to HEX5[3] PIN_AB27
set_location_assignment -to HEX5[4] PIN_AB26
set_location_assignment -to HEX5[5] PIN_AA26
set_location_assignment -to HEX5[6] PIN_AA25

project_close
