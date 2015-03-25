#!/bin/bash

set -e

dpkg --add-architecture i386

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get update