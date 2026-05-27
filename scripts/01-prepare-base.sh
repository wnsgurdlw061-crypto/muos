#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
echo "[1/11] Debian base system..."
debootstrap --variant=minbase --arch=amd64 bookworm "$ROOTFS" http://deb.debian.org/debian
echo "Base system ready at $ROOTFS"
