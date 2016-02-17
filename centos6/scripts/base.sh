sed -i "s/^Defaults\ requiretty/#Defaults requiretty/" /etc/sudoers

# Create a 512 MiB swap file
/bin/dd if=/dev/zero of=/swapfile bs=4096 count=131072
/sbin/mkswap /swapfile
echo -e "/swapfile\tswap\tswap\tdefaults\t0\t0" >> /etc/fstab
