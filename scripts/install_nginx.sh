chmod +x scripts/install_nginx.sh
chmod +x scripts/deploy_nginx.sh

#!/bin/bash
# Update package index
yum update -y

# Install Nginx
yum install -y nginx

# Start Nginx service
systemctl start nginx

# Enable Nginx to start on boot
systemctl enable nginx
