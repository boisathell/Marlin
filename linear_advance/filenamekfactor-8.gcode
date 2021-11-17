; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: pronter
; Filament: filament name
; Created: Tue Nov 16 2021 00:16:54 GMT-0600 (CST)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 185 °C
; Bed Temperature = 60 °C
; Retraction Distance = 3 mm
; Layer Height = 0.2 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 260 mm
; Bed Size Y = 295 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 3600 mm/min
; Movement Speed = 3600 mm/min
; Retract Speed = 1500 mm/min
; Unretract Speed = 1500 mm/min
; Printing Acceleration = 2000 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.2
; Factor Stepping = 0.01
; Test Line Spacing = 3 mm
; Test Line Length Slow = 30 mm
; Test Line Length Fast = 60 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = false
; Print Size X = 130 mm
; Print Size Y = 85 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = M420 S1 ; Leveling ON
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 4 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
T0 ; Switch to tool 0
M104 S185 ; Set nozzle temperature (no wait)
M190 S60 ; Set bed temperature (wait)
M851 X-9.80 Y17.65 Z-1.7
G28 ; Home all axes
G1 Z5 F100 ; Z raise
M109 S185 ; Wait for nozzle temp
M420 S1 ; Leveling ON; Activate bed leveling compensation
M204 P2000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X130 Y147.5 F3600 ; move to start
G1 Z0.2 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X65 Y105 F3600 ; move to start
G1 X65 Y190 E8.4813 F1800 ; print line
G1 X65.72 Y190 F3600 ; move to start
G1 X65.72 Y105 E8.4813 F1800 ; print line
G1 E-3 F1500 ; retract
;
; print anchor frame
;
G1 X75 Y102 F3600 ; move to start
G1 E3 F1500 ; un-retract
G1 X75 Y168 E2.8976 F1200 ; print line
G1 X75.48 Y168 F3600 ; move to start
G1 X75.48 Y102 E2.8976 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X195 Y102 F3600 ; move to start
G1 E3 F1500 ; un-retract
G1 X195 Y168 E2.8976 F1200 ; print line
G1 X194.52 Y168 F3600 ; move to start
G1 X194.52 Y102 E2.8976 F1200 ; print line
G1 E-3 F1500 ; retract
;
; start the Test pattern
;
G4 P4000 ; Pause (dwell) for 2 seconds
G1 X75 Y105 F3600 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y105 E1.1974 F1200 ; print line
G1 X165 Y105 E2.3947 F3600 ; print line
G1 X195 Y105 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y108 F3600 ; move to start
M900 K0.01 ; set K-factor
M117 K0.01 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y108 E1.1974 F1200 ; print line
G1 X165 Y108 E2.3947 F3600 ; print line
G1 X195 Y108 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y111 F3600 ; move to start
M900 K0.02 ; set K-factor
M117 K0.02 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y111 E1.1974 F1200 ; print line
G1 X165 Y111 E2.3947 F3600 ; print line
G1 X195 Y111 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y114 F3600 ; move to start
M900 K0.03 ; set K-factor
M117 K0.03 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y114 E1.1974 F1200 ; print line
G1 X165 Y114 E2.3947 F3600 ; print line
G1 X195 Y114 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y117 F3600 ; move to start
M900 K0.04 ; set K-factor
M117 K0.04 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y117 E1.1974 F1200 ; print line
G1 X165 Y117 E2.3947 F3600 ; print line
G1 X195 Y117 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y120 F3600 ; move to start
M900 K0.05 ; set K-factor
M117 K0.05 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y120 E1.1974 F1200 ; print line
G1 X165 Y120 E2.3947 F3600 ; print line
G1 X195 Y120 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y123 F3600 ; move to start
M900 K0.06 ; set K-factor
M117 K0.06 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y123 E1.1974 F1200 ; print line
G1 X165 Y123 E2.3947 F3600 ; print line
G1 X195 Y123 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y126 F3600 ; move to start
M900 K0.07 ; set K-factor
M117 K0.07 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y126 E1.1974 F1200 ; print line
G1 X165 Y126 E2.3947 F3600 ; print line
G1 X195 Y126 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y129 F3600 ; move to start
M900 K0.08 ; set K-factor
M117 K0.08 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y129 E1.1974 F1200 ; print line
G1 X165 Y129 E2.3947 F3600 ; print line
G1 X195 Y129 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y132 F3600 ; move to start
M900 K0.09 ; set K-factor
M117 K0.09 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y132 E1.1974 F1200 ; print line
G1 X165 Y132 E2.3947 F3600 ; print line
G1 X195 Y132 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y135 F3600 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y135 E1.1974 F1200 ; print line
G1 X165 Y135 E2.3947 F3600 ; print line
G1 X195 Y135 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y138 F3600 ; move to start
M900 K0.11 ; set K-factor
M117 K0.11 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y138 E1.1974 F1200 ; print line
G1 X165 Y138 E2.3947 F3600 ; print line
G1 X195 Y138 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y141 F3600 ; move to start
M900 K0.12 ; set K-factor
M117 K0.12 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y141 E1.1974 F1200 ; print line
G1 X165 Y141 E2.3947 F3600 ; print line
G1 X195 Y141 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y144 F3600 ; move to start
M900 K0.13 ; set K-factor
M117 K0.13 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y144 E1.1974 F1200 ; print line
G1 X165 Y144 E2.3947 F3600 ; print line
G1 X195 Y144 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y147 F3600 ; move to start
M900 K0.14 ; set K-factor
M117 K0.14 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y147 E1.1974 F1200 ; print line
G1 X165 Y147 E2.3947 F3600 ; print line
G1 X195 Y147 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y150 F3600 ; move to start
M900 K0.15 ; set K-factor
M117 K0.15 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y150 E1.1974 F1200 ; print line
G1 X165 Y150 E2.3947 F3600 ; print line
G1 X195 Y150 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y153 F3600 ; move to start
M900 K0.16 ; set K-factor
M117 K0.16 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y153 E1.1974 F1200 ; print line
G1 X165 Y153 E2.3947 F3600 ; print line
G1 X195 Y153 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y156 F3600 ; move to start
M900 K0.17 ; set K-factor
M117 K0.17 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y156 E1.1974 F1200 ; print line
G1 X165 Y156 E2.3947 F3600 ; print line
G1 X195 Y156 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y159 F3600 ; move to start
M900 K0.18 ; set K-factor
M117 K0.18 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y159 E1.1974 F1200 ; print line
G1 X165 Y159 E2.3947 F3600 ; print line
G1 X195 Y159 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y162 F3600 ; move to start
M900 K0.19 ; set K-factor
M117 K0.19 ; 
G1 E3 F1500 ; un-retract
G1 X105 Y162 E1.1974 F1200 ; print line
G1 X165 Y162 E2.3947 F3600 ; print line
G1 X195 Y162 E1.1974 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X75 Y165 F3600 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X105 Y170 F3600 ; move to start
G1 E3 F1500 ; un-retract
G1 X105 Y190 E0.7982 F1200 ; print line
G1 E-3 F1500 ; retract
G1 X165 Y170 F3600 ; move to start
G1 E3 F1500 ; un-retract
G1 X165 Y190 E0.7982 F1200 ; print line
G1 E-3 F1500 ; retract
G1 Z0.3 F1200 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
G1 Z30 X260 Y295 F3600 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;