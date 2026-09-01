#!/bin/sh

/opt/homebrew/bin/yabai -m config focus_follows_mouse autofocus
/opt/homebrew/bin/yabai -m config mouse_follows_focus on 

NOW=$(date +"%Y-%m-%d_%H-%M-%S")
echo $NOW >> ~/yabai_log.txt
