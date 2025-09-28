#!/bin/bash

source "$HOME/.config/user-dirs.dirs"
output_folder="$XDG_PICTURES_DIR/screenshots"

case $1 in
r)
  hyprshot -m region -o $output_folder # region
  ;;
w)
  hyprshot -m window -o $output_folder # window
  ;;
o)
  hyprshot -m output -o $output_folder # monitor
  ;;
*)
  notify-send "hyprshot failed: invalid mode: $1"
  ;;
esac
