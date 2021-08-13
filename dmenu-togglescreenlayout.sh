#!/usr/bin/bash

#I use this script to play media content in my TV.

r=$(echo -e ":b   PC\n:p   HDMI\n:h   Duplicar pantalla" | dmenu -p "Entrada:" -c -l 3 -h -1 -sb "#ffc978")

case "$r" in
     ":b   PC") xrandr --output HDMI-1 --off --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal ;;
     ":p   HDMI") xrandr --output eDP-1 --off --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal ;;
     ":h   Duplicar pantalla") xrandr --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal ;;
esac
