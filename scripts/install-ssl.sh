#!/bin/bash
# install-ssl.sh - Install Let's Encrypt SSL

echo "🔒 Installing Let's Encrypt SSL..."
apt update
apt install -y certbot python3-certbot-nginx
echo "✅ SSL tools installed!"
echo "📝 To get SSL: certbot --nginx -d yourdomain.com"
