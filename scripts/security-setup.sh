#!/bin/bash
# security-setup.sh - Security Hardening

echo "🛡️ Applying Security Hardening..."
apt update
apt install -y fail2ban ufw

# Setup UFW
ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp
ufw allow 80/tcp
ufw allow 443/tcp
ufw --force enable

# SSH Hardening
sed -i 's/#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config
systemctl restart ssh

# Enable fail2ban
systemctl enable fail2ban
systemctl start fail2ban

echo "✅ Security hardened!"
echo "⚠️ SSH password login disabled - use SSH keys!"
