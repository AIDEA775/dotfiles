#! /bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

nitrogen --restore
compton -b --config ~/.config/compton/config
conky -c ~/.conkyrc &

exec i3 -c ~/.config/i3/config

