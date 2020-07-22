#!/bin/bash

WINDOW=`/usr/bin/xdotool getwindowfocus`

# set output so that each line creates a varable
# WIDTH and HEIGHT are set here
eval `xdotool getwindowgeometry --shell $WINDOW`

# move mouse to centre of window
/usr/bin/xdotool mousemove -window $WINDOW $(($WIDTH/2)) $(($HEIGHT/2))
