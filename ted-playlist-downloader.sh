#!/bin/bash

#First extract the playlist title and then create a directory based on that name and cd into it
playlist_title=`curl "$1" | hxnormalize -xe | hxselect -c title | grep -oP ".+(?=\|\ Playlist.+)"`
mkdir "$playlist_title"
cd "$playlist_title"

#Now, extract all the video URLs from the playlist and download them in a loop using youtube-dl 
curl "$1" | hxnormalize -xe | hxselect h9 a.playlist-talks__play | grep -oP 'href="\K.+?(?=")' | while read -r line; 
do 
	link="https://www.ted.com""$line"; 
	youtube-dl -f high "$link"
done;
