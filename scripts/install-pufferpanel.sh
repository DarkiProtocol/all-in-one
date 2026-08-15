#!/bin/bash
set -e
[ "$(id -u)" -eq 0 ] || { echo "Run as root."; exit 1; }
curl -fsSL https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | bash
apt-get update
apt-get install -y pufferpanel
systemctl enable --now pufferpanel
