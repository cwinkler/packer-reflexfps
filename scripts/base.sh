#!/bin/bash

set -e

apt-get -y upgrade
apt-get -y dist-upgrade
apt-get update


#grep -r ^deb\  /etc/apt/sources.list

#apt-cache policy build-essential


apt-get -y install build-essential git vim curl
#apt-get -y upgrade