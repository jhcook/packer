# This optimizes the build size by zeroing out the entire disk
dd if=/dev/zero of=/EMPTY bs=4096
rm -f /EMPTY
