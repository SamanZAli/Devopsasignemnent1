#!/bin/bash

# Making a backup of configuration file
sudo cp /etc/sysctl.conf /etc/sysctl.conf.bak

# Increasing the maximum number of connections
echo "net.core.somaxconn=4096" | sudo tee -a /etc/sysctl.conf

# Applying the change
sudo sysctl -p

# Verifying the change
sysctl net.core.somaxconn