# Install the Virtualbox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

# Install the prerequisites
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl bzip2

mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# Cleanup the environment by removing packages and the Yum history
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso
yum -y history undo 1
yum history new
