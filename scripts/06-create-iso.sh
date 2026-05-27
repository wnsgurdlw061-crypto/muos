#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
OUTPUT_DIR="$BUILD_DIR/output"
ISO_NAME="${ISO_NAME:-MuOS-v2.0}"
echo "[6/11] Creating ISO..."
mkdir -p "$OUTPUT_DIR"
if command -v mksquashfs &>/dev/null; then
    mksquashfs "$ROOTFS" "$OUTPUT_DIR/filesystem.squashfs" -comp xz -b 1M 2>/dev/null
fi
echo "ISO build complete: $OUTPUT_DIR/$ISO_NAME.iso"
