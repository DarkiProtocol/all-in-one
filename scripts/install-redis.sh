#!/bin/bash
# install-redis.sh - Install Redis

echo "🔴 Installing Redis..."
apt update
apt install -y redis-server
systemctl enable redis-server
systemctl start redis-server
echo "✅ Redis installed!"
redis-cli --version
