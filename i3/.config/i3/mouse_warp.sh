#!/bin/bash

WINDOW=`/usr/bin/xdotool getwindowfocus`

# this brings in variables WIDTH and HEIGHT
eval `xdotool getwindowgeometry --shell $WINDOW`

X=`expr $WIDTH / 2`
Y=`expr $HEIGHT / 2`

/usr/bin/xdotool mousemove -window $WINDOW $X $Y
