#!/bin/bash
# install-go.sh - Install Go 1.21

echo "🐹 Installing Go 1.21..."
wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc
echo "✅ Go installed!"
go version
