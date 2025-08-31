#!/bin/bash

# generate colors
wal -nst -i "$1"

ln -sf "$1" "$HOME/.config/hypr/.wallpaper-current"

# reload waybar
pkill -SIGUSR2 waybar
