 A SET MSG;V
 →(1=⍎'S',A)/0
 ⍞←MSG
 V←(⍴MSG)↓⍞
 →(∨/V='→')/SS
 ⍎A,'←FIX V'
 →0
SS:⍎'S',A,'←1'
 ⍎A,'←0'
 →0
