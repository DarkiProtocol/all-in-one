#!/bin/bash
# minecraft-optimize.sh - Optimize Minecraft

echo "⚡ Optimizing Minecraft Server..."
echo "📝 Adding optimization flags..."
cat > /opt/minecraft/start.sh << 'EOF'
#!/bin/bash
java -Xmx2G -Xms2G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:+UseLargePagesInMetaspace -XX:+UseFastAccessorMethods -jar server.jar nogui
EOF
chmod +x /opt/minecraft/start.sh
echo "✅ Optimization complete!"
