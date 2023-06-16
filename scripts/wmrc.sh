#!/bin/sh

run() {
	if ! pgrep -f "$1" ; then
		"$@"
	fi
}

if [[ "$DESKTOP_SESSION" != "awesome" ]]; then
	if [ -f "~/.fehbg" ]; then
		~/.fehbg
	fi
fi

/usr/lib/polkit-kde-authentication-agent-1 &
run picom -b
run nm-applet &
run udiskie --tray &
run blueman-applet &
run mate-power-manager &
run caffeine &
run xfce4-screensaver &
run pasystray &
