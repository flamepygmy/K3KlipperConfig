[mcu supernovaxy]
serial: /dev/serial/by-id/usb-Klipper_rp2040_E6614C30931F6F2C-if00
restart_method: command

# Stepper Configs
[stepper_x]
# connected to STEPPER1 on SuperNova
step_pin: supernovaxy:gpio2
dir_pin:  !supernovaxy:gpio1
enable_pin: !supernovaxy:gpio3
rotation_distance: 40
microsteps: 32
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_x:virtual_endstop
position_min: -8
position_endstop: 180
position_max: 180
homing_speed: 80.0
homing_retract_dist: 0

[stepper_x1]
# connected to STEPPER2 on SuperNova
step_pin:    supernovaxy:gpio5
dir_pin:     supernovaxy:gpio4
enable_pin: !supernovaxy:gpio6
rotation_distance: 40
microsteps: 32
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_x1:virtual_endstop

[stepper_y]
# connected to STEPPER3 on SuperNova
step_pin:    supernovaxy:gpio11
dir_pin:     supernovaxy:gpio10
enable_pin: !supernovaxy:gpio12
rotation_distance: 40
microsteps: 32
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_y:virtual_endstop
position_min: -2
position_endstop: -2
position_max: 171
homing_speed: 80.0
homing_retract_dist: 0

[stepper_y1]
# connected to STEPPER4 on SuperNova
step_pin:    supernovaxy:gpio14
dir_pin:    !supernovaxy:gpio13
enable_pin: !supernovaxy:gpio15
rotation_distance: 40
microsteps: 32
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_y1:virtual_endstop

# TMC5160 for XY
[tmc5160 stepper_x]
cs_pin: supernovaxy:gpio26
spi_bus: spi0c
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:gpio0
interpolate: false
stealthchop_threshold: 0
run_current: 2.6
driver_SGT: 1
driver_TBL: 2
driver_TOFF: 3
driver_HSTRT: 1
driver_HEND: 3
driver_TPFD: 0

[tmc5160 stepper_x1]
cs_pin: supernovaxy:gpio22
spi_bus: spi0c
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:gpio7
interpolate: false
stealthchop_threshold: 0
run_current: 2.6
driver_SGT: 1
driver_TBL: 2
driver_TOFF: 3
driver_HSTRT: 1
driver_HEND: 3
driver_TPFD: 0

[tmc5160 stepper_y]
cs_pin: supernovaxy:gpio21
spi_bus: spi0c
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:gpio9
interpolate: false
stealthchop_threshold: 0
run_current: 2.6
driver_SGT: 1
driver_TBL: 2
driver_TOFF: 3
driver_HSTRT: 1
driver_HEND: 3
driver_TPFD: 0

[tmc5160 stepper_y1]
cs_pin: supernovaxy:gpio20
spi_bus: spi0c
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:gpio8
interpolate: false
stealthchop_threshold: 0
run_current: 2.6
driver_SGT: 1
driver_TBL: 2
driver_TOFF: 3
driver_HSTRT: 1
driver_HEND: 3
driver_TPFD: 0
