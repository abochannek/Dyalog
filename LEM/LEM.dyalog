﻿ LEM
 'THIS IS A LUNAR LANDING PROGRAM'
 'ENTER INITIAL ALTITUDES IN METERS...'
 A3←⎕
 'ENTER INITIAL VERTICAL VELOCITY (DOWN IS MINUS)...'
 V6←⎕
 'ENTER TRANSVERSE DISTANCE (Y)...'
 D4←⎕
 'ENTER Y VELOCITY...'
 V4←⎕
 'ENTER HORIZONTAL (X) DISTANCE...'
 D5←⎕
 'ENTER X VELOCITY...'
 V5←⎕
 'ENTER MAXIMUM BURN RATE...'
 M←⎕
 'ENTER FUEL CAPACITY...'
 F3←⎕
 'ENTER PLANETARY FORCES (GRAVITY, Y AND X CORIOLIS COMPONENTS)'
 G←3⍴⎕,0,0,0
 'ENTER MINIMUM SPECIFIABLE TIME DELTA...'
 MT←⎕
 'ENTER NAME OF YOUR SHIP...'
 N←⍞
 ' '
 ' '
 '***CONTROL TO ',N,'... COMMENCE LANDING'
 FLY
