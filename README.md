# ted-playlist-downloader
This is a quick bash script for downloading TED Playlists. Use it at your own risk, as it was created in a rush in a few minutes. 

This script should work on most modern Ubuntu-based Linux Desktop distributions (as of September 2015).

###Prerequisites:
* curl
* html-xml-utils
* youtube-dl

To install the prerequisites on a Debian(Ubuntu) based system, just do this: 

    sudo apt-get install html-xml-utils curl python-pip
    sudo pip install youtube-dl

###Running the script
Run the script by providing it an argument for the URL of the TED Playlist you wish to download.

For exmample, if you wish to download this playlist : "https://www.ted.com/playlists/211/the_art_of_meaningful_conversa", then just do it as follows:
 
    ./ted-playlist-downloader.sh https://www.ted.com/playlists/211/the_art_of_meaningful_conversa
