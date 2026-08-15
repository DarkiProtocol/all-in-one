#!/bin/bash
# health-check.sh - System Health Check

echo "🏥 SYSTEM HEALTH CHECK"
echo "━━━━━━━━━━━━━━━━━━━━"

# Check CPU
CPU=$(top -bn1 | grep 'Cpu(s)' | awk '{print $2}')
if (( $(echo "$CPU > 80" | bc -l) )); then
    echo "⚠️  CPU Usage: ${CPU}% (HIGH)"
else
    echo "✅ CPU Usage: ${CPU}%"
fi

# Check RAM
RAM=$(free | grep Mem | awk '{print ($3/$2) * 100}')
if (( $(echo "$RAM > 80" | bc -l) )); then
    echo "⚠️  RAM Usage: ${RAM}% (HIGH)"
else
    echo "✅ RAM Usage: ${RAM}%"
fi

# Check Disk
DISK=$(df -h / | awk 'NR==2{print $5}' | sed 's/%//')
if [ $DISK -gt 80 ]; then
    echo "⚠️  Disk Usage: ${DISK}% (HIGH)"
else
    echo "✅ Disk Usage: ${DISK}%"
fi

# Check Services
echo ""
echo "📋 Service Status:"
systemctl status ssh | grep Active | sed 's/Active:/  SSH:/'
systemctl status nginx 2>/dev/null | grep Active | sed 's/Active:/  Nginx:/' || echo "  Nginx: Not installed"
systemctl status docker 2>/dev/null | grep Active | sed 's/Active:/  Docker:/' || echo "  Docker: Not installed"
