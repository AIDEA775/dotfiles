#!/bin/bash

case $BLOCK_BUTTON in
	# scroll up
	4) setxkbmap us -variant altgr-intl ;;

	# scroll down
	5) setxkbmap us -variant colemak
	
esac

echo $(setxkbmap -query | grep "variant" | awk '{print $2}')

exit 0
