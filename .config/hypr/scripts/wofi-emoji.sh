#!/bin/bash
cat $HOME/.config/hypr/data/emoji-list.txt | wofi --dmenu | cut -d ' ' -f 1 | tr -d '\n' | wl-copy
