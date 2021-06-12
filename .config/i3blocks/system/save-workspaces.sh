#!/bin/sh

if ! [ -d ~/.config/i3/workspaces ] ; then
    mkdir ~/.config/i3/workspaces
fi

for (( i=1; i <= 9; i++ ))
 do
 i3-save-tree --workspace $i > ~/.config/i3/workspaces/workspace-$i.json
done
