#!/bin/sh

# cmus_notify "$*" &

cmus_notify --title "Now playing: {title} by {artist}" --body "$(printf "<b>Album:</b> {album}\n<b>Duration:</b> {duration}\n<b>File:</b> {file}")" "$*" &
