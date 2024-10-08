#!/bin/bash

# Clear the existing content in the destination
rm -rf /var/www/html/*

# Start Nginx
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Check Nginx status
sudo systemctl status nginx
