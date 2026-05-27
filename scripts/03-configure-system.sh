#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
echo "[3/11] Configuring system..."
chroot "$ROOTFS" bash <<'CHROOT'
echo "root:mu" | chpasswd
useradd -m -s /bin/bash -U mu 2>/dev/null || true
echo "mu:mu" | chpasswd
echo "mu ALL=(ALL) ALL" > /etc/sudoers.d/mu
ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
echo "LANG=ko_KR.UTF-8" > /etc/default/locale
CHROOT
echo "System configured"
