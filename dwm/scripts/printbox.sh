#!/bin/sh

mkdir -p ~/pics/screenshots && scrot ~/pics/screenshots/%m-%d-%Y.png --select --line mode=edge
