#!/usr/bin/env python
import serial
import io

ser = serial.Serial('/dev/ttyACM0')
print(ser.name)

ser.write('M30 X120 Y120')
lines=[]
lines.append(ser.readline())
lines.append(ser.readline())
lines.append(ser.readline())

print(lines[0])
print(lines[1])
print(lines[2])

ser.close()

