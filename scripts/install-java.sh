#!/bin/bash
# install-java.sh - Install Java 17

echo "☕ Installing Java 17..."
apt update
apt install -y openjdk-17-jdk openjdk-17-jre
echo "✅ Java installed!"
java -version
