#!/bin/bash
mapfile -t displays < <(xrandr | grep ' connected')
get_date='`date +"%Y%m%d-%H%M%S"`'
for (( i=0; i<${#displays[@]}; i++)); do
  name=`echo ${displays[i]} | cut -d " " -f 1`
  crop=`echo ${displays[i]} | cut -d " " -f 3`
  echo import -silent -window root -crop ${crop} \"${name}-${get_date}.png\"
done
