#!/bin/bash

#remove all 0kb files - mencoder (below) dies when it comes across 0kb files
find /home/pi/timelapse -empty -type f -delete

#gather *.jpgs into a video file @ 15fps
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=16/9:vbitrate=2160000 -vf scale=1920:1080 -o /home/pi/timelapse/tlcam.avi -mf type=jpeg:fps=15 mf:///home/pi/timelapse/*.jpg

#create date directory
mkdir "/home/pi/tl/"$(date +\%Y%m%d)
cd "/home/pi/tl/"$(date +\%Y%m%d)

#move all jpgs to date directory
find /home/pi/timelapse -type f -name "*.jpg" -exec mv {} ./ \;

#delete all jpgs from timelapse
find /home/pi/timelapse -type f -name "*.jpg" -exec rm {} \;
