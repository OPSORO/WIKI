#!/bin/sh

#https://www.berriart.com/blog/2016/11/using-ffmpeg-web-ambient-videos/

# ffmpeg -i hero-video-fcp.mov -c:v libtheora -an -s 720x480 hero-video.ogv # Convert to OGV


#echo "param:       " $1
#echo "param no ext:" ${1%.*}

ffmpeg -i $1 -c:v h264 -an -s 720x480 -b:v 1000k ${1%.*}-output.mp4 # Convert to MP4
ffmpeg -i $1 -c:v libvpx -an -s 720x480 -b:v 1000k ${1%.*}-output.webm # Convert to Webm
