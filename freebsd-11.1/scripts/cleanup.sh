rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

rm -f /home/vagrant/*.iso
rm -rf /tmp/*
rm -rf /var/db/freebsd-update/files
mkdir /var/db/freebsd-update/files
rm -f /var/db/freebsd-update/*-rollback
rm -rf /var/db/freebsd-update/install.*
rm -fr /var/db/portsnap/files
rm -fr /var/db/portsnap/INDEX
rm -rf /boot/kernel.old
rm -rf /usr/src/*
rm -fr /usr/ports/*
rm -f /*.core
