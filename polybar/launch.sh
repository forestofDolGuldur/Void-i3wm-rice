#!/usr/bin/env bash

pkill -f polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=eDP-1 polybar example 2>&1 | tee -a /tmp/polybar-eDP-1.log &
MONITOR=HDMI-2 polybar example 2>&1 | tee -a /tmp/polybar-HDMI-2.log &
