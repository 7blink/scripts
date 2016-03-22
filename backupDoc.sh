#!/bin/bash

#This is designed to backup a folder and encrypt it
#This is using duplicity to create incremental backups
#To be stored to the cloud


duplicity --volsize 200 --include /home/$USER/ImportantDocs --include /home/$USER/Pictures --include /home/$USER/Documents --include /home/$USER/sketchbook --exclude "**" "/home/$USER/" "file:///home/${USER}/Desktop/Link to Downloads/backups2"
