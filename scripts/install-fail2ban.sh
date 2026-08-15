#!/bin/bash
# install-fail2ban.sh - Install Fail2ban

echo "🔥 Installing Fail2ban..."
apt update
apt install -y fail2ban
systemctl enable fail2ban
systemctl start fail2ban
echo "✅ Fail2ban installed!"
fail2ban-client status
