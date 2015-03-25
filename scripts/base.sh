#!/bin/bash

set -e

dpkg --add-architecture i386

add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
add-apt-repository -y ppa:ubuntu-wine/ppa
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get update