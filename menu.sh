#!/bin/bash

# ============================================
# DARK.PROTOCOL VPS MANAGER
# GitHub: https://github.com/discordsensei0/install-languages
# ============================================

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'

clear
echo -e "${PURPLE}"
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║                                                           ║"
echo "║                                                           ║"
echo "║              D A R K . P R O T O C O L                  ║"
echo "║                                                           ║"
echo "║          ⚡ VPS MANAGER BY DARK.PROTOCOL ⚡              ║"
echo "║          📦 install-languages                            ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${WHITE}📋 SYSTEM:${NC} Ubuntu 20.04+ / Debian 11+ | ${WHITE}RAM:${NC} 1GB+"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# ============ MENU SECTIONS ============

echo -e "${GREEN}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║  🐍  PROGRAMMING LANGUAGES                           ║${NC}"
echo -e "${GREEN}╠════════════════════════════════════════════════════════╣${NC}"
echo -e "${GREEN}║${NC}  1)  🐍 Install Python 3.11 + pip              ${GREEN}║${NC}"
echo -e "${GREEN}║${NC}  2)  📦 Install Node.js 20 + npm               ${GREEN}║${NC}"
echo -e "${GREEN}║${NC}  3)  ☕ Install Java (OpenJDK 17)              ${GREEN}║${NC}"
echo -e "${GREEN}║${NC}  4)  🐹 Install Go 1.21                       ${GREEN}║${NC}"
echo -e "${GREEN}║${NC}  5)  🦀 Install Rust                          ${GREEN}║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════╝${NC}"

echo -e "${YELLOW}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${YELLOW}║  🐳  CONTAINERS & VIRTUALIZATION                    ║${NC}"
echo -e "${YELLOW}╠════════════════════════════════════════════════════════╣${NC}"
echo -e "${YELLOW}║${NC}  6)  🐳 Install Docker + Docker Compose       ${YELLOW}║${NC}"
echo -e "${YELLOW}║${NC}  7)  🎯 Install Portainer (Docker UI)         ${YELLOW}║${NC}"
echo -e "${YELLOW}╚════════════════════════════════════════════════════════╝${NC}"

echo -e "${BLUE}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║  🗄️  DATABASES                                        ║${NC}"
echo -e "${BLUE}╠════════════════════════════════════════════════════════╣${NC}"
echo -e "${BLUE}║${NC}  8)  🗄️  Install MySQL 8.0                     ${BLUE}║${NC}"
echo -e "${BLUE}║${NC}  9)  🍃 Install MongoDB                         ${BLUE}║${NC}"
echo -e "${BLUE}║${NC}  10) 🔴 Install Redis                           ${BLUE}║${NC}"
echo -e "${BLUE}║${NC}  11) 🐘 Install PostgreSQL                      ${BLUE}║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════╝${NC}"

echo -e "${PURPLE}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${PURPLE}║  🌐  WEB SERVERS & PROXY                             ║${NC}"
echo -e "${PURPLE}╠════════════════════════════════════════════════════════╣${NC}"
echo -e "${PURPLE}║${NC}  12) 🌐 Install Nginx                          ${PURPLE}║${NC}"
echo -e "${PURPLE}║${NC}  13) 🔒 Install Let's Encrypt SSL              ${PURPLE}║${NC}"
echo -e "${PURPLE}╚════════════════════════════════════════════════════════╝${NC}"

echo -e "${RED}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${RED}║  🛡️  SECURITY & SYSTEM                                ║${NC}"
echo -e "${RED}╠════════════════════════════════════════════════════════╣${NC}"
echo -e "${RED}║${NC}  14) 🛡️  Security Hardening                     ${RED}║${NC}"
echo -e "${RED}║${NC}  15) 🔥 Install Fail2ban                        ${RED}║${NC}"
echo -e "${RED}║${NC}  16) 🚨 Setup UFW Firewall                      ${RED}║${NC}"
echo -e "${RED}║${NC}  17) 🧹 Clean System                             ${RED}║${NC}"
echo -e "${RED}║${NC}  18) 📊 Show System Info                         ${RED}║${NC}"
echo -e "${RED}║${NC}  19) 🏥 System Health Check                     ${RED}║${NC}"
echo -e "${RED}╚════════════════════════════════════════════════════════╝${NC}"

echo -e "${WHITE}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${WHITE}║  🎮  GAME SERVERS                                    ║${NC}"
echo -e "${WHITE}╠════════════════════════════════════════════════════════╣${NC}"
echo -e "${WHITE}║${NC}  20) 🎮 Install Minecraft Server                ${WHITE}║${NC}"
echo -e "${WHITE}║${NC}  21) ⚡ Optimize Minecraft Server              ${WHITE}║${NC}"
echo -e "${WHITE}╚════════════════════════════════════════════════════════╝${NC}"

echo -e "${GREEN}"
echo "  [0] ❌ Exit"
echo -e "${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -ne "${WHITE}👉 Enter your choice: ${NC}"
read choice

# ============ CASE STATEMENT ============

case $choice in
    1) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-python.sh) ;;
    2) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-node.sh) ;;
    3) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-java.sh) ;;
    4) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-go.sh) ;;
    5) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-rust.sh) ;;
    6) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-docker.sh) ;;
    7) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-portainer.sh) ;;
    8) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-mysql.sh) ;;
    9) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-mongodb.sh) ;;
    10) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-redis.sh) ;;
    11) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-postgres.sh) ;;
    12) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-nginx.sh) ;;
    13) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-ssl.sh) ;;
    14) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/security-setup.sh) ;;
    15) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-fail2ban.sh) ;;
    16) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-ufw.sh) ;;
    17) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/system-clean.sh) ;;
    18) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/system-info.sh) ;;
    19) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/health-check.sh) ;;
    20) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/install-minecraft.sh) ;;
    21) bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/scripts/minecraft-optimize.sh) ;;
    0) echo -e "${GREEN}👋 Goodbye!${NC}"; exit 0 ;;
    *) echo -e "${RED}❌ Invalid option!${NC}" ;;
esac

echo ""
echo -e "${GREEN}✅ Operation completed!${NC}"
echo -e "${YELLOW}Press Enter to continue...${NC}"
read
exec bash <(curl -s https://raw.githubusercontent.com/discordsensei0/install-languages/main/menu.sh)
