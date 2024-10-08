#!/bin/bash
# Make sure scripts are executable
chmod +x /tmp/scripts/install_nginx.sh

# Copy the index.html to the Nginx root directory
cp /tmp/index.html /usr/share/nginx/html/

# Set proper permissions (optional)
chown nginx:nginx /usr/share/nginx/html/index.html

# Check Nginx configuration
nginx -t
if [ $? -ne 0 ]; then
    echo "Nginx configuration test failed. Exiting."
    exit 1
fi

# Restart Nginx to apply changes
systemctl restart nginx
