#!/bin/bash

#this is designed to update upgrade and then shutdown the system.

echo "Begining Shutdown Process"
echo "Updating the system"
sudo sh -c "apt-get update && apt-get upgrade -y && shutdown -h 1"
