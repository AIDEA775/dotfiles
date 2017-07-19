#! /bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

nitrogen --restore
compton -b
conky -c ~/.conkyrc &

exec i3

