# CentOS6

This is a Vagrant box running the latest version of CentOS6 available with 
all updates including the Kernel release. The Virtualbox Guest Additions 
5.0.x -- or the latest version of Virtualbox is supported. 

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

## Console
```
You may see disk space:

[vagrant@centos6-vbox ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G  861M   46G   2% /
tmpfs           939M     0  939M   0% /dev/shm
vagrant         699G  367G  333G  53% /vagrant
[vagrant@centos6-vbox ~]$ swapon -s
Filename                Type        Size    Used    Priority
/swapfile                               file        524284  0   -1
```

And you can see the vbox kernel modules:

```
[vagrant@centos6-vbox ~]$ lsmod | grep vbox
vboxsf                 37731  1
vboxguest             284775  2 vboxsf
```
