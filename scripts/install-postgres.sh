#!/bin/bash
# install-postgres.sh - Install PostgreSQL

echo "🐘 Installing PostgreSQL..."
apt update
apt install -y postgresql postgresql-contrib
systemctl enable postgresql
systemctl start postgresql
echo "✅ PostgreSQL installed!"
psql --version
