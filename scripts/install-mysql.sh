#!/bin/bash
# install-mysql.sh - Install MySQL 8.0

echo "🗄️ Installing MySQL 8.0..."
apt update
apt install -y mysql-server
systemctl enable mysql
systemctl start mysql
mysql_secure_installation
echo "✅ MySQL installed!"
mysql --version
