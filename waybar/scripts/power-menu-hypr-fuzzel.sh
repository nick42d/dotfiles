#!/bin/bash

entries="Logout Suspend Reboot Shutdown"

selected=$(printf '%s\n' $entries | fuzzel -d -l 4 -w 10 | awk '{print tolower($1)}')

case $selected in
  logout)
    # hyprctl dispatch exit;;
    echo "logout";;
  suspend)
    # exec systemctl suspend;;
    echo "suspend";;
  reboot)
    # exec systemctl reboot;;
    echo "reboot";;
  shutdown)
    # exec systemctl poweroff -i;;
    echo "shutdown";;
esac
