#!/bin/sh
swayidle -w \
    timeout 600 'swaylock -f --screenshots --fade-in 0.1 --effect-pixelate 15' \
    timeout 900 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    before-sleep 'swaylock -f --screenshots --fade-in 0.1 --effect-pixelate 15'
