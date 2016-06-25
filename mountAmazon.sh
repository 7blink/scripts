#!/bin/bash

acd_cli mount ~/zAmazon

read -p "The Amazon Cloud Drive is now mounted"

read -p "Press Enter to umount folder"

acd_cli umount ~/zAmazon

read -p "Press Enter to exit"
