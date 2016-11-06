# Fedora 24

This is a Vagrant box running the latest version of Fedora 23 available with 
all updates including the Kernel release. The Virtualbox Guest Additions 
5.1.x -- or the latest version of Virtualbox is supported. 

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

Please note, this build by default will upload the artifact to Atlas. You will
need to change the destination as well as provide the relevant keys. Or, you
may use the appropriate command-line switches are remove the post processor
all together.

## Build

In order to build the artifact, or box, you would run the following command:

```
$ packer build -var "_version_=`date +%Y.%m.%d.%H%M`" template.json
```

This will produce the following output:

```
...
==> virtualbox-iso (vagrant): Creating Vagrant box for 'virtualbox' provider
    virtualbox-iso (vagrant): Copying from artifact: output-virtualbox-iso/packer-virtualbox-iso-1455801637-disk1.vmdk
    virtualbox-iso (vagrant): Copying from artifact: output-virtualbox-iso/packer-virtualbox-iso-1455801637.ovf
    virtualbox-iso (vagrant): Renaming the OVF to box.ovf...
    virtualbox-iso (vagrant): Compressing: Vagrantfile
    virtualbox-iso (vagrant): Compressing: box.ovf
    virtualbox-iso (vagrant): Compressing: metadata.json
    virtualbox-iso (vagrant): Compressing: packer-virtualbox-iso-1455801637-disk1.vmdk
==> virtualbox-iso: Running post-processor: atlas
    virtualbox-iso (atlas): Uploading artifact version...
Build 'virtualbox-iso' finished.
```
