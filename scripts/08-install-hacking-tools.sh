#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
echo "[8/11] Installing advanced hacking tools..."
chroot "$ROOTFS" bash <<'CHROOT'
export DEBIAN_FRONTEND=noninteractive
apt-get install -y -qq --no-install-recommends metasploit-framework 2>/dev/null || true
apt-get install -y -qq --no-install-recommends bettercap responder wifite 2>/dev/null || true
pip3 install --break-system-packages impacket crackmapexec bloodhound 2>/dev/null || true
CHROOT
echo "Hacking tools installed"
