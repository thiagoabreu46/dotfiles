#!/bin/env bash

FG=#fc6d8c
BG=#5d0c5e
DZEN2=/bin/dzen2
SEPARATOR="|"
D_ICON=""
U_ICON=""
T_ICON=""
M_ICON=""

while true
do echo  $SEPARATOR $(curl wttr.in/Brazil?format=3) $SEPARATOR $M_ICON $(mpc | head -n1) $SEPARATOR $T_ICON $(uptime -p) $SEPARATOR $U_ICON $USER $SEPARATOR $D_ICON $(date) $SEPARATOR | dzen2 -x 85 -y 877 -w 1400 -p -ta r -fg $FG -bg $BG
   sleep 1s
done

