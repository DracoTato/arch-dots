#!/bin/bash

hide-waybar() {
  killall -SIGUSR1 waybar
}

show-waybar() {
  killall -SIGUSR2 waybar
}

set() {
  hide-waybar

  hyprctl keyword decoration:active_opacity 1
  hyprctl keyword decoration:rounding 0
  hyprctl keyword decoration:rounding_power 0
  hyprctl keyword decoration:inactive_opacity 1
  hyprctl keyword general:gaps_out 0
  hyprctl keyword general:gaps_in 0
}

reset() {
  show-waybar

  hyprctl reload
}

case "$1" in
s)
  set
  ;;
r)
  reset
  ;;
t)
  # check if active_opacity is set to 1 (corresponds to set mode)
  # this could lead to issues later on, but you take care of it ^^
  if [[ -n $(hyprctl getoption decoration:active_opacity | grep -F "float: 1.0") ]]; then
    reset
  else
    set
  fi

  ;;
*)
  echo "$0: Invalid param. Usage: $0 [s|r|t]"
  ;;
esac
