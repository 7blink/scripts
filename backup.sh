#!/bin/bash

#this is designed to backup a folder and encrypt it
filename1="";
outputname1="";
outputname2="";

#backup and encrypt password
cd ImportantDocs
rm -rf backup
mkdir backup

gpg --cipher-algo AES256 -c $filename1
mv ${filename1}.gpg backup/${outputname1}$(date +%Y%m%d-%H%M%S).dat

#backup and encrypt YNAB
tar -czvf backup.tar.gz My\ Budget~B0EB4F59.ynab4
gpg --cipher-algo AES256 -c backup.tar.gz
mv backup.tar.gz.gpg backup/${outputname2}$(date +%Y%m%d-%H%M%S).dat
rm backup.tar.gz
