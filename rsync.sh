#!/bin/bash

#This file will rsync everything except the steam folder.

user="";

rsync -aP --exclude '.local/share/Steam/*' --exclude 'Desktop' --exclude 'Downloads' --progress --delete /home/*/ '/media/${user}/Mars/Backups/rsync'
