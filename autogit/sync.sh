#!/bin/bash
git add --all
sleep 1
git commit -m "Automated sync: $gstatus"
sleep 1
git pull --rebase
sleep 1
git push
git fetch
gstatus=`git status`
gfetch=`git fetch`
notify-send 'git fetch' " $gfetch"
notify-send 'git sync' " $gstatus"
