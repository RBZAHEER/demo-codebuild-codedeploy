#!/bin/bash
# Update package index
yum update -y

# Install Nginx if not already installed
if ! command -v nginx &> /dev/null; then
    yum install -y nginx
fi

# Start Nginx service
systemctl start nginx

# Enable Nginx to start on boot
systemctl enable nginx

# Check if Nginx started successfully
if systemctl status nginx | grep -q "active (running)"; then
    echo "Nginx is running."
else
    echo "Failed to start Nginx."
    exit 1
fi
