#!/bin/sh

mkdir -p /home/thiago/Pictures/Screenshots && grim -g "$(slurp)" "/home/thiago/Pictures/Screenshots/$(date +'%m-%d-%Y-%H%M%S').png"
