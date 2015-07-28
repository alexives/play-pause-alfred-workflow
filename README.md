# Play/Pause web music for Alfred 2
This is a workflow for alfred 2. It's purpose is to look through open chrome tabs and when it finds a songza tab, play or pause the music. It does this using an applescript embeded in the info.plist file.

## How does it work?
This workflow utilizes the ability of applescript to execute arbitrary javascript against an open chrome webrowser. 
Based on a list of pre-configured serivces (listed below), it looks through your web browser (currently only google chrome) and executes javascript that will click the play or pause button depending on which one is "visible". This isn't necessarily a good metric, but it's what works right now. Maybe we'll do something fancier in the future.

Personally, I find it useful to be able to pause the music quickly when I get up from my laptop to do something else.

## Installation
Download the latest release from the releases and double click. Alfred should import it automatically. Alternately, clone this repo and symlink it to your "workflows" directory.

## Copyright information and Disclaimer
I have no affliation with any of these media services. I've done all of this with any permissions for these services. I don't think any of them will have a problem being included here. If you represent one of these services, and have a problem being included, contact me and I'll remove you from the list, no questions asked.

[Classical MPR is Copyright Minnesota Public Radio](http://classicalmpr.org)

[MPR News is Copyright Minnesota Public Radio](http://mprnews.org)

[The Current is Copyright Minnesota Public Radio](http://thecurrent.org)

[Songza is Copyright Songza Media, Inc](http://songza.com)

[I Heart Radio is Copyright iHeartMedia, Inc.](http://iheart.com)

### This Software

[Copyright 2015 Alex Ives](http://alex.ives.mn)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.