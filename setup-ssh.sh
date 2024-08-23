# install dropbear and create custom ssh creds
# Usage: ./setup-ssh.sh

#!/bin/bash

# Create user 'ubuntu' with password 'ubuntu'
useradd -m -p $(openssl passwd -1 ubuntu) ubuntu

# Configure SSH to listen on port 22
sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config

# Restart SSH service
service ssh restart
