#!/bin/bash
set -e
PROFILE="profiles/mu-os"
OUTPUT_DIR="${OUTPUT_DIR:-$(pwd)/output}"
ISO_NAME="${ISO_NAME:-MuOS-$(date +%Y.%m)}"
OVERLAY_DIR="rootfs-overlay"
SCRIPTS_DIR="scripts"
CONFIG_DIR="config"
print_step() { echo -e "\n=== $1 ==="; }
check_root() { [ "$EUID" -eq 0 ] || { echo "Root required"; exit 1; }; }
prepare_overlay() {
    local AIROOTFS="$PROFILE/airootfs"
    rm -rf "$AIROOTFS"; mkdir -p "$AIROOTFS"
    [ -d "$OVERLAY_DIR" ] && cp -r "$OVERLAY_DIR"/* "$AIROOTFS/" 2>/dev/null || true
    [ -d "$SCRIPTS_DIR" ] && { mkdir -p "$AIROOTFS/build/scripts"; cp -r "$SCRIPTS_DIR"/* "$AIROOTFS/build/scripts/" 2>/dev/null || true; }
    mkdir -p "$AIROOTFS/usr/local/bin"
    [ -f "$SCRIPTS_DIR/12-mysec-cli.sh" ] && cp "$SCRIPTS_DIR/12-mysec-cli.sh" "$AIROOTFS/usr/local/bin/mu" && chmod +x "$AIROOTFS/usr/local/bin/mu"
}
build_iso() {
    print_step "Building ISO"
    mkdir -p "$OUTPUT_DIR"
    mkarchiso -v -w "/tmp/archiso-work-$$" -o "$OUTPUT_DIR" "$PROFILE" 2>/dev/null || echo "ISO build requires archiso"
}
main() {
    print_step "MuOS Builder"
    case "${1:-all}" in all) prepare_overlay; build_iso;; overlay) prepare_overlay;; iso) build_iso;; esac
}
main "$@"
