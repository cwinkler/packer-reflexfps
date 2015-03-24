#!/bin/bash

set -e

apt-get update
apt-get -y upgrade

apt-get -y install build-essential git vim curl