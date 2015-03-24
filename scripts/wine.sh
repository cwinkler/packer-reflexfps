#!/bin/bash

set -e

apt-get -y install build-essential git

# install flex

mkdir -p /tmp/flex
cd /tmp/flex

wget http://sourceforge.net/projects/flex/files/latest/download -O flex.tar.bz2

tar xvjf flex.tar.bz2

cd flex

./configure && make && make install



git clone git://source.winehq.org/git/wine.git /tmp/wine

cd /tmp/wine

git checkout tags/wine-1.6.2

./configure --without-x --enable-win64
make
make install