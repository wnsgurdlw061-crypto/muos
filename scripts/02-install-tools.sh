#!/bin/bash
set -e
BUILD_DIR="${BUILD_DIR:-/build/os}"
ROOTFS="$BUILD_DIR/rootfs"
echo "[2/11] Installing security tools..."
chroot "$ROOTFS" bash <<'CHROOT'
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq
apt-get install -y -qq --no-install-recommends xfce4 xfce4-goodies lightdm lightdm-gtk-greeter xorg
apt-get install -y -qq --no-install-recommends nmap wireshark tcpdump hydra sqlmap nikto hashcat john aircrack-ng
apt-get install -y -qq --no-install-recommends tor torsocks obfs4proxy macchanger cryptsetup secure-delete keepassxc
CHROOT
echo "Tools installed"
