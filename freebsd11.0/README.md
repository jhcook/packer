# FreeBSD 11.0

This is a Vagrant box running the latest version of FreeBSD 11.0-RELEASE
patchset and all updates including the Kernel. The Virtualbox Guest
Additions 5.0 -- or the latest version of Virtualbox is supported. 

## Info

This is a minimal installation only with additions to support Vagrant 
and removing build dependencies. Four CPU and 4GiB of RAM are allocated 
by default. 

The disk drive -- ada0 -- is 50 GiB in size and is allocated entirely to
one data partition, and mounted on /. A swap partition is created as well.

The vagrant password is "vagrant". 

Timezone is set to Europe/London.

## Console
```
$ vagrant ssh
[vagrant@freebsd11-vbox ~]$ uname -a
[vagrant@freebsd11-vbox ~]$ df -h
[vagrant@freebsd11-vbox ~]$ swapinfo
[vagrant@freebsd11-vbox ~]$ mount
```
