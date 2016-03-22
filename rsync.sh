#!/bin/bash

#This file will rsync everything except the steam folder.

user="";

rsync -aPv --modify-window=7200 --exclude '.local/share/Steam/*' --exclude 'Desktop' --exclude '.cache' --exclude ".PlayOnLinux" --exclude 'Downloads' --exclude 'lost+found' --delete --progress --delete /home/*/ '/media/${user}/Mars/Backups/rsync'
