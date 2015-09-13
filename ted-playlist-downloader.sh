#!/bin/bash

curl "$1" | hxnormalize -xe | hxselect h9 a.playlist-talks__play | grep -oP 'href="\K.+?(?=")' | while read -r line; 
do 
	link="https://www.ted.com""$line"; 
	youtube-dl -f high "$link"
done;
