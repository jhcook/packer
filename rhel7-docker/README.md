# RHEL7-docker

This is a Vagrant box running the latest version of RHEL7 available with 
all updates including the Kernel release with docker-latest configured with
OverLayFS 2. The latest Virtualbox Guest Additions 5.2.x is installed. 

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
$ vagrant ssh
[vagrant@rhel7-vbox ~]$ ls -l /var/loopback/
total 7820
-rw-r--r--. 1 root root 1048576000 Apr 22 18:25 dockerpv1.img
[vagrant@rhel7-vbox ~]$ sudo docker info
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
 Authorization: rhel-push-plugin
Swarm: inactive
Runtimes: docker-runc runc
Default Runtime: docker-runc
Init Binary: /usr/libexec/docker/docker-init-latest
containerd version: 85fc86fe510461b1920d35e9819c792b1ccc054d (expected: aa8187dbd3b7ad67d8e5e3a15115d3eef43a7ed1)
runc version: e9c345b3f906d5dc5e8100b05ce37073a811c74a (expected: 9df8b306d01f59d3a8029be411de015b7304dd8f)
init version: 5b117de7f824f3d3825737cf09581645abbe35d4 (expected: 949e6facb77383876aeff8a6944dde66b3089574)
Security Options:
 seccomp
  WARNING: You're not using the default seccomp profile
  Profile: /etc/docker-latest/seccomp.json
 selinux
Kernel Version: 3.10.0-862.el7.x86_64
Operating System: Red Hat Enterprise Linux
OSType: linux
Architecture: x86_64
Number of Docker Hooks: 3
CPUs: 2
Total Memory: 1.953 GiB
Name: rhel7-vbox.localdomain
ID: BIIC:SRNK:TC2G:HAZ4:I7S7:2AA5:LLFQ:XYUK:EGWR:2W7P:XUTT:A33L
Docker Root Dir: /var/lib/docker-latest
Debug Mode (client): false
Debug Mode (server): false
Registry: https://registry.access.redhat.com/v1/
Experimental: false
Insecure Registries:
 127.0.0.0/8
Live Restore Enabled: false
Registries: registry.access.redhat.com (secure), docker.io (secure)
```
