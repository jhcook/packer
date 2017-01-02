#!/bin/sh
# https://wiki.freebsd.org/VirtualBox

# Sort out the toolchain
#cd /usr/src
#svnlite co https://svn.freebsd.org/base/releng/10.3 /usr/src
#make toolchain

# Build and install 32-bit dependencies
#make build32 install32; ldconfig -v -m -R /usr/lib32
#rm -fr /usr/src/*

# Install Virtualbox guest additions (use pkg so no build dependencies)
##pkg install -y virtualbox-ose-additions
#cd /usr/ports/emulators/virtualbox-ose-additions
##make install clean BATCH=yes WITHOUT="X11"
#portmaster --delete-build-only

# Load the vbox modules and services
#cat << __EOF__ >> /etc/rc.conf
## VirtualBox configuration
#vboxguest_enable="YES"
#vboxnet_enable="YES"
#vboxservice_enable="YES"
#__EOF__

#cat << __EOF2__ >> /boot/loader.conf
#if_vtnet_load="YES"
#vboxdrv_load="YES"
#virtio_balloon_load="YES"
#virtio_blk_load="YES"
#virtio_scsi_load="YES"
#__EOF2__

exit

