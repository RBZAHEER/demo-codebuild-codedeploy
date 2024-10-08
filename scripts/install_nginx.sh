#!/bin/bash
# Update package index
yum update -y

# Install Nginx
yum install -y nginx

# Start Nginx service
systemctl start nginx

# Enable Nginx to start on boot
systemctl enable nginx
