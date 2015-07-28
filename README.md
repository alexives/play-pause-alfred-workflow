# Play/Pause web music for Alfred 2
This is a workflow for alfred 2. It's purpose is to look through open chrome tabs and when it finds a songza tab, play or pause the music. It does this using an applescript embeded in the info.plist file.

## How does it work?
This workflow utilizes the ability of applescript to execute arbitrary javascript against an open chrome webrowser. 
Based on a list of pre-configured serivces (listed below), it looks through your web browser (currently only google chrome) and executes javascript that will click the play or pause button depending on which one is "visible". This isn't necessarily a good metric, but it's what works right now. Maybe we'll do something fancier in the future.

Personally, I find it useful to be able to pause the music quickly when I get up from my laptop to do something else.

## Installation
Download the latest release from the releases and double click. Alfred should import it automatically. Alternately, clone this repo and symlink it to your "workflows" directory.

## Copyright information.
I've done all of this with any permissions for these services. I don't think any of them will have a problem being included here. If you represent one of these services, and have a problem being included, contact me and I'll remove you from the list, no questions asked.

````
Classical MPR is (c) Minnesota Public Radio
MPR News is (c) Minnesota Public Radio
The Current is (c) Minnesota Public Radio
Songza is (c) Songza Media, Inc
````