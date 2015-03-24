#!/bin/bash

set -e

grep -r ^deb\  /etc/apt/sources.list

apt-cache policy build-essential

apt-get update
apt-get -y install build-essential git vim curl
apt-get -y upgrade