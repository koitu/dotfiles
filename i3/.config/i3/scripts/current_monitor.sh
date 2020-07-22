#!/bin/bash

# token: any complete 
# sed: -n suppress output -r regex exteneded
# ^ matches beginning of the line
# somehow matches word before
# . matches any character but \n
# * matches all that agree with previous token
# .* matches all characters
# $ matches end of line
# \1 change to the matched characters within first ()

# OFFSET
# \+ matches a + character
# [-0-9] matches - or any number 0-9
# + matches all that agree with previous token more then once???
# OFFSET="\+([-0-9]+)\+([-0-9]+)"
eval "$(xdotool getmouselocation --shell)"

# $(expr $W + $W) is the same as $(($W+$W))

while read name width height xoff yoff
do
    if [ "${X}" -ge "$xoff" \
      -a "${Y}" -ge "$yoff" \
      -a "${X}" -lt "$(($xoff+$width))" \
      -a "${Y}" -lt "$(($yoff+$height))" ]
    then
        monitor=$name
        break
    fi
done < <(xrandr | grep -w connected | sed -r "s/^([^ ]*).*\b([-0-9]+)x([-0-9]+)\+([-0-9]+)\+([-0-9]+).*$/\1 \2 \3 \4 \5/" | sort -nk 4,5)

echo $monitor
#   # If we found a monitor, echo it out, otherwise print an error.
#   if [ ! -z "$monitor" ]
#   then
#     echo $monitor
#     exit 0
#   else
#     echo "Couldn't find any monitor for the current window." >&2
#     exit 1
#   fi
