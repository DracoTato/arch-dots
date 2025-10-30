#!/bin/bash

cache_path="$HOME/.cache/hypr-script-cache"

hide-waybar() {
  killall -SIGUSR1 waybar
}

show-waybar() {
  killall -SIGUSR2 waybar
}

set() {
  hide-waybar

  hyprctl keyword decoration:active_opacity 1
  hyprctl keyword decoration:inactive_opacity 1
  hyprctl keyword general:gaps_out 0
  hyprctl keyword general:gaps_in 0

  echo "s" >"$cache_path"
}

reset() {
  show-waybar

  hyprctl reload

  echo "r" >"$cache_path"
}

case "$1" in
s)
  set
  ;;
r)
  reset
  ;;
t)
  # use set by default if the current state is unknown
  if [ ! -f "$cache_path" ]; then
    # no cache was found
    set
  else
    # set was the last action
    if [ $(grep -F "s" "$cache_path") ]; then
      reset
    else
      set
    fi
  fi

  ;;
*)
  echo "$0: Invalid param. Usage: $0 [s|r|t]"
  ;;
esac
