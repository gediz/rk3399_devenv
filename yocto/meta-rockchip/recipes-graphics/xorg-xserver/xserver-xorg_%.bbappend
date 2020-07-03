# Copyright (C) 2019, Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

DEPENDS += "util-macros-native font-util-native xtrans-native rockchip-librga"

SRCREV = "${AUTOREV}"
SRC_URI += "git://github.com/JeffyCN/xorg-xserver;branch=${PV}"
SRC_URI_remove = "https://www.x.org/releases//individual/xserver/xorg-server-${PV}.tar.bz2"
S = "${WORKDIR}/git"

do_configure_prepend() {
    NOCONFIGURE="yes" ${S}/autogen.sh
}
