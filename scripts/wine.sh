#!/bin/bash

set -e

apt-get -y install build-essential git

git clone git://source.winehq.org/git/wine.git /tmp/wine

cd /tmp/wine

./configure --without-x --enable-win64
make
make install