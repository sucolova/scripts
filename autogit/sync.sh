#!/bin/bash

gstatus=`git status --porcelain`
if [ ${#gstatus} -ne 0 ]
then
	git add --all
	sleep 1
	git commit -m "Automated sync: $gstatus"
	sleep 1
	git pull --rebase
	sleep 1
	git push
fi
gstatus=`git status`
notify-send 'git sync' " $gstatus"
