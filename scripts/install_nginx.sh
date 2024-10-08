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

# Check if Nginx started successfully
if systemctl status nginx | grep -q "active (running)"; then
    echo "Nginx is running."
else
    echo "Failed to start Nginx."
    exit 1
fi
