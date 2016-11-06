# Packer

These are the packer.io templates and associated code to generate Vagrant
boxes and other images such as AWS AMI. 

There is a script included in each platform called `watch` which is used to
simply monitor if a kernel update exists for that platform. In case one does,
a new `packer build` is initiated.

The Atlas post processor is included in the builds to upload each new build to
Atlas after a successful build. In order to use this, you will need to obtain
an Atlas key and populate it in your .bashrc file -- or the relevant one for
your environment.

After a successful upload, `t` is used to notify the appropriate Twitter
account of a new upload. In order to install and configure `t`, please see:
https://github.com/sferik/t

Internet access is required to build the boxes as the installation installs
the latest versions of the packages. If the metadata is not available, the
installation will fail.

## CentOS6
The CentOS6 Vagrant box is a minimal CentOS6 installation with Virtualbox
Guest Additions 5.1.x or the latest version of Virtualbox available at the 
time of build. 

## CentOS7
The CentOS7 Vagrant box is a minimal CentOS7 installation with Virtualbox
Guest Additions 5.1.x or the latest version of Virtualbox available at the
time of build.

## Fedora23
The Fedora23 Vagrant box is a Fedora Workstation installation with Virtualbox
Guest Additions 5.1.x or the latest version of Virtualbox avaiable at the
time of build.

## Fedora24
The Fedora24 Vagrant box is a Fedora Workstation installation with Virtualbox
Guest Additions 5.1.x or the latest version of Virtualbox avaiable at the
time of build.

## Fedora25
The Fedora25 Vagrant box is a Fedora Workstation installation with Virtualbox
Guest Additions 5.1.x or the latest version of Virtualbox avaiable at the
time of build.

## FreeBSD 10.2
The FreeBSD 10.2 Vagrant box is a minimal FreeBSD installation without
Virtualbox Guest Additions.

## FreeBSD 10.3
The FreeBSD 10.3 Vagrant box is a minimal FreeBSD installation without 
Virtualbox Guest Additions.

## FreeBSD 11.0
The FreeBSD 11.0 Vagrant box is a minimal FreeBSD installation without 
Virtualbox Guest Additions.

## RHEL7
The RHEL7 Vagrant box is a minimal RHEL7 installation with Virtualbox Guest
Additions 5.1.x available at the time of build. A valid Red Hat subscription
is necessary to successfully build.
