#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

check() {
    return 255
}

depends() {
    return 0
}

install() {
    inst /usr/bin/awk
    inst /usr/bin/chmod
    inst /usr/bin/chroot
    inst /usr/bin/clear
    inst /usr/bin/cp
    inst /usr/bin/dhcpcd
    inst /usr/bin/lsblk
    inst /usr/bin/mkdir
    inst /usr/bin/mkfs.ext4
    inst /usr/bin/mkswap
    inst /usr/bin/mount
    inst /usr/bin/sfdisk
    inst /usr/bin/sleep
    inst /usr/bin/xbps-install
    inst /usr/bin/xbps-uhelper
    inst_hook pre-mount 01 "$moddir/install.sh"
    inst "$moddir/chroot_install.sh"
    inst "$moddir/config.cfg"
}
