# Set the hostname
echo -e 'hostname="freebsd10-vbox"' >> /etc/rc.conf

# Create a 512 MiB swap file
/bin/dd if=/dev/zero of=/swapfile bs=4096 count=131072
/bin/chmod 600 /swapfile
echo -e 'swapfile="/swapfile"' >> /etc/rc.conf
/sbin/mdconfig -a -t vnode -f /swapfile -u 0 && /sbin/swapon /dev/md0

# Install and update sudo
#cd /usr/ports/security/sudo
#/usr/bin/make install clean BATCH=yes

