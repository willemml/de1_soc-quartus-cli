project_new funstuff -overwrite
# Assign family, device, and top-level file
set_global_assignment -name FAMILY Cyclone
set_global_assignment -name DEVICE 5CSEMA5F31C6N
set_global_assignment -name VHD_FILE switchesleds.vhd
set_global_assignment -name TOP_LEVEL_ENTITY switchesleds
# Assign pins
set_location_assignment -to switches[9] PIN_AE12
set_location_assignment -to switches[8] PIN_AD10
set_location_assignment -to switches[7] PIN_AC9
set_location_assignment -to switches[6] PIN_AE11
set_location_assignment -to switches[5] PIN_AD12
set_location_assignment -to switches[4] PIN_AD11
set_location_assignment -to switches[3] PIN_AF10
set_location_assignment -to switches[2] PIN_AF9
set_location_assignment -to switches[1] PIN_AC12
set_location_assignment -to switches[0] PIN_AB12

set_location_assignment -to leds[9] PIN_Y21
set_location_assignment -to leds[8] PIN_W21
set_location_assignment -to leds[7] PIN_W20
set_location_assignment -to leds[6] PIN_Y19
set_location_assignment -to leds[5] PIN_W19
set_location_assignment -to leds[4] PIN_W17
set_location_assignment -to leds[3] PIN_V18
set_location_assignment -to leds[2] PIN_V17
set_location_assignment -to leds[1] PIN_W16
set_location_assignment -to leds[0] PIN_V16
#
project_close
