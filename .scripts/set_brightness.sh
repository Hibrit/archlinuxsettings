#!/bin/zsh
# Author: hibrit
# Date: 10/06/2020
# Description script to set brightness relatively
# Date Modified: 10/06/2020

# Read the max brightness value in MAX_VALUE
MV=`cat /sys/class/backlight/intel_backlight/max_brightness`
CV=`cat /sys/class/backlight/intel_backlight/brightness`
echo
echo 'Hey there this script will adjust brightness value respectively'
echo
if [ $# -eq 0 ]
then
TS=`python /home/hibrit/.scripts/py_scripts/compute_brightness.py -mv $MV -cv $CV`
elif [ $1 = 'inc' ]
then
TS=`python /home/hibrit/.scripts/py_scripts/compute_brightness.py -mv $MV -cv $CV -inc True`
else
echo argument error
fi

if [ $TS ]
then
echo brightness is setting to $TS
echo $TS > /sys/class/backlight/intel_backlight/brightness
else
echo there was an error
fi
