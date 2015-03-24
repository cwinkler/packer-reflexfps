groupadd --gid 2000 steam
useradd --gid 2000 --uid 2000 -m steam

mkdir -p /var/steam
cd /var/steam

wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz -O steamcmd.tar.gz
tar xvzf steamcmd.tar.gz

chown -R steam:steam /var/steam