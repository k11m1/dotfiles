#!/bin/bash

TO="$1"

WORKPLACE=`i3-msg -t get_workspaces | jq | grep -b2  '"focused": true' | head -n 1 | tr " " "\n" | tail -n 1 | tr '",' ' '`

echo got $TO and $WORKSPLACE

if [ $TO -ne $WORKPLACE ]; then
    i3 workspace $TO
else
    i3 workspace $(($TO + 10))
fi

