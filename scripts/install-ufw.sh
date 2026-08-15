#!/bin/bash
# install-ufw.sh - Setup UFW Firewall

echo "🚨 Setting up UFW Firewall..."
apt update
apt install -y ufw
ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw --force enable
ufw status verbose
echo "✅ UFW configured!"
