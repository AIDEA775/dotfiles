if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx -- -keeptty -nolisten tcp > /dev/null 2>&1

	# Sway/Wayland
	#export XKB_DEFAULT_LAYOUT=us
	#export XKB_DEFAULT_VARIANT=colemak
	#export XKB_DEFAULT_OPTIONS=grp:alt_shift_toggle
	#sway -d 2> sway.log
fi
