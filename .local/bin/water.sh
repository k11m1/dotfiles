#!/bin/bash
set +x
TODAY=$(date "+%y-%m-%d")


WATER=0

if [[ -f ~/.local/water/$TODAY ]]; then
    WATER=$(cat ~/.local/water/$TODAY)
fi

declare +i new
(( new = $WATER + 400 ))
# let "new = $WATER + 400"

echo $new > ~/.local/water/$TODAY

notify-send Water "Total water for $TODAY is ${new}ml." -t 2000 -i /usr/share/icons/Papirus-Dark/128x128/apps/waterfox.svg


