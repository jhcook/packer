# FreeBSD 10.2

This is a Vagrant box running the latest version of FreeBSD 10.2-RELEASE
patchset and all updates including the Kernel. The Virtualbox Guest
Additions 4.3.x -- or the latest version of Virtualbox is supported. 

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
FreeBSD 10.2-RELEASE-p9 (GENERIC) #0: Thu Jan 14 01:32:46 UTC 2016

Welcome to FreeBSD!

Release Notes, Errata: https://www.FreeBSD.org/releases/
Security Advisories:   https://www.FreeBSD.org/security/
FreeBSD Handbook:      https://www.FreeBSD.org/handbook/
FreeBSD FAQ:           https://www.FreeBSD.org/faq/
Questions List: https://lists.FreeBSD.org/mailman/listinfo/freebsd-questions/
FreeBSD Forums:        https://forums.FreeBSD.org/

Documents installed with the system are in the /usr/local/share/doc/freebsd/
directory, or can be installed later with:  pkg install en-freebsd-doc
For other languages, replace "en" with a language code like de or fr.

Show the version of FreeBSD installed:  freebsd-version ; uname -a
Please include that output and any error messages when posting questions.
Introduction to manual pages:  man man
FreeBSD directory layout:      man hier

Edit /etc/motd to change this login announcement.
[vagrant@freebsd10-vbox ~]$ uname -a
FreeBSD freebsd10-vbox 10.2-RELEASE-p9 FreeBSD 10.2-RELEASE-p9 #0: Thu Jan 14 01:32:46 UTC 2016     root@amd64-builder.daemonology.net:/usr/obj/usr/src/sys/GENERIC  amd64
[vagrant@freebsd10-vbox ~]$ df -h
Filesystem     Size    Used   Avail Capacity  Mounted on
/dev/ada0p2     46G    982M     41G     2%    /
devfs          1.0K    1.0K      0B   100%    /dev
[vagrant@freebsd10-vbox ~]$ swapinfo
Device          1K-blocks     Used    Avail Capacity
/dev/ada0p3       2621440        0  2621440     0%
[vagrant@freebsd10-vbox ~]$ mount
/dev/ada0p2 on / (ufs, local, journaled soft-updates)
devfs on /dev (devfs, local, multilabel)
```
