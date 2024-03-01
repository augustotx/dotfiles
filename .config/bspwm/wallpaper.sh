#!/bin/bash

## Kill and start video background
kill xwinwrap
while pgrep -u $UID -x xwinwrap >/dev/null; do sleep 1; done
xwinwrap -fs -fdt -ni -b -nf -- mpv --input-ipc-server=/tmp/mpvsocket --loop --mute --pause -wid WID ~/.config/bspwm/backgrounds/cat_aesthetic.mp4 &

## Wait for xwinwrap to start properly
sleep 1

## Function to pause the video playback
pause_play() {
    echo '{"command": ["set_property", "pause", true]}' | socat - /tmp/mpvsocket
}

## Function to play the video playback
play_play() {
    echo '{"command": ["set_property", "pause", false]}' | socat - /tmp/mpvsocket
}

## Check fullscreen state initially and act accordingly
if [ "$(bspc query -N -n .fullscreen)" ]; then
    pause_play
else
    play_play
fi

## Subscribe to window events and act accordingly
bspc subscribe node_state | while read -r event; do
    if echo "$event" | grep -q "fullscreen on"; then
        pause_play
    elif echo "$event" | grep -q "fullscreen off"; then
        play_play
    fi
done
