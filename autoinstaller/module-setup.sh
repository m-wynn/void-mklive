#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

check() {
    return 255
}

depends() {
    echo "network"
}

install() {
    inst /usr/bin/chroot
    inst /usr/bin/chmod
    inst /usr/bin/ed
    inst_hook pre-mount 01 "$moddir/install.sh"
    inst "$moddir/chroot_install.sh"
    inst "$moddir/config.cfg"
}
