#!/bin/bash


# Get current menu bar autohide setting
current=$(defaults read NSGlobalDomain _HIHideMenuBar 2>/dev/null)

if [ "$current" = "1" ]; then
	osascript -e 'tell application "System Events" to tell dock preferences to set autohide menu bar to true'
else
	osascript -e 'repeat while true' -e 'delay 0.1' -e 'tell application "System Events" to set frontApp to name of first application process whose frontmost is true' -e 'tell application "System Events" to tell dock preferences to set autohide menu bar to (frontApp is not "Finder")' -e 'end repeat'
fi

