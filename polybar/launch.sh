#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

#echo "Bars launched..."

#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar example -c $(dirname $0)/config.ini &

if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
	polybar external -c $(dirname $0)/config.ini &
fi
