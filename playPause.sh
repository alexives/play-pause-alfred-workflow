#! /bin/bash
function googleChromePP() {
	site=$1
	play=$2
	pause=$3
	echo site=$site
	echo play=$play
	echo pause=$pause
	check=$(osascript <<EOF
tell application "Google Chrome"
	set found_tab to false
	repeat with i from (count of windows) to 1 by -1
		repeat with j from (count of tabs of window i) to 1 by -1
			set url_text to URL of tab j of window i
			if url_text contains "$site" then
				set found_tab to true
				tell window i
					execute tab index j javascript "var pause=document.getElementById('$pause');var play;if(pause != null){play=document.getElementById('$play')}else{play=document.getElementsByClassName('$play')[0];pause=document.getElementsByClassName('$pause')[0]} if(pause.style.display!='none'){pause.click()}else{play.click()}"
				end tell
			end if
		end repeat
	end repeat
	if not found_tab then
		make new window
		set URL of (active tab of window 1) to "http://www.mprnews.org/listen"
	end if
end tell
EOF)
}

station=$1
line=$(cat stations.list | grep $station)
site=$(echo $line | cut -d, -f1)
play=$(echo $line | cut -d, -f3)
pause=$(echo $line | cut -d, -f4)
googleChromePP $site $play $pause