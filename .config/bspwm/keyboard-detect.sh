#!/bin/bash
PBPKB="$(xinput --list | grep 'HAILUCK CO.,LTD USB KEYBOARD  ' | awk '{ print $6 }' | cut -d'=' -f2 | cut -d '[' -f1 | cut -d' ' -f1)"
while true; do
	if [ "$(xinput --list | grep -c 'xiudi')" != 0 ]; then
		xinput float "$PBPKB"
	else
		xinput reattach "$PBPKB" 3
	fi
	sleep 2
done
