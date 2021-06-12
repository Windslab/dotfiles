#!/bin/sh

cd ~/
git reset --hard
git pull origin master --allow-unrelated-histories
chmod -R 755 ~/
i3-msg restart
