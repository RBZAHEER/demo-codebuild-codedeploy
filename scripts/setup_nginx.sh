# Clear the existing content in the destination
rm -rf /var/www/html/*

#!/bin/bash

# Ensure the script itself has execute permissions
chmod +x /opt/codedeploy-agent/deployment-root/deployment-archive/scripts/setup_nginx.sh

# Start Nginx
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Check Nginx status
sudo systemctl status nginx
