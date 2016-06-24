#!/bin/bash

sudo mount -t ecryptfs ~/zEncrypted ~/zEncrypted -o key=passphrase,ecryptfs_cipher=aes,ecryptfs_key_bytes=32,ecryptfs_passthrough=y,ecryptfs_enable_filename_crypto=n

read -p "The decrypted folder is now mounted"

read -p "Press Enter to Encrypt folder"

sudo umount ~/zEncrypted

read -p "Press Enter to exit"
