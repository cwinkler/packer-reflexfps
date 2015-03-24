#!/bin/bash

set -e

groupadd --gid 3000 reflex
useradd --gid 3000 --uid 2000 -m reflex

cd /var/steam

./steamcmd.sh +@sSteamCmdForcePlatformType windows +login anonymous +force_install_dir /var/reflex +app_update 329740 +quit

cp /tmp/dedicatedserver.cfg /var/reflex/dedicatedserver.cfg


cp /tmp/reflexfps /etc/init.d/reflexfps
chmod 0755 /etc/init.d/reflexfps
ln -s /etc/init.d/reflexfps /etc/rc5.d/S99reflexfps