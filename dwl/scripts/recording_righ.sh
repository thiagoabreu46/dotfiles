#!/bin/env bash

start=/bin/ffmpeg
mkdir=exec mkdir -p /home/thiago/vid/capture/
#target=

$start -video_size 1600x900 \
       -framerate 60 \
       -f x11grab -i :0.0 \
       -c:v libx264rgb\
       -crf 0 \
       -preset ultrafast \
       -color_range 2 /home/thiago/vid/capture/output.mkv
    if [ "$mkdir" -gt 0 ]; then
	exec $mkdir
    else echo "Are you winning, son?"
	 fi

