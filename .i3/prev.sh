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
prev_workspace=$((focused_workspace-1))

if [ 1 -le $prev_workspace ]; then
    i3-msg workspace "${name[$prev_workspace]}"
else
    i3-msg workspace "${name[8]}"
fi
