#!/bin/bash

LOCAL_DIR="/home/ypathan/dev/abdl-vault"
REMOTE_DIR="ypathan@yousuf.life:/home/ypathan/notes/"
EXCLUDES=(
  "--exclude=.git/"
  "--exclude=.obsidian"
  "--exclude=Excalidraw/"
)

echo "Pushing local-only files upstream..."
rsync -avzP --delete --checksum "${EXCLUDES[@]}" "$LOCAL_DIR" "$REMOTE_DIR"
