PARTITIONS=ada0
DISTRIBUTIONS="base.txz kernel.txz src.txz"
BSDINSTALL_DISTDIR="/tmp/freebsd-dist"

mkdir $BSDINSTALL_DISTDIR

echo "nameserver 8.8.8.8" >> /etc/resolv.conf

for dist in $DISTRIBUTIONS
do
  fetch -o ${BSDINSTALL_DISTDIR}/$dist \
    http://ftp.freebsd.org/pub/FreeBSD/releases/amd64/11.0-RELEASE/$dist
done

#!/bin/sh
echo 'WITHOUT_X11="YES"' >> /etc/make.conf
echo 'OPTIONS_UNSET=X11' >> /etc/make.conf
echo 'nameserver 8.8.8.8' >> /etc/resolv.conf
cat >> /etc/rc.conf <<EOF
ifconfig_em0="DHCP"
sshd_enable="YES"
dumpdev="NO"
EOF

# Update ports
mkdir -p /usr/ports
cd /usr/ports
/usr/sbin/portsnap --interactive fetch extract
cd $OLDPWD

# No idea why this is needed but sometimes `make install` fails for pkg
rm /var/run/ld-elf*.so.hints
/etc/rc.d/ldconfig start

# Install pkg
cd /usr/ports/ports-mgmt/pkg
make ; make install clean
cd $OLDPWD

env ASSUME_ALWAYS_YES=1 pkg bootstrap
pkg update
pkg install -y portmaster
pkg install -y sudo
pkg install -y bash
pkg install -y curl
pkg install -y ca_root_nss

ln -sf /usr/local/share/certs/ca-root-nss.crt /etc/ssl/cert.pem

echo -n 'vagrant' | pw usermod root -h 0
pw groupadd -n vagrant -g 1000
echo -n 'vagrant' | pw useradd -n vagrant -u 1000 -s /usr/local/bin/bash -m -d /home/vagrant/ -G vagrant -h 0
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' >> /usr/local/etc/sudoers

env PAGER=cat freebsd-update --not-running-from-cron fetch
freebsd-update install

reboot
