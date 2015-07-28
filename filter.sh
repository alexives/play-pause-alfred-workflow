#! /bin/bash
function googleChromeStationCheck() {
	check=$(osascript <<EOF
tell application "Google Chrome"
	set found_tab to false
	repeat with i from (count of windows) to 1 by -1
		repeat with j from (count of tabs of window i) to 1 by -1
			set url_text to URL of tab j of window i
			if url_text contains "$station" then
				set found_tab to true
				return "true"
			end if
		end repeat
	end repeat
end tell
EOF)
	echo $check
}

echo "<items>"
for station in $(sed -e 's/,.*$//g' stations.list); do
	line=$(cat stations.list | grep "$station")
	name=$(echo $line | cut -d, -f2)
	icon=$(echo $line | cut -d, -f5)

	if [[ ! -z $(googleChromeStationCheck) ]]; then
		query="$1"
		if [[ $name = "$query"* ]] || [[ $station = "$query"* ]] || [[ -z $query ]]; then
			echo "<item uuid=\"$(uuidgen)\" arg=\"$station\" valid=\"YES\">"
			echo "<title>Play/Pause - $name</title>"  
			echo "<subtitle>Play or pause $name open in Google Chrome</subtitle>"  
			echo "<icon>$icon</icon>"
			echo "</item>"   
		fi
	fi
done
echo "</items>"