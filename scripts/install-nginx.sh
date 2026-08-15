#!/bin/bash
# install-nginx.sh - Install Nginx

echo "🌐 Installing Nginx..."
apt update
apt install -y nginx
systemctl enable nginx
systemctl start nginx
echo "✅ Nginx installed!"
nginx -v
