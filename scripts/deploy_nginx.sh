#!/bin/bash
# Copy the index.html to the Nginx root directory
cp /tmp/index.html /usr/share/nginx/html/

# Set proper permissions (optional)
chown nginx:nginx /usr/share/nginx/html/index.html

# Restart Nginx to apply changes
systemctl restart nginx
