#!/bin/bash
# Grant execute permissions to this script
chmod +x /home/ubuntu/scripts/setup_nginx.sh

# Install Nginx
apt update
apt install -y nginx
systemctl start nginx
systemctl enable nginx
