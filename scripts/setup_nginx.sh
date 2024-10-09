#!/bin/bash

# Grant execute permissions to this script (not necessary if already executed)
chmod +x /home/ubuntu/scripts/setup_nginx.sh

# Install Nginx
apt update
apt install -y nginx

# Start Nginx and enable it to run on boot
systemctl start nginx
systemctl enable nginx 

# Ensure Nginx is running
if systemctl status nginx | grep "active (running)"; then
    echo "Nginx is running."
else
    echo "Failed to start Nginx."
    exit 1  # Exit with an error code if Nginx fails to start
fi
