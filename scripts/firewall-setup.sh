#!/bin/bash

# Enabling UFW if it's not already enabled
sudo ufw enable

# Allowing HTTP (port 80) and HTTPS (port 443)
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# Denying all other incoming connections
sudo ufw default deny incoming

# Allowing all outgoing connections
sudo ufw default allow outgoing

# Reloading UFW to apply the rules
sudo ufw reload

# Showing UFW status and rules
sudo ufw status verbose