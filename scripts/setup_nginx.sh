#!/bin/bash

# Make script executable (optional if already set)
chmod +x /home/ec2-user/scripts/setup_nginx.sh

# Update package manager
sudo yum update -y

# Install Nginx if not already installed
sudo yum install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Check Nginx status
if systemctl status nginx | grep "active (running)"; then
    echo "✅ Nginx is running."
else
    echo "❌ Failed to start Nginx."
    exit 1
fi
