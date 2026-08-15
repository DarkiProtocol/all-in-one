#!/bin/bash
# install-rust.sh - Install Rust

echo "🦀 Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
echo "✅ Rust installed!"
rustc --version
