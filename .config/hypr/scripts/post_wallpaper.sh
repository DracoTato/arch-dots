#!/bin/bash

# generate colors
wal -nst -i $1

# reload waybar
pkill -SIGUSR2 waybar
