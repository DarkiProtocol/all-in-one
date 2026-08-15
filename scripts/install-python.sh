#!/bin/bash
# install-python.sh - Install Python 3.11

echo "🐍 Installing Python 3.11..."
apt update
apt install -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt install -y python3.11 python3.11-dev python3.11-venv python3-pip
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11
python3.11 -m pip install --upgrade pip
echo "✅ Python installed!"
python3.11 --version
