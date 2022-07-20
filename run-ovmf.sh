#!/bin/sh

qemu-system-x86_64 \
    -accel whpx,kernel-irqchip=off \
    -bios OVMF.fd \
    -machine q35 \
    -cpu qemu64,aes=on,avx=on,sse4.1=on,sse4.2=on,ssse3=on,x2apic=on,xsave=on \
    -smp 4 \
    -m 4096 \
    -device ich9-intel-hda \
    -device hda-output \
    -usb \
    -device usb-kbd \
    -device usb-tablet
