#!/bin/bash

name[1]="1: one "
name[2]="2: two "
name[3]="3: thr "
name[4]="4: fou "
name[5]="5: fiv "
name[6]="6: six "
name[7]="7: sev "
name[8]="8: eig "

focused_workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused).num')
next_workspace=$((focused_workspace+1))

if [ $next_workspace -le 8 ]; then
    i3-msg workspace "${name[$next_workspace]}"
else
    i3-msg workspace "${name[1]}"
fi
