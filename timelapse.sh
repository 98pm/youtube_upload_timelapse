#!/bin/bash

fswebcam -r 1280x720 -d /dev/video0 -S 15 --set brightness=60% --set contrast=13% --jpeg 95 -p MJPEG -q --log syslog "/home/pi/timelapse/"$(date +\%H)-$(date +\%M)-$(date +\%S).jpg
sleep 19s
fswebcam -r 1280x720 -d /dev/video0 -S 15 --set brightness=60% --set contrast=13% --jpeg 95 -p MJPEG -q --log syslog "/home/pi/timelapse/"$(date +\%H)-$(date +\%M)-$(date +\%S).jpg
sleep 18s
fswebcam -r 1280x720 -d /dev/video0 -S 15 --set brightness=60% --set contrast=13% --jpeg 95 -p MJPEG -q --log syslog "/home/pi/timelapse/"$(date +\%H)-$(date +\%M)-$(date +\%S).jpg
