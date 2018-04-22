sed -i "s/^Defaults\ requiretty/#Defaults requiretty/" /etc/sudoers

# Create a 512 MiB swap file
/usr/bin/dd if=/dev/zero of=/swapfile bs=4096 count=131072
/usr/sbin/mkswap /swapfile
echo -e "/swapfile\tswap\tswap\tdefaults\t0\t0" >> /etc/fstab

if [ ! -d /var/loopback ] ; then
  mkdir /var/loopback
fi
if [ ! -e /var/loopback/dockerpv1.img ] ; then
  /usr/bin/dd if=/dev/zero of=/var/loopback/dockerpv1.img bs=1M count=1000
  losetup /dev/loop0 /var/loopback/dockerpv1.img
  sfdisk /dev/loop0 <<-SFDISKEOF
,,8e,,
SFDISKEOF
  sync ; blockdev --flushbufs /dev/loop0
  pvcreate -y /dev/loop0
  vgcreate -y dockervg /dev/loop0
  lvcreate -y -l100%FREE -nlatest dockervg
  mkfs.xfs -n ftype=1 /dev/mapper/dockervg-latest
fi
for str in STORAGE_DRIVER=overlay2 VG=dockervg-latest DEVS=/dev/loop0 \
CONTAINER_ROOT_LV_NAME=dockervg-latest CONTAINER_ROOT_LV_SIZE=100%FREE \
CONTAINER_ROOT_LV_MOUNT_PATH=/var/lib/docker; do
  grep $str /etc/sysconfig/docker-latest-storage-setup >/dev/null 2>&1
  if [ "$?" -ne 0 ] ; then
    echo "$str" >> /etc/sysconfig/docker-latest-storage-setup
  fi
done
systemctl enable docker-latest
