#!/bin/bash

#run only as sudo 

if [[ ("$1" != NULL ) && ( "$1" > "0" ) && ( "$1" < "1809" ) ]]
then 
    echo "$1" > /sys/class/backlight/intel_backlight/brightness
    echo "Brightness changed to $1."
else 
    echo 'Usage: light [0 < number < 1809]'
fi
