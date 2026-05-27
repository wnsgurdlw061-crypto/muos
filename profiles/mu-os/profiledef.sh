#!/usr/bin/env bash
iso_name="mu-os"
iso_label="MU_OS_$(date +%Y%m)"
iso_publisher="MuOS Project"
iso_application="MuOS - Security Distribution"
iso_version="$(date +%Y.%m)"
install_dir="muos"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.grub')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
file_permissions=("/etc/shadow:0:0:400" "/usr/local/bin/mu:0:0:755")
