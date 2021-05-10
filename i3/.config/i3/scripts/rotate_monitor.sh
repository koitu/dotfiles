#!/bin/bash

xrandr --output $(i3-msg -t get_workspaces | jq -r 'map(select(.focused))[0].output') --rotate $1
