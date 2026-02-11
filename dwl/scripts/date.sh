#!/bin/sh

# Script que inicia o texto na minha barra inferior

dzen=/bin/dzen2
scriptsdir=/home/thiago/.config/dwm/scripts
icondir=/home/thiago/.config/dwm/scripts/bar/icons
cal_icon="~/thiago/.config/dwm/scripts/bar/callicon1.txt" 
calendario=$scriptsdir/calendario.sh
date_mod="true"
data="$(date +' %a - %m/%d/%y')"
hora="$(date)" 

echo $cal_icon | echo $data | $dzen \
	-fn "Source Code Pro-11" \
	-fg blue -bg red \
	-h 19 \
	-x 0 \
	-y 1000 \
	-w 960 \
	-ta l \
	-p \
	-xs 2 \
	-e 'button3=exit'
