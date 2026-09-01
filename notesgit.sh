#!/bin/bash
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1
git -C /Users/myousuf/dev/ypathan-vault/ add  . && git -C /Users/myousuf/dev/ypathan-vault/ commit -m "$(date)" && git -C /Users/myousuf/dev/ypathan-vault/ push
