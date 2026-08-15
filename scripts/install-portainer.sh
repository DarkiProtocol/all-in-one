#!/bin/bash
# install-portainer.sh - Install Portainer

echo "🎯 Installing Portainer..."
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
echo "✅ Portainer installed!"
echo "🌐 Access at: https://$(curl -s ifconfig.me):9443"
