#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
echo "[7/11] Installing Ollama AI..."
wget -q "https://github.com/ollama/ollama/releases/latest/download/ollama-linux-amd64.tgz" -O /tmp/ollama.tgz 2>/dev/null || true
tar -C "$ROOTFS/usr/local" -xzf /tmp/ollama.tgz 2>/dev/null || true
rm -f /tmp/ollama.tgz
echo "AI setup complete"
