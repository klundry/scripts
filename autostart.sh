#!/bin/sh
checkbluetooth(){ \
	test=$(bluetooth | grep "on")
	if [ -z "$test" ] 
	then
		return
	fi
	blueman-applet&
}
~/.scripts/remaps &
~/.fehbg &
compton &
unclutter &
sudo powertop --auto-tune &
clipmenud &
kdeconnect-cli &
# ~/.scripts/rldkeynav &
# checkfordl &
redshift &
pulsemixer --set-volume 50 &
flashfocus &
# podentr &
sleep 10
checkbluetooth &
