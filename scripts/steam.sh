#!/bin/bash

set -e

apt-get -y install lib32gcc1

groupadd --gid 2000 steam
useradd --gid 2000 --uid 2000 -d /var/steam -m steam

su --login steam --shell /bin/bash --command "wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz -O /tmp/steamcmd.tar.gz"
su --login steam --shell /bin/bash --command "mkdir -p /var/steam/steamcmd"
su --login steam --shell /bin/bash --command "tar xvzf /tmp/steamcmd.tar.gz -C /var/steam/steamcmd"

cp /tmp/reflexfps.conf /etc/init/reflexfps.conf

chmod 0644 /etc/init/reflexfps.conf