#!/bin/bash
# system-info.sh - Show System Info

echo "📊 SYSTEM INFORMATION"
echo "━━━━━━━━━━━━━━━━━━━━"
echo "🖥️  Hostname: $(hostname)"
echo "🐧 OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)"
echo "⏱️  Uptime: $(uptime -p)"
echo "🧠 CPU: $(lscpu | grep 'Model name' | cut -d':' -f2 | xargs)"
echo "💾 RAM: $(free -h | grep Mem: | awk '{print $2}')"
echo "💿 Disk: $(df -h / | awk 'NR==2{print $2}')"
echo "🌐 IP: $(curl -s ifconfig.me)"
echo ""
echo "📈 Resource Usage:"
echo "  CPU: $(top -bn1 | grep 'Cpu(s)' | awk '{print $2}')%"
echo "  RAM: $(free -h | grep Mem: | awk '{print $3 "/" $2}')"
echo "  Disk: $(df -h / | awk 'NR==2{print $3 "/" $2 " (" $5 ")"}')"
