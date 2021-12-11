#!/bin/bash
while read p; do
    echo "$p" >> /dev/ttyACM0; 
    sleep 0.1; 
    echo "$p"; 
done < gcode.txt
