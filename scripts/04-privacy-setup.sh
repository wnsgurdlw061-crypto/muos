#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
echo "[4/11] Privacy setup..."
chroot "$ROOTFS" bash <<'CHROOT'
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw --force enable
systemctl enable tor 2>/dev/null || true
sysctl -w net.ipv4.conf.all.rp_filter=1
sysctl -w kernel.randomize_va_space=2
CHROOT
echo "Privacy configured"
