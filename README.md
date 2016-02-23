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

## CentOS7
The CentOS7 Vagrant box is a minimal CentOS7 installation with Virtualbox
Guest Additions 5.0.14 or the latest version of Virtualbox available at the
time of build.

Internet access is required to build this box as the installation installs
the latest versions of the packages. If the metadata is not available, the
installation will fail.

## CentOS6
The CentOS6 Vagrant box is a minimal CentOS6 installation with Virtualbox
Guest Additions 5.0.14 or the latest version of Virtualbox available at the 
time of build. 

Internet access is required to build this box as the installation installs
the latest versions of the packages. If the metadata is not available, the
installation will fail.

## Fedora23
The Fedora23 Vagrant box is a Fedora Workstation installation with Virtualbox
Guest Additions 5.0.14 or the latest version of Virtualbox avaiable at the
time of build

Internet access is required to build this box as the installation installs
the latest versions of the packages. If the metadata is not available, the
installation will fail.

## FreeBSD 10
The FreeBSD Vagrant box is a minimal FreeBSD installation with Virtualbox
Guest Additions available in the ports at the time of build.

Internet access is required to build this box as the installation installs
the latest versions of the packages. If the metadata is not available, the
installation will fail.
