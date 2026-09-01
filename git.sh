#!/bin/bash
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1
git -C /home/ypathan/dev/ypathan-vault add  . && git -C /home/ypathan/dev/ypathan-vault commit -m "$(date)" && git -C /home/ypathan/dev/ypathan-vault push
