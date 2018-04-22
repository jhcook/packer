# CentOS7-docker

This is a Vagrant box running the latest version of CentOS7 available with 
all updates including the Kernel release and docker-latest configured with
overlay2 driver. The Virtualbox Guest Additions 5.1.x -- or the latest version
of Virtualbox is supported. 

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
[vagrant@centos7-vbox ~]$ sudo docker info
Containers: 0
 Running: 0
 Paused: 0
 Stopped: 0
Images: 0
Server Version: 1.13.1
Storage Driver: overlay2
 Backing Filesystem: xfs
 Supports d_type: true
 Native Overlay Diff: true
Logging Driver: journald
Cgroup Driver: systemd
Plugins:
 Volume: local
 Network: bridge host macvlan null overlay
Swarm: inactive
Runtimes: docker-runc runc
Default Runtime: docker-runc
Init Binary: docker-init
containerd version: 7129cac77a855f7c748fb8b17ec9814f0c0650e9 (expected: aa8187dbd3b7ad67d8e5e3a15115d3eef43a7ed1)
runc version: 7129cac77a855f7c748fb8b17ec9814f0c0650e9 (expected: 9df8b306d01f59d3a8029be411de015b7304dd8f)
init version: N/A (expected: 949e6facb77383876aeff8a6944dde66b3089574)
Security Options:
 seccomp
  WARNING: You're not using the default seccomp profile
  Profile: /etc/docker-latest/seccomp.json
 selinux
Kernel Version: 3.10.0-693.21.1.el7.x86_64
Operating System: CentOS Linux 7 (Core)
OSType: linux
Architecture: x86_64
Number of Docker Hooks: 3
CPUs: 2
Total Memory: 1.953 GiB
Name: centos7-vbox.localdomain
ID: 3TX7:NSQT:QS5L:BAS3:LA3H:QM6D:MVRT:64WZ:C5UV:CI3S:4HLG:4BLW
Docker Root Dir: /var/lib/docker-latest
Debug Mode (client): false
Debug Mode (server): false
Registry: https://index.docker.io/v1/
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false
Registries: docker.io (secure)
```
