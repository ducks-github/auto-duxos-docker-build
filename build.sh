#!/bin/bash
set -e

# Create working directory
mkdir -p output

# Run debootstrap to set up minimal system
debootstrap --arch=amd64 stable ./duxos-chroot http://deb.debian.org/debian

# Create ISO (example with xorriso)
grub-mkrescue -o output/duxos.iso ./duxos-chroot

echo "ISO build complete: output/duxos.iso"