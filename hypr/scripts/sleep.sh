#!/bin/sh
swayidle -w\
    timeout 1070 'swaylock -f -C ~/.config/swaylock/config'\
    timeout 770 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    before-sleep '~/.config/sway/scripts/blur-lock'
