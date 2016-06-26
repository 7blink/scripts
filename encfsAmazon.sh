#!/bin/bash

#Mount cleartext folder "testing1" as cyphertext "testing2"
encfs --reverse ~/zEncrypted/testing1 ~/zEncrypted/testing2

#Mount amazon cloud drive
acd_cli mount ~/zAmazon

#Upload Encrypted text
acd_cli upload ~/zEncrypted/testing2 /

#Mount cyphertext cloud folder as cleartext folder "testing3"
ENCFS6_CONFIG=~/zEncrypted/testing1/.encfs6.xml encfs ~/zAmazon/testing2 ~/zEncrypted/testing3


read -p "File upload now complete."

read -p "Press enter to unmount everything"

sudo umount ~/zEncrypted/testing3

acd_cli umount ~/zAmazon

sudo umount ~/zEncrypted/testing2

read -p "Folders are now unmounted.  Press enter to exit."
