#!/bin/bash

echo -e "Battery: \c "
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage" | sed s/percentage//g | sed s/://g
