#!/bin/bash

WINDOW=$(xdotool getwindowfocus)
eval $(xdotool getwindowgeometry --shell $WINDOW)

if [[ $WIDTH -gt 1 && $HEIGHT -gt 1 ]]
then
	xdotool mousemove -window $WINDOW $(($WIDTH/2)) $(($HEIGHT/2))
else
	OUTPUT=$(i3-msg -t get_workspaces | jq -r 'map(select(.focused))[0].output')
	read width height xoff yoff <<< $(xrandr | grep "$OUTPUT" | sed -r "s/^.*\b([-0-9]+)x([-0-9]+)\+([-0-9]+)\+([-0-9]+).*$/\1 \2 \3 \4/")
	xdotool mousemove $(($xoff+($width/2)+1)) $(($yoff+($height/2))) 
fi
