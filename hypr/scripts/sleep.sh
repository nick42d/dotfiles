#!/bin/sh
swayidle -w \
    timeout 600 'hyprlock' \
    timeout 900 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    before-sleep 'hyprlock'
