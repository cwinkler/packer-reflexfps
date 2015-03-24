#dpkg --add-architecture i386
#apt-get -y install wine wine32

add-apt-repository -y ppa:ubuntu-wine/ppa
apt-get update
apt-get install wine1.7