#!/bin/bash
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1
git -C ~/dev/ypathan-vault/ add  . && git -C ~/dev/ypathan-vault/ commit -m "$(date)" && git -C ~/dev/ypathan-vault/ push
