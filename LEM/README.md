LEM
===

This is a _Lunar Lander_ game written in APL as published in the August 1977 issue of Byte Magazine. That issue features a special section on APL, including an introduction to the language by its creator Ken Iverson.

_Lunar Lander_ is a category of early computer games that have as their objective to land the Apollo Lunar Module on the moon. The earliest example of the game named `LUNAR` was written in 1969 by then high-school student Jim Storer in the language FOCAL for the DEC PDP-8 minicomputer. David Ahl, while working at DEC, translated the game to BASIC in 1970. Two similar games, also written in BASIC, appeared shortly thereafter called `ROCKET` and `LEM`. Ahl founded the influential _Creative Computing_ magazine and published collections of games written in BASIC in book form; the three original lander games were all published in _Creative Computing_. While the early examples of the game are text-based, graphical versions appeared in the 1970s and most notably Atari released a vector arcade game of the concept in 1979.

This version of _Lunar Lander_ is not directly related to either of the three original games. Byte's audience were primarily computer hobbyists who by 1977 were largely familiar with the BASIC computer language as well as the lander game. The article entitled "Here's APL in Action!" took a BASIC version of the game an translated it to APL to introduce the readers to the language. The BASIC version appeared in the November-December 1976 issue of _Creative Computing_. Bill Cotter, who contributed several games to the magazine, modified a version by an unknown author for publication. Dave Keefe then translated the program to APL for Byte magazine – even keeping the BASIC program's line numbers intact as branch labels in APL.

The game is reproduced here as it is in the Byte article. Two  changes that were suggested in the comments have been incorporated: the BURN function and the array indexing for the PLOT array in the CKSCALE function. Given that array indexing is syntactically anomalous in APL, several approaches existed for it at the time. Keefe used the syntax of APLSV from the IBM 5100 computer, which is syntax that is prevalent in modern APL implementations.

Running the program
-------------------

This program has been tested on Dyalog APL 15.0 on macOS 10.12. There are no system-specific functions and given that this forty-year old program still runs unchanged on a modern APL dialect, it seems unlikely that changes are necessary for other APL implementations. The function `LEM` interactively sets up global variables. `FLY` is the main program. The program assumes `⎕IO←0`.

Below is an example of the game play. An obvious bug is the display of _three_ times to impact, which can easily be fixed in `FLY`:

```
-[6]    L640:TF←|(((|1↑(V×V)-2×D×G)*0.5)+1↑V)÷1+G
+       L640:TF←1↑|(((|1↑(V×V)-2×D×G)*0.5)+1↑V)÷1+G
```

There are a number of interesting features in this game. Engine abuse is detected; gravity and coriolis forces are considered; an engine can be shut off; a flip over of the module can occur.

```
      LEM
THIS IS A LUNAR LANDING PROGRAM
ENTER INITIAL ALTITUDES IN METERS...
⎕:
      3000
ENTER INITIAL VERTICAL VELOCITY (DOWN IS MINUS)...
⎕:
      ¯100
ENTER TRANSVERSE DISTANCE (Y)...
⎕:
      2300
ENTER Y VELOCITY...
⎕:
      ¯580
ENTER HORIZONTAL (X) DISTANCE...
⎕:
      2000
ENTER X VELOCITY...
⎕:
      5
ENTER MAXIMUM BURN RATE...
⎕:
      50
ENTER FUEL CAPACITY...
⎕:
      1500
ENTER PLANETARY FORCES (GRAVITY, Y AND X CORIOLIS COMPONENTS)
⎕:
      .6
ENTER MINIMUM SPECIFIABLE TIME DELTA...
⎕:
      1
ENTER NAME OF YOUR SHIP...
AQUARIUS


***CONTROL TO AQUARIUS... COMMENCE LANDING
AT TIME T = 0 SEC. STATS ARE AS FOLLOWS:
          VERTICAL           TRANSVERSE        HORIZONTAL
DISTANCE  3000.00           2300.00           2000.00 METERS
VELOCITY  ¯100.00           ¯580.00              5.00MTRS/SEC.
FUEL...  1500.00 BURN UNITS
COMPUTED TIME TO IMPACT AT PRESENT RATE...  12.50 20.00 20.00 SECONDS.
ENTER TIME INTERVAL-  10
     VERTICAL (Z) BURN?  0
     TRANSVERSE (Y) BURN? 20
     HORIZONTAL (X) BURN? ¯1



AT TIME T = 10 SEC. STATS ARE AS FOLLOWS:
          VERTICAL           TRANSVERSE        HORIZONTAL
DISTANCE  2030.00          ¯2500.00           2000.00 METERS
VELOCITY   ¯94.00           ¯380.00             ¯5.00MTRS/SEC.
FUEL...  1290.00 BURN UNITS
COMPUTED TIME TO IMPACT AT PRESENT RATE...  8.75 14.00 14.00 SECONDS.
ENTER TIME INTERVAL-  10
     VERTICAL (Z) BURN?  0
     TRANSVERSE (Y) BURN? 0
     HORIZONTAL (X) BURN? 0



AT TIME T = 19 SEC. STATS ARE AS FOLLOWS:
          VERTICAL           TRANSVERSE        HORIZONTAL
DISTANCE  1208.30          ¯5920.00           1955.00 METERS
VELOCITY   ¯88.60           ¯380.00             ¯5.00MTRS/SEC.
FUEL...  1290.00 BURN UNITS
COMPUTED TIME TO IMPACT AT PRESENT RATE...  5.37 8.60 8.60 SECONDS.
ENTER TIME INTERVAL-  10
     VERTICAL (Z) BURN?  0
     TRANSVERSE (Y) BURN? 20
     HORIZONTAL (X) BURN? 0



SCALE:X=500,Y=2500
     -
     -
     -
     -
     -
|||||⎕|||||
     -
     -
     -  ÷
     -
     -
AT TIME T = 25 SEC. STATS ARE AS FOLLOWS:
          VERTICAL           TRANSVERSE        HORIZONTAL
DISTANCE   687.50          ¯7840.00           1925.00 METERS
VELOCITY   ¯85.00           ¯260.00             ¯5.00MTRS/SEC.
FUEL...  1170.00 BURN UNITS
COMPUTED TIME TO IMPACT AT PRESENT RATE...  3.13 5.00 5.00 SECONDS.
ENTER TIME INTERVAL-  10
     VERTICAL (Z) BURN?  0
     TRANSVERSE (Y) BURN? 100
     HORIZONTAL (X) BURN? ¯10

TRANSVERSE ENGINE WILL BLOW IN 10 BURNS

SCALE:X=500,Y=2500
     -
     -
     -
     -
     -
|||||⎕|||||
     -
     -
     -  ÷
     -
     -
AT TIME T = 29 SEC. STATS ARE AS FOLLOWS:
          VERTICAL           TRANSVERSE        HORIZONTAL
DISTANCE   352.30          ¯8480.00           1825.00 METERS
VELOCITY   ¯82.60            ¯60.00            ¯45.00MTRS/SEC.
FUEL...  930.00 BURN UNITS
COMPUTED TIME TO IMPACT AT PRESENT RATE...  1.62 2.60 2.60 SECONDS.
ENTER TIME INTERVAL-
```

Translating this program into modern, idiomatic APL would be an interesting exercise. There are numerous areas that could be improved, the flow control being the most obvious one.
