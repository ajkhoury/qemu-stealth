#!/bin/bash

mkdir -p build
cd build

DEB_HOST_MULTIARCH=$(dpkg-architecture -qDEB_HOST_MULTIARCH)

../configure \
    --prefix=/usr \
    --sysconfdir=/etc \
    --libdir=/usr/lib/$DEB_HOST_MULTIARCH \
    --libexecdir=/usr/lib/qemu \
    --firmwarepath=/usr/share/qemu:/usr/share/seabios:/usr/lib/ipxe/qemu \
    --localstatedir=/var \
    --docdir=/usr/share/doc/qemu \
    --target-list="i386-softmmu x86_64-softmmu" \
    --disable-xen \
    --enable-modules --enable-module-upgrades \
    --audio-drv-list=pa,alsa,oss,sdl \
    --enable-attr \
    --enable-bpf \
    --enable-brlapi \
    --enable-virtfs \
    --enable-cap-ng \
    --enable-curl \
    --enable-fdt \
    --enable-fuse \
    --enable-gnutls \
    --enable-gtk --enable-vte \
    --enable-libiscsi \
    --enable-curses \
    --enable-virglrenderer \
    --enable-opengl \
    --enable-libnfs \
    --enable-numa \
    --enable-smartcard \
    --enable-rbd \
    --enable-glusterfs \
    --enable-vnc-sasl \
    --enable-vnc \
    --enable-vnc-jpeg \
    --enable-png \
    --enable-sdl \
    --enable-seccomp \
    --enable-slirp \
    --enable-spice \
    --enable-rdma \
    --enable-linux-io-uring \
    --enable-libusb \
    --enable-usb-redir \
    --enable-libssh \
    --enable-zstd \
    --enable-nettle \
    --enable-libudev \
    --enable-pa \
    --enable-libpmem \
    --enable-kvm \
    --enable-vhost-net \
    --enable-tpm \
    --smbd=/usr/sbin/smbd \
    --tls-priority=@QEMU,SYSTEM \
    --with-coroutine=ucontext

# --extra-cflags='-DQ35_MCH_DEVICE_ID=0x3EC2'

make -j11