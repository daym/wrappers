#!/bin/sh

set -e
#cd ~/.local/Mathematica/13/3
# TODO /var/lib/dbus/machine-id
# No --network
m="$(basename "$0")"

# TODO: try without --emulate-fhs
exec guix shell --expose=${HOME}/.local/Mathematica/13/3 --network --emulate-fhs --container --share=/home/dannym/.local/Mathematica/13/ssl/certs=/etc/ssl/certs --share=/etc/resolv.conf --share=/etc/machine-id --share=/etc/nsswitch.conf --expose=/var/run/nscd/socket --share=/tmp --expose=/run bash coreutils gawk grep xz xcb-proto tar findutils sed mesa fontconfig gcc alsa-lib strace bzip2 libxdmcp libx11 libxau libxcb zlib libpng@1.6.39 expat libxkbcommon qtbase qtwayland wayland --preserve=XDG_ACTIVATION_TOKEN --preserve=DESKTOP_STARTUP_ID --preserve=DISPLAY --preserve=WAYLAND_DISPLAY --preserve='.*' --preserve=XDG_SESSION_TYPE --share=/home/dannym/.Wolfram --share=/home/dannym/.Mathematica --share=/home/dannym/.cache --share=/home/dannym/.config --share=/home/dannym/.TeXmacs/plugins/mma --share=/home/dannym/.Xmacs/plugins/mma --share='/home/dannym/Wolfram Mathematica' -- ~/.local/Mathematica/13/3/Executables/"${m}" "$@"
