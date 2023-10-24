#!/usr/bin/env bash
# License: GPL-3.0
# Author: oDinZu WenKi

# Get screen information
# xdpyinfo | grep "name" Note: $DISPLAY should match the name. e.g. :1
# Get detailed window information about screen specific window
# xwininfo
# Transforming mpeg format into .gif
# ffmpeg -i input.mp4 -vf "fps=10,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop -1 output.gif

# Check if script is already running
check="$(pgrep -fl ffmpeg)"
if [ -n "$check" ]; then
  notify-send -t 1000 "FFmpeg Screen Recording has been stopped"
  killall --user $USER  --ignore-case  --signal INT ffmpeg
else
  notify-send -t 1000 "FFmpeg Screen Recording has been started"
  ffmpeg -f x11grab -video_size 1920x1048 -framerate 60 -i $DISPLAY+0,365 -preset ultrafast $HOME/Videos/"$(date +%d_%m_%H:%M:%S)".mpeg
fi
