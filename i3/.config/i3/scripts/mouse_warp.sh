#!/bin/bash

WINDOW=`/usr/bin/xdotool getwindowfocus`

# set output so that each line creates a varable
# WIDTH and HEIGHT are set here
eval `xdotool getwindowgeometry --shell $WINDOW`

if [[ "$WIDTH" -gt "1" && "$HEIGHT" -gt "1" ]]
then
# move mouse to centre of window
	/usr/bin/xdotool mousemove -window $WINDOW $(($WIDTH/2)) $(($HEIGHT/2))
#else
#	/usr/bin/xdotool mousemove 
# current_monitor.sh can only determine the monitor that the mouse is on 
# find how to get focused output then how to convert output to dimensions then how to move mouse to centre of the different screen
# hacky way would be to force mousemove to pos 1 or greater then (pos cannot be less then 1) and if pos was less then 1 before move to centre of screen (xrandr --current can be used)
# Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
# Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)
# might require 2 xdotool mousemoves
fi
