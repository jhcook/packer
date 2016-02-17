# Install the Virtualbox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

# Install the prerequisites
/usr/bin/dnf -y install gcc make gcc-c++ kernel-devel-`uname -r` perl bzip2

mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
/bin/sh /mnt/VBoxLinuxAdditions.run
/usr/bin/umount /mnt

# Cleanup the environment by removing packages
/usr/bin/rm -fr /home/vagrant/VBoxGuestAdditions_*.iso
/usr/bin/dnf -y history undo 1
/usr/bin/rm -fr /var/lib/dnf/history/*
