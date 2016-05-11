/usr/bin/sed -i 's|^Defaults\ requiretty|#Defaults requiretty|' /etc/sudoers
/usr/bin/sed -i 's|#UseDNS yes|UseDNS no|g' /etc/ssh/sshd_config

# Create a 512 MiB swap file
/usr/bin/dd if=/dev/zero of=/swapfile bs=4096 count=131072
/usr/sbin/mkswap /swapfile
/usr/bin/chmod 0600 /swapfile
echo -e "/swapfile\tswap\tswap\tdefaults\t0\t0" >> /etc/fstab
