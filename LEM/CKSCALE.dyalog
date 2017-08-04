﻿ CKSCALE;DS1;DS2;PLOT
 →(1000≤1↑D)/0
 →(100≤1↑D)/L1
 '******PREPARE FOR IMPACT'
 →(10≤1↑D)/L1
 '**********FASTEN RETAINING STRAPS'
L1:DS1←¯1↑(0 20 100 500 2500<|1↑1↓D)/4 20 100 500 2500
 DS2←¯1↑(0 20 100 500 2500<|¯1↑D)/4 20 100 500 2500
 'SCALE:X=',(⍕DS2),',Y=',⍕DS1
 PLOT←11 11⍴0
 PLOT[;5]←6
 PLOT[5;]←5
 PLOT[5-(5⌊⌊|D[1]÷DS1)××D[1];5+((5⌊⌊|D[2]÷DS2)××D[2])]←1
 PLOT[5;5]←PLOT[5;5]+2
 ⌽11 11⍴⌽' ÷⎕⌹+|-⎕⎕'[PLOT]
