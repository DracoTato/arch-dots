#!/bin/bash

cache_path=$HOME/.cache/hyprland-opacity

save_cache() {
  hyprctl getoption decoration:active_opacity | awk '/float/ {print $2}' >"$cache_path"
  hyprctl getoption decoration:inactive_opacity | awk '/float/ {print $2}' >>"$cache_path"
}

toggle() {
  # make a cache if it doesn't exist
  [[ -f $cache_path ]] || save_cache

  current_active=$(hyprctl getoption decoration:active_opacity | awk '/float/ {print $2}')
  current_inactive=$(hyprctl getoption decoration:inactive_opacity | awk '/float/ {print $2}')

  # Toggle active_opacity
  if awk "BEGIN {exit !($current_active < 1)}"; then
    hyprctl keyword decoration:active_opacity 1 1>/dev/null
  else
    cached_active=$(sed -n '1p' $cache_path)
    hyprctl keyword decoration:active_opacity $cached_active 1>/dev/null
  fi

  # Toggle inactive_opacity
  if awk "BEGIN {exit !($current_inactive < 1)}"; then
    hyprctl keyword decoration:inactive_opacity 1 1>/dev/null
  else
    cached_inactive=$(sed -n '2p' $cache_path)
    hyprctl keyword decoration:inactive_opacity $cached_inactive 1>/dev/null
  fi
}

if [[ -z $1 ]]; then
  toggle
elif [[ $1 == "--cache" ]]; then
  save_cache
fi
