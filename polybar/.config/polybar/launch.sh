#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar-main.log /tmp/polybar-external.log
# polybar top-bar 2>&1 | tee -a /tmp/polybar-main.log & disown

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
echo "monitor ${m}" | tee -a /tmp/polybar-main.log
    MONITOR=$m polybar --reload top-bar | tee -a /tmp/polybar-main.log & disown
  done
else
  polybar --reload top-bar | tee -a /tmp/polybar-main.log & disown
fi

echo "Bars launched..."
