#!/bin/sh

RET=$(printf "Logout\nReboot\nPoweroff\nCancel" | dmenu -p "Exit Menu")

case $RET in
	Logout) pkill -U "$USER" ;;
	Reboot) doas /sbin/shutdown -r now ;;
	Poweroff) doas /sbin/shutdown -h now ;;
	*) ;;
esac
