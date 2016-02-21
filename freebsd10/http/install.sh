PARTITIONS=ada0
DISTRIBUTIONS="base.txz kernel.txz lib32.txz"
BSDINSTALL_DISTDIR="/tmp/freebsd-dist"

mkdir $BSDINSTALL_DISTDIR

echo "nameserver 8.8.8.8" >> /etc/resolv.conf

for dist in $DISTRIBUTIONS
do
  fetch -o ${BSDINSTALL_DISTDIR}/$dist \
    http://ftp.freebsd.org/pub/FreeBSD/releases/amd64/10.2-RELEASE/$dist
done

#!/bin/sh
echo 'WITHOUT_X11="YES"' >> /etc/make.conf
echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
cat >> /etc/rc.conf <<EOF
ifconfig_em0="DHCP"
sshd_enable="YES"
dumpdev="NO"
EOF

env ASSUME_ALWAYS_YES=1 pkg bootstrap
pkg update
pkg install -y sudo
pkg install -y bash
pkg install -y curl
pkg install -y ca_root_nss

ln -sf /usr/local/share/certs/ca-root-nss.crt /etc/ssl/cert.pem

echo -n 'vagrant' | pw usermod root -h 0
pw groupadd -n vagrant -g 1000
echo -n 'vagrant' | pw useradd -n vagrant -u 1000 -s /usr/local/bin/bash -m -d /home/vagrant/ -G vagrant -h 0
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' >> /usr/local/etc/sudoers

reboot
