#!/bin/bash

startxfce4 &
polybar main &

if pgrep -x "xfwm4" > /dev/null
then
	killall xfwm4
fi


sxhkd &
picom &
. "${HOME}/.config/bspwm/colors.sh"

#Other application can be added here to autostart
