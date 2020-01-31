#!/bin/bash

BRIGHT=`cat ~/Scripts/brightness.txt`

if [ "$1" = '+' ]; then
    NEWBRIGHT=$(echo "$BRIGHT + 0.05" | bc)
    if [ "$(echo "$NEWBRIGHT > 1.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='1.0'
    fi
elif [ "$1" = '-' ]; then
    NEWBRIGHT=$(echo "$BRIGHT - 0.05" | bc)
    if [ "$(echo "$NEWBRIGHT < 0.0" | bc)" -eq 1 ]; then
        NEWBRIGHT='0.0'
    fi
fi

echo "Changing brightness to $NEWBRIGHT"
echo "$NEWBRIGHT" > ~/Scripts/brightness.txt
xrandr --output eDP-1 --brightness $NEWBRIGHT
