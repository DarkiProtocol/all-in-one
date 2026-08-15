#!/bin/bash
# install-minecraft.sh - Install Minecraft Server

echo "🎮 Installing Minecraft Server..."
apt update
apt install -y default-jre screen wget
mkdir -p /opt/minecraft
cd /opt/minecraft
wget https://piston-data.mojang.com/v1/objects/450703d0e9a7b9b4d4e3f2f3f3f3f3f3f3f3f3f3/server.jar -O server.jar
echo "eula=true" > eula.txt
echo "✅ Minecraft server installed!"
echo "📁 Location: /opt/minecraft"
echo "🚀 Start with: screen -S minecraft java -jar /opt/minecraft/server.jar nogui"
