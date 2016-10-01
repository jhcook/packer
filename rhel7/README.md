# RHEL7

This is a Vagrant box running the latest version of RHEL7 available with 
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

## Create

In order to create a box, issue the following command with the correct information:
```
export ISO_LOCATION=`pwd` ; packer build -var "_version_=3.10.0.327.28.3" template.json
```

## Console
```
$ vagrant ssh
[vagrant@rhel7-vbox ~]$ df -h

[vagrant@rhel7-vbox ~]$ mount

[vagrant@rhel7-vbox ~]$ lsmod | grep vbox
```