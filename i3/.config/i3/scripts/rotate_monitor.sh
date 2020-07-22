#!/bin/bash

xrandr --output $(~/.config/i3/scripts/current_monitor.sh) --rotate $1
