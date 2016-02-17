# Fedora 23

This is a Vagrant box running the latest version of Fedora 23 available with 
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

```
