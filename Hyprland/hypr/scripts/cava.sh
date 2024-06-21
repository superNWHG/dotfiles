#!/bin/sh

CAVA_COMMAND='alacritty --command="cava" --class="alacritty-bg" --option "window.opacity=0" &'
OPENED=false

while true; do
    SPOTIFY_OPENED_COMMAND=$(playerctl -l | rg spotify)
    
    if [ -n "$SPOTIFY_OPENED_COMMAND" ] && [ "$OPENED" = false ]; then
        eval "$CAVA_COMMAND"
        OPENED=true
    elif [ -z "$SPOTIFY_OPENED_COMMAND" ] && [ "$OPENED" = true ]; then
        killall cava
        OPENED=false
    fi
    
    sleep 2
done

