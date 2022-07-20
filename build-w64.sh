#!/bin/bash

mkdir -p build-w64
cd build-w64

../configure \
    --prefix=/mingw64 \
    --bindir=bin \
    --datadir=share/qemu \
    --localedir=share/locale \
    --mandir=share/man \
    --docdir=share/doc/qemu \
    --target-list="i386-softmmu x86_64-softmmu" \
    --enable-dsound \
    --enable-gnutls \
    --enable-gtk \
    --enable-curses \
    --enable-virglrenderer \
    --enable-sdl \
    --enable-slirp=system \
    --enable-spice
    --enable-libusb \
    --enable-usb-redir \
    --enable-libssh \
    --enable-zstd \
    --enable-vnc \
    --enable-vnc-jpeg \
    --enable-whpx \
    --tls-priority=@QEMU,SYSTEM

make -j11
