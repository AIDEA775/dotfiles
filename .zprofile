export PATH=$HOME/bin:$PATH

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx -- -keeptty -nolisten tcp > /tmp/Xorg.log 2>&1

	# Sway/Wayland
	#export XKB_DEFAULT_LAYOUT=us
	#export XKB_DEFAULT_VARIANT=colemak
	#export XKB_DEFAULT_OPTIONS=grp:alt_shift_toggle
	#export SWAY_CURSOR_THEME=Numix-Cursor

	#export GDK_BACKEND=wayland
	#export CLUTTER_BACKEND=wayland
	#export QT_QPA_PLATFORM=wayland-egl
	#export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
	#export ECORE_EVAS_ENGINE=wayland_egl
	#export ELM_ENGINE=wayland_egl
	#export SDL_VIDEODRIVER=wayland
	#export _JAVA_AWT_WM_NONREPARENTING=1
	#sway -d 2> sway.log
fi
