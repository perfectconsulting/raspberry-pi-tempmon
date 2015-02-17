#! /usr/bin/env bash
now=$(date +"%d-%m-%y %H:%M:%S")
temp=$(/opt/vc/bin/vcgencmd measure_temp)
idle=`vmstat 2 3 | tail -n1 | sed "s/\ \ */\ /g" | cut -d' ' -f 16`
cpu=$(ps aux | awk {'sum+=$3;print sum'} | tail -n 1)
echo "${now} CPU ${temp:5} @ $cpu%"
