#!/bin/bash

set -e

# install dependencies
apt-get -y install build-essential git

# install flex
git clone git://git.code.sf.net/p/flex/flex /tmp/flex && cd /tmp/flex
git checkout tags/flex-2.5.39

./configure

make && make install

# install wine
git clone git://source.winehq.org/git/wine.git /tmp/wine && cd /tmp/wine
git checkout tags/wine-1.6.2

./configure --without-x --enable-win64

make && make install