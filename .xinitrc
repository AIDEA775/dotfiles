#! /bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

nitrogen --restore
conky -c ~/.conkyrc &

exec i3

