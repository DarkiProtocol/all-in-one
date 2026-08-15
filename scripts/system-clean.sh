#!/bin/bash
# system-clean.sh - Clean System

echo "🧹 Cleaning System..."
apt autoremove -y
apt autoclean
journalctl --vacuum-size=100M
rm -rf /tmp/*
rm -rf ~/.cache/*
echo "✅ System cleaned!"
df -h /
