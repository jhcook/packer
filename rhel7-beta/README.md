# RHEL7-beta

This is a Vagrant box running the latest version of RHEL7 beta available with 
all updates including the Kernel release in minimal configuration. The 
latest Virtualbox Guest Additions 5.1.x is installed. 

## Info

This is a minimal installation with certain packages removed including 
various firmware as well as Kdump.

The disk drive -- sda -- is 50 GiB in size and is allocated entirely to
the only partition, or sda1. This partition is mounted on root, or "/".
The file system type is XFS.

A swap partition is not provided. Rather, a 512 MiB swapfile is created 
and mounted within root.

The vagrant password is "vagrant". 

Keyboard is set to 'GB' and language en_GB.UTF-8.

Timezone is set to Europe/London.

## Create
Due to Red Hat's subscription model, it is required to have a valid Red Hat
account, and change the username and password on line 47 if ks.cfg in http dir.

In order to create a box, issue the following command with the correct information:
```
export ISO_LOCATION=`pwd` ; packer build -var "_version_=3.10.0.327.28.3" template.json
```

## Console
```
[vagrant@rhel7-vbox ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G  1.6G   49G   4% /
devtmpfs        995M     0  995M   0% /dev
tmpfs          1001M     0 1001M   0% /dev/shm
tmpfs          1001M  8.3M  993M   1% /run
tmpfs          1001M     0 1001M   0% /sys/fs/cgroup
vagrant         931G  306G  626G  33% /vagrant
tmpfs           201M     0  201M   0% /run/user/1000
[vagrant@rhel7-vbox ~]$ uname -a
Linux rhel7-vbox.localdomain 3.10.0-327.28.3.el7.x86_64 #1 SMP Fri Aug 12 13:21:05 EDT 2016 x86_64 x86_64 x86_64 GNU/Linux
[vagrant@rhel7-vbox ~]$ mount
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime,seclabel)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
devtmpfs on /dev type devtmpfs (rw,nosuid,seclabel,size=1017976k,nr_inodes=254494,mode=755)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,seclabel)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,seclabel,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,nodev,seclabel,mode=755)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,seclabel,mode=755)
cgroup on /sys/fs/cgroup/systemd type cgroup (rw,nosuid,nodev,noexec,relatime,xattr,release_agent=/usr/lib/systemd/systemd-cgroups-agent,name=systemd)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
cgroup on /sys/fs/cgroup/cpu,cpuacct type cgroup (rw,nosuid,nodev,noexec,relatime,cpuacct,cpu)
cgroup on /sys/fs/cgroup/memory type cgroup (rw,nosuid,nodev,noexec,relatime,memory)
cgroup on /sys/fs/cgroup/net_cls type cgroup (rw,nosuid,nodev,noexec,relatime,net_cls)
cgroup on /sys/fs/cgroup/perf_event type cgroup (rw,nosuid,nodev,noexec,relatime,perf_event)
cgroup on /sys/fs/cgroup/hugetlb type cgroup (rw,nosuid,nodev,noexec,relatime,hugetlb)
cgroup on /sys/fs/cgroup/cpuset type cgroup (rw,nosuid,nodev,noexec,relatime,cpuset)
cgroup on /sys/fs/cgroup/freezer type cgroup (rw,nosuid,nodev,noexec,relatime,freezer)
cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,devices)
cgroup on /sys/fs/cgroup/blkio type cgroup (rw,nosuid,nodev,noexec,relatime,blkio)
configfs on /sys/kernel/config type configfs (rw,relatime)
/dev/sda1 on / type xfs (rw,relatime,seclabel,attr2,inode64,noquota)
selinuxfs on /sys/fs/selinux type selinuxfs (rw,relatime)
systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=31,pgrp=1,timeout=300,minproto=5,maxproto=5,direct)
mqueue on /dev/mqueue type mqueue (rw,relatime,seclabel)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime,seclabel)
debugfs on /sys/kernel/debug type debugfs (rw,relatime)
vagrant on /vagrant type vboxsf (rw,nodev,relatime)
vagrant on /vagrant type vboxsf (rw,nodev,relatime)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,seclabel,size=204892k,mode=700,uid=1000,gid=1000)
[vagrant@rhel7-vbox ~]$ lsmod | grep vbox
vboxsf                 39741  2
vboxguest             297222  2 vboxsf
```
