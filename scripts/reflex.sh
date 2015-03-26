#!/bin/bash

set -e

su --login steam --shell /bin/bash --command "/var/steam/steamcmd/steamcmd.sh +@sSteamCmdForcePlatformType windows +login anonymous +force_install_dir /var/steam/reflex +app_update 329740 validate +quit"