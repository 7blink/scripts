#!/bin/bash

#This file will rsync everything except the steam folder.

rsync -aPv --modify-window=0 --delete --exclude '.local/share/Steam/*' --exclude 'Desktop' --exclude '.cache' --exclude ".PlayOnLinux" --exclude 'Downloads' --exclude 'zAmazon' --exclude 'lost+found' --delete --progress /home/${USER}/ '/media/drake/Mars/Backups/rsync'
