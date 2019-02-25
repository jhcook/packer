# RHEL8-beta

This is a Vagrant box running the latest version of RHEL8 beta available with 
all updates including the Kernel release in minimal configuration. The 
latest Virtualbox Guest Additions 6.0.x is installed. 

## Info

This is a minimal installation with certain packages removed including 
various firmware as well as Kdump.

The disk drive -- sda -- is 40 GiB in size and is allocated entirely to
the only partition, or sda1. This partition is mounted on root, or "/".
The file system type is XFS.

A swap partition is not provided. Rather, a 512 MiB swapfile is created 
and mounted within root.

The vagrant password is "vagrant". 

Keyboard is set to 'GB' and language en_GB.UTF-8.

Timezone is set to Europe/London.

## Create
Due to Red Hat's subscription model, it is required to have a valid Red Hat
account, and change the username and password on `subscription-manager` line 
of http/ks.cfg.

In order to create a box, issue the following command with the correct information:
```
export ISO_LOCATION=`pwd` ; packer build -var "_version_=3.10.0.327.28.3" template.json
```

## Console
```
[vagrant@rhel8-beta-vbox ~]$ uname -a
Linux rhel8-beta-vbox.localdomain 4.18.0-32.el8.x86_64 #1 SMP Sat Oct 27 19:26:37 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
[vagrant@rhel8-beta-vbox ~]$ cat /etc/redhat-release
Red Hat Enterprise Linux release 8.0 Beta (Ootpa)
```
