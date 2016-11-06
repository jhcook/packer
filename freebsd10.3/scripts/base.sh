# Set the hostname
echo -e 'hostname="freebsd10-vbox"' >> /etc/rc.conf

# Create a 512 MiB swap file
#/bin/dd if=/dev/zero of=/usr/swap0 bs=1m count=512
#/bin/chmod 600 /usr/swap0
#echo "md99    none    swap    sw,file=/usr/swap0,late    0    0" >> /etc/fstab

# Install and update sudo
#cd /usr/ports/security/sudo
#/usr/bin/make install clean BATCH=yes

