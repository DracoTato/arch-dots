#!/bin/bash

# generate colors
wal -nst -i "$1"

# cache the current wallpaper to be used by hyprlock later
ln -sf "$1" "$HOME/.cache/current-wallpaper"

# reload waybar
pkill -SIGUSR2 waybar
