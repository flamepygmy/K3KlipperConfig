[mcu supernovaxy]
serial: /dev/serial/by-id/usb-Klipper_stm32f103xe_6779150000C054281007CC07-if00
restart_method: command

# Stepper Configs
[stepper_x]
# connected to STEPPER1 on SuperNova
step_pin: supernovaxy:PB14
dir_pin:  !supernovaxy:PB13
enable_pin: !supernovaxy:PB15
rotation_distance: 40
microsteps: 128
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_x:virtual_endstop
position_min: -8
position_endstop: 180
position_max: 180
homing_speed: 80.0
homing_retract_dist: 0

[stepper_x1]
# connected to STEPPER2 on SuperNova
step_pin:    supernovaxy:PA9
dir_pin:     supernovaxy:PA8
enable_pin: !supernovaxy:PA10
rotation_distance: 40
microsteps: 128
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_x1:virtual_endstop

[stepper_y]
# connected to STEPPER3 on SuperNova
step_pin:    supernovaxy:PB5
dir_pin:     supernovaxy:PB4
enable_pin: !supernovaxy:PB6
rotation_distance: 40
microsteps: 128
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_y:virtual_endstop
position_min: -2
position_endstop: -2
position_max: 171
homing_speed: 80.0
homing_retract_dist: 0

[stepper_y1]
# connected to STEPPER4 on SuperNova
step_pin:    supernovaxy:PB8
dir_pin:    !supernovaxy:PB7
enable_pin: !supernovaxy:PB9
rotation_distance: 40
microsteps: 128
full_steps_per_rotation: 200
endstop_pin: tmc5160_stepper_y1:virtual_endstop

# TMC5160 for XY
[tmc5160 stepper_x]
cs_pin: supernovaxy:PB0
spi_bus: spi1
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:PB12
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
cs_pin: supernovaxy:PA4
spi_bus: spi1
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:PA15
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
cs_pin: supernovaxy:PA2
spi_bus: spi1
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:PB10
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
cs_pin: supernovaxy:PA1
spi_bus: spi1
sense_resistor: 0.075
diag1_pin: ^!supernovaxy:PB3
interpolate: false
stealthchop_threshold: 0
run_current: 2.6
driver_SGT: 1
driver_TBL: 2
driver_TOFF: 3
driver_HSTRT: 1
driver_HEND: 3
driver_TPFD: 0
