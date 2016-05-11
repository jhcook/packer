# This optimizes the build size by zeroing out the entire disk
/usr/bin/dd if=/dev/zero of=/EMPTY bs=4096
/usr/bin/rm -f /EMPTY
