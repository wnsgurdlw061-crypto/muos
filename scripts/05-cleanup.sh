#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
echo "[5/11] Cleaning system..."
chroot "$ROOTFS" bash <<'CHROOT'
apt-get autoremove --purge -y
apt-get clean
apt-get autoclean
rm -rf /var/lib/apt/lists/*
rm -rf /var/cache/apt/archives/*.deb
CHROOT
rm -rf "$ROOTFS/var/log/"*.log "$ROOTFS/var/log/"*.gz 2>/dev/null || true
du -sh "$ROOTFS"
echo "Cleanup done"
