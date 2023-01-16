#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update
apt-get install -y git curl vim wget net-tools locales bzip2 procps \
    python3-numpy #used for websockify/novnc
apt-get clean -y

echo "generate locales en_US.UTF-8"
locale-gen en_US.UTF-8
