#!/bin/sh

source /etc/arch-efi-config/config

IMAGENAME=$1
RAMFSPATH=$2
IMAGEPATH=$DEST/$IMAGENAME

if [ -e $IMAGEPATH ]; then
	mv $IMAGEPATH $IMAGEPATH.old
fi

objcopy \
  --add-section .osrel="/usr/lib/os-release" --change-section-vma .osrel=0x20000 \
  --add-section .cmdline="/etc/arch-efi-config/command-line" --change-section-vma .cmdline=0x30000 \
  --add-section .splash="$SPLASHPATH" --change-section-vma .splash=0x40000 \
  --add-section .linux="/boot/vmlinuz-linux" --change-section-vma .linux=0x2000000 \
  --add-section .initrd="$RAMFSPATH" --change-section-vma .initrd=0x3000000 \
  "/usr/lib/systemd/boot/efi/linuxx64.efi.stub" "$IMAGEPATH"
