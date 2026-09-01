#!/bin/bash
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1
git -C ~/dev/abdl-vault/ add  . && git -C ~/dev/abdl-vault/ commit -m "$(date)" && git -C ~/dev/abdl-vault/ push
