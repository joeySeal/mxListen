#! /bin/bash

amixer cset numid=3 1
#forces audio output to 3.5mm jack, to output audio from HDMI set to "amixer cset numid=3 2"

port="50501"
#listen port

message="Error message"
#"message" to listen for

file="./sounds/motion_detected_in_hall.mp3"
#audio file to play

#whoami
#export DISPLAY=:0

while true; do
	res="$(nc -l $port)"
	echo "$(date) -- $res" >> ./trigger.log
	if [ "$res" = "$message" ]; then
		mpg321 $file
	fi
done
